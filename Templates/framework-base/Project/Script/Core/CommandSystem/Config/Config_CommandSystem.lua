local Config_CommandSystem = {
    Enabled = true,
    MaxCommandLength = 512,
    DefaultInterpreter = "default",

    Interpreters = {
        default = "Script.Core.CommandSystem.Interpreter.Interpreter_Default",
    },
}

--- 指令统一鉴权入口。正式发布前应关闭 Enabled 或在这里增加 UID 白名单。
---@param context table
---@param invocation table
---@return boolean
function Config_CommandSystem.CanExecute(context, invocation)
    return true
end

return Config_CommandSystem
