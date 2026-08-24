-- 临时验证文件: 边界场景，测试注释豁免
--   违规模式出现在注释中，应该被规则忽略

local System_Comment = {}

local Config_Task = require('Script.Package.Task.Config.Config_Task')

function System_Comment.Sample()
    -- 这里的 Config_Task.Tasks[1] 在注释里，不应触发
    -- 又如 #Config_Task.Tasks 也是注释
    -- 同样 task.title 和 task.reward 都是注释
    local idx = 1
    return idx
end

return System_Comment
