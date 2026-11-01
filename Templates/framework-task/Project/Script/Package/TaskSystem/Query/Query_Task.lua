local Query = {}
local Define = require("Script.Package.TaskSystem.Data.Define_Task")
local Data = require("Script.Package.TaskSystem.Data.PlayerData_Task")

function Query.GetTaskState(pc, id)
    id = Define.ID(id)
    local config = Define.Get(id)
    if not config then return nil, "task-not-found" end
    local data, reason = Data.Read(pc)
    if not data then return {id = id, state = "waiting", progress = {}}, reason end
    local record = data.tasks[id]
    if record then return Define.Copy(record) end
    for _, dependency in ipairs(config.prerequisites) do
        local previous = data.tasks[dependency]
        if not previous or previous.state ~= "claimed" then return {id = id, state = "locked", progress = {}} end
    end
    return {id = id, state = "available", progress = {}}
end

function Query.GetTaskList(pc)
    local result = {}
    for _, config in ipairs(Define.List()) do
        result[#result + 1] = {config = config, status = Query.GetTaskState(pc, config.id)}
    end
    return result
end
Query.GetTaskConfig = Define.Get
return Query
