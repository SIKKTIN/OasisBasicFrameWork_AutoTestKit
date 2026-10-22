local Config = require("Script.Package.AttributeSystem.Config.Config_Attribute")
local Define = {}
local types, defaults, persisted = {}, {}, {}

function Define.IsFiniteNumber(value)
    return type(value) == "number" and value == value
        and value ~= math.huge and value ~= -math.huge
end

function Define.IsAttributeTypeValid(key)
    return (type(key) == "string" and key ~= "")
        or Define.IsFiniteNumber(key)
end

assert(type(Config.persistedAttributes) == "table", "persistedAttributes must be a table")
assert(type(Config.resetHealthOnSpawn) == "boolean", "resetHealthOnSpawn must be boolean")
for key, value in pairs(Config.persistedAttributes) do
    assert(Define.IsAttributeTypeValid(key), "invalid persisted attribute key")
    -- PlayerDataCore 的字符串点号表示嵌套路径；属性枚举必须使用单个字段键。
    assert(type(key) ~= "string" or not key:find(".", 1, true), "attribute key cannot contain a dot")
    assert(Define.IsFiniteNumber(value), "attribute default must be a finite number")
    types[#types + 1], defaults[key], persisted[key] = key, value, true
end
table.sort(types, function(a, b) return tostring(a) < tostring(b) end)

function Define.GetPersistedAttributeTypes()
    local copy = {}
    for i, key in ipairs(types) do copy[i] = key end
    return copy
end

function Define.GetDefaultAttributeData()
    local copy = {}
    for key, value in pairs(defaults) do copy[key] = value end
    return copy
end

function Define.IsPersistedAttribute(key) return persisted[key] == true end
function Define.ShouldResetHealthOnSpawn() return Config.resetHealthOnSpawn end
return Define
