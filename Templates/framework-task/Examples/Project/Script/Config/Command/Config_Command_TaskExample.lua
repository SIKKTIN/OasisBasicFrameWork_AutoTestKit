return {
    namespace = "TaskExample",
    commands = {
        Advance = {
            describe = "推进一次独立任务示例目标（测试专用）",
            defaultTarget = "Server",
            allowedTargets = {Server = true},
            minArgs = 0, maxArgs = 0,
            handler = function(context)
                return require("Script.Package.TaskExample.Registry_TaskExample").Advance(context.playerController)
            end,
        },
    },
}
