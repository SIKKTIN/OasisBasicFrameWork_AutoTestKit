local Config = {
    Enabled = true,
    AutoOpen = true,
    ShowMouseCursor = true,
    UIID = "1001",
}

-- 项目可在此按玩家身份限制使用；服务端每次收到请求都会重新检查。
function Config.CanUse(playerController, isServer)
    return true
end

return Config
