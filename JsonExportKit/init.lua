-- ============================================================
-- JsonExportKit
-- 从 Package_Meta privates 导出配置模板 JSON
--
-- 配置：
--   路径相关配置统一从 ExternalConfig/setting.lua 读取
-- ============================================================

local M = {}

-- 冲突缓存（每次 conflictCheck 重算）
local _conflictCache = {}

-- TestHelper 根目录（固定路径）
local TEST_HELPER_ROOT = [[E:\Project\AgentHelper\WithDrawCache\TestHelper]]

-- 引入项目级配置
package.path =
      TEST_HELPER_ROOT .. "/ExternalConfig/?.lua"
    .. ";" .. TEST_HELPER_ROOT .. "/?.lua"
    .. ";" .. package.path

local setting = require("setting")

-- ============================================================
-- 项目根目录和目录路径
-- ============================================================

M.PROJECT_ROOT = setting.projectRoot

function M.getScriptDir()
    return M.PROJECT_ROOT .. [[\Script]]
end

function M.getExportRoot()
    return setting.jsonExportRoot
end

-- ============================================================
-- 工具函数（来自 GenKit，复刻于此避免循环依赖）
-- ============================================================

-- 扫描目录下所有 .lua 文件
function M.scanLuaFiles(dir)
    local files = {}
    local fullPath = dir:gsub("/", "\\")

    local cmd = 'dir /b /s "' .. fullPath .. '\\*.lua" 2>nul'
    local handle = io.popen(cmd)
    if handle then
        local output = handle:read("*all")
        handle:close()
        for line in (output or ""):gmatch("[^\r\n]+") do
            local trimmed = line:gsub("[\r\n]", ""):gsub("^%s*(.-)%s*$", "%1")
            if trimmed ~= "" and trimmed:match("%.lua$") then
                files[#files + 1] = trimmed
            end
        end
    end
    return files
end

-- 将绝对路径转换为相对于 Script/ 的路径
function M.absPathToRelative(absPath)
    local normalized = absPath:gsub("\\", "/"):gsub("^[A-Za-z]:", "")
    local rel = normalized:match("[/\\]Script[/\\](.+)")
    if rel then
        return rel:gsub("%.lua$", "")
    end
    return nil
end

-- 项目根目录
M.PROJECT_ROOT = setting.projectRoot

-- 导出根目录
function M.getExportRoot()
    return setting.jsonExportRoot
end

-- ============================================================
-- JSON 序列化辅助
-- ============================================================

--- Lua 值转 JSON 字符串（只处理 nil/string/number/boolean/table）
---@param value any
---@param indent number|nil
---@param indentStr string|nil
local function toJson(value, indent, indentStr)
    indent = indent or 0
    indentStr = indentStr or "    "

    local function makeIndent(level)
        return string.rep(indentStr, level)
    end

    if value == nil then
        return "null"
    elseif type(value) == "string" then
        -- 简单转义
        local escaped = value
            :gsub("\\", "\\\\")
            :gsub("\"", "\\\"")
            :gsub("\n", "\\n")
            :gsub("\r", "\\r")
            :gsub("\t", "\\t")
        return "\"" .. escaped .. "\""
    elseif type(value) == "number" or type(value) == "boolean" then
        return tostring(value)
    elseif type(value) == "table" then
        local isArray = #value > 0 or next(value) == nil
        if isArray then
            local parts = {}
            for i, v in ipairs(value) do
                local itemJson = toJson(v, indent + 1, indentStr)
                table.insert(parts, itemJson)
            end
            if #parts == 0 then
                return "[]"
            end
            local items = {}
            for _, item in ipairs(parts) do
                table.insert(items, makeIndent(indent + 1) .. item)
            end
            return "[\n" .. table.concat(items, ",\n") .. "\n" .. makeIndent(indent) .. "]"
        else
            local keys = {}
            for k in pairs(value) do
                table.insert(keys, k)
            end
            table.sort(keys)
            local parts = {}
            for _, k in ipairs(keys) do
                local v = value[k]
                local keyStr = "\"" .. tostring(k) .. "\""
                local valStr = toJson(v, indent + 1, indentStr)
                table.insert(parts, makeIndent(indent + 1) .. keyStr .. ": " .. valStr)
            end
            if #parts == 0 then
                return "{}"
            end
            return "{\n" .. table.concat(parts, ",\n") .. "\n" .. makeIndent(indent) .. "}"
        end
    else
        return "null"
    end
end

M.toJson = toJson

-- ============================================================
-- 字段类型转零值
-- ============================================================

local TYPE_ZERO = {
    string = "",
    number = 0,
    boolean = false,
}

---@param fieldDef table { name = string, type = string }
---@return any zero value
local function getZeroValue(fieldDef)
    local t = fieldDef.type or "string"
    return TYPE_ZERO[t] or ""
end

-- ============================================================
-- 扫描所有 Package_Meta
-- ============================================================

--- 扫描所有 Package_Meta.lua，返回 { packageName, filePath, meta }[]
function M.scanAllMeta()
    local packageDir = M.getScriptDir() .. [[\Package]]
    local luaFiles = M.scanLuaFiles(packageDir)
    local results = {}

    for _, filePath in ipairs(luaFiles) do
        local relPath = M.absPathToRelative(filePath)
        if relPath and relPath:match("^Package/[^/]+/Package_Meta$") then
            -- 提取包名
            local packageName = relPath:match("^Package/([^/]+)/Package_Meta$")
            if packageName then
                table.insert(results, {
                    packageName = packageName,
                    filePath = filePath,
                    relPath = relPath,
                })
            end
        end
    end

    table.sort(results, function(a, b) return a.packageName < b.packageName end)
    return results
end

--- 加载单个 Package_Meta
--- 使用文本解析方式，避免执行 require
function M.loadMeta(filePath)
    local f, err = io.open(filePath, "r")
    if not f then
        return nil, "无法打开文件: " .. tostring(err)
    end
    local content = f:read("*a")
    f:close()

    -- 提取 privates 部分
    local privates = M.extractPrivates(content)
    if not privates then
        return nil, "未找到 privates 定义"
    end

    -- 提取 packageName（从路径或内容）
    local packageName = M.extractPackageName(content, filePath)

    return {
        packageName = packageName,
        privates = privates,
    }
end

--- 从文件内容中提取 privates 表
function M.extractPrivates(content)
    -- 找到 "privates = {" 的位置
    local startPos = content:match('privates%s*=%s*%{%s*')
    if not startPos then
        return nil
    end

    -- 找到 privates 块的开始位置（使用 pattern 匹配）
    local privatesStart = content:find('privates%s*=%s*{')
    if not privatesStart then
        return nil
    end

    -- 找到 privates = { 后的 {
    local braceStart = content:find('{', privatesStart, true)
    if not braceStart then
        return nil
    end

    -- 简单解析：提取 privates = { ... } 块
    -- 使用 plain search 查找大括号
    local depth = 1
    local i = braceStart + 1
    local privatesContent = "{"

    while i <= #content and depth > 0 do
        local c = content:sub(i, i)
        if c == "{" then
            depth = depth + 1
            privatesContent = privatesContent .. c
        elseif c == "}" then
            depth = depth - 1
            if depth == 0 then
                privatesContent = privatesContent .. "}"
                break
            else
                privatesContent = privatesContent .. c
            end
        elseif c == "'" or c == '"' then
            -- 跳过字符串
            local endPos = content:find(c, i + 1, true)
            if endPos then
                privatesContent = privatesContent .. content:sub(i, endPos)
                i = endPos
            else
                privatesContent = privatesContent .. c
            end
        elseif c == "[" then
            -- 检查是否是长字符串 [[
            if content:sub(i, i + 1) == "[[" then
                local endPos = content:find("]]", i + 2, true)
                if endPos then
                    privatesContent = privatesContent .. content:sub(i, endPos + 1)
                    i = endPos + 1
                else
                    privatesContent = privatesContent .. c
                end
            else
                privatesContent = privatesContent .. c
            end
        else
            privatesContent = privatesContent .. c
        end
        i = i + 1
    end

    if depth ~= 0 then
        return nil
    end

    -- 尝试用 load 解析提取的内容
    local chunk, loadErr = load("return " .. privatesContent, "privates")
    if not chunk then
        return nil, "解析失败: " .. tostring(loadErr)
    end

    local ok, result = pcall(chunk)
    if not ok then
        return nil, "执行失败: " .. tostring(result)
    end

    return result
end

--- 从内容或路径提取包名
function M.extractPackageName(content, filePath)
    -- 优先从内容中提取 packageName = "xxx"
    local name = content:match('packageName%s*=%s*["\']([^"\']+)["\']')
    if name then
        return name
    end

    -- 从文件路径提取
    local relPath = M.absPathToRelative(filePath)
    if relPath then
        return relPath:match("^Package/([^/]+)/Package_Meta$")
    end

    return nil
end

-- ============================================================
-- 解析 privates，生成配置模板
-- ============================================================

--- 从 meta.privates 生成配置模板
---@param privates table privates 数组
---@return table configTemplates { [tableName] = table[] } （直接是配置数组）
function M.parsePrivates(privates)
    local templates = {}

    if not privates then
        return templates
    end

    for _, privateDef in ipairs(privates) do
        local owner = privateDef.owner
        local privateTables = privateDef.privateTables
        if owner and privateTables then
            for _, tableDef in ipairs(privateTables) do
                local tableName = tableDef.name
                local itemFields = tableDef.itemFields

                if tableName and itemFields and #itemFields > 0 then
                    -- 生成模板行
                    local templateRow = {}
                    for _, field in ipairs(itemFields) do
                        templateRow[field.name] = getZeroValue(field)
                    end

                    -- 直接存储配置数组格式
                    templates[tableName] = { templateRow }
                end
            end
        end
    end

    return templates
end

-- ============================================================
-- 工具函数：从 owner 提取 Config_XXX 名称
-- ============================================================

--- 从 Define_XXX 或 owner 名称提取配置文件名
--- 例如: Define_Milestones → Milestones
---@param owner string owner 名称
---@return string configName 不带 Config_ 前缀
local function extractConfigName(owner)
    if not owner then
        return nil
    end
    -- 移除 Define_ 前缀
    local name = owner:match("^Define_(.+)$") or owner
    return name
end

--- 获取配置 JSON 文件名
--- 例如: Define_Milestones → Config_Milestones.json
---@param owner string owner 名称
---@return string fileName
local function getConfigJsonName(owner)
    local name = extractConfigName(owner)
    if not name then
        return nil
    end
    return "Config_" .. name .. ".json"
end

--- 获取配置 Lua 文件名
--- 例如: Define_Milestones → Config_Milestones.lua
---@param owner string owner 名称
---@return string fileName
local function getConfigLuaName(owner)
    local name = extractConfigName(owner)
    if not name then
        return nil
    end
    return "Config_" .. name .. ".lua"
end

-- ============================================================
-- 导出单个 JSON
-- ============================================================

--- 确保目录存在（递归创建）
function M.ensureDir(dir)
    -- 转换为正斜杠
    local normalized = dir:gsub("\\", "/")
    -- 移除末尾斜杠
    normalized = normalized:gsub("/+$", "")

    local parts = {}
    for part in normalized:gmatch("[^/]+") do
        table.insert(parts, part)
    end

    local current = ""
    for i, part in ipairs(parts) do
        if i == 1 and part:match("^[A-Za-z]:$") then
            -- 驱动器盘符
            current = part
        else
            current = current .. "\\" .. part
            -- Windows 下尝试创建目录
            os.execute('if not exist "' .. current .. '" mkdir "' .. current .. '"')
        end
    end
end

--- 把 Package_Meta 里的 dataPath 解析为目标绝对目录。
--- 规则：
---   - 若 dataPath 以 "Script/"、"Data/" 开头，或以盘符/Absolute 路径开头
---     → 视为相对于 PROJECT_ROOT 的绝对路径
---   - 否则 → 视为相对于 "Script/Package/<packageName>/" 的相对路径（向后兼容旧 Package）
---@param packageName string Package 名称（仅用于相对路径模式）
---@param dataPath string 来自 Package_Meta 的 dataPath
---@param base string 基础路径（导出用 exportRoot；导入用 PROJECT_ROOT）
---@return string targetDir 去掉末尾分隔符的目录路径
function M.resolveTargetDir(packageName, dataPath, base)
    local cleanPath = (dataPath or ""):gsub("[/\\]+$", ""):gsub("^[/\\]+", "")
    if cleanPath == "" then
        return base .. "\\" .. packageName
    end

    local isAbsolute = cleanPath:match("^[A-Za-z]:")
        or cleanPath:sub(1, 6) == "Script"
        or cleanPath:sub(1, 4) == "Data"
        or cleanPath:sub(1, 1) == "/"
        or cleanPath:sub(1, 1) == "\\"

    -- 标准化为反斜杠
    cleanPath = cleanPath:gsub("/", "\\")

    if isAbsolute then
        return base .. "\\" .. cleanPath
    else
        return base .. "\\Script\\Package\\" .. packageName .. "\\" .. cleanPath
    end
end

--- 导出 JSON 的固定路径模板
--- JSON 导出不再读 Package_Meta.dataPath，
--- 而是由 exportRoot + "Package/" + packageName 拼接，
--- 与 Lua 端的 Script/Data/Package/<Name>/ 解耦。
---@param exportRoot string 导出根目录（来自 setting.exportRoot）
---@param packageName string Package 名称
---@return string targetDir 拼接后的目录（反斜杠，无末尾分隔符）
local function buildExportTargetDir(exportRoot, packageName)
    return (exportRoot or ""):gsub("[/\\]+$", "") .. "\\Package\\" .. packageName
end

--- 导出单个 Package 的配置模板
--- 根据 owner 名称确定输出文件，目录走固定模板 buildExportTargetDir
function M.exportPackage(packageName, privates, exportRoot)
    local templates = M.parsePrivates(privates)
    if not next(templates) then
        return false, "无 privates 定义"
    end

    -- 遍历 privates，按 owner 派生文件名；目录走固定模板
    for _, privateDef in ipairs(privates) do
        local owner = privateDef.owner
        if not owner then
            print("[WARN] 跳过无 owner 的 privates 定义")
        else
            local targetDir = buildExportTargetDir(exportRoot, packageName)
            M.ensureDir(targetDir)

            -- JSON 文件名：Config_XXX.json（从 owner 提取）
            local fileName = getConfigJsonName(owner)
            local filePath = targetDir .. "\\" .. fileName

            -- 只导出该 owner 相关的表
            local ownerTemplates = {}
            for _, tableDef in ipairs(privateDef.privateTables or {}) do
                local tableName = tableDef.name
                if templates[tableName] then
                    ownerTemplates[tableName] = templates[tableName]
                end
            end

            if next(ownerTemplates) then
                -- 组装 JSON 内容
                local jsonContent = toJson(ownerTemplates, 0, "    ")

                -- 写入文件
                local f, err = io.open(filePath, "w", nil)
                if not f then
                    return false, "无法创建文件: " .. tostring(err)
                end
                f:write(jsonContent)
                f:close()

                print("[OK] " .. filePath)
            end
        end
    end

    return true, nil
end

-- ============================================================
-- 批量导出
-- ============================================================

--- 扫描 + 导出全部 Package
function M.exportAll()
    local exportRoot = M.getExportRoot()
    local metas = M.scanAllMeta()
    return M.doExport(metas, exportRoot)
end

--- 扫描 + 导出指定 Package（按名称列表）
---@param packageNames string[] 要导出的包名列表
---@return table results 导出结果
function M.exportByNames(packageNames)
    local exportRoot = M.getExportRoot()
    local allMetas = M.scanAllMeta()

    -- 过滤出匹配的 Package
    local filterSet = {}
    for _, name in ipairs(packageNames) do
        filterSet[name] = true
    end

    local selected = {}
    for _, item in ipairs(allMetas) do
        if filterSet[item.packageName] then
            table.insert(selected, item)
        end
    end

    if #selected == 0 then
        print("[WARN] 未匹配到任何 Package")
        return {
            total = 0,
            success = 0,
            failed = 0,
            items = {},
        }
    end

    return M.doExport(selected, exportRoot)
end

--- 执行导出（内部使用）
---@param metas table[] Package 列表
---@param exportRoot string 导出根目录
---@return table results
function M.doExport(metas, exportRoot)
    local results = {
        total = #metas,
        success = 0,
        failed = 0,
        items = {},
    }

    print("导出根目录: " .. exportRoot)
    print("")

    for _, item in ipairs(metas) do
        local meta, loadErr = M.loadMeta(item.filePath)
        if not meta then
            print("[WARN] " .. item.packageName .. ": 加载失败 - " .. loadErr)
            table.insert(results.items, {
                packageName = item.packageName,
                success = false,
                error = loadErr,
            })
            results.failed = results.failed + 1
        else
            local ok, exportErr = M.exportPackage(meta.packageName, meta.privates, exportRoot)
            if ok then
                print("[OK] " .. item.packageName)
                table.insert(results.items, {
                    packageName = item.packageName,
                    success = true,
                })
                results.success = results.success + 1
            else
                print("[SKIP] " .. item.packageName .. ": " .. exportErr)
                table.insert(results.items, {
                    packageName = item.packageName,
                    success = false,
                    error = exportErr,
                })
                results.failed = results.failed + 1
            end
        end
    end

    return results
end

-- ============================================================
-- 预览模式（不写入文件）
-- ============================================================

--- 内部预览函数
---@param metas table[] Package 列表
local function doPreview(metas)
    print("")
    print("═══════════════════════════════════════════════════════════")
    print("  预览: 导出配置模板 JSON")
    print("═══════════════════════════════════════════════════════════")
    print("")
    print("  导出目录: " .. M.getExportRoot())
    print("  检测到 " .. #metas .. " 个 Package")
    print("")

    for _, item in ipairs(metas) do
        print("───────────────────────────────────────────────────────────")
        print("  Package: " .. item.packageName)
        print("  路径:    " .. item.relPath)

        local meta, loadErr = M.loadMeta(item.filePath)
        if not meta then
            print("  [WARN] 加载失败: " .. loadErr)
        else
            local templates = M.parsePrivates(meta.privates)
            if not next(templates) then
                print("  [SKIP] 无 privates 定义")
            else
                -- 按 owner 分别输出文件名（JSON 走固定模板 Package/<packageName>/）
                local exportRoot = M.getExportRoot()
                local previewDir = buildExportTargetDir(exportRoot, item.packageName)
                for _, privateDef in ipairs(meta.privates or {}) do
                    local owner = privateDef.owner
                    if owner then
                        local fileName = getConfigJsonName(owner)
                        print("  输出:    " .. previewDir .. "\\" .. fileName)
                    end
                end
                print("  内容:")
                for tableName, rows in pairs(templates) do
                    print("    - " .. tableName .. ": " .. toJson(rows, 0, "      "))
                end
            end
        end
        print("")
    end

    print("═══════════════════════════════════════════════════════════")
end

--- 预览全部 Package
function M.previewAll()
    local metas = M.scanAllMeta()
    doPreview(metas)
    return metas
end

--- 预览指定名称的 Package
---@param packageNames string[] 要预览的包名列表
function M.previewByNames(packageNames)
    local allMetas = M.scanAllMeta()

    local filterSet = {}
    for _, name in ipairs(packageNames) do
        filterSet[name] = true
    end

    local selected = {}
    for _, item in ipairs(allMetas) do
        if filterSet[item.packageName] then
            table.insert(selected, item)
        end
    end

    doPreview(selected)
    return selected
end

-- ============================================================
-- 完整运行（预览 + 确认 + 导出）
-- ============================================================

function M.runAll()
    -- 预览
    local metas = M.previewAll()

    if #metas == 0 then
        print("[INFO] 未找到任何 Package_Meta")
        return false, "无 Package 可导出"
    end

    -- 确认
    print("")
    print("  确认导出? [Y] 是  [N] 否: ", "")
    io.flush()
    local confirm = io.read()
    confirm = (confirm or ""):gsub("^%s*(.-)%s*$", "%1"):lower()

    if confirm ~= "y" and confirm ~= "yes" then
        print("")
        print("  [取消] 操作已取消")
        return false, "用户取消"
    end

    -- 导出
    print("")
    print("  正在导出...")
    print("")

    local results = M.exportAll()

    print("")
    print("═══════════════════════════════════════════════════════════")
    print("  导出完成!")
    print("═══════════════════════════════════════════════════════════")
    print("")
    print("  成功: " .. results.success .. " / " .. results.total)
    print("  失败: " .. results.failed .. " / " .. results.total)
    print("")
    print("  导出目录: " .. M.getExportRoot())
    print("")
    print("═══════════════════════════════════════════════════════════")

    return true, nil, results
end

-- ============================================================
-- JSON 解析（从 JSON 字符串读取）
-- ============================================================

--- 简单 JSON 解析（支持数组和对象）
---@param jsonStr string JSON 字符串
---@return table|nil result
---@return string|nil error
local function parseJson(jsonStr)
    if not jsonStr or jsonStr == "" then
        return nil, "空字符串"
    end

    -- 深度递归解析 JSON
    local pos = 1
    local len = #jsonStr

    local function skipWhitespace()
        while pos <= len and jsonStr:match("^%s", pos) do
            pos = pos + 1
        end
    end

    local function parseValue()
        skipWhitespace()
        if pos > len then return nil, "Unexpected end" end

        local c = jsonStr:sub(pos, pos)

        if c == '"' then
            return parseString()
        elseif c == "{" then
            return parseObject()
        elseif c == "[" then
            return parseArray()
        elseif c == "t" and jsonStr:sub(pos, pos + 3) == "true" then
            pos = pos + 4
            return true
        elseif c == "f" and jsonStr:sub(pos, pos + 4) == "false" then
            pos = pos + 5
            return false
        elseif c == "n" and jsonStr:sub(pos, pos + 3) == "null" then
            pos = pos + 4
            return nil
        else
            return parseNumber()
        end
    end

    function parseString()
        pos = pos + 1  -- skip opening quote
        local s = {}
        while pos <= len do
            local c = jsonStr:sub(pos, pos)
            if c == '"' then
                pos = pos + 1  -- skip closing quote
                return table.concat(s)
            elseif c == "\\" then
                pos = pos + 1
                local esc = jsonStr:sub(pos, pos)
                if esc == "n" then
                    table.insert(s, "\n")
                elseif esc == "r" then
                    table.insert(s, "\r")
                elseif esc == "t" then
                    table.insert(s, "\t")
                elseif esc == "\\" then
                    table.insert(s, "\\")
                elseif esc == '"' then
                    table.insert(s, '"')
                else
                    table.insert(s, esc)
                end
            else
                table.insert(s, c)
            end
            pos = pos + 1
        end
        return nil, "Unterminated string"
    end

    function parseNumber()
        skipWhitespace()
        local start = pos
        if jsonStr:sub(pos, pos) == "-" then
            pos = pos + 1
        end
        while pos <= len and jsonStr:sub(pos, pos):match("%d") do
            pos = pos + 1
        end
        if jsonStr:sub(pos, pos) == "." then
            pos = pos + 1
            while pos <= len and jsonStr:sub(pos, pos):match("%d") do
                pos = pos + 1
            end
        end
        if jsonStr:sub(pos, pos):lower() == "e" then
            pos = pos + 1
            if jsonStr:sub(pos, pos) == "+" or jsonStr:sub(pos, pos) == "-" then
                pos = pos + 1
            end
            while pos <= len and jsonStr:sub(pos, pos):match("%d") do
                pos = pos + 1
            end
        end
        return tonumber(jsonStr:sub(start, pos - 1)) or 0
    end

    function parseObject()
        pos = pos + 1  -- skip {
        skipWhitespace()
        local obj = {}
        if jsonStr:sub(pos, pos) ~= "}" then
            while true do
                skipWhitespace()
                if jsonStr:sub(pos, pos) ~= '"' then
                    return nil, "Expected key in object"
                end
                local key = parseString()
                skipWhitespace()
                if jsonStr:sub(pos, pos) ~= ":" then
                    return nil, "Expected : in object"
                end
                pos = pos + 1
                local value = parseValue()
                obj[key] = value
                skipWhitespace()
                if jsonStr:sub(pos, pos) == "," then
                    pos = pos + 1
                else
                    break
                end
            end
        end
        if jsonStr:sub(pos, pos) == "}" then
            pos = pos + 1
        end
        return obj
    end

    function parseArray()
        pos = pos + 1  -- skip [
        skipWhitespace()
        local arr = {}
        if jsonStr:sub(pos, pos) ~= "]" then
            while true do
                local value = parseValue()
                table.insert(arr, value)
                skipWhitespace()
                if jsonStr:sub(pos, pos) == "," then
                    pos = pos + 1
                else
                    break
                end
            end
        end
        if jsonStr:sub(pos, pos) == "]" then
            pos = pos + 1
        end
        return arr
    end

    local result, err = parseValue()
    return result, err
end

-- ============================================================
-- 冲突检测辅助
-- ============================================================

--- 将配置数据序列化为排序后的 key=value 字符串列表（用于比对）
--- 支持两种形态：
---   1. JSON 解析结果：{ [tableName] = { row1, row2, ... } }
---   2. Lua Config 直接返回：{ row1, row2, ... }
---@param data table
---@return string 排序后的键值字符串
function M.serializeForCompare(data)
    local parts = {}
    if type(data) ~= "table" then
        return ""
    end

    local rows
    -- 形态 1：{ [tableName] = { ... } } — 第一个键对应的是行数组
    local firstKey = next(data)
    if firstKey == nil then
        return ""
    end
    local firstVal = data[firstKey]
    if type(firstKey) == "string" and type(firstVal) == "table" and #firstVal > 0 then
        -- 形如 { "Milestones" = { {...}, {...} } }
        rows = firstVal
    else
        -- 形态 2：本身是行数组 { {...}, {...} }
        rows = data
    end

    for _, row in ipairs(rows) do
        if type(row) == "table" then
            for k, v in pairs(row) do
                table.insert(parts, tostring(k) .. "=" .. tostring(v))
            end
        end
    end

    table.sort(parts)
    return table.concat(parts, "|")
end

--- 读取并序列化现有 Lua Config（用于比对）
---@param targetPath string 完整路径
---@return string|nil 序列化后的键值字符串
local function readAndSerializeLua(targetPath)
    local f = io.open(targetPath, "r")
    if not f then return nil end
    local content = f:read("*a")
    f:close()
    local chunk, err = load(content, targetPath)
    if not chunk then return nil end
    local ok, data = pcall(chunk)
    if not ok then return nil end
    return M.serializeForCompare(data)
end

-- ============================================================
-- Import: 从 JSON 生成 Lua 配置
-- ============================================================

--- 读取 JSON 文件
---@param filePath string
---@return string|nil content
---@return string|nil error
local function readJsonFile(filePath)
    local f, err = io.open(filePath, "r")
    if not f then
        return nil, "无法打开文件: " .. tostring(err)
    end
    local content = f:read("*a")
    f:close()
    return content
end

--- 生成 Lua 配置代码
---@param data table 配置数据
---@param owner string owner 名称
---@return string lua 代码
local function generateLuaConfig(data, owner)
    local lines = {}
    table.insert(lines, "return {")

    local tableName = next(data)
    if tableName then
        local rows = data[tableName]
        if type(rows) == "table" then
            for i, row in ipairs(rows) do
                local parts = {}
                for k, v in pairs(row) do
                    local valueStr
                    if type(v) == "string" then
                        valueStr = '"' .. v .. '"'
                    elseif type(v) == "nil" then
                        valueStr = "nil"
                    else
                        valueStr = tostring(v)
                    end
                    table.insert(parts, k .. " = " .. valueStr)
                end
                table.insert(lines, "    { " .. table.concat(parts, ", ") .. " }" .. (i < #rows and "," or ""))
            end
        end
    end

    table.insert(lines, "}")
    return table.concat(lines, "\n")
end

--- 导入单个 Package 的配置
--- 从 JSON 读取，生成 Config_XXX.lua
function M.importPackage(packageName, exportRoot, targetRoot)
    -- 扫描 Privates 获取 owner 和 dataPath
    local metaPath = M.PROJECT_ROOT .. "\\Script\\Package\\" .. packageName .. "\\Package_Meta.lua"
    local meta = M.loadMeta(metaPath)
    if not meta then
        return false, "无法加载 Package_Meta: " .. metaPath
    end

    local results = {}

    for _, privateDef in ipairs(meta.privates or {}) do
        local owner = privateDef.owner
        local dataPath = (privateDef.dataPath or ""):gsub("[/\\]+$", ""):gsub("^[/\\]+", "")
        if not owner then
            print("[WARN] 跳过无 owner 的 privates 定义")
        else
            -- JSON 文件路径（统一用反斜杠）
            local jsonFileName = getConfigJsonName(owner)
            local jsonFilePath = M.resolveTargetDir(packageName, dataPath, exportRoot) .. "\\" .. jsonFileName

            -- 读取 JSON
            local jsonContent, readErr = readJsonFile(jsonFilePath)
            if not jsonContent then
                print("[WARN] JSON 文件不存在: " .. jsonFilePath)
                table.insert(results, {
                    owner = owner,
                    success = false,
                    error = "JSON 文件不存在",
                })
            else
                -- 解析 JSON
                local data, parseErr = parseJson(jsonContent)
                if not data then
                    print("[ERROR] JSON 解析失败: " .. tostring(parseErr))
                    table.insert(results, {
                        owner = owner,
                        success = false,
                        error = parseErr,
                    })
                else
                    -- 读取现有的 Config 文件（保留原有数据结构和函数）
                    local luaFileName = getConfigLuaName(owner)
                    local targetDir = M.resolveTargetDir(packageName, dataPath, M.PROJECT_ROOT)
                    local targetPath = targetDir .. "\\" .. luaFileName

                    -- 确保目标目录存在
                    M.ensureDir(targetDir)

                    -- 读取现有 Lua 文件
                    local existingContent = nil
                    local fExisting = io.open(targetPath, "r")
                    if fExisting then
                        existingContent = fExisting:read("*a")
                        fExisting:close()
                    end

                    -- 生成新的配置数据
                    local newData = generateLuaConfig(data, owner)

                    local finalContent
                    if existingContent and existingContent:find("function " .. owner:gsub("Define_", "") .. "%.") then
                        -- 保留函数部分：找到最后一个 "}" 之后的位置，替换配置数据
                        -- 简单策略：找到 return { 所在行，从该行开始替换
                        local returnPos = existingContent:find("return%s*{")
                        if returnPos then
                            -- 找到 return { 的结束括号（通过括号匹配）
                            local braceStart = existingContent:find("{", returnPos, true)
                            if braceStart then
                                local depth = 1
                                local i = braceStart + 1
                                while i <= #existingContent and depth > 0 do
                                    local c = existingContent:sub(i, i)
                                    if c == "{" then depth = depth + 1
                                    elseif c == "}" then depth = depth - 1 end
                                    i = i + 1
                                end
                                -- i 现在是结束大括号的下一个位置
                                local before = existingContent:sub(1, returnPos - 1)
                                local after = existingContent:sub(i)
                                finalContent = before .. newData .. after
                            else
                                finalContent = newData
                            end
                        else
                            finalContent = newData
                        end
                    else
                        finalContent = newData
                    end

                    -- 写入文件
                    local f, writeErr = io.open(targetPath, "w")
                    if not f then
                        print("[ERROR] 无法创建文件: " .. targetPath)
                        table.insert(results, {
                            owner = owner,
                            success = false,
                            error = writeErr,
                        })
                    else
                        f:write(finalContent)
                        f:close()
                        print("[OK] " .. targetPath)
                        table.insert(results, {
                            owner = owner,
                            success = true,
                            targetPath = targetPath,
                        })
                    end
                end
            end
        end
    end

    return true, nil, results
end

--- 导入全部 Package 的配置
function M.importAll()
    local exportRoot = M.getExportRoot()
    local metas = M.scanAllMeta()

    print("从 JSON 导入配置到 Lua...")
    print("导出根目录: " .. exportRoot)
    print("")

    local totalSuccess = 0
    local totalFailed = 0

    for _, item in ipairs(metas) do
        local ok, err, results = M.importPackage(item.packageName, exportRoot, M.PROJECT_ROOT)
        for _, r in ipairs(results or {}) do
            if r.success then
                totalSuccess = totalSuccess + 1
            else
                totalFailed = totalFailed + 1
            end
        end
    end

    print("")
    print("═══════════════════════════════════════════════════════════")
    print("  导入完成!")
    print("═══════════════════════════════════════════════════════════")
    print("")
    print("  成功: " .. totalSuccess)
    print("  失败: " .. totalFailed)
    print("")

    return {
        success = totalSuccess,
        failed = totalFailed,
    }
end

--- 按 Package 名列表导入
function M.importByNames(packageNames)
    local exportRoot = M.getExportRoot()

    print("从 JSON 导入配置到 Lua...")
    print("导出根目录: " .. exportRoot)
    print("")

    local totalSuccess = 0
    local totalFailed = 0

    for _, packageName in ipairs(packageNames) do
        local ok, err, results = M.importPackage(packageName, exportRoot, M.PROJECT_ROOT)
        for _, r in ipairs(results or {}) do
            if r.success then
                totalSuccess = totalSuccess + 1
            else
                totalFailed = totalFailed + 1
            end
        end
    end

    print("")
    print("═══════════════════════════════════════════════════════════")
    print("  导入完成!")
    print("═══════════════════════════════════════════════════════════")
    print("")
    print("  成功: " .. totalSuccess)
    print("  失败: " .. totalFailed)
    print("")

    return {
        success = totalSuccess,
        failed = totalFailed,
    }
end

--- 预览：将导入的 Package 和 Config 文件列出
function M.previewImport(packageNames)
    local exportRoot = M.getExportRoot()
    local metas = M.scanAllMeta()

    -- 过滤
    local nameSet = {}
    if packageNames then
        for _, n in ipairs(packageNames) do nameSet[n] = true end
    end

    print("  源目录: " .. exportRoot)
    print("  目标项目: " .. M.PROJECT_ROOT)
    print("")
    print(string.format("  %-30s  %-30s  %-10s", "Package", "JSON 文件", "JSON 状态"))
    print("  " .. string.rep("─", 76))

    local count = 0
    for _, item in ipairs(metas) do
        if not packageNames or nameSet[item.packageName] then
            local metaPath = item.filePath
            local meta = M.loadMeta(metaPath)
            if meta and meta.privates then
                for _, privateDef in ipairs(meta.privates) do
                    local owner = privateDef.owner
                    local dataPath = (privateDef.dataPath or ""):gsub("[/\\]+$", ""):gsub("^[/\\]+", "")
                    if owner then
                        local jsonFileName = getConfigJsonName(owner)
                        local luaFileName = getConfigLuaName(owner)
                        local jsonDir = M.resolveTargetDir(item.packageName, dataPath, exportRoot)
                        local luaDir = M.resolveTargetDir(item.packageName, dataPath, M.PROJECT_ROOT)
                        local jsonFilePath = jsonDir .. "\\" .. jsonFileName
                        local luaFilePath = luaDir .. "\\" .. luaFileName

                        local jsonExists = io.open(jsonFilePath, "r") ~= nil
                        local luaExists = io.open(luaFilePath, "r") ~= nil

                        if jsonExists then
                            count = count + 1
                        end

                        local status = jsonExists and (luaExists and "[更新]" or "[新建]") or "[缺失]"
                        print(string.format("  %-30s  %-30s  %-10s",
                            item.packageName, jsonFileName, status))
                    end
                end
            end
        end
    end
    print("")
    print("  共 " .. count .. " 个 JSON 文件可导入")
    print("")
end

-- ============================================================
-- 冲突检测 / 处理
-- ============================================================

--- 冲突检测：扫描所有 Package 的 JSON 与目标 Lua，判定三态
---@param packageNames string[]|nil nil 表示全部
---@return table[] 冲突缓存数组，每个元素含 packageName/owner/luaPath/jsonPath/status
function M.conflictCheck(packageNames)
    local exportRoot = M.getExportRoot()
    local metas = M.scanAllMeta()
    local cache = {}

    for _, item in ipairs(metas) do
        if not packageNames or packageNames[item.packageName] then
            local meta = M.loadMeta(item.filePath)
            if meta and meta.privates then
                for _, privateDef in ipairs(meta.privates) do
                    local owner = privateDef.owner
                    local dataPath = (privateDef.dataPath or ""):gsub("[/\\]+$", ""):gsub("^[/\\]+", "")
                    if owner then
                        local jsonFileName = getConfigJsonName(owner)
                        local luaFileName = getConfigLuaName(owner)
                        local jsonDir = M.resolveTargetDir(item.packageName, dataPath, exportRoot)
                        local luaDir  = M.resolveTargetDir(item.packageName, dataPath, M.PROJECT_ROOT)
                        local jsonPath = jsonDir .. "\\" .. jsonFileName
                        local luaPath  = luaDir  .. "\\" .. luaFileName

                        local jsonExists = io.open(jsonPath, "r") ~= nil
                        local luaExists = io.open(luaPath, "r") ~= nil

                        local entry = {
                            packageName = item.packageName,
                            owner       = owner,
                            jsonPath    = jsonPath,
                            luaPath     = luaPath,
                            status      = nil,
                        }

                        if not jsonExists then
                            -- JSON 不存在视为无需处理，跳过不入缓存
                        elseif not luaExists then
                            entry.status = "写入"
                            table.insert(cache, entry)
                        else
                            local jsonContent = readJsonFile(jsonPath)
                            local jsonData = parseJson(jsonContent)
                            local jsonSer = M.serializeForCompare(jsonData)
                            local luaSer  = readAndSerializeLua(luaPath)
                            if jsonSer == luaSer then
                                entry.status = "无更新"
                            else
                                entry.status = "修改"
                            end
                            table.insert(cache, entry)
                        end
                    end
                end
            end
        end
    end

    _conflictCache = cache
    return cache
end

--- 处理冲突：遍历缓存中"写入"和"修改"项，逐项询问覆盖/忽视
--- 对用户选择的覆盖项执行实际的 importPackage
---@return table results { applied = N, skipped = N }
function M.processConflicts()
    local toProcess = {}
    for _, entry in ipairs(_conflictCache) do
        if entry.status == "写入" or entry.status == "修改" then
            table.insert(toProcess, entry)
        end
    end

    if #toProcess == 0 then
        print("  [INFO] 无待处理冲突")
        return { applied = 0, skipped = 0 }
    end

    print("")
    print("  共 " .. #toProcess .. " 个冲突待处理")
    print("  规则：[O] 覆盖  [I] 忽视  [A] 全部覆盖  [S] 全部忽视")
    print("")

    local applied = 0
    local skipped = 0
    for i, entry in ipairs(toProcess) do
        print(string.format("  [%d/%d] %s (%s)", i, #toProcess, entry.packageName, entry.owner))
        print(string.format("    JSON: %s", entry.jsonPath))
        print(string.format("    Lua:  %s", entry.luaPath))
        print(string.format("    状态: [%s]", entry.status))
        print("")
        io.write("    选择 [O/I/A/S]: ")
        io.flush()
        local choice = (io.read() or ""):gsub("^%s*(.-)%s*$", "%1"):lower()

        if choice == "o" then
            M.doImportSingle(entry)
            applied = applied + 1
        elseif choice == "i" then
            skipped = skipped + 1
        elseif choice == "a" then
            for j = i, #toProcess do
                M.doImportSingle(toProcess[j])
                applied = applied + 1
            end
            break
        elseif choice == "s" then
            skipped = skipped + (#toProcess - i + 1)
            break
        else
            skipped = skipped + 1
        end
        print("")
    end

    print("")
    print("  已覆盖: " .. applied .. " / 已忽视: " .. skipped)
    return { applied = applied, skipped = skipped }
end

--- 执行单个 entry 的导入（内部用）
---@param entry table conflictCache 条目
function M.doImportSingle(entry)
    local jsonContent = readJsonFile(entry.jsonPath)
    if not jsonContent then return end
    local jsonData = parseJson(jsonContent)
    if not jsonData then return end
    local newData = generateLuaConfig(jsonData, entry.owner)
    local existingContent = nil
    local f = io.open(entry.luaPath, "r")
    if f then
        existingContent = f:read("*a")
        f:close()
    end
    local finalContent
    if existingContent and existingContent:find("function " .. entry.owner:gsub("Define_", "") .. "%.") then
        local returnPos = existingContent:find("return%s*{")
        if returnPos then
            local braceStart = existingContent:find("{", returnPos, true)
            if braceStart then
                local depth = 1
                local idx = braceStart + 1
                while idx <= #existingContent and depth > 0 do
                    local c = existingContent:sub(idx, idx)
                    if c == "{" then depth = depth + 1
                    elseif c == "}" then depth = depth - 1 end
                    idx = idx + 1
                end
                finalContent = existingContent:sub(1, returnPos - 1) .. newData .. existingContent:sub(idx)
            else
                finalContent = newData
            end
        else
            finalContent = newData
        end
    else
        finalContent = newData
    end
    local fOut = io.open(entry.luaPath, "w")
    if fOut then
        fOut:write(finalContent)
        fOut:close()
        print("    [OK] 已覆盖")
    else
        print("    [ERROR] 无法写入")
    end
end

-- ============================================================
-- 工具函数（供 GenKit 复用）
-- ============================================================

M.tools = {
    {
        id = "export_json_schema",
        name = "导出配置模板（供策划填写）",
        description = "扫描 Package_Meta privates，导出配置模板 JSON",
        run = M.runAll,
        preview = M.previewAll,
    },
    {
        id = "import_json_config",
        name = "导入配置（从 JSON 生成 Lua）",
        description = "从 JSON 读取配置，生成 Config_XXX.lua 文件",
        run = M.importAll,
    },
}

function M.getTools()
    return M.tools
end

function M.getConflictCache()
    return _conflictCache
end

return M
