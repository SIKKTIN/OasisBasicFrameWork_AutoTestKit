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

-- 规则 4: 检测 global 引用（未声明的外部变量）
function M.makeDetectGlobalUsageRule()
    return {
        id          = "detect_global_usage",
        description = "检测 global 引用（无 local 声明的变量）",
        appliesTo   = appliesToAll,
        check = function(lines)
            local src = table.concat(lines, "\n")

            -- ① 收集所有 local 声明的变量名
            local localSet = {}
            for var in src:gmatch("local%s+([a-zA-Z_][a-zA-Z0-9_]*)") do
                localSet[var] = true
            end

            -- ② Lua 关键字（不是函数调用，出现在 if/or/not/and 等语法结构中）
            local LUA_KEYWORDS = {
                ["if"] = true, ["and"] = true, ["or"] = true,
                ["not"] = true, ["in"] = true, ["for"] = true,
            }

            -- ③ Lua 标准库内置函数（全局可用，非 external 引用）
            local LUA_BUILTINS = {
                -- pairs/ipairs
                ["pairs"] = true, ["ipairs"] = true,
                -- table
                ["insert"] = true, ["remove"] = true, ["concat"] = true,
                ["sort"] = true, ["move"] = true, ["create"] = true,
                ["unpack"] = true, ["pack"] = true,
                -- string
                ["format"] = true, ["sub"] = true, ["len"] = true,
                ["match"] = true, ["find"] = true, ["gmatch"] = true,
                ["gsub"] = true, ["rep"] = true, ["reverse"] = true,
                ["lower"] = true, ["upper"] = true, ["byte"] = true,
                ["char"] = true, ["dump"] = true,
                -- io/os
                ["open"] = true, ["close"] = true, ["read"] = true,
                ["write"] = true, ["flush"] = true, ["lines"] = true,
                -- core
                ["type"] = true, ["tostring"] = true, ["tonumber"] = true,
                ["pcall"] = true, ["xpcall"] = true,
                ["select"] = true, ["assert"] = true,
                ["next"] = true, ["rawget"] = true, ["rawset"] = true,
                ["rawlen"] = true, ["setmetatable"] = true, ["getmetatable"] = true,
                ["collectgarbage"] = true, ["dofile"] = true, ["loadfile"] = true,
                ["load"] = true, ["error"] = true,
                -- require 是内置 loader
                ["require"] = true,
            }

            -- ④ 已知 globals 白名单（游戏引擎 API / 项目级已知全局）
            -- 来自绿洲编辑器 UGC 运行时环境
            local KNOWN_GLOBALS = {
                -- 引擎全局表/函数
                ["ugcprint"] = true, ["print"] = true,
                ["UGCGameSystem"] = true,
                ["UGCAudioSystem"] = true,
                ["UGCPropertySystem"] = true,
                ["UGCCharacter"] = true,
                ["UGCGameplay"] = true,
                ["UGCUI"] = true,
                ["UGCInventory"] = true,
                ["UGCAttribute"] = true,
                ["TimerService"] = true,
                ["EventService"] = true,
                ["AsyncService"] = true,
                ["LogService"] = true,
                ["UnrealNetwork"] = true,    -- 网络 RPC
                ["Util_EnumManager"] = true, -- 枚举管理器
                -- require 路径前缀（字符串字面量中的大写前缀会被误报）
                ["Script"] = true, ["Package"] = true,
                ["Config"] = true, ["Suites"] = true, ["System"] = true,
                -- 项目公共全局
                ["SuiteIndex"] = true,    -- AutoTestKit 套件索引
                ["Assert"] = true,        -- AutoTestKit 断言表
                ["TAssert"] = true,       -- AutoTestKit 断言表（local 别名，保留）
                ["AutoTestKit"] = true,   -- 包名前缀（字符串字面量中的路径会被误报）
            }

            -- ④ 收集所有 global 表引用（X.Y，其中 Y 以大写字母开头）
            -- [^%w_]+：X 前面必须是空格/括号/逗号等非单词字符（但不能是下划线，下划线开头不算词边界）
            -- ([A-Z][a-zA-Z0-9_]*)：捕获大写开头的 identifier
            -- [.:]：X 和 Y 之间是 . 或 :
            -- [A-Z]：Y 必须以大写字母开头（如 .EventType、.GetMilestone、:StartGame）
            -- 效果：
            --   Config_DemoOrchestrator.SnapshotFields[1] → 捕获 Config_DemoOrchestrator
            --   Registry_CountDown.EventType.On_xxx → 捕获 Registry_CountDown
            --   Util_EnumManager.Client_Service_Type.TipContent → 不捕获（Client_Service_Type 是枚举类型名）
            --   System_CountDown.Start → 不捕获（Start 是 local）
            -- 策略：
            --   1. 捕获 compound ident（有下划线）的使用作为 potential global
            --   2. 如果后面是表索引 [.XXX[ 或 #.XXX] 才真正报告
            --   3. 如果后面是 .Member（链式），检查 Member 是否像枚举/类型名（大写开头的短名称如 Type、Enum、Status）
            local globalTables = {}
            local seen = {}

            for _, line in ipairs(lines) do
                if parser.isCodeLine(line) then
                    for ident, sep in line:gmatch("([A-Z][a-zA-Z0-9_]*)([.:][A-Z])") do
                        if not seen[ident] and not ident:match("^_") and not localSet[ident] and not KNOWN_GLOBALS[ident] then
                            local shouldCapture = false

                            if ident:match("_") then
                                -- compound ident
                                local afterIdent = line:match(ident .. "([.:].*)")
                                if afterIdent then
                                    -- 优先检查链式 .Member. 模式（后面还有 .）
                                    local isChain = afterIdent:match("^%.[A-Z][A-Za-z0-9_]+%.")
                                    if isChain then
                                        -- 链式调用，提取第一个 Member
                                        local member = afterIdent:match("^%.([A-Z][A-Za-z0-9_]+)")
                                        if member and #member >= 8 then
                                            -- 长名称视为配置表，报
                                            shouldCapture = true
                                        end
                                    else
                                        -- 非链式，检查是否是表操作
                                        -- 表索引 [.XXX[ → 报
                                        if afterIdent:match("^%.[A-Z][A-Za-z0-9_]*%[") then
                                            shouldCapture = true
                                        -- 表长度 #.XXX → 报
                                        elseif afterIdent:match("^%.[A-Z][A-Za-z0-9_]*[^%w]") then
                                            local rest = afterIdent:match("^%.[A-Z][A-Za-z0-9_]*(.*)")
                                            if rest and rest:match("^[^%w]*#[^%w]") then
                                                shouldCapture = true
                                            end
                                        end
                                    end
                                end
                            end

                            if shouldCapture then
                                seen[ident] = true
                                globalTables[ident] = true
                            end
                        end
                    end
                end
            end

            -- ⑤ 收集所有 global 函数调用（小写开头 xxx(...)）
            local globalFuncs = {}
            -- 逐行扫描，确保函数名前面是行首或非单词字符（词边界）
            for i, line in ipairs(lines) do
                if parser.isCodeLine(line) then
                    for fn in line:gmatch("([a-z][a-zA-Z0-9_]*)%s*%(") do
                        local pos = line:find(fn, 1, true)
                        local before = line:sub(1, pos - 1)
                        if not localSet[fn] and not LUA_KEYWORDS[fn] and not LUA_BUILTINS[fn]
                           and not KNOWN_GLOBALS[fn]
                           and (before == "" or before:match("[^%w]$")) then
                            globalFuncs[fn] = true
                        end
                    end
                end
            end

            -- ⑥ 按行号去重，同一行多个 global 合并为一条
            local byLine = {}
            for i, line in ipairs(lines) do
                if parser.isCodeLine(line) then
                    local tablesOnLine = {}
                    for ident in pairs(globalTables) do
                        -- 直接检查行中是否包含这个 identifier 作为完整单词
                        -- 用简单的字符串包含检查，因为 gmatch 已经验证了 ident 的正确性
                        if line:find(parser.escapePattern(ident), 1, true) then
                            tablesOnLine[#tablesOnLine + 1] = ident
                        end
                    end
                    local funcsOnLine = {}
                    for fn in pairs(globalFuncs) do
                        if line:find(parser.escapePattern(fn) .. "%s*%(") then
                            funcsOnLine[#funcsOnLine + 1] = fn
                        end
                    end
                    if #tablesOnLine > 0 or #funcsOnLine > 0 then
                        byLine[i] = {
                            text   = parser.trim(line),
                            tables = tablesOnLine,
                            funcs  = funcsOnLine,
                        }
                    end
                end
            end

            -- ⑦ 转为 violation 列表
            local violations = {}
            for lineNum, info in pairs(byLine) do
                violations[#violations + 1] = {
                    line   = lineNum,
                    text   = info.text,
                    rule   = "detect_global_usage",
                    kind   = "global_usage",
                    tables = info.tables,
                    funcs  = info.funcs,
                }
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
        M.makeDetectGlobalUsageRule(),
    }
end

return M