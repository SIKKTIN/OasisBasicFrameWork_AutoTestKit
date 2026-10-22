local System_Skill = {}

local Const_Data = require("Script.Const.Data.Const_Data")
local Global_PlayerDataCore = require(
    "Script.Core.PlayerDataCore.Global_PlayerDataCore")
local Define_Skill = require(
    "Script.Package.SkillSystem.Data.Define_Skill")
local PlayerData_Skill = require(
    "Script.Package.SkillSystem.Data.PlayerData_Skill")
local Query_Skill = require(
    "Script.Package.SkillSystem.Query.Query_Skill")

local DATA_KEY = Const_Data.PLAYER_DATA_TYPE.SKILL_DATA
local _pendingMigrationSave = setmetatable({}, {__mode = "k"})
local _status = setmetatable({}, {__mode = "k"})
local _players = setmetatable({}, {__mode = "v"})

local function LogError(message)
    ugcprint("[SkillSystem] " .. tostring(message))
end

local function RemoveEngineInstance(record)
    if not record or not record.instance or not record.pawn then return true end
    if UGCObjectUtility and type(UGCObjectUtility.IsObjectValid) == "function" then
        local pawnOk, pawnValid = pcall(UGCObjectUtility.IsObjectValid, record.pawn)
        local instanceOk, instanceValid = pcall(UGCObjectUtility.IsObjectValid, record.instance)
        if (pawnOk and pawnValid == false) or (instanceOk and instanceValid == false) then return true end
    end
    if not UGCPersistEffectSystem
        or type(UGCPersistEffectSystem.RemoveSkillInstance) ~= "function" then
        LogError("移除失败：UGCPersistEffectSystem 不可用")
        return false
    end

    local ok, removed = pcall(
        UGCPersistEffectSystem.RemoveSkillInstance,
        record.pawn,
        record.instance
    )
    if not ok or removed ~= true then
        LogError("移除技能实例失败: " .. tostring(removed))
        return false
    end
    return true
end

local function AddRuntimeSkill(pc, skillType)
    local pawn = pc and UGCGameSystem.GetPlayerPawnByPlayerController(pc) or nil
    if not pawn then
        LogError("添加失败：Pawn 不存在")
        return false, false
    end

    local existing = PlayerData_Skill.GetRuntimeInstance(pc, skillType)
    if Query_Skill.IsSkillLoaded(pc, skillType) then
        return true, false
    end
    if existing then
        -- 已失效对象无需再移除；有效旧实例移除失败时保留记录供重试。
        if not RemoveEngineInstance(existing) then return false, false end
        PlayerData_Skill.ClearRuntimeInstance(pc, skillType)
    end

    local assetPath = Define_Skill.GetSkillAssetPath(skillType)
    if not assetPath then
        LogError("添加失败：技能未注册, skillType=" .. tostring(skillType))
        return false, false
    end
    if not UGCMapInfoLib
        or type(UGCMapInfoLib.GetRootLongPackagePath) ~= "function"
        or not UGCObjectUtility
        or type(UGCObjectUtility.LoadClass) ~= "function"
        or not UGCPersistEffectSystem
        or type(UGCPersistEffectSystem.AddSkillByClass) ~= "function" then
        LogError("添加失败：技能引擎 API 不可用")
        return false, false
    end

    local okRoot, rootPath = pcall(UGCMapInfoLib.GetRootLongPackagePath)
    if not okRoot or type(rootPath) ~= "string" then
        LogError("添加失败：无法获取项目资源根路径")
        return false, false
    end
    local okClass, skillClass = pcall(
        UGCObjectUtility.LoadClass,
        rootPath:gsub("/+$", "") .. "/" .. assetPath
    )
    if not okClass or not skillClass then
        LogError("添加失败：无法加载技能类 " .. tostring(assetPath))
        return false, false
    end

    local okAdd, instance = pcall(
        UGCPersistEffectSystem.AddSkillByClass,
        pawn,
        skillClass
    )
    if not okAdd or not instance then
        LogError("添加失败：引擎未返回技能实例, skillType="
            .. tostring(skillType))
        return false, false
    end

    PlayerData_Skill.SetRuntimeInstance(pc, skillType, instance, pawn)
    return true, true
end

local function RemoveRuntimeSkill(pc, skillType)
    local record = PlayerData_Skill.GetRuntimeInstance(pc, skillType)
    if not record then return true, false end
    if not RemoveEngineInstance(record) then return false, false end
    PlayerData_Skill.ClearRuntimeInstance(pc, skillType)
    return true, true
end

local function RollbackRuntime(pc, skillType, requestedState, runtimeChanged)
    if not runtimeChanged then return true end
    if requestedState then
        local ok = RemoveRuntimeSkill(pc, skillType)
        return ok == true
    end
    local ok = AddRuntimeSkill(pc, skillType)
    return ok == true
end

local function ClearStaleRuntimeSkills(pc, currentPawn)
    local allSucceeded = true
    for _, skillType in ipairs(PlayerData_Skill.GetRuntimeSkillTypes(pc)) do
        local record = PlayerData_Skill.GetRuntimeInstance(pc, skillType)
        if record and record.pawn ~= currentPawn then
            if RemoveEngineInstance(record) then
                PlayerData_Skill.ClearRuntimeInstance(pc, skillType)
            else
                allSucceeded = false
            end
        end
    end
    return allSucceeded
end

-- 三阶段全部成功才返回 true；失败尽力回滚，引擎副作用不具备事务保证。
function System_Skill.SetSkillState(pc, skillType, state)
    if not UGCGameSystem.IsServer() then
        LogError("SetSkillState 只能在服务端调用")
        return false
    end
    if not pc or type(state) ~= "boolean" then
        LogError("SetSkillState 参数无效")
        return false
    end

    if not PlayerData_Skill.HasData(pc) then return false, "skill-data-not-ready" end
    local playerKey = UGCGameSystem.GetPlayerKeyByPlayerController(pc)
    if playerKey ~= nil then _players[playerKey] = pc end
    local normalized = Define_Skill.NormalizeSkillType(skillType)
    if not normalized then
        LogError("SetSkillState 技能未注册: " .. tostring(skillType))
        return false
    end

    local wasActive = Query_Skill.IsSkillActive(pc, normalized)
    local oldStoredValue = PlayerData_Skill.GetStoredValue(pc, normalized)

    local runtimeOk, runtimeChanged
    if state then
        runtimeOk, runtimeChanged = AddRuntimeSkill(pc, normalized)
    else
        runtimeOk, runtimeChanged = RemoveRuntimeSkill(pc, normalized)
    end
    if not runtimeOk then return false end

    if wasActive == state then return true end

    local dataOk, dataChanged = pcall(Global_PlayerDataCore.ModifyList, pc, DATA_KEY, {
        { key = normalized, value = state },
    })
    if not dataOk or not dataChanged then
        if not RollbackRuntime(pc, normalized, state, runtimeChanged) then
            LogError("数据写入失败，且运行时回滚失败")
        end
        return false
    end

    local saveOk, saved = pcall(Global_PlayerDataCore.SaveArchiveData, pc)
    if saveOk and saved == true then return true end

    local rollbackOk, dataRollback = pcall(Global_PlayerDataCore.ModifyList, pc, DATA_KEY, {
        { key = normalized, value = oldStoredValue },
    })
    local runtimeRollback = RollbackRuntime(
        pc, normalized, state, runtimeChanged)
    if not rollbackOk or not dataRollback or not runtimeRollback then
        LogError("存档失败，且事务回滚不完整")
    else
        LogError("存档失败，已恢复调用前状态")
    end
    return false
end

function System_Skill.RestoreActiveSkills(pc)
    if not UGCGameSystem.IsServer() or not pc then return false end
    if not PlayerData_Skill.HasData(pc) then return false, "skill-data-not-ready" end
    local pawn = UGCGameSystem.GetPlayerPawnByPlayerController(pc)
    if not pawn then return false end

    if not ClearStaleRuntimeSkills(pc, pawn) then return false, "stale-skill-cleanup-failed" end
    local allSucceeded = true
    local skills = PlayerData_Skill.GetPlayerSkills(pc)
    for _, skillType in ipairs(Define_Skill.GetAllSkillTypes()) do
        if skills[skillType] == true then
            local ok = AddRuntimeSkill(pc, skillType)
            if not ok then allSucceeded = false end
        end
    end
    return allSucceeded
end

local function Fail(pc, reason)
    if pc then _status[pc] = {phase = "failed", reason = reason} end
    LogError(reason)
    return false, reason
end

function System_Skill.SyncPlayer(pc)
    if not UGCGameSystem.IsServer() then return false, "server-only" end
    if not pc then return false, "controller-missing" end
    if not PlayerData_Skill.HasData(pc) then return Fail(pc, "skill-data-not-ready") end
    local key = UGCGameSystem.GetPlayerKeyByPlayerController(pc)
    if key ~= nil then _players[key] = pc end
    local ok, migrated, changed = pcall(PlayerData_Skill.MigrateLegacyKeys, pc)
    if not ok or migrated ~= true then return Fail(pc, "legacy-migration-failed") end
    if changed then _pendingMigrationSave[pc] = true end
    if _pendingMigrationSave[pc] then
        local saveOk, saved = pcall(Global_PlayerDataCore.SaveArchiveData, pc)
        if not saveOk or saved ~= true then return Fail(pc, "migration-save-failed") end
        _pendingMigrationSave[pc] = nil
    end
    if not UGCGameSystem.GetPlayerPawnByPlayerController(pc) then
        _status[pc] = {phase = "waiting-pawn"}
        return true, "waiting-pawn"
    end
    local restored, result = pcall(System_Skill.RestoreActiveSkills, pc)
    if not restored or result ~= true then return Fail(pc, "skill-restore-failed") end
    _status[pc] = {phase = "ready"}
    return true
end

function System_Skill.OnPlayerDataLoaded(playerKey)
    if not UGCGameSystem.IsServer() then return false, "server-only" end
    if playerKey == nil then return false, "player-key-missing" end
    return System_Skill.SyncPlayer(UGCGameSystem.GetPlayerControllerByPlayerKey(playerKey))
end

-- LifeCycle 已核对关联、且玩家数据就绪后发出的事件，参数是 playerKey。
System_Skill.OnPlayerPawnInit = System_Skill.OnPlayerDataLoaded

function System_Skill.GetStatus(pc)
    local state = pc and _status[pc] or nil
    return {phase = state and state.phase or "idle", reason = state and state.reason,
        pendingSave = pc ~= nil and _pendingMigrationSave[pc] == true}
end

function System_Skill.OnControllerEnd(pc)
    if not pc then return true end
    local allSucceeded = true
    for _, skillType in ipairs(PlayerData_Skill.GetRuntimeSkillTypes(pc)) do
        local ok, removed = pcall(RemoveRuntimeSkill, pc, skillType)
        if not ok or not removed then allSucceeded = false end
    end
    PlayerData_Skill.ClearRuntimeInstances(pc)
    _pendingMigrationSave[pc], _status[pc] = nil, nil
    for key, player in pairs(_players) do if player == pc then _players[key] = nil end end
    if not allSucceeded then LogError("退出时技能实例清理不完整") end
    return allSucceeded
end

function System_Skill.OnPlayerEnd(key)
    if key == nil then return true end
    return System_Skill.OnControllerEnd(_players[key])
end

function System_Skill.EndPlay()
    local players = {}
    for _, pc in pairs(_players) do players[#players + 1] = pc end
    local success = true
    for _, pc in ipairs(players) do if not System_Skill.OnControllerEnd(pc) then success = false end end
    return success
end

return System_Skill
