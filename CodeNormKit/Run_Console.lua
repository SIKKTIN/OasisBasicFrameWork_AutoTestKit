-- ============================================================
-- Run_Console.lua
-- CodeNormKit 交互式控制台
--
-- 用法：
--   lua54 TestHelper/CodeNormKit/Run_Console.lua
--   .\CodeNormKit_Runner.ps1 -c
-- ============================================================

-- UTF-8 支持
os.execute("chcp 65001 >nul 2>&1")

-- 添加 CodeNormKit 目录到 package.path
local function scriptAbsDir()
    local info = debug.getinfo(1, "S")
    local p = info.source:match("@(.*)") or ""
    if not p:match("^%a:") and not p:match("^[/\\]") then
        local pwd = io.popen("cd"):read("*all"):gsub("[\r\n]", "")
        p = pwd .. "\\" .. p
    end
    return (p:gsub("\\", "/"):match("(.*/)") or "./")
end
local kitRoot = scriptAbsDir()

package.path = package.path
    .. ";" .. kitRoot .. "?.lua"
    .. ";./TestHelper/CodeNormKit/?.lua"

local CodeNorm = require("init")

-- 加载测试配置
local testHelperRoot = kitRoot:match("CodeNormKit/$") and (kitRoot .. "../") or kitRoot
local configPath = testHelperRoot .. "ExternalConfig/tests.lua"
CodeNorm.LoadTests(configPath)

-- ============================================================
-- 打印工具（仅用于菜单/分隔/汇总栏）
-- 违规明细统一交给 CodeNorm.PrintReport，保持与批量入口一致
-- ============================================================

local function header(title)
    local width = 62
    print("")
    print("╔" .. string.rep("═", width) .. "╗")
    print("║" .. string.format("%-" .. width .. "s", "  " .. title) .. "║")
    print("╚" .. string.rep("═", width) .. "╝")
end

-- ============================================================
-- 打印包汇总（用于菜单式列表）
-- ============================================================

local function printPackageSummary(pkgName, pkgResults)
    local pass = 0
    local fail = 0
    for _, c in ipairs(pkgResults) do
        if c.pass then pass = pass + 1 else fail = fail + 1 end
    end
    local total = pass + fail
    local mark = (fail == 0) and "✅" or "❌"
    print(string.format("  %s %s: %d/%d 通过", mark, pkgName, pass, total))
end

-- ============================================================
-- 交互菜单
-- ============================================================

local function printMenu()
    local packages = CodeNorm.GetRegisteredPackages()

    header("CodeNormKit Lint 控制台")
    print("  请选择要测试的包:")
    print("")

    for i, pkgName in ipairs(packages) do
        local tests = CodeNorm.GetExpectationsForPackage(pkgName)
        print(string.format("  [%d] %s (%d 个测试用例)", i, pkgName, #tests))
    end

    print("")
    print("  [A] 运行全部已注册包")
    print("  [C] 清理控制台")
    print("  [0] 退出")
    print("")
    io.write("  请输入: ")
    io.flush()
end

local function waitEnter()
    print("")
    io.write("  按回车返回菜单...")
    io.flush()
    io.read()
end

-- ============================================================
-- 二级菜单：包内用例选择
-- ============================================================

local function printPackageSubMenu(pkgName, tests)
    header("测试包: " .. pkgName)
    print("  请选择要运行的测试用例:")
    print("")

    for i, test in ipairs(tests) do
        print(string.format("  [%d] %s", i, test.label or test.path))
    end

    print("")
    print("  [A] 全部运行")
    print("  [C] 清理控制台")
    print("  [0] 返回上级菜单")
    print("")
    io.write("  请输入: ")
    io.flush()
end

local function runSingleTest(pkgName, testId)
    header("运行: " .. testId)
    print("")

    -- 临时只注册这一个用例
    local originalExpectations = {}
    for id, exp in pairs(CodeNorm.expectations) do
        originalExpectations[id] = exp
        CodeNorm.expectations[id] = nil
    end

    -- 恢复目标用例
    local targetExp = originalExpectations[testId]
    if targetExp then
        CodeNorm.expectations[testId] = targetExp

        local results = CodeNorm.Run(nil, { onlyPackage = pkgName })
        CodeNorm.PrintReport(results, { verbose = true })

        CodeNorm.expectations[testId] = nil
    end

    -- 恢复原始用例
    for id, exp in pairs(originalExpectations) do
        CodeNorm.expectations[id] = exp
    end
end

local function runPackageSubMenu(pkgName)
    local tests = CodeNorm.GetExpectationsForPackage(pkgName)

    if #tests == 0 then
        header("测试包: " .. pkgName)
        print("  (该包没有测试用例)")
        waitEnter()
        return
    end

    while true do
        printPackageSubMenu(pkgName, tests)

        local choice = io.read()
        choice = (choice or ""):gsub("^%s*(.-)%s*$", "%1")

        if choice == "0" then
            break
        elseif choice == "a" or choice == "A" then
            header("运行: " .. pkgName)
            print("")
            local results = CodeNorm.RunPackage(pkgName)
            CodeNorm.PrintReport(results, { verbose = true })
            waitEnter()
        elseif choice == "c" or choice == "C" then
            os.execute("cls")
        else
            local idx = tonumber(choice)
            if idx and idx >= 1 and idx <= #tests then
                local test = tests[idx]
                runSingleTest(pkgName, test.id)
                waitEnter()
            else
                header("无效选择")
                print("  请输入有效的选项")
                waitEnter()
            end
        end
    end
end

-- ============================================================
-- 主循环
-- ============================================================

local function main()
    os.execute("chcp 65001 >nul 2>&1")

    while true do
        local packages = CodeNorm.GetRegisteredPackages()

        if #packages == 0 then
            header("CodeNormKit Lint 控制台")
            print("  没有已注册的包!")
            print("  请检查 ExternalConfig/tests.lua 配置")
            print("")
            break
        end

        printMenu()

        local choice = io.read()
        choice = (choice or ""):gsub("^%s*(.-)%s*$", "%1")

        if choice == "0" then
            header("退出")
            print("  再见!")
            break
        elseif choice == "a" or choice == "A" then
            header("运行全部测试")
            print("")
            local results = CodeNorm.Run(nil, nil)
            CodeNorm.PrintReport(results, { verbose = true })

            if not results.allOk then
                os.exit(1)
            end

            waitEnter()
        elseif choice == "c" or choice == "C" then
            os.execute("cls")
        else
            local idx = tonumber(choice)
            if idx and idx >= 1 and idx <= #packages then
                local pkgName = packages[idx]
                runPackageSubMenu(pkgName)
            else
                header("无效选择")
                print("  请输入有效的选项")
                waitEnter()
            end
        end
    end
end

main()
