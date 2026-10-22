local System_CommandSystem = {}

local CONFIG_PATH = "Script.Core.CommandSystem.Config.Config_CommandSystem"
local COMMAND_CONFIG_INDEX_PATH = "Script.Setting.CommandConfigIndex"
local unpackArgs = table.unpack or unpack

local systemConfig = nil
local initialized = false
local interpreters = {}
local commandRegistry = {}
local loadedCommandConfigPaths = {}

local function Normalize(value)
    return string.lower(tostring(value or ""))
end

local function StartsWithDash(value)
    return type(value) == "string" and value:sub(1, 1) == "-"
end

local function Result(success, code, message, value)
    if not success then
        ugcprint(string.format("[CommandSystem][%s] %s", tostring(code), tostring(message)))
    end
    return {
        success = success,
        code = code,
        message = message,
        value = value,
    }
end

local function LoadModule(path, forceReload)
    if forceReload and package and package.loaded then
        package.loaded[path] = nil
    end
    return require(path)
end

local function SortedKeys(source)
    local keys = {}
    for key in pairs(source or {}) do
        table.insert(keys, key)
    end
    table.sort(keys, function(a, b)
        return tostring(a) < tostring(b)
    end)
    return keys
end

--- 公共路由只需要空格分词，同时记录 payload 在原字符串中的起点。
local function TokenizeRoute(input)
    local tokens = {}
    local length = #input
    local index = 1

    while index <= length do
        while index <= length and input:sub(index, index):match("%s") do
            index = index + 1
        end
        if index > length then
            break
        end

        local startIndex = index
        local char = input:sub(index, index)
        local value

        if char == "\"" or char == "'" then
            local quote = char
            local parts = {}
            index = index + 1
            local closed = false
            while index <= length do
                char = input:sub(index, index)
                if char == "\\" and index < length then
                    local nextChar = input:sub(index + 1, index + 1)
                    if nextChar == quote or nextChar == "\\" then
                        table.insert(parts, nextChar)
                        index = index + 2
                    else
                        table.insert(parts, char)
                        index = index + 1
                    end
                elseif char == quote then
                    closed = true
                    index = index + 1
                    break
                else
                    table.insert(parts, char)
                    index = index + 1
                end
            end
            if not closed then
                return nil, "公共参数引号未闭合"
            end
            value = table.concat(parts)
        else
            while index <= length and not input:sub(index, index):match("%s") do
                index = index + 1
            end
            value = input:sub(startIndex, index - 1)
        end

        table.insert(tokens, {
            value = value,
            startIndex = startIndex,
        })
    end

    return tokens, nil
end

local TARGETS = {
    client = "Client",
    server = "Server",
    both = "Both",
}

local function ParseRoute(commandText)
    local tokens, tokenizeError = TokenizeRoute(commandText)
    if not tokens then
        return nil, "TOKENIZE_ERROR", tokenizeError
    end
    if #tokens == 0 or Normalize(tokens[1].value) ~= "cmd" then
        return nil, "INVALID_PREFIX", "指令必须以 cmd 开始"
    end

    local index = 2
    if not tokens[index] or Normalize(tokens[index].value) ~= "-s" then
        return nil, "MISSING_INTERPRETER_SELECTOR", "cmd 后必须指定 -s"
    end
    index = index + 1

    local interpreterName = systemConfig.DefaultInterpreter
    if tokens[index] and not StartsWithDash(tokens[index].value) then
        interpreterName = tokens[index].value
        index = index + 1
    end

    local targetOverride = nil
    if tokens[index] and Normalize(tokens[index].value) == "-t" then
        index = index + 1
        if not tokens[index] or StartsWithDash(tokens[index].value) then
            targetOverride = "Both"
        else
            targetOverride = TARGETS[Normalize(tokens[index].value)]
            if not targetOverride then
                return nil, "INVALID_TARGET", "执行端只能是 client、server 或 both"
            end
            index = index + 1
        end
    end

    if not tokens[index] then
        return nil, "MISSING_PAYLOAD", "缺少需要交给解释器处理的指令内容"
    end

    return {
        interpreterName = interpreterName,
        targetOverride = targetOverride,
        payload = commandText:sub(tokens[index].startIndex),
    }, nil, nil
end

local function CanonicalTarget(value)
    return TARGETS[Normalize(value)]
end

local function IsTargetAllowed(invocation, target)
    local allowedTargets = invocation.allowedTargets or {}
    for configuredTarget, allowed in pairs(allowedTargets) do
        if allowed and CanonicalTarget(configuredTarget) == target then
            return true
        end
    end
    return false
end

local function CloneContext(source)
    local context = {}
    for key, value in pairs(source or {}) do
        context[key] = value
    end
    return context
end

local function ExecuteLocal(invocation, context)
    local ok, value, handlerMessage = pcall(function()
        return invocation.handler(context, unpackArgs(invocation.args or {}))
    end)
    if not ok then
        local message = string.format("%s 执行异常: %s", invocation.name, tostring(value))
        return Result(false, "HANDLER_ERROR", message)
    end
    if value == false then
        local message = tostring(handlerMessage or (invocation.name .. " 执行失败，详见日志"))
        return Result(false, "HANDLER_REJECTED", message)
    end

    local message = tostring(
        handlerMessage or (invocation.name .. " 执行成功"))
    ugcprint("[CommandSystem] " .. message)
    return Result(true, "SUCCESS", message, value)
end

local function ForwardToServer(commandText, context)
    local playerController = context.playerController or UGCGameSystem.GetLocalPlayerController()
    if not playerController then
        return Result(false, "PLAYER_CONTROLLER_NOT_FOUND", "无法找到本地 PlayerController")
    end

    UnrealNetwork.CallUnrealRPC(
        playerController,
        playerController,
        "Server_ExecuteDevCommand",
        commandText
    )
    ugcprint("[CommandSystem] 指令已发送到服务端")
    return Result(true, "SERVER_DISPATCHED", "指令已发送到服务端")
end

function System_CommandSystem.RegisterInterpreter(name, interpreter)
    local normalizedName = Normalize(name)
    if normalizedName == "" then
        return false, "解释器名称不能为空"
    end

    local instance = interpreter
    if type(interpreter) == "string" then
        local ok, loaded = pcall(require, interpreter)
        if not ok then
            return false, "解释器加载失败: " .. tostring(loaded)
        end
        instance = loaded
    end
    if type(instance) ~= "table" or type(instance.Parse) ~= "function" then
        return false, "解释器必须提供 Parse(payload, commandRegistry)"
    end

    interpreters[normalizedName] = instance
    return true, nil
end

local function RegisterCommandConfig(configName, config)
    if type(config) ~= "table" or type(config.namespace) ~= "string" then
        return false, "指令配置缺少 namespace: " .. tostring(configName)
    end

    local namespaceKey = Normalize(config.namespace)
    if namespaceKey == "" then
        return false, "指令配置 namespace 不能为空: " .. tostring(configName)
    end
    if commandRegistry[namespaceKey] then
        return false, "命名空间重复: " .. config.namespace
    end

    local namespace = {
        name = config.namespace,
        commands = {},
    }
    for _, actionName in ipairs(SortedKeys(config.commands)) do
        local command = config.commands[actionName]
        local actionKey = Normalize(actionName)
        if namespace.commands[actionKey] then
            return false, string.format("指令重复: %s.%s", config.namespace, actionName)
        end
        if type(command) ~= "table" or type(command.handler) ~= "function" then
            return false, string.format("指令缺少 handler: %s.%s", config.namespace, actionName)
        end

        local registeredCommand = {}
        for key, value in pairs(command) do
            registeredCommand[key] = value
        end
        registeredCommand.name = actionName
        namespace.commands[actionKey] = registeredCommand
    end

    commandRegistry[namespaceKey] = namespace
    return true, nil
end

local function InitializeInternal(forceReload)
    if forceReload and package and package.loaded then
        for _, path in ipairs(loadedCommandConfigPaths) do
            package.loaded[path] = nil
        end
    end

    interpreters = {}
    commandRegistry = {}
    loadedCommandConfigPaths = {}

    local ok, loadedConfig = pcall(LoadModule, CONFIG_PATH, forceReload)
    if not ok then
        initialized = false
        ugcprint("[CommandSystem] 系统配置加载失败: " .. tostring(loadedConfig))
        return false
    end
    systemConfig = loadedConfig

    for _, name in ipairs(SortedKeys(systemConfig.Interpreters)) do
        local path = systemConfig.Interpreters[name]
        local interpreterOk, interpreter = pcall(LoadModule, path, forceReload)
        if not interpreterOk then
            initialized = false
            ugcprint("[CommandSystem] 解释器加载失败: " .. tostring(interpreter))
            return false
        end
        local registered, registerError = System_CommandSystem.RegisterInterpreter(name, interpreter)
        if not registered then
            initialized = false
            ugcprint("[CommandSystem] " .. registerError)
            return false
        end
    end

    local indexOk, commandConfigPaths = pcall(
        LoadModule, COMMAND_CONFIG_INDEX_PATH, forceReload)
    if not indexOk or type(commandConfigPaths) ~= "table" then
        initialized = false
        ugcprint("[CommandSystem] 命令配置索引加载失败: " .. tostring(commandConfigPaths))
        return false
    end

    for index, path in ipairs(commandConfigPaths) do
        if type(path) ~= "string" or path == "" then
            initialized = false
            ugcprint(string.format("[CommandSystem] 命令配置索引第 %d 项不是有效模块路径", index))
            return false
        end
        table.insert(loadedCommandConfigPaths, path)
        local configOk, commandConfig = pcall(LoadModule, path, forceReload)
        if not configOk then
            initialized = false
            ugcprint("[CommandSystem] 指令配置加载失败: " .. path
                .. " | " .. tostring(commandConfig))
            return false
        end
        local registered, registerError = RegisterCommandConfig(path, commandConfig)
        if not registered then
            initialized = false
            ugcprint("[CommandSystem] " .. registerError)
            return false
        end
    end

    initialized = true
    ugcprint(string.format(
        "[CommandSystem] 初始化完成: %d 个解释器, %d 个命名空间",
        #SortedKeys(interpreters), #SortedKeys(commandRegistry)))
    return true
end

function System_CommandSystem.Initialize()
    if initialized then
        return true
    end
    return InitializeInternal(false)
end

function System_CommandSystem.Reload()
    initialized = false
    return InitializeInternal(true)
end

function System_CommandSystem.Execute(commandText, sourceContext)
    if not initialized and not System_CommandSystem.Initialize() then
        return Result(false, "NOT_INITIALIZED", "CommandSystem 初始化失败")
    end
    if not systemConfig.Enabled then
        return Result(false, "DISABLED", "开发指令系统未启用")
    end
    if type(commandText) ~= "string" or commandText:match("^%s*$") then
        return Result(false, "EMPTY_COMMAND", "指令不能为空")
    end
    if #commandText > (systemConfig.MaxCommandLength or 512) then
        return Result(false, "COMMAND_TOO_LONG", "指令长度超过限制")
    end

    local route, routeCode, routeError = ParseRoute(commandText)
    if not route then
        return Result(false, routeCode, routeError)
    end

    local interpreter = interpreters[Normalize(route.interpreterName)]
    if not interpreter then
        return Result(false, "UNKNOWN_INTERPRETER", "未知解释器: " .. tostring(route.interpreterName))
    end

    local parseOk, invocation, parseCode, parseError = pcall(
        interpreter.Parse, route.payload, commandRegistry)
    if not parseOk then
        return Result(false, "INTERPRETER_ERROR", "解释器异常: " .. tostring(invocation))
    end
    if not invocation then
        return Result(false, parseCode or "PARSE_ERROR", parseError or "指令解析失败")
    end

    local target = route.targetOverride or CanonicalTarget(invocation.defaultTarget)
    if not target then
        return Result(false, "INVALID_DEFAULT_TARGET", invocation.name .. " 未配置有效默认执行端")
    end
    if not IsTargetAllowed(invocation, target) then
        return Result(false, "TARGET_NOT_ALLOWED", string.format(
            "%s 不允许在 %s 执行", invocation.name, target))
    end

    local context = CloneContext(sourceContext)
    if not context.playerController and not UGCGameSystem.IsServer()
        and type(UGCGameSystem.GetLocalPlayerController) == "function" then
        context.playerController = UGCGameSystem.GetLocalPlayerController()
    end
    if context.playerController
        and type(UGCGameSystem.GetPlayerKeyByPlayerController) == "function" then
        local keyOk, key = pcall(
            UGCGameSystem.GetPlayerKeyByPlayerController, context.playerController)
        if keyOk and key ~= nil and tostring(key) ~= "" and tostring(key) ~= "0" then
            context.playerKey = tostring(key)
        end
    end
    context.commandText = commandText
    context.requestedTarget = target
    context.actualPort = UGCGameSystem.IsServer() and "Server" or "Client"

    local authOk, allowed, authMessage = pcall(systemConfig.CanExecute, context, invocation)
    if not authOk then
        return Result(false, "AUTH_ERROR", "指令鉴权异常: " .. tostring(allowed))
    end
    if not allowed then
        return Result(false, "ACCESS_DENIED", tostring(authMessage or "没有执行该指令的权限"))
    end

    if UGCGameSystem.IsServer() then
        if target == "Client" then
            return Result(false, "INVALID_SERVER_TARGET", "服务端不能执行仅客户端指令")
        end
        return ExecuteLocal(invocation, context)
    end

    if target == "Client" then
        return ExecuteLocal(invocation, context)
    end
    if target == "Server" then
        return ForwardToServer(commandText, context)
    end

    local localResult = ExecuteLocal(invocation, context)
    local serverResult = ForwardToServer(commandText, context)
    if not localResult.success then
        localResult.message = localResult.message .. "；" .. serverResult.message
        return localResult
    end
    if not serverResult.success then
        return serverResult
    end
    return Result(true, "BOTH_DISPATCHED", invocation.name .. " 客户端执行成功，服务端已下发", localResult.value)
end

return System_CommandSystem
