local Core = require("Script.Core.PlayerDataCore.Global_PlayerDataCore")
local Define = require("Script.Package.AttributeSystem.Data.Define_Attribute")
local Data = require("Script.Package.AttributeSystem.Data.PlayerData_Attribute")
local Query = require("Script.Package.AttributeSystem.Query.Query_Attribute")
local System = {}
local pendingSave = setmetatable({}, {__mode = "k"})
local status = setmetatable({}, {__mode = "k"})
local players = setmetatable({}, {__mode = "v"})

local function Same(a, b)
    return Define.IsFiniteNumber(a) and Define.IsFiniteNumber(b)
        and math.abs(a - b) <= 0.000001 * math.max(1, math.abs(a), math.abs(b))
end

local function WritePawn(pawn, key, value)
    local ok, result = pcall(UGCAttributeSystem.SetGameAttributeValue, pawn, key, value)
    if not ok or result == false then return false end
    local read, actual = pcall(UGCAttributeSystem.GetGameAttributeValue, pawn, key)
    return read and Same(actual, value)
end

local function RestorePawn(pawn, previous, count)
    local restored = true
    for index = count, 1, -1 do
        local item = previous[index]
        if not WritePawn(pawn, item.key, item.value) then restored = false end
    end
    return restored
end

local function Fail(pc, reason)
    if pc then status[pc] = {phase = "failed", reason = reason} end
    ugcprint("[AttributeSystem] " .. tostring(reason))
    return false, reason
end

-- 先校验全部输入和读取快照，再写 Pawn；引擎失败时不提交玩家数据。
-- 已发生的引擎写入尝试回滚；回滚仍可能失败，必须反馈而非声称原子操作。
function System.ModifyAttributeList(pc, changes)
    if not UGCGameSystem.IsServer() then return false, "server-only" end
    if not pc or type(changes) ~= "table" then return false, "invalid-arguments" end
    local count = 0
    for index in pairs(changes) do
        if type(index) ~= "number" or index < 1 or index % 1 ~= 0 then
            return false, "invalid-change-list"
        end
        count = count + 1
    end
    if count == 0 or count ~= #changes then return false, "invalid-change-list" end
    local seen = {}
    for index = 1, count do
        local item = changes[index]
        if type(item) ~= "table" or not Define.IsAttributeTypeValid(item.key)
            or not Define.IsFiniteNumber(item.value) or seen[item.key] then
            return false, "invalid-attribute-change"
        end
        seen[item.key] = true
    end
    local pawn = UGCGameSystem.GetPlayerPawnByPlayerController(pc)
    if not pawn then return false, "pawn-missing" end
    local previous, persisted, oldData = {}, {}, {}
    for _, item in ipairs(changes) do
        local old = Query.GetAttributeValue(pc, item.key)
        if old == nil then return false, "attribute-unreadable: " .. tostring(item.key) end
        previous[#previous + 1] = {key = item.key, value = old}
        if Define.IsPersistedAttribute(item.key) then
            if type(Data.GetAttributeData(pc)) ~= "table" then
                return false, "attribute-data-not-ready"
            end
            local saved = Data.GetAttributeValue(pc, item.key)
            if saved ~= item.value then
                persisted[#persisted + 1] = {key = item.key, value = item.value}
                oldData[#oldData + 1] = {key = item.key, value = saved}
            end
        end
    end
    for index, item in ipairs(changes) do
        if not WritePawn(pawn, item.key, item.value) then
            local restored = RestorePawn(pawn, previous, index)
            return false, restored and "pawn-write-failed" or "pawn-write-failed; rollback-incomplete"
        end
    end
    if #persisted > 0 then
        local ok, result = pcall(Data.WriteChanges, pc, persisted)
        if not ok or result ~= true then
            local dataOk = pcall(Data.WriteChanges, pc, oldData)
            local restored = RestorePawn(pawn, previous, #previous)
            -- ModifyList 对原本未改变的数据返回 false；读回才是恢复依据。
            for _, item in ipairs(oldData) do
                if Data.GetAttributeValue(pc, item.key) ~= item.value then dataOk = false end
            end
            return false, dataOk and restored and "data-write-failed"
                or "data-write-failed; rollback-incomplete"
        end
    end
    return true
end

function System.SetAttributeValue(pc, key, value)
    return System.ModifyAttributeList(pc, {{key = key, value = value}})
end

function System.AddAttributeValue(pc, key, delta)
    if not UGCGameSystem.IsServer() then return false, "server-only" end
    if not Define.IsAttributeTypeValid(key) or not Define.IsFiniteNumber(delta) then
        return false, "invalid-arguments"
    end
    local current
    if Define.IsPersistedAttribute(key) then current = Data.GetAttributeValue(pc, key)
    else current = Query.GetAttributeValue(pc, key) end
    if not Define.IsFiniteNumber(current) then return false, "attribute-unreadable" end
    return System.SetAttributeValue(pc, key, current + delta)
end

-- 同一 PC 的失败状态和待保存标记保留，调用此接口可显式重试。
function System.SyncPawn(pc)
    if not UGCGameSystem.IsServer() then return false, "server-only" end
    if not pc then return false, "controller-missing" end
    local key = UGCGameSystem.GetPlayerKeyByPlayerController(pc)
    if key ~= nil then players[key] = pc end
    local success, changed, reason = Data.EnsureDefaults(pc)
    if not success then return Fail(pc, reason) end
    if changed then pendingSave[pc] = true end
    if pendingSave[pc] then
        local ok, saved = pcall(Core.SaveArchiveData, pc)
        if not ok or saved ~= true then return Fail(pc, "defaults-save-failed") end
        pendingSave[pc] = nil
    end
    local changes, values = {}, {}
    for _, key in ipairs(Define.GetPersistedAttributeTypes()) do
        local value = Data.GetAttributeValue(pc, key)
        if not Define.IsFiniteNumber(value) then return Fail(pc, "invalid-persisted-value") end
        changes[#changes + 1], values[key] = {key = key, value = value}, value
    end
    if Define.ShouldResetHealthOnSpawn() then
        require("Script.GameAttribute.game_attribute_type")
        local health, maximum = UGCNativeGameAttributeType.Character_Health,
            UGCNativeGameAttributeType.Character_HealthMax
        local maximumValue = values[maximum] or Query.GetAttributeValue(pc, maximum)
        if not Define.IsFiniteNumber(maximumValue) then return Fail(pc, "health-max-unreadable") end
        local found = false
        for _, item in ipairs(changes) do
            if item.key == health then item.value, found = maximumValue, true end
        end
        if not found then changes[#changes + 1] = {key = health, value = maximumValue} end
    end
    if #changes > 0 then
        local ok, result, detail = pcall(System.ModifyAttributeList, pc, changes)
        if not ok or result ~= true then return Fail(pc, ok and detail or tostring(result)) end
    end
    status[pc] = {phase = "ready"}
    return true
end

function System.OnPlayerPawnInit(playerKey)
    if not UGCGameSystem.IsServer() then return false, "server-only" end
    if playerKey == nil then return false, "player-key-missing" end
    return System.SyncPawn(UGCGameSystem.GetPlayerControllerByPlayerKey(playerKey))
end

function System.GetStatus(pc)
    local current = pc and status[pc] or nil
    return {phase = current and current.phase or "idle", reason = current and current.reason,
        pendingSave = pc ~= nil and pendingSave[pc] == true}
end

function System.ClearPlayerState(pc)
    if pc then pendingSave[pc], status[pc] = nil, nil end
    for key, player in pairs(players) do
        if player == pc then players[key] = nil end
    end
end

function System.OnPlayerEnd(key)
    if key ~= nil then System.ClearPlayerState(players[key]) end
end

function System.ClearAllState()
    pendingSave, status = setmetatable({}, {__mode = "k"}), setmetatable({}, {__mode = "k"})
    players = setmetatable({}, {__mode = "v"})
end

System.FormatAttributeData = Data.Format
return System
