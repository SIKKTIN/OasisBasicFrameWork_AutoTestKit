local function Handle(action)
    return function(context)
        local GM = require("Script.Package.GM.Registry_GM")
        local r = GM.ExecuteLocal(context.playerController, action)
        return r.success, r.message
    end
end
return {
    namespace = "GM",
    commands = {
        Status = {
            describe = "查看框架与控制器状态",
            defaultTarget = "Client",
            allowedTargets = {Client = true, Server = true, Both = true},
            minArgs = 0, maxArgs = 0, handler = Handle("status"),
        },
        PlayerData = {
            describe = "打印玩家数据；空项目提示未登记数据包",
            defaultTarget = "Client",
            allowedTargets = {Client = true, Server = true, Both = true},
            minArgs = 0, maxArgs = 0, handler = Handle("player-data"),
        },
        GameData = {
            describe = "打印游戏数据；空项目提示未登记数据包",
            defaultTarget = "Client",
            allowedTargets = {Client = true, Server = true, Both = true},
            minArgs = 0, maxArgs = 0, handler = Handle("game-data"),
        },
    },
}
