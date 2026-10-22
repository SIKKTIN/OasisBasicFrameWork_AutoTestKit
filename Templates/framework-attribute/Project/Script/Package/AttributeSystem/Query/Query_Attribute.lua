local Data = require("Script.Package.AttributeSystem.Data.PlayerData_Attribute")
local Define = require("Script.Package.AttributeSystem.Data.Define_Attribute")
local Query = {}
local function Copy(value, seen)
    if type(value) ~= "table" then return value end
    seen = seen or {}
    if seen[value] then return seen[value] end
    local result = {}; seen[value] = result
    for key, item in pairs(value) do result[key] = Copy(item, seen) end
    return result
end

function Query.GetAttributeData(pc)
    local source = Data.GetAttributeData(pc)
    if type(source) ~= "table" then return nil end
    return Copy(source)
end

function Query.GetAttributeValue(pc, key)
    if not pc or not Define.IsAttributeTypeValid(key) then return nil end
    local pawn = UGCGameSystem.GetPlayerPawnByPlayerController(pc)
    if not pawn then return nil end
    local ok, value = pcall(UGCAttributeSystem.GetGameAttributeValue, pawn, key)
    if ok and Define.IsFiniteNumber(value) then return value end
    return nil
end

function Query.GetPersistedAttributeValue(pc, key)
    if not Define.IsAttributeTypeValid(key) then return nil end
    return Data.GetAttributeValue(pc, key)
end
return Query
