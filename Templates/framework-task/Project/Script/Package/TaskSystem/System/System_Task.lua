local System = {}
local Define = require("Script.Package.TaskSystem.Data.Define_Task")
local Data = require("Script.Package.TaskSystem.Data.PlayerData_Task")
local Query = require("Script.Package.TaskSystem.Query.Query_Task")
local Core = require("Script.Core.PlayerDataCore.Global_PlayerDataCore")
local Bus = require("Script.Core.EventSystem.UGCEventSystem")
local provider
local statuses, busy = {}, {}

local function Status(pc)
    if not statuses[pc] then statuses[pc] = {phase = "idle", pendingSave = false} end
    return statuses[pc]
end
local function Save(pc)
    local state = Status(pc)
    local ok, result = pcall(Core.SaveArchiveData, pc)
    state.pendingSave = not (ok and result == true)
    state.phase, state.reason = state.pendingSave and "failed" or "ready", state.pendingSave and "save-failed" or nil
    return not state.pendingSave, state.reason
end
local function Commit(pc, data)
    local ok, result = pcall(Data.Write, pc, data)
    if not ok or result ~= true then return false, "data-write-failed" end
    Status(pc).pendingSave = true
    return Save(pc)
end
local function Run(pc, fn)
    if not UGCGameSystem.IsServer() then return false, "server-only" end
    if not pc then return false, "controller-missing" end
    if busy[pc] then return false, "request-in-progress" end
    busy[pc] = true
    if Status(pc).pendingSave then
        local ok, reason = Save(pc)
        if not ok then busy[pc] = nil; return false, reason end
    end
    local data, reason = Data.Read(pc)
    if not data then
        busy[pc] = nil; Status(pc).phase, Status(pc).reason = "failed", reason
        return false, reason
    end
    local ok, result, code = pcall(fn, data)
    busy[pc] = nil
    if not ok then
        ugcprint("[TaskSystem] operation exception: " .. tostring(result))
        Status(pc).phase, Status(pc).reason = "failed", "operation-error"
        return false, "operation-error"
    end
    return result, code
end
local function ProviderResult(method, pc, claim)
    local ok, result = pcall(provider[method], pc, claim.id, Define.Copy(claim.rewards))
    if not ok or type(result) ~= "table" then return {status = "unknown", reason = "provider-error"} end
    if result.status ~= "granted" and result.status ~= "not-found" and result.status ~= "pending"
        and result.status ~= "failed" and result.status ~= "unknown" then
        return {status = "unknown", reason = "invalid-provider-result"}
    end
    return result
end
local function FinishClaim(pc, data, record, allowGrant)
    local claim = record.claim
    if not provider or provider.name ~= claim.provider then return false, "reward-provider-unavailable" end
    local result = ProviderResult("Query", pc, claim)
    -- Query 的 not-found 必须确定无已生效副作用；只有 Grant 本身支持持久化去重才能接入。
    if result.status == "not-found" and allowGrant then result = ProviderResult("Grant", pc, claim) end
    if result.status ~= "granted" then return false, result.reason or ("reward-" .. result.status) end
    record.state = "claimed"
    return Commit(pc, data)
end

function System.RegisterRewardProvider(value)
    if not UGCGameSystem.IsServer() then return false, "server-only" end
    if type(value) ~= "table" or not Define.ID(value.name) or value.idempotent ~= true
        or type(value.Validate) ~= "function" or type(value.Grant) ~= "function" or type(value.Query) ~= "function" then
        return false, "invalid-reward-provider"
    end
    if provider and provider ~= value then return false, "reward-provider-already-registered" end
    provider = value
    return true
end

function System.AcceptTask(pc, id)
    id = Define.ID(id)
    return Run(pc, function(data)
        local config = Define.Get(id)
        if not config then return false, "task-not-found" end
        if data.tasks[id] then return true, "already-accepted" end
        if Query.GetTaskState(pc, id).state ~= "available" then return false, "prerequisite-not-met" end
        local record = {state = "active", progress = {}, events = {}}
        for _, goal in ipairs(config.objectives) do record.progress[goal.id] = 0 end
        data.tasks[id] = record
        return Commit(pc, data)
    end)
end

-- 仅权威业务调用；eventID 对同一事实必须稳定，重试不再次累计。不暴露客户端 RPC。
function System.ReportProgress(pc, kind, target, amount, eventID)
    kind, target, eventID = Define.ID(kind), Define.ID(target), Define.ID(eventID)
    if not kind or not target or not eventID or not Define.Positive(amount) then return false, "invalid-progress-event" end
    return Run(pc, function(data)
        local changed = false
        for _, config in ipairs(Define.List()) do
            local record = data.tasks[config.id]
            if record and record.state == "active" and not record.events[eventID] then
                local matched = false
                for _, goal in ipairs(config.objectives) do
                    if goal.type == kind and goal.target == target then
                        local old = record.progress[goal.id] or 0
                        local value = math.min(goal.count, old + amount)
                        if value ~= old then record.progress[goal.id], matched = value, true end
                    end
                end
                if matched then
                    record.events[eventID], changed = true, true
                    local complete = true
                    for _, goal in ipairs(config.objectives) do
                        if (record.progress[goal.id] or 0) < goal.count then complete = false end
                    end
                    if complete then record.state = "completed" end
                end
            end
        end
        if not changed then return true, "no-change" end
        return Commit(pc, data)
    end)
end

function System.ClaimReward(pc, id)
    id = Define.ID(id)
    return Run(pc, function(data)
        local record = data.tasks[id]
        if not record then return false, "task-not-accepted" end
        if record.state == "claimed" then return true, "already-claimed" end
        if record.state == "claim_pending" then return FinishClaim(pc, data, record, true) end
        if record.state ~= "completed" then return false, "task-not-completed" end
        local config = Define.Get(id)
        if not config then return false, "task-not-found" end
        if #config.rewards == 0 then record.state = "claimed"; return Commit(pc, data) end
        if not provider then return false, "reward-provider-unavailable" end
        local ok, valid, reason = pcall(provider.Validate, pc, Define.Copy(config.rewards))
        if not ok or valid ~= true then return false, reason or "reward-validation-failed" end
        local uid = UGCGameSystem.GetUIDByPlayerController(pc)
        if uid == nil or tostring(uid) == "" then return false, "player-identity-missing" end
        record.state = "claim_pending"
        record.claim = {id = "task-v1-" .. tostring(uid) .. "-" .. id,
            provider = provider.name, rewards = Define.Copy(config.rewards)}
        local saved, why = Commit(pc, data)
        if not saved then return false, why end
        return FinishClaim(pc, data, record, true)
    end)
end

function System.SyncPlayer(pc)
    return Run(pc, function(data)
        local raw = pc.task_data
        if type(raw) == "table" and next(raw) == nil then
            local ok, reason = Commit(pc, data)
            if not ok then return false, reason end
        end
        -- 恢复只查询回执，不在登录事件中主动重发奖励。
        for _, record in pairs(data.tasks) do
            if record.state == "claim_pending" and provider and provider.name == record.claim.provider then
                local ok, reason = FinishClaim(pc, data, record, false)
                if not ok and reason == "save-failed" then return false, reason end
            end
        end
        Status(pc).phase, Status(pc).reason = "ready", nil
        return true
    end)
end

function System.GetStatus(pc)
    local value, reason = Data.Read(pc)
    local result = Define.Copy(statuses[pc] or {phase = value and "ready" or "waiting-data", pendingSave = false})
    result.reason, result.rewardProvider = result.reason or reason, provider and provider.name or nil
    return result
end
function System.OnDataLoaded(playerKey)
    local pc = UGCGameSystem.GetPlayerControllerByPlayerKey(playerKey)
    if pc then return System.SyncPlayer(pc) end
    return false, "controller-missing"
end
function System.OnPlayerEnd(playerKey)
    local pc = UGCGameSystem.GetPlayerControllerByPlayerKey(playerKey)
    if pc then return System.OnControllerEnd(pc) end
end
function System.OnControllerEnd(pc)
    local ok, reason = true, nil
    if statuses[pc] and statuses[pc].pendingSave then ok, reason = Save(pc) end
    statuses[pc], busy[pc] = nil, nil
    return ok, reason
end
function System.EndPlay() statuses, busy, provider = {}, {}, nil; return true end

function System.AcceptResult(pc, success, code)
    if UGCGameSystem.IsServer() or pc ~= UGCGameSystem.GetLocalPlayerController() then return false end
    Bus:SendEvent(Define.RESULT, pc, success == true, tostring(code or "ok"))
    return true
end
function System.OnReplicated(pc)
    if not UGCGameSystem.IsServer() and pc == UGCGameSystem.GetLocalPlayerController() then
        Bus:SendEvent(Define.CHANGED, pc)
    end
end
function System.Request(pc, action, id)
    if action ~= "accept" and action ~= "claim" then return false, "invalid-action" end
    if UGCGameSystem.IsServer() then
        return (action == "accept" and System.AcceptTask or System.ClaimReward)(pc, id)
    end
    if pc ~= UGCGameSystem.GetLocalPlayerController() then return false, "local-player-only" end
    local ok, result = pcall(UnrealNetwork.CallUnrealRPC, pc, pc, "Server_TaskAction", action, Define.ID(id))
    if not ok or result == false then return false, "rpc-dispatch-failed" end
    return true, "pending"
end
return System
