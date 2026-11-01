local Data = {}
local Define = require("Script.Package.TaskSystem.Data.Define_Task")
local Const = require("Script.Const.Data.Const_Data")
local Core = require("Script.Core.PlayerDataCore.Global_PlayerDataCore")
local KEY = Const.PLAYER_DATA_TYPE.TASK_DATA

function Data.Read(pc)
    if KEY ~= "task_data" then return nil, "data-constants-outdated" end
    local value = pc and Core.QueryPackage(pc, KEY)
    if type(value) ~= "table" then return nil, "task-data-not-ready" end
    if next(value) == nil then return {version = Define.VERSION, tasks = {}}, nil, true end
    if value.version ~= Define.VERSION or type(value.tasks) ~= "table" then return nil, "unsupported-task-data" end
    for id, record in pairs(value.tasks) do
        if not Define.ID(id) or type(record) ~= "table" or type(record.progress) ~= "table"
            or type(record.events) ~= "table" or (record.state ~= "active" and record.state ~= "completed"
            and record.state ~= "claim_pending" and record.state ~= "claimed") then return nil, "invalid-task-record" end
        for _, count in pairs(record.progress) do
            if type(count) ~= "number" or count < 0 or count == math.huge or count % 1 ~= 0 then return nil, "invalid-task-progress" end
        end
        if record.state == "claim_pending" and (type(record.claim) ~= "table"
            or type(record.claim.id) ~= "string" or type(record.claim.rewards) ~= "table"
            or type(record.claim.provider) ~= "string") then return nil, "invalid-task-claim" end
    end
    return Define.Copy(value)
end

function Data.Write(pc, value)
    if not UGCGameSystem.IsServer() or KEY ~= "task_data" then return false end
    return Core.ModifyPackage(pc, KEY, Define.Copy(value)) == true
end

function Data.Init(playerKey)
    if not UGCGameSystem.IsServer() then return false, "server-only" end
    if KEY ~= "task_data" then return false, "data-constants-outdated" end
    local pc = UGCGameSystem.GetPlayerControllerByPlayerKey(playerKey)
    if not pc then return false, "controller-missing" end
    if pc[KEY] == nil then pc[KEY] = {} end
    local value, reason, missing = Data.Read(pc)
    if not value then return false, reason end
    if missing then return Data.Write(pc, value) end
    return true
end

function Data.Format(pc)
    local value, reason = Data.Read(pc)
    if not value then return false, reason end
    local count = 0; for _ in pairs(value.tasks) do count = count + 1 end
    ugcprint("[TaskSystem] version=" .. tostring(value.version) .. ", records=" .. tostring(count))
    return true
end
return Data
