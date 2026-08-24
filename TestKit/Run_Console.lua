-- ============================================================
-- TestKit 交互式控制台
-- 运行: lua54 TestKit\Run_Console.lua
-- ============================================================

-- UTF-8 支持
os.execute("chcp 65001 >nul 2>&1")

-- 添加 TestKit 目录到 package.path
package.path = package.path .. ";./TestHelper/TestKit/?.lua"

local TestKit = require("init")

-- 注册所有包（按需添加）
TestKit.RegisterPackage("CountDown", { testDir = "TestHelper/UnitTests/CountDown" })
TestKit.RegisterPackage("Util", { testDir = "TestHelper/UnitTests/Util" })
-- TestKit.RegisterPackage("BattlePass")
-- TestKit.RegisterPackage("YourPackage")

-- ============================================================
-- 打印工具
-- ============================================================

local function header(title)
    print("")
    print("╔" .. string.rep("═", 62) .. "╗")
    print("║" .. string.format("%-62s", "  " .. title) .. "║")
    print("╚" .. string.rep("═", 62) .. "╝")
end

local function separator()
    print("├" .. string.rep("─", 62) .. "┤")
end

local function subSeparator()
    print("├" .. string.rep("─", 62) .. "┤")
end

-- ============================================================
-- 打印详细测试结果（完整输出）
-- ============================================================

local function printTestResult(result)
    print("▶ 运行: " .. result.fileName)
    subSeparator()
    print(result.output)
    subSeparator()

    if result.pass then
        print("  ✅ " .. result.fileName .. " - 通过")
    else
        print("  ❌ " .. result.fileName .. " - 失败 (exit code: " .. result.exitCode .. ")")
    end
    print("")
end

local function printPackageResult(pkgResult)
    header("测试包: " .. pkgResult.packageName)

    if pkgResult.error then
        print("  ❌ 错误: " .. pkgResult.error)
        return
    end

    if pkgResult.testFileCount == 0 then
        print("  (未找到测试文件)")
        return
    end

    print("  共 " .. pkgResult.testFileCount .. " 个测试文件")
    print("")

    for _, result in ipairs(pkgResult.results) do
        printTestResult(result)
    end

    -- 包汇总
    local passCount = 0
    for _, r in ipairs(pkgResult.results) do
        if r.pass then passCount = passCount + 1 end
    end

    print(string.rep("─", 64))
    if pkgResult.pass then
        print(string.format("  ✅ %s: %d/%d 通过", pkgResult.packageName, passCount, pkgResult.testFileCount))
    else
        print(string.format("  ❌ %s: %d/%d 通过", pkgResult.packageName, passCount, pkgResult.testFileCount))
    end
    print(string.rep("─", 64))
end

-- ============================================================
-- 打印整体报告
-- ============================================================

local function printOverallReport(runResult)
    print("")
    print(string.rep("═", 64))
    print("  整体报告")
    print(string.rep("═", 64))

    local totalPass = 0
    local totalFiles = 0

    for _, pkgResult in ipairs(runResult.results) do
        for _, r in ipairs(pkgResult.results) do
            totalFiles = totalFiles + 1
            if r.pass then totalPass = totalPass + 1 end
        end
    end

    for _, pkgResult in ipairs(runResult.results) do
        local pkgPass = 0
        local pkgTotal = 0
        for _, r in ipairs(pkgResult.results) do
            pkgTotal = pkgTotal + 1
            if r.pass then pkgPass = pkgPass + 1 end
        end
        local mark = (pkgTotal > 0 and pkgPass == pkgTotal) and "✅" or "❌"
        print(string.format("  %s %s: %d/%d", mark, pkgResult.packageName, pkgPass, pkgTotal))
    end

    print("")
    if runResult.allPass then
        print(string.format("  🎉 全部通过! %d/%d", totalPass, totalFiles))
    else
        print(string.format("  ⚠️  有测试失败: %d/%d", totalPass, totalFiles))
    end
    print(string.rep("═", 64))
end

-- ============================================================
-- 交互菜单
-- ============================================================

local function printMenu(packages)
    header("TestKit 测试控制台")
    print("  请选择要测试的包:")
    print("")

    for i, name in ipairs(packages) do
        local testCount = #TestKit.GetTestFiles(name)
        print(string.format("  [%d] %s (%d 个测试文件)", i, name, testCount))
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
-- 二级菜单：包内测试文件选择
-- ============================================================

local function printPackageSubMenu(packageName, testFiles)
    header("测试包: " .. packageName)
    print("  请选择要运行的测试文件:")
    print("")

    for i, fileName in ipairs(testFiles) do
        print(string.format("  [%d] %s", i, fileName))
    end

    print("")
    print("  [A] 全部运行")
    print("  [C] 清理控制台")
    print("  [0] 返回上级菜单")
    print("")
    io.write("  请输入: ")
    io.flush()
end

local function runPackageSubMenu(packageName)
    local testFiles = TestKit.GetTestFiles(packageName)

    if #testFiles == 0 then
        header("测试包: " .. packageName)
        print("  (未找到测试文件)")
        waitEnter()
        return
    end

    while true do
        printPackageSubMenu(packageName, testFiles)

        local choice = io.read()
        choice = (choice or ""):gsub("^%s*(.-)%s*$", "%1")  -- trim

        if choice == "0" then
            break
        elseif choice == "a" or choice == "A" then
            header("测试包: " .. packageName)
            print("")
            local pkgResult = TestKit.RunPackage(packageName)
            printPackageResult(pkgResult)
            waitEnter()
        elseif choice == "c" or choice == "C" then
            os.execute("cls")
        else
            local idx = tonumber(choice)
            if idx and idx >= 1 and idx <= #testFiles then
                local fileName = testFiles[idx]
                header("测试包: " .. packageName)
                print("")
                local pkgResult = TestKit.RunSingleFile(packageName, fileName)
                printPackageResult(pkgResult)
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
    -- UTF-8 输出
    os.execute("chcp 65001 >nul 2>&1")

    while true do
        local packages = TestKit.GetRegisteredPackages()

        if #packages == 0 then
            header("TestKit 测试控制台")
            print("  没有已注册的包!")
            print("  请先调用 TestKit.RegisterPackage('包名') 注册测试包")
            print("")
            break
        end

        printMenu(packages)

        local choice = io.read()
        choice = (choice or ""):gsub("^%s*(.-)%s*$", "%1")  -- trim

        if choice == "0" then
            header("退出")
            print("  再见!")
            break
        elseif choice == "a" or choice == "A" then
            -- 运行全部
            header("运行全部测试")
            print("")
            local runResult = TestKit.RunAll()

            for _, pkgResult in ipairs(runResult.results) do
                printPackageResult(pkgResult)
            end

            printOverallReport(runResult)

            if not runResult.allPass then
                os.exit(1)
            end

            waitEnter()
        elseif choice == "c" or choice == "C" then
            -- 清理控制台
            os.execute("cls")
        else
            -- 按数字选择包 -> 进入二级菜单
            local idx = tonumber(choice)
            if idx and idx >= 1 and idx <= #packages then
                local packageName = packages[idx]
                runPackageSubMenu(packageName)
            else
                header("无效选择")
                print("  请输入有效的选项")
                waitEnter()
            end
        end
    end
end

main()
