local Interpreter_Default = {}

local function Normalize(value)
    return string.lower(tostring(value or ""))
end

local function IsSpace(char)
    return char:match("%s") ~= nil
end

--- 将解释器内容拆分为 token，并保留 token 是否使用过引号。
---@param input string
---@return table[]|nil, string|nil
local function Tokenize(input)
    local tokens = {}
    local length = #input
    local index = 1

    while index <= length do
        while index <= length and IsSpace(input:sub(index, index)) do
            index = index + 1
        end
        if index > length then
            break
        end

        local parts = {}
        local quoted = false

        while index <= length and not IsSpace(input:sub(index, index)) do
            local char = input:sub(index, index)
            if char == "\"" or char == "'" then
                local quote = char
                quoted = true
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
                    return nil, "参数引号未闭合"
                end
            else
                table.insert(parts, char)
                index = index + 1
            end
        end

        table.insert(tokens, {
            value = table.concat(parts),
            quoted = quoted,
        })
    end

    return tokens, nil
end

local function ConvertArgument(token)
    if token.quoted then
        return token.value
    end

    local lowerValue = Normalize(token.value)
    if lowerValue == "true" then
        return true
    end
    if lowerValue == "false" then
        return false
    end

    local numberValue = tonumber(token.value)
    if numberValue ~= nil then
        return numberValue
    end
    return token.value
end

---@param payload string
---@param commandRegistry table
---@return table|nil, string|nil, string|nil
function Interpreter_Default.Parse(payload, commandRegistry)
    local tokens, tokenizeError = Tokenize(payload)
    if not tokens then
        return nil, "TOKENIZE_ERROR", tokenizeError
    end
    if #tokens < 2 then
        return nil, "INCOMPLETE_COMMAND", "默认解释器需要 -命名空间 -动作"
    end

    local namespaceToken = tokens[1].value
    local actionToken = tokens[2].value
    if namespaceToken:sub(1, 1) ~= "-" or actionToken:sub(1, 1) ~= "-" then
        return nil, "INVALID_COMMAND_FORMAT", "命名空间和动作必须以 '-' 开头"
    end

    local namespaceKey = Normalize(namespaceToken:sub(2))
    local actionKey = Normalize(actionToken:sub(2))
    local namespace = commandRegistry[namespaceKey]
    if not namespace then
        return nil, "UNKNOWN_NAMESPACE", "未知命名空间: " .. namespaceToken:sub(2)
    end

    local command = namespace.commands[actionKey]
    if not command then
        return nil, "UNKNOWN_COMMAND", string.format(
            "命名空间 %s 中不存在指令 %s", namespace.name, actionToken:sub(2))
    end

    local args = {}
    for index = 3, #tokens do
        table.insert(args, ConvertArgument(tokens[index]))
    end

    local minArgs = command.minArgs or 0
    local maxArgs = command.maxArgs
    if #args < minArgs then
        return nil, "TOO_FEW_ARGUMENTS", string.format(
            "%s.%s 至少需要 %d 个参数", namespace.name, command.name, minArgs)
    end
    if maxArgs and #args > maxArgs then
        return nil, "TOO_MANY_ARGUMENTS", string.format(
            "%s.%s 最多允许 %d 个参数", namespace.name, command.name, maxArgs)
    end

    if command.validate then
        local ok, valid, message = pcall(command.validate, args)
        if not ok then
            return nil, "VALIDATION_ERROR", "参数校验异常: " .. tostring(valid)
        end
        if not valid then
            return nil, "INVALID_ARGUMENTS", tostring(message or "参数校验失败")
        end
    end

    return {
        name = namespace.name .. "." .. command.name,
        defaultTarget = command.defaultTarget,
        allowedTargets = command.allowedTargets,
        handler = command.handler,
        args = args,
    }, nil, nil
end

return Interpreter_Default
