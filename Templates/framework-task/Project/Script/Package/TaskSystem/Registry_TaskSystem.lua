local Registry = {}
local Define = require("Script.Package.TaskSystem.Data.Define_Task")
local System = require("Script.Package.TaskSystem.System.System_Task")
local Query = require("Script.Package.TaskSystem.Query.Query_Task")
local Config = require("Script.Config.Package.TaskSystem.Config_Task")
local Events = require("Script.Event.EventType")
local Bus = require("Script.Core.EventSystem.UGCEventSystem")
local initialized, listeners = false, {}

local function OnClient(pc)
    if Config.ui and Config.ui.enabled == true then return Global_UI.Open(Config.ui.id) end
    return true
end

function Registry.BeginPlay()
    if initialized then return true end
    local ok, reason = Define.Configure(Config.tasks)
    if not ok then return false, reason end
    local list = UGCGameSystem.IsServer() and {
        {Events.Server_OnPlayerDataLoaded, System.OnDataLoaded},
        {Events.Server_OnPlayerEnd, System.OnPlayerEnd},
    } or {{Events.Client_OnPlayerControllerInit, OnClient}}
    for _, entry in ipairs(list) do
        local succeeded, added = pcall(Bus.AddListener, Bus, entry[1], entry[2], nil)
        if not succeeded or added ~= true then
            for _, old in ipairs(listeners) do Bus:RemoveListener(old[1], old[2], nil) end
            listeners = {}; return false, "listener-registration-failed"
        end
        listeners[#listeners + 1] = entry
    end
    initialized = true
    return true
end
function Registry.EndPlay()
    for _, entry in ipairs(listeners) do Bus:RemoveListener(entry[1], entry[2], nil) end
    listeners, initialized = {}, false
    return System.EndPlay()
end
Registry.AcceptTask, Registry.ReportProgress, Registry.ClaimReward = System.AcceptTask, System.ReportProgress, System.ClaimReward
Registry.GetTaskList, Registry.GetTaskState, Registry.GetTaskConfig = Query.GetTaskList, Query.GetTaskState, Query.GetTaskConfig
Registry.RegisterRewardProvider, Registry.SyncPlayer, Registry.GetStatus = System.RegisterRewardProvider, System.SyncPlayer, System.GetStatus
Registry.Request, Registry.AcceptResult, Registry.OnReplicated = System.Request, System.AcceptResult, System.OnReplicated
Registry.OnControllerEnd = System.OnControllerEnd
function Registry.GetUIConfig() return Define.Copy(Config.ui or {enabled = false}) end
function Registry.GetEvents() return {changed = Define.CHANGED, result = Define.RESULT} end
return Registry
