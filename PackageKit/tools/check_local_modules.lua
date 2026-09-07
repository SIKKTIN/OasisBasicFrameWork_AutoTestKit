-- 检查 Package 内部 Lua 文件是否创建隐式全局模块或函数。

local M = {}

local function scanLuaFiles(packageDir)
    local files = {}
    local handle = io.popen('dir /b /s "' .. packageDir .. '\\*.lua" 2>nul')
    if not handle then return files end
    for line in (handle:read("*a") or ""):gmatch("[^\r\n]+") do
        files[#files + 1] = line:gsub("^%s*(.-)%s*$", "%1")
    end
    handle:close()
    table.sort(files, function(a, b) return a:lower() < b:lower() end)
    return files
end

local function relativePath(path, packageDir)
    local normalizedPath = path:gsub("/", "\\")
    local normalizedRoot = packageDir:gsub("/", "\\"):gsub("\\+$", "")
    local prefix = normalizedRoot .. "\\"
    if normalizedPath:sub(1, #prefix):lower() == prefix:lower() then
        return normalizedPath:sub(#prefix + 1)
    end
    return normalizedPath
end

local function maskStringsAndComments(line, inBlockComment)
    local output = {}
    local i = 1
    while i <= #line do
        if inBlockComment then
            local finish = line:find("]]", i, true)
            if not finish then return "", true end
            i = finish + 2
            inBlockComment = false
        elseif line:sub(i, i + 3) == "--[[" then
            inBlockComment = true
            i = i + 4
        elseif line:sub(i, i + 1) == "--" then
            break
        elseif line:sub(i, i) == '"' or line:sub(i, i) == "'" then
            local quote = line:sub(i, i)
            output[#output + 1] = " "
            i = i + 1
            while i <= #line do
                local char = line:sub(i, i)
                if char == "\\" then
                    i = i + 2
                elseif char == quote then
                    i = i + 1
                    break
                else
                    i = i + 1
                end
            end
        else
            output[#output + 1] = line:sub(i, i)
            i = i + 1
        end
    end
    return table.concat(output), inBlockComment
end

local function addViolation(result, filePath, lineNumber, name, line)
    result.violations[#result.violations + 1] = {
        file = filePath,
        line = lineNumber,
        name = name,
        source = line:gsub("^%s*(.-)%s*$", "%1"),
    }
end

local function inspectFile(filePath, displayPath, result)
    local file = io.open(filePath, "r")
    if not file then
        result.warnings = result.warnings + 1
        result.warningDetails[#result.warningDetails + 1] = displayPath .. ": 无法读取文件"
        return
    end

    local inBlockComment = false
    for lineNumber, line in ipairs((function()
        local lines = {}
        for item in file:lines() do lines[#lines + 1] = item end
        return lines
    end)()) do
        local code
        code, inBlockComment = maskStringsAndComments(line, inBlockComment)
        -- 只检查无缩进的顶层赋值；缩进赋值通常属于函数内部局部状态，
        -- 而 Package_Meta 返回表中的字段也不应被当成全局定义。
        local name = code:match("^([%a_][%w_]*)%s*=")
        if name and name ~= "return" then
            addViolation(result, displayPath, lineNumber, name, line)
        end

        local explicitGlobal = code:match("^_G%s*%.%s*([%a_][%w_]*)%s*=")
        if explicitGlobal then
            addViolation(result, displayPath, lineNumber, "_G." .. explicitGlobal, line)
        end

        local functionName = code:match("^function%s+([%a_][%w_%.:]*)%s*%(")
        if functionName and (not functionName:find(".", 1, true) or functionName:match("^_G%.")) then
            addViolation(result, displayPath, lineNumber, functionName, line)
        end
    end
    file:close()
end

function M.run(projectRoot)
    local packageDir = projectRoot .. [[\Script\Package]]
    local result = {
        packageDir = packageDir,
        files = 0,
        violations = {},
        warnings = 0,
        warningDetails = {},
        errors = 0,
    }

    for _, filePath in ipairs(scanLuaFiles(packageDir)) do
        result.files = result.files + 1
        inspectFile(filePath, relativePath(filePath, packageDir), result)
    end
    result.errors = #result.violations
    return result
end

function M.printReport(result)
    print("  扫描目录: " .. result.packageDir)
    print("  Lua 文件数: " .. result.files)
    for _, warning in ipairs(result.warningDetails) do print("  [WARN] " .. warning) end
    if #result.violations == 0 then
        print("  ✓ 未发现 Package 隐式全局定义")
    else
        for _, violation in ipairs(result.violations) do
            print(string.format("  ✗ %s:%d 创建了全局 %s", violation.file, violation.line, violation.name))
            print("      " .. violation.source)
        end
    end
    print(string.format("  总结: %d 个错误, %d 个警告", result.errors, result.warnings))
end

return M
