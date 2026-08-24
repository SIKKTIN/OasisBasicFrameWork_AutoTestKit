-- ============================================================
-- init.lua
-- CodeNormKit 主入口
--
-- 设计 B：两步注册
--   Step 1: CodeNorm.RegisterPackage(name, opts?)   声明一个被测包
--           自动推导 system/privates 路径，也可 opts 显式覆盖
--   Step 2: CodeNorm.Expect(packageName, systemFile, opts?)
--           注册"期望：某个 system 文件有多少违规"
--   Run + PrintReport:  跑全部 + 友好打印
--
-- 保留:  RunLint(target, privates, projectRoot?) 即兴单文件入口
--        CountViolations(...)              便利包装
--
-- 路径说明：
--   - CodeNormKit 本身位于 TestHelper/CodeNormKit/，完全独立于业务项目
--   - PROJECT_ROOT 指向被测业务项目（Withdraw），所有 system/privates 路径都基于它
--   - getProjectRoot() 直接返回 PROJECT_ROOT，不再用 __FILE__ 反推
-- ============================================================

-- 关键：CodeNormKit 目录加入 package.path，使 init/parser/rules 可用纯文件名 require
package.path = package.path
    .. ";./TestHelper/CodeNormKit/?.lua"
    .. ";./?.lua"

local parser = require("parser")
local rules  = require("rules")

local M = {}

-- 规则中文描述（与 rules.lua 中的 rule 字段一一对应）
-- 增加新规则时只需补一行；文案修改不影响 violation 数据结构
M.RULE_DESCRIPTIONS = {
    forbid_table_index  = "禁止直接索引私有表",
    forbid_field_read   = "禁止直接读取私有字段",
    forbid_table_length = "禁止用 # 取私有表长度",
    detect_global_usage = "检测 global 引用（无 local 声明）",
}

-- ============================================================
-- 项目根（被测业务项目的绝对路径）
-- ============================================================
-- CodeNormKit 部署在 TestHelper/CodeNormKit/，与业务项目分离。
-- 这里必须显式指向被测项目（Withdraw），不能依赖 __FILE__ 反推。
-- ps1 launcher 也会把此值用 -e 注入；手动改这里也能跑。
M.PROJECT_ROOT = [[E:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Withdraw]]

function M.getProjectRoot()
    return M.PROJECT_ROOT
end

-- ============================================================
-- 包类型（packageKind）支持
-- ============================================================
-- packageKind 取值：
--   "owner"        拥有私有数据的业务包（默认，向后兼容）
--   "orchestrator" 胶水包，不拥有私有数据
--                  注意：胶水包不豁免 lint！所有包都必须走 Get。
--                  kind 仅作为分类标记，未来"仅适用某一 kind"的规则按此判定。
--
-- 判定依据：Package_Meta 顶层字段 packageKind
-- 由 parser.readPackageKind 读取；loadPrivates 会把顶层 packageKind 也注入到 result。

-- ============================================================
-- 核心 Lint 入口（保留，即兴单文件用法）
-- @param targetFile string         相对路径
-- @param privatesFile string       相对路径
-- @param projectRoot string|nil
-- @param packageKind string|nil    当前 target 所属包的类型（"owner"/"orchestrator"/...）
--                                  缺省值 "owner"（向后兼容）
--                                  由 Run 从 Package_Meta 顶层字段读出后传入
-- @return violations array        每项 { line, text, rule }
-- ============================================================
function M.RunLint(targetFile, privatesFile, projectRoot, packageKind)
    projectRoot = projectRoot or M.getProjectRoot()
    packageKind = packageKind or "owner"
    local privates = parser.loadPrivates(projectRoot, privatesFile)
    local source   = parser.readSource(projectRoot, targetFile)
    local lines    = parser.splitLines(source)

    -- 胶水包不豁免：所有规则都按"当前 kind 适用性"判定
    local ruleList = rules.makeDefaultRules(privates)
    local allViolations = {}
    for _, rule in ipairs(ruleList) do
        if rule.appliesTo(packageKind) then
            for _, v in ipairs(rule.check(lines)) do
                allViolations[#allViolations + 1] = v
            end
        end
    end
    return allViolations
end

function M.CountViolations(targetFile, privatesFile, projectRoot, packageKind)
    return #M.RunLint(targetFile, privatesFile, projectRoot, packageKind)
end

-- ============================================================
-- 注册模式（设计 B）
-- ============================================================

-- 包注册表: { [packageName] = { name, systemDir, privatesPath } }
M.packages = {}

-- 期望表:   { [expectId] = { id, packageName, systemFile, expectCount } }
M.expectations = {}

-- 推导包路径（绿洲惯例）
-- 默认:
--   systemDir    = Script/Package/<name>/System
--   privatesPath = Script/Package/<name>/Package_Meta.lua
-- opts 覆盖:
--   opts.systemDir     显式覆盖 system 目录
--   opts.privatesPath  显式覆盖 privates 文件
function M.RegisterPackage(name, opts)
    opts = opts or {}
    M.packages[name] = {
        name = name,
        systemDir    = opts.systemDir    or ("Script/Package/" .. name .. "/System"),
        privatesPath = opts.privatesPath or ("Script/Package/" .. name .. "/Package_Meta.lua"),
    }
end

-- 注册一个"测试期望"
-- @param packageName string     已注册的包名
-- @param opts {
--   path  string,                          -- 必填：完整相对路径（projectRoot 下的相对路径）
--   count int?,                            -- 期望违规数；nil 不断言
--   label string?,                         -- 报表里的标签；默认取 path 末段（filename）
-- }
function M.Expect(packageName, opts)
    opts = opts or {}
    assert(type(opts.path) == "string" and opts.path ~= "",
        "Expect requires opts.path (完整相对路径，projectRoot 相对)")

    -- id 用 path 末段（机器可读、不带人类描述、避免重复显示）
    -- label 给人看，没设时回退到同一末段
    local filename  = opts.path:match("([^/\\]+)$") or opts.path
    local id        = packageName .. "::" .. filename

    M.expectations[id] = {
        id          = id,
        packageName = packageName,
        systemFile  = filename,                                      -- 报表字段名沿用
        targetPath  = opts.path,                                     -- 唯一路径来源
        expectCount = opts.count,                                    -- nil 表示不断言数量
        label       = opts.label or filename,
    }
end

-- 清空所有注册（用于重跑/独立进程）
function M.ClearRegistry()
    M.packages = {}
    M.expectations = {}
end

-- ============================================================
-- Run / PrintReport
-- ============================================================

-- 跑所有已注册的 Expect，返回结果表
-- @param projectRoot string|nil
-- @param opts { onlyPackage = string? }   只跑某个 package 的 expect（用于"单包专属入口"）
-- 结果: { allOk=bool, total=N, pass=N, fail=N,
--         cases = { { id, label, packageName, systemFile, privatesPath,
--                     expectCount, actualCount, pass, error, violations } } }
function M.Run(projectRoot, opts)
    projectRoot = projectRoot or M.getProjectRoot()
    opts = opts or {}
    local onlyPackage = opts.onlyPackage
    local results = { allOk = true, total = 0, pass = 0, fail = 0, cases = {} }

    for _, exp in pairs(M.expectations) do
        if onlyPackage and exp.packageName ~= onlyPackage then
            goto continue
        end
        results.total = results.total + 1
        local pkg = M.packages[exp.packageName]
        local caseResult = {
            id           = exp.id,
            label        = exp.label,
            packageName  = exp.packageName,
            systemFile   = exp.systemFile,
            privatesPath = pkg and pkg.privatesPath or "?",
            targetPath   = exp.targetPath or "?",
            expectCount  = exp.expectCount,
            actualCount  = 0,
            pass         = false,
            error        = nil,
            violations   = {},
        }

        if not pkg then
            caseResult.error = "Package not registered: " .. exp.packageName
        else
            -- 从 Package_Meta 顶层读 packageKind，决定哪些规则对本 target 生效
            local packageKind = parser.readPackageKind(projectRoot, caseResult.privatesPath) or "owner"
            local ok, result = pcall(M.RunLint, caseResult.targetPath, caseResult.privatesPath, projectRoot, packageKind)
            if not ok then
                caseResult.error = tostring(result)
            else
                caseResult.violations = result
                caseResult.actualCount = #result
            end
        end

        -- 判定通过：要么没期望 count（只跑不断言），要么相等
        if caseResult.error then
            caseResult.pass = false
        elseif caseResult.expectCount == nil then
            caseResult.pass = true                              -- 只跑不断言
        else
            caseResult.pass = (caseResult.actualCount == caseResult.expectCount)
        end

        if caseResult.pass then
            results.pass = results.pass + 1
        else
            results.fail = results.fail + 1
            results.allOk = false
        end

        results.cases[#results.cases + 1] = caseResult
        ::continue::
    end

    return results
end

-- 友好打印报告
-- @param opts { verbose = bool? }   PASS 也打违规列表（默认仅 FAIL 打）
-- 粒度: 行号 + 代码 + 规则名
function M.PrintReport(results, opts)
    opts = opts or {}
    local verbose = opts.verbose == true
    local sep = string.rep("─", 72)
    print(sep)
    print(" CodeNormKit Lint 报告")
    print(sep)

    for _, c in ipairs(results.cases) do
        local mark = c.pass and "✓ PASS" or "✗ FAIL"
        -- 报表显示：优先用 label（人类描述），否则回退到 "packageName / systemFile"
        local displayName = c.label
            and (c.label ~= c.systemFile) and c.label
            or (c.packageName .. " / " .. c.systemFile)
        print(string.format("\n▶ [%s] %s   %s", c.id, displayName, mark))
        print(string.format("  target:   %s", c.targetPath))
        print(string.format("  privates: %s", c.privatesPath))

        if c.error then
            print(string.format("  期望违规: %s  实际: -  %s",
                tostring(c.expectCount or "-"), "ERROR"))
            print(string.format("  错误: %s", c.error))
        else
            local expStr = tostring(c.expectCount or "-")
            print(string.format("  期望违规: %s  实际: %d", expStr, c.actualCount))
        end

        -- 失败 / verbose → 列出（粒度：行号 + 规则描述 + 代码）
        if #c.violations > 0 and (not c.pass or verbose) then
            print("  " .. sep)
            for _, v in ipairs(c.violations) do
                local desc = M.RULE_DESCRIPTIONS[v.rule] or ""
                print(string.format("  L%4d [#%s]  %s",
                    v.line, v.rule, desc))
                print(string.format("         %s", v.text))
                if v.rule == "detect_global_usage" then
                    if v.tables and #v.tables > 0 then
                        print(string.format("         global tables: %s", table.concat(v.tables, ", ")))
                    end
                    if v.funcs and #v.funcs > 0 then
                        print(string.format("         global funcs:  %s", table.concat(v.funcs, ", ")))
                    end
                end
            end
            print("  " .. sep)
        end
    end

    print("\n" .. string.rep("═", 72))
    print(string.format(" 合计: %d/%d 通过%s",
        results.pass, results.total,
        results.allOk and "  全部通过" or string.format("  （%d 失败）", results.fail)))
    print(string.rep("═", 72))
end

return M
