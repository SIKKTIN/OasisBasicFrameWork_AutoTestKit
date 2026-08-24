-- 临时验证文件: 模拟干净的 System_Task，所有访问通过 getter
local System_Task = {}

local Config_Task = require('Script.Package.Task.Config.Config_Task')

local g_currentTaskIndex = 1

-- 通过 getter 访问，无违规
function System_Task.GetCurrentTask()
    return Config_Task.GetTaskByIndex(g_currentTaskIndex)
end

function System_Task.GetCurrentTaskName()
    return Config_Task.GetTaskTitle(g_currentTaskIndex)
end

function System_Task.IsAllTasksDone()
    return g_currentTaskIndex >= Config_Task.GetTaskCount()
end

function System_Task.GetReward()
    return Config_Task.GetTaskReward(g_currentTaskIndex)
end

return System_Task
