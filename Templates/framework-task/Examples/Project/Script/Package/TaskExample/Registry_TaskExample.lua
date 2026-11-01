-- 模拟奖励不接触正式货币/物品。余额与回执在同一个框架存档中提交。
local Example = {}
local Task = require("Script.Package.TaskSystem.Registry_TaskSystem")
local Core = require("Script.Core.PlayerDataCore.Global_PlayerDataCore")
local Data = require("Script.Package.TaskExample.Data.PlayerData_TaskExample")
local Bus = require("Script.Core.EventSystem.UGCEventSystem")
local Events = require("Script.Event.EventType")
local initialized = false
local function Copy(x)
    if type(x) ~= "table" then return x end
    local result = {}; for k, v in pairs(x) do result[k] = Copy(v) end; return result
end
local function Get(pc)
    local value = pc.task_example_data
    if type(value) ~= "table" or type(value.balance) ~= "table" or type(value.receipts) ~= "table" then return nil end
    return Copy(value)
end
local provider = {name = "task-example-v1", idempotent = true}
function provider.Validate(_, rewards)
    for _, reward in ipairs(rewards) do
        if reward.type ~= "example" or (reward.id ~= "gold" and reward.id ~= "exp" and reward.id ~= "medkit") then
            return false, "unsupported-example-reward"
        end
    end
    return true
end
function provider.Query(pc, id)
    local data = Get(pc)
    if not data then return {status = "unknown", reason = "example-data-not-ready"} end
    return Copy(data.receipts[id] or {status = "not-found"})
end
function provider.Grant(pc, id, rewards)
    local old = Get(pc)
    if not old then return {status = "unknown", reason = "example-data-not-ready"} end
    if old.receipts[id] then return Copy(old.receipts[id]) end
    local valid, reason = provider.Validate(pc, rewards)
    if not valid then return {status = "failed", reason = reason} end
    local nextData = Copy(old)
    for _, reward in ipairs(rewards) do nextData.balance[reward.id] = (nextData.balance[reward.id] or 0) + reward.amount end
    nextData.receipts[id] = {status = "granted"}
    if not Core.ModifyPackage(pc, "task_example_data", nextData) then return {status = "failed"} end
    if Core.SaveArchiveData(pc) ~= true then
        Core.ModifyPackage(pc, "task_example_data", old)
        return {status = "unknown", reason = "example-save-failed"}
    end
    return {status = "granted"}
end
local function OnData(key)
    local pc = UGCGameSystem.GetPlayerControllerByPlayerKey(key)
    if not pc or type(pc.task_example_data) ~= "table" then return false end
    if next(pc.task_example_data) then return true end
    if not Data.Init(key) then return false end
    return Core.SaveArchiveData(pc)
end
function Example.BeginPlay()
    if not UGCGameSystem.IsServer() then return true end
    if initialized then return true end
    local ok, reason = Task.RegisterRewardProvider(provider)
    if not ok then return false, reason end
    if Bus:AddListener(Events.Server_OnPlayerDataLoaded, OnData, nil) ~= true then return false, "listener-registration-failed" end
    initialized = true
    return true
end
function Example.EndPlay()
    if initialized then Bus:RemoveListener(Events.Server_OnPlayerDataLoaded, OnData, nil) end
    initialized = false
end
function Example.Advance(pc)
    if not UGCGameSystem.IsServer() then return false, "server-only" end
    local value = Get(pc)
    if not value then return false, "example-data-not-ready" end
    value.sequence = (value.sequence or 0) + 1
    if not Core.ModifyPackage(pc, "task_example_data", value) or Core.SaveArchiveData(pc) ~= true then return false, "save-failed" end
    local prefix = "example-" .. tostring(value.sequence)
    local ok, reason = Task.ReportProgress(pc, "kill", "example_enemy", 1, prefix .. "-kill")
    if not ok then return false, reason end
    ok, reason = Task.ReportProgress(pc, "collect", "example_supply", 1, prefix .. "-collect")
    if not ok then return false, reason end
    return Task.ReportProgress(pc, "visit", "example_site", 1, prefix .. "-visit")
end
return Example
