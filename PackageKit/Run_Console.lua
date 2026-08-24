-- ============================================================
-- PackageKit 交互式控制台
-- 运行: lua54 TestHelper\PackageKit\Run_Console.lua
-- ============================================================

package.path = package.path
    .. ";./TestHelper/PackageKit/?.lua"
    .. ";./TestHelper/?.lua"

local PackageKit = require("init")

-- UTF-8 支持
os.execute("chcp 65001 >nul 2>&1")

local function header(title)
    print("")
    print("╔" .. string.rep("═", 62) .. "╗")
    print("║" .. string.format("%-62s", "  " .. title) .. "║")
    print("╚" .. string.rep("═", 62) .. "╝")
end

local function separator()
    print("├" .. string.rep("─", 62) .. "┤")
end

local function main()
    os.execute("chcp 65001 >nul 2>&1")

    while true do
        header("PackageKit 包诊断工具")
        print("")
        print("  [1] 运行所有诊断")
        print("  [2] 检查 dependsOn 依赖")
        print("")
        print("  [0] 退出")
        print("")
        io.write("  请输入: ")
        io.flush()

        local choice = io.read()
        choice = (choice or ""):gsub("^%s*(.-)%s*$", "%1")

        if choice == "0" then
            print("")
            print("  再见!")
            break
        elseif choice == "1" then
            PackageKit.RunAll()
            print("")
            io.write("  按回车继续...")
            io.flush()
            io.read()
        elseif choice == "2" then
            print("")
            print("▶ 工具: 检查 dependsOn 依赖")
            separator()
            local result = PackageKit.tools.check_depends.run(PackageKit.getProjectRoot())
            PackageKit.tools.check_depends.printReport(result)
            print("")
            io.write("  按回车继续...")
            io.flush()
            io.read()
        else
            print("")
            print("  无效选择，请重新输入")
            print("")
        end
    end
end

main()
