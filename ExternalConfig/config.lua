-- Shared JSON configuration loader for TestHelper.

local M = {}

local function readFile(path)
    local file, err = io.open(path, "r")
    if not file then return nil, err end
    local content = file:read("*a")
    file:close()
    return content
end

local function parseJson(source)
    local pos = 1
    local length = #source

    local function skipWhitespace()
        while pos <= length and source:sub(pos, pos):match("%s") do pos = pos + 1 end
    end

    local parseValue
    local function parseString()
        pos = pos + 1
        local out = {}
        while pos <= length do
            local char = source:sub(pos, pos)
            if char == '"' then
                pos = pos + 1
                return table.concat(out)
            elseif char == "\\" then
                pos = pos + 1
                local escaped = source:sub(pos, pos)
                local replacements = { ['"'] = '"', ["\\"] = "\\", ["/"] = "/", b = "\b", f = "\f", n = "\n", r = "\r", t = "\t" }
                if replacements[escaped] then
                    out[#out + 1] = replacements[escaped]
                elseif escaped == "u" then
                    local hex = source:sub(pos + 1, pos + 4)
                    if not hex:match("^%x%x%x%x$") then error("invalid unicode escape at " .. pos) end
                    out[#out + 1] = "\\u" .. hex
                    pos = pos + 4
                else
                    error("invalid escape at " .. pos)
                end
            else
                out[#out + 1] = char
            end
            pos = pos + 1
        end
        error("unterminated string")
    end

    local function parseNumber()
        local start = pos
        local token = source:sub(pos):match("^-?%d+%.?%d*[eE]?[+-]?%d*")
        if not token or token == "" then error("invalid number at " .. pos) end
        pos = pos + #token
        return tonumber(token)
    end

    local function parseArray()
        pos = pos + 1
        local result = {}
        skipWhitespace()
        if source:sub(pos, pos) == "]" then pos = pos + 1; return result end
        while true do
            result[#result + 1] = parseValue()
            skipWhitespace()
            local char = source:sub(pos, pos)
            if char == "]" then pos = pos + 1; return result end
            if char ~= "," then error("expected ',' or ']' at " .. pos) end
            pos = pos + 1
            skipWhitespace()
        end
    end

    local function parseObject()
        pos = pos + 1
        local result = {}
        skipWhitespace()
        if source:sub(pos, pos) == "}" then pos = pos + 1; return result end
        while true do
            if source:sub(pos, pos) ~= '"' then error("expected object key at " .. pos) end
            local key = parseString()
            skipWhitespace()
            if source:sub(pos, pos) ~= ":" then error("expected ':' at " .. pos) end
            pos = pos + 1
            result[key] = parseValue()
            skipWhitespace()
            local char = source:sub(pos, pos)
            if char == "}" then pos = pos + 1; return result end
            if char ~= "," then error("expected ',' or '}' at " .. pos) end
            pos = pos + 1
            skipWhitespace()
        end
    end

    function parseValue()
        skipWhitespace()
        local char = source:sub(pos, pos)
        if char == '"' then return parseString() end
        if char == "{" then return parseObject() end
        if char == "[" then return parseArray() end
        if source:sub(pos, pos + 3) == "true" then pos = pos + 4; return true end
        if source:sub(pos, pos + 4) == "false" then pos = pos + 5; return false end
        if source:sub(pos, pos + 3) == "null" then pos = pos + 4; return nil end
        return parseNumber()
    end

    local value = parseValue()
    skipWhitespace()
    if pos <= length then error("unexpected content at " .. pos) end
    return value
end

local function getRoot()
    local source = debug.getinfo(1, "S").source:match("@(.*)") or ""
    source = source:gsub("/", "\\")
    local root = source:match("^(.*)\\ExternalConfig\\config%.lua$")
    if root then return root end
    if source == [[ExternalConfig\config.lua]] then return "." end
    error("无法根据配置加载器位置确定工具根目录: " .. source)
end

function M.load(path)
    path = path or (getRoot() .. "\\setting.json")
    local content, readErr = readFile(path)
    if not content then error("无法读取配置文件 " .. path .. ": " .. tostring(readErr)) end
    local ok, config = pcall(parseJson, content)
    if not ok then error("配置文件格式错误 " .. path .. ": " .. tostring(config)) end
    if type(config) ~= "table" then error("配置文件必须是 JSON 对象: " .. path) end
    for _, key in ipairs({ "projectRoot", "luaPath" }) do
        if type(config[key]) ~= "string" or config[key] == "" then
            error("配置缺少必填字段: " .. key)
        end
    end
    return config
end

return M
