-- ============================================================
-- parser.lua
-- 文件 IO + 字符串工具（CodeNormKit 内部使用）
-- 提供纯 Lua 实现，无外部依赖
-- ============================================================

local M = {}

-- 判断是否是绝对路径（Windows: 盘符开头，或 UNC \\；Unix: / 开头）
local function isAbsolute(p)
    if not p or p == "" then return false end
    if p:sub(1, 1) == "/" or p:sub(1, 1) == "\\" then return true end
    if p:match("^%a:[/\\]") then return true end              -- C:\ 或 C:/
    return false
end

-- 规范化路径：把 / 转 \，并去前缀 .\
local function normalize(p)
    p = p:gsub("/", "\\")
    -- 如果是 .\foo 形式，去掉 .\
    p = p:gsub("^\\%.\\", "")
    return p
end

-- 拼接：相对路径拼到 projectRoot；绝对路径直接用
local function resolve(projectRoot, p)
    if isAbsolute(p) then return normalize(p) end
    return normalize(projectRoot .. "\\" .. p)
end

-- 读取文件全部内容
function M.readSource(projectRoot, relativePath)
    local fullPath = resolve(projectRoot, relativePath)
    local f = io.open(fullPath, "r")
    if not f then error("Cannot read: " .. fullPath) end
    local content = f:read("*all")
    f:close()
    return content
end

-- 加载私有声明文件（return 顶层 table）
-- 顶层支持两种字段：
--   1. packageKind  string  整包类型标记（"owner" | "orchestrator" | ...）
--                                  缺省时按 "owner" 处理（向后兼容）
--   2. { owner, privateTables, kind?, deps? }    decl 数组
--      每个 decl 支持旧格式 { owner, privateTables } + 新格式 { kind, deps }
--      注入默认值: kind = decl.kind or "owner"
--
-- 返回值上挂一个 metatable，让 result.packageKind 可读
--   （顶层 table 既要当数组被 ipairs 遍历，又要承载 packageKind 字段，
--    Lua 允许直接在 table 上存字段，再用 ipairs 只遍历数字下标部分）
function M.loadPrivates(projectRoot, privatesPath)
    local fullPath = resolve(projectRoot, privatesPath)
    local chunk, err = loadfile(fullPath)
    if not chunk then
        error("Cannot load privates file: " .. fullPath .. "\n" .. tostring(err))
    end
    local raw = chunk()
    if type(raw) ~= "table" then return raw end

    -- 整包 kind：顶层字段，缺省回退 "owner"
    raw.packageKind = raw.packageKind or "owner"

    -- 每个 decl 注入 kind 缺省值，保持向后兼容
    for _, decl in ipairs(raw) do
        if type(decl) == "table" and decl.kind == nil then
            decl.kind = "owner"
        end
    end
    return raw
end

-- 便捷读取：只取顶层 packageKind
--   不抛错——文件解析失败时返回 nil，让上层决定降级策略
function M.readPackageKind(projectRoot, privatesPath)
    local ok, raw = pcall(M.loadPrivates, projectRoot, privatesPath)
    if not ok or type(raw) ~= "table" then return nil end
    return raw.packageKind
end

-- 按 \n 拆分内容为行数组（保留空行用于行号对齐）
function M.splitLines(content)
    local lines = {}
    for line in content:gmatch("([^\n]*)\n") do
        lines[#lines + 1] = (line:gsub("\r$", ""))
    end
    if not content:match("\n$") and #content > 0 then
        local tail = content:match("([^\n]+)$")
        if tail then lines[#lines + 1] = (tail:gsub("\r$", "")) end
    end
    return lines
end

-- 去除首尾空白
function M.trim(s) return (s:gsub("^%s*(.-)%s*$", "%1")) end

-- 判断是否为代码行（非空、非注释）
function M.isCodeLine(line)
    local t = M.trim(line)
    if t == "" then return false end
    if t:match("^%-%-") then return false end
    return true
end

-- 转义 Lua pattern 特殊字符
function M.escapePattern(s)
    return (s:gsub("([%-%(%)%.%%%+%*%?%[%]%^%$])", "%%%1"))
end

return M