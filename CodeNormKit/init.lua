-- ============================================================
-- init.lua
-- CodeNormKit 主入口
--
-- 设计 C：JSON 配置式注册
--   LoadSettings()      - 加载项目配置（自动探测）
--   LoadTests(configPath)  - 从外部配置加载测试用例
--   Run + PrintReport     - 跑全部 + 友好打印
--
-- 保留（兼容旧用法）:
--   RegisterPackage(name, opts?)
--   Expect(packageName, opts?)
--   RunLint(target, privates, projectRoot?)
--   CountViolations(...)
--
-- 路径说明：
--   - 配置集中管理在 ExternalConfig/setting.lua
--   - 支持通过 ps1 launcher 的 -e 参数覆盖配置值
--   - 配置文件使用 Lua 语法，支持 return { ... } 格式
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
-- 项目配置（从 ExternalConfig/setting.lua 加载）
-- 支持运行时通过 -e 参数注入覆盖
-- ============================================================

-- 默认值（会从配置覆盖）
M.PROJECT_ROOT = nil
M.TEST_HELPER_ROOT = nil

-- 加载项目配置
function M.LoadSettings()
    -- 自动探测配置路径（相对于 __FILE__ 反推）
    local function scriptAbsDir()
        local info = debug.getinfo(1, "S")
        local p = info.source:match("@(.*)") or ""
        if not p:match("^%a:") and not p:match("^[/\\]") then
            local pwd = io.popen("cd"):read("*all"):gsub("[\r\n]", "")
            p = pwd .. "\\" .. p
        end
        return (p:gsub("\\", "/"):match("(.*/)") or "./")
    end
    local kitRoot = scriptAbsDir()                            -- .../CodeNormKit/ 或 .../CodeNormKit/testsuite/
    -- 如果在 testsuite 子目录，上两级；否则上一级
    local testHelperRoot
    if kitRoot:match("CodeNormKit/testsuite/$") then
        testHelperRoot = kitRoot .. "../../"                  -- testsuite -> CodeNormKit -> TestHelper
    else
        testHelperRoot = kitRoot .. "../"                    -- CodeNormKit -> TestHelper
    end

    -- 优先用运行时注入的值（ps1 launcher -e 参数），否则从配置文件加载
    if M.PROJECT_ROOT == nil or M.TEST_HELPER_ROOT == nil then
        local configPath = testHelperRoot .. "ExternalConfig/setting.lua"
        local f, err = io.open(configPath, "r")
        if f then
            local content = f:read("*a")
            f:close()
            local chunk, loadErr = load(content, "@" .. configPath)
            if chunk then
                local cfg = chunk()
                if M.PROJECT_ROOT == nil then
                    M.PROJECT_ROOT = cfg.projectRoot
                end
                if M.TEST_HELPER_ROOT == nil then
                    M.TEST_HELPER_ROOT = cfg.testHelperRoot
                end
            end
        end
    end

    -- 兜底：未配置则使用自动探测值
    M.PROJECT_ROOT = M.PROJECT_ROOT or ([[E:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Withdraw]])
    M.TEST_HELPER_ROOT = M.TEST_HELPER_ROOT or testHelperRoot

    -- 动态加载项目级全局白名单
    local projectGlobalsPath = M.PROJECT_ROOT .. [[\Script\Setting\Project_Globals.lua]]
    local success, projectGlobals = pcall(dofile, projectGlobalsPath)
    if success then
        M.Project_Globals = projectGlobals or {}
    else
        M.Project_Globals = {}
    end
end

-- 初始化时自动加载配置
M.LoadSettings()

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
-- @param dependsOn string[]|nil    当前包允许的全局表依赖（来自 Package_Meta.dependsOn）
-- @return violations array        每项 { line, text, rule }
-- ============================================================
function M.RunLint(targetFile, privatesFile, projectRoot, packageKind, dependsOn)
    projectRoot = projectRoot or M.getProjectRoot()
    packageKind = packageKind or "owner"
    local privates = parser.loadPrivates(projectRoot, privatesFile)
    local source   = parser.readSource(projectRoot, targetFile)
    local lines    = parser.splitLines(source)

    -- 胶水包不豁免：所有规则都按"当前 kind 适用性"判定
    -- dependsOn 决定规则四（global 检测）的允许范围
    local ruleList = rules.makeDefaultRules(privates, dependsOn)
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

function M.CountViolations(targetFile, privatesFile, projectRoot, packageKind, dependsOn)
    return #M.RunLint(targetFile, privatesFile, projectRoot, packageKind, dependsOn)
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
            -- 从 Package_Meta 顶层读取 packageKind 和 dependsOn
            local packageKind = parser.readPackageKind(projectRoot, caseResult.privatesPath) or "owner"
            local dependsOn   = parser.readDependsOn(projectRoot, caseResult.privatesPath)
            local ok, result = pcall(M.RunLint, caseResult.targetPath, caseResult.privatesPath, projectRoot, packageKind, dependsOn)
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

-- ============================================================
-- LoadTests: 从外部 Lua 配置加载测试用例
-- @param configPath string   配置文件路径（绝对或相对路径）
--                          相对路径基于 projectRoot
-- @param projectRoot string   项目根目录
-- 配置格式:
--   {
--       package = "包名",
--       systemDir? = "覆盖的 system 目录",
--       privatesPath? = "覆盖的 privates 文件",
--       tests = {
--           { path, count?, label? },
--           ...
--       }
--   }
--
-- 路径前缀约定:
--   @@TestHelper/  - 相对于 TestHelper 根目录（用于 fixtures 等工具资源）
--   其他           - 相对于 projectRoot（被测业务项目）
-- ============================================================
function M.LoadTests(configPath, projectRoot)
    projectRoot = projectRoot or M.getProjectRoot()
    local fullPath = configPath

    -- 相对路径基于 projectRoot
    if not fullPath:match("^%a:") and not fullPath:match("^[/\\]") then
        fullPath = projectRoot .. "\\" .. fullPath:gsub("/", "\\")
    end

    local f, err = io.open(fullPath, "r")
    if not f then
        error("LoadTests: 无法打开配置文件: " .. err)
    end

    local content = f:read("*a")
    f:close()

    -- 用 load 加载配置（支持 return { ... } 格式）
    local chunk, loadErr = load(content, "@" .. fullPath)
    if not chunk then
        error("LoadTests: 配置语法错误: " .. loadErr)
    end

    local config = chunk()
    if type(config) ~= "table" then
        error("LoadTests: 配置必须返回数组或表")
    end

    -- 确保 entries 是数组格式
    local entries = config
    if #entries == 0 then
        -- 如果是键值对格式 { key = {package, tests} }，转为数组
        entries = {}
        for k, v in pairs(config) do
            if type(v) == "table" then
                v._key = k
                entries[#entries + 1] = v
            end
        end
    end

    for _, entry in ipairs(entries) do
        local pkg = entry.package
        if not pkg or pkg == "" then
            -- 跳过无效条目
        else
            -- 注册包（privatesPath 中的 @@TestHelper/ 前缀需要特殊处理）
            local privatesPath = entry.privatesPath
            if privatesPath and privatesPath:match("^@@TestHelper/") then
                -- 转换为相对于 TEST_HELPER_ROOT 的路径
                privatesPath = M.TEST_HELPER_ROOT .. "\\" .. privatesPath:gsub("^@@TestHelper/", ""):gsub("/", "\\")
            end
            M.RegisterPackage(pkg, {
                systemDir    = entry.systemDir,
                privatesPath = privatesPath,
            })

            -- 注册测试用例（targetPath 同样处理 @@TestHelper/ 前缀）
            local tests = entry.tests
            if tests then
                for _, test in ipairs(tests) do
                    local path = test.path
                    if path then
                        -- targetPath 也支持 @@TestHelper/ 前缀
                        local resolvedPath = path
                        if path:match("^@@TestHelper/") then
                            resolvedPath = M.TEST_HELPER_ROOT .. "\\" .. path:gsub("^@@TestHelper/", ""):gsub("/", "\\")
                        end
                        M.Expect(pkg, {
                            path  = resolvedPath,
                            count = test.count,
                            label = test.label,
                        })
                    end
                end
            end
        end
    end

    return #entries
end

return M
