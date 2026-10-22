local Events = require("Script.Event.EventType")
local Bus = require("Script.Core.EventSystem.UGCEventSystem")
local Define = require("Script.Package.AttributeSystem.Data.Define_Attribute")
local Query = require("Script.Package.AttributeSystem.Query.Query_Attribute")
local System = require("Script.Package.AttributeSystem.System.System_Attribute")
local Registry = {}
local initialized = false
local listeners = {
    {Events.Server_OnPlayerPawnInit, System.OnPlayerPawnInit},
    {Events.Lifecycle_PC_End, System.ClearPlayerState},
    {Events.Server_OnPlayerEnd, System.OnPlayerEnd},
}

function Registry.BeginPlay()
    if initialized then return true end
    if not UGCGameSystem.IsServer() then return true end
    for _, entry in ipairs(listeners) do
        local ok, result = pcall(Bus.AddListener, Bus, entry[1], entry[2], nil)
        if not ok or result ~= true then
            for _, added in ipairs(listeners) do
                pcall(Bus.RemoveListener, Bus, added[1], added[2], nil)
            end
            ugcprint("[AttributeSystem] listener-registration-failed")
            return false, "listener-registration-failed"
        end
    end
    initialized = true
    return true
end

function Registry.EndPlay()
    if initialized then
        for _, entry in ipairs(listeners) do Bus:RemoveListener(entry[1], entry[2], nil) end
    end
    initialized = false
    System.ClearAllState()
end

Registry.GetAttributeData = Query.GetAttributeData
Registry.GetAttributeValue = Query.GetAttributeValue
Registry.GetPersistedAttributeValue = Query.GetPersistedAttributeValue
Registry.GetPersistedAttributeTypes = Define.GetPersistedAttributeTypes
Registry.IsPersistedAttribute = Define.IsPersistedAttribute
Registry.SetAttributeValue = System.SetAttributeValue
Registry.AddAttributeValue = System.AddAttributeValue
Registry.ModifyAttributeList = System.ModifyAttributeList
Registry.FormatAttributeData = System.FormatAttributeData
Registry.SyncPawn = System.SyncPawn
Registry.GetStatus = System.GetStatus
return Registry
