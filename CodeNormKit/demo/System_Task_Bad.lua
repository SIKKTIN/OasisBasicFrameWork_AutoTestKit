-- 临时验证文件: 模拟 System_Task，包含违规代码
local System_Task = {}

local Config_Task = require('Script.Package.Task.Config.Config_Task')

local g_currentTaskIndex = 1

function System_Task.GetCurrentTask()
    return Config_Task.Tasks[g_currentTaskIndex]
end

function System_Task.GetCurrentTaskName()
    local task = Config_Task.Tasks[g_currentTaskIndex]
    return task.title
end

function System_Task.IsAllTasksDone()
    return g_currentTaskIndex >= #Config_Task.Tasks
end

function System_Task.GetReward()
    local task = Config_Task.Tasks[g_currentTaskIndex]
    return task.reward
end

return System_Task
