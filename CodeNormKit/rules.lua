-- ============================================================
-- rules.lua
-- 三个内置 Lint 规则工厂函数
-- 每个工厂返回一个"规则对象"：
--   { id, description, appliesTo, check }
--     id          字符串，violation 里也会带
--     description 人类可读描述
--     appliesTo   function(packageKind) -> bool
--                 决定本规则是否对"当前 target 所属的包类型"生效
--                 当前三条规则对所有 kind 都生效（return true）
--                 未来"仅适用某一 kind"的规则只需换 appliesTo
--     check       function(lines) -> violations
--                 真正扫描源码，返回违规列表
--
-- 注：取消旧的 orchestratorSet 跳过语义——
--     胶水包不豁免，所有包都必须走 Get。
--     kind 字段保留作为分类标记，但不再触发跳过。
-- ============================================================

local parser = require("parser")

local M = {}

-- 默认 appliesTo：所有包类型都适用
local function appliesToAll(_kind)
    return true
end

-- 规则 1: 禁止通过 table[i] 直接索引私有表
-- 检测模式: <owner>.<tblName>[
-- privates: parser.loadPrivates 返回值（result.decls = 等价 decl 数组）
function M.makeForbidTableIndexRule(privates)
    local decls = privates.decls or privates          -- 兼容：旧调用方可能直接传数组
    return {
        id          = "forbid_table_index",
        description = "禁止直接索引私有表",
        appliesTo   = appliesToAll,
        check = function(lines)
            local violations = {}
            for _, decl in ipairs(decls) do
                for _, tbl in ipairs(decl.privateTables or {}) do
                    local pattern = parser.escapePattern(decl.owner)
                        .. "%." .. parser.escapePattern(tbl.name) .. "%["
                    for i, line in ipairs(lines) do
                        if parser.isCodeLine(line) and line:find(pattern) then
                            violations[#violations + 1] = {
                                line = i,
                                text = parser.trim(line),
                                rule = "forbid_table_index",
                            }
                        end
                    end
                end
            end
            return violations
        end,
    }
end

-- 规则 2: 禁止直接读取私有字段
-- 检测模式: <any>.<field> （使用 frontier pattern 避免子串误报）
function M.makeForbidFieldReadRule(privates)
    local decls = privates.decls or privates
    return {
        id          = "forbid_field_read",
        description = "禁止直接读取私有字段",
        appliesTo   = appliesToAll,
        check = function(lines)
            local violations = {}
            for _, decl in ipairs(decls) do
                for _, tbl in ipairs(decl.privateTables or {}) do
                    for _, field in ipairs(tbl.fields or {}) do
                        local pattern = "[%w_]+%." .. parser.escapePattern(field) .. "%f[%W]"
                        for i, line in ipairs(lines) do
                            if parser.isCodeLine(line) and line:find(pattern) then
                                violations[#violations + 1] = {
                                    line = i,
                                    text = parser.trim(line),
                                    rule = "forbid_field_read",
                                }
                            end
                        end
                    end
                end
            end
            return violations
        end,
    }
end

-- 规则 3: 禁止使用 # 取私有表长度
-- 检测模式: #<owner>.<tblName>
function M.makeForbidTableLengthRule(privates)
    local decls = privates.decls or privates
    return {
        id          = "forbid_table_length",
        description = "禁止用 # 取私有表长度",
        appliesTo   = appliesToAll,
        check = function(lines)
            local violations = {}
            for _, decl in ipairs(decls) do
                for _, tbl in ipairs(decl.privateTables or {}) do
                    local pattern = "#" .. parser.escapePattern(decl.owner)
                        .. "%." .. parser.escapePattern(tbl.name)
                    for i, line in ipairs(lines) do
                        if parser.isCodeLine(line) and line:find(pattern) then
                            violations[#violations + 1] = {
                                line = i,
                                text = parser.trim(line),
                                rule = "forbid_table_length",
                            }
                        end
                    end
                end
            end
            return violations
        end,
    }
end

-- 默认三条规则打包（顺序决定 violation 输出顺序）
function M.makeDefaultRules(privates)
    return {
        M.makeForbidTableIndexRule(privates),
        M.makeForbidFieldReadRule(privates),
        M.makeForbidTableLengthRule(privates),
    }
end

return M