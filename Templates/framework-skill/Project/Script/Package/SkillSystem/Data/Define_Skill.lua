local Define_Skill = {}

local _skillConfigs = {}

local function IsPositiveInteger(value)
    return type(value) == "number"
        and value > 0
        and value % 1 == 0
end

local function CopyConfig(config)
    if type(config) ~= "table" then return nil end
    return {
        name = config.name,
        desc = config.desc or "",
        assetPath = config.assetPath,
    }
end

local function IsSameConfig(left, right)
    return left.name == right.name
        and left.desc == right.desc
        and left.assetPath == right.assetPath
end

--- 注册一个项目技能定义。SkillSystem 本身不持有业务技能 ID。
---@param skillType number 正整数技能 ID
---@param config table { name=string, desc=string|nil, assetPath="Asset/..." }
---@return boolean
function Define_Skill.RegisterSkill(skillType, config)
    if not IsPositiveInteger(skillType) then
        ugcprint("[SkillSystem] 注册失败：skillType 必须是正整数")
        return false
    end
    if type(config) ~= "table"
        or type(config.name) ~= "string"
        or config.name == ""
        or (config.desc ~= nil and type(config.desc) ~= "string")
        or type(config.assetPath) ~= "string"
        or not string.match(config.assetPath, "^Asset/[^/]")
        or config.assetPath:find("..", 1, true)
        or config.assetPath:find("\\", 1, true) then
        ugcprint("[SkillSystem] 注册失败：技能配置无效, skillType="
            .. tostring(skillType))
        return false
    end

    local normalized = CopyConfig(config)
    local existing = _skillConfigs[skillType]
    if existing then
        if IsSameConfig(existing, normalized) then
            return true
        end
        ugcprint("[SkillSystem] 注册失败：技能 ID 已存在且配置不同, skillType="
            .. tostring(skillType))
        return false
    end

    _skillConfigs[skillType] = normalized
    return true
end

--- 将数字或数字字符串规范化为已注册的技能 ID。
---@param skillType number|string
---@return number|nil
function Define_Skill.NormalizeSkillType(skillType)
    local normalized = skillType
    if type(normalized) == "string" then
        normalized = tonumber(normalized)
    end
    if not IsPositiveInteger(normalized)
        or _skillConfigs[normalized] == nil then
        return nil
    end
    return normalized
end

---@param skillType number|string
---@return table|nil
function Define_Skill.GetSkillConfig(skillType)
    local normalized = Define_Skill.NormalizeSkillType(skillType)
    if not normalized then return nil end
    return CopyConfig(_skillConfigs[normalized])
end

---@param skillType number|string
---@return string|nil
function Define_Skill.GetSkillAssetPath(skillType)
    local normalized = Define_Skill.NormalizeSkillType(skillType)
    local config = normalized and _skillConfigs[normalized] or nil
    return config and config.assetPath or nil
end

---@return number[]
function Define_Skill.GetAllSkillTypes()
    local result = {}
    for skillType in pairs(_skillConfigs) do
        result[#result + 1] = skillType
    end
    table.sort(result)
    return result
end

return Define_Skill
