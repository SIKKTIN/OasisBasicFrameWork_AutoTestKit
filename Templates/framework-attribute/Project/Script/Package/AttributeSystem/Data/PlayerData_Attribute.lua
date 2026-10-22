local Const = require("Script.Const.Data.Const_Data")
local Core = require("Script.Core.PlayerDataCore.Global_PlayerDataCore")
local Define = require("Script.Package.AttributeSystem.Data.Define_Attribute")
local Data = {}
local DATA_KEY = Const.PLAYER_DATA_TYPE.ATTRIBUTE_DATA

function Data.EnsureDefaults(pc)
    if not UGCGameSystem.IsServer() then return false, false, "server-only" end
    if not pc then return false, false, "controller-missing" end
    if DATA_KEY ~= "attribute_data" then return false, false, "data-constants-outdated" end
    local current = pc[DATA_KEY]
    if current ~= nil and type(current) ~= "table" then
        return false, false, "invalid-attribute-data"
    end
    -- 即使配置为空，包拥有的数据容器也有明确的初始化结构。
    if current == nil then current = {}; pc[DATA_KEY] = current end
    local changes = {}
    for key, value in pairs(Define.GetDefaultAttributeData()) do
        if current[key] == nil then
            changes[#changes + 1] = {key = key, value = value}
        elseif not Define.IsFiniteNumber(current[key]) then
            return false, false, "invalid-persisted-value: " .. tostring(key)
        end
    end
    if #changes == 0 then return true, false end
    local ok, result = pcall(Core.ModifyList, pc, DATA_KEY, changes)
    if not ok or result ~= true then return false, false, "defaults-write-failed" end
    return true, true
end

function Data.Init(playerKey)
    if not UGCGameSystem.IsServer() then return false, "server-only" end
    if playerKey == nil then return false, "player-key-missing" end
    local success, _, reason = Data.EnsureDefaults(
        UGCGameSystem.GetPlayerControllerByPlayerKey(playerKey))
    return success, reason
end

function Data.GetAttributeData(pc)
    if not pc or DATA_KEY ~= "attribute_data" then return nil end
    return Core.QueryPackage(pc, DATA_KEY)
end

function Data.GetAttributeValue(pc, key)
    if not pc or DATA_KEY ~= "attribute_data" then return nil end
    return Core.Query(pc, DATA_KEY, key)
end

function Data.WriteChanges(pc, changes)
    if DATA_KEY ~= "attribute_data" then return false, "data-constants-outdated" end
    return Core.ModifyList(pc, DATA_KEY, changes)
end

function Data.Format(pc)
    local values = Data.GetAttributeData(pc)
    if type(values) ~= "table" then return false end
    for _, key in ipairs(Define.GetPersistedAttributeTypes()) do
        ugcprint("[AttributeSystem] " .. tostring(key) .. "=" .. tostring(values[key]))
    end
    return true
end
return Data
