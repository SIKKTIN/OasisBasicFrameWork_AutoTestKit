local PlayerData_Skill = {}

local Const_Data = require("Script.Const.Data.Const_Data")
local Global_PlayerDataCore = require(
    "Script.Core.PlayerDataCore.Global_PlayerDataCore")
local Define_Skill = require(
    "Script.Package.SkillSystem.Data.Define_Skill")

local DATA_KEY = Const_Data.PLAYER_DATA_TYPE.SKILL_DATA

-- PlayerController 销毁后允许 Lua 自动回收对应运行时缓存。
local _runtimeInstances = setmetatable({}, { __mode = "k" })

local function IsPositiveInteger(value)
    return type(value) == "number"
        and value > 0
        and value % 1 == 0
end

local function GetRawData(pc)
    if not pc or DATA_KEY ~= "skill_data" then return nil end
    local data = Global_PlayerDataCore.QueryPackage(pc, DATA_KEY)
    if type(data) ~= "table" then return nil end
    return data
end

--- 初始化当前已经注册的技能字段；缺失字段语义上仍视为 false。
function PlayerData_Skill.InitSkillData(playerKey)
    if not UGCGameSystem.IsServer() then return false, "server-only" end
    if DATA_KEY ~= "skill_data" then return false, "data-constants-outdated" end
    if playerKey == nil then return false, "player-key-missing" end

    local pc = UGCGameSystem.GetPlayerControllerByPlayerKey(playerKey)
    if not pc then return false, "controller-missing" end
    if pc[DATA_KEY] == nil then pc[DATA_KEY] = {} end
    if type(pc[DATA_KEY]) ~= "table" then return false, "invalid-skill-data" end

    local changes = {}
    for _, skillType in ipairs(Define_Skill.GetAllSkillTypes()) do
        if pc[DATA_KEY][skillType] == nil
            and pc[DATA_KEY][tostring(skillType)] == nil then
            changes[#changes + 1] = { key = skillType, value = false }
        end
    end
    if #changes == 0 then return true end
    return Global_PlayerDataCore.ModifyList(pc, DATA_KEY, changes)
end

--- 返回规范化副本。数字键优先于同值数字字符串键。
function PlayerData_Skill.GetPlayerSkills(pc)
    local source = GetRawData(pc)
    if not source then return {} end

    local result = {}
    for key, value in pairs(source) do
        if type(key) == "string" then
            local skillType = Define_Skill.NormalizeSkillType(key)
            if skillType then result[skillType] = value == true end
        end
    end
    for key, value in pairs(source) do
        if IsPositiveInteger(key)
            and Define_Skill.NormalizeSkillType(key) then
            result[key] = value == true
        end
    end
    return result
end

function PlayerData_Skill.IsSkillActive(pc, skillType)
    local normalized = Define_Skill.NormalizeSkillType(skillType)
    if not normalized then return false end
    local data = GetRawData(pc)
    if not data then return false end
    if data[normalized] ~= nil then
        return data[normalized] == true
    end
    return data[tostring(normalized)] == true
end

--- 在服务端把已注册技能的历史数字字符串键迁移为数字键。
---@return boolean success
---@return boolean changed
function PlayerData_Skill.MigrateLegacyKeys(pc)
    if not UGCGameSystem.IsServer() then return false, false end
    local data = GetRawData(pc)
    if not data then return false, false end

    local changes = {}
    for _, skillType in ipairs(Define_Skill.GetAllSkillTypes()) do
        local stringKey = tostring(skillType)
        if data[stringKey] ~= nil then
            if data[skillType] == nil then
                changes[#changes + 1] = {
                    key = skillType,
                    value = data[stringKey] == true,
                }
            end
            changes[#changes + 1] = { key = stringKey, value = nil }
        end
    end
    if #changes == 0 then return true, false end

    local changed = Global_PlayerDataCore.ModifyList(pc, DATA_KEY, changes)
    return changed, changed
end

function PlayerData_Skill.GetStoredValue(pc, skillType)
    local data = GetRawData(pc)
    if not data then return nil end
    return data[skillType]
end

function PlayerData_Skill.GetRuntimeInstance(pc, skillType)
    local bySkill = _runtimeInstances[pc]
    return bySkill and bySkill[skillType] or nil
end

function PlayerData_Skill.SetRuntimeInstance(pc, skillType, instance, pawn)
    if not pc or not skillType or not instance or not pawn then return false end
    local bySkill = _runtimeInstances[pc]
    if not bySkill then
        bySkill = {}
        _runtimeInstances[pc] = bySkill
    end
    bySkill[skillType] = { instance = instance, pawn = pawn }
    return true
end

function PlayerData_Skill.ClearRuntimeInstance(pc, skillType)
    local bySkill = _runtimeInstances[pc]
    if not bySkill then return end
    bySkill[skillType] = nil
    if next(bySkill) == nil then _runtimeInstances[pc] = nil end
end

function PlayerData_Skill.GetRuntimeSkillTypes(pc)
    local result = {}
    for skillType in pairs(_runtimeInstances[pc] or {}) do
        result[#result + 1] = skillType
    end
    table.sort(result)
    return result
end

function PlayerData_Skill.HasData(pc)
    return GetRawData(pc) ~= nil
end

function PlayerData_Skill.ClearRuntimeInstances(pc)
    if pc then _runtimeInstances[pc] = nil end
end

function PlayerData_Skill.Format(pc)
    if not pc then
        ugcprint("[SkillSystem] Format 失败：PlayerController 不存在")
        return false
    end

    local values = {}
    local skills = PlayerData_Skill.GetPlayerSkills(pc)
    for _, skillType in ipairs(Define_Skill.GetAllSkillTypes()) do
        values[#values + 1] = tostring(skillType)
            .. "=" .. tostring(skills[skillType] == true)
    end
    ugcprint("[SkillSystem][Format] " .. table.concat(values, ", "))
    return true
end

return PlayerData_Skill
