-- ============================================================
-- GenKit 交互式控制台
-- 运行: lua54 TestHelper\GenKit\Run_Console.lua
-- ============================================================

-- UTF-8 支持
os.execute("chcp 65001 >nul 2>&1")

-- 添加 GenKit 目录到 package.path
-- 同时把 TestHelper 根目录加进去，使 init.lua 能 require("ExternalConfig.config")
package.path = package.path
    .. ";./TestHelper/GenKit/?.lua"
    .. ";./TestHelper/?.lua"

local GenKit = require("init")

-- ============================================================
-- 打印工具
-- ============================================================

local function header(title)
    print("")
    print("╔" .. string.rep("═", 60) .. "╗")
    print("║" .. string.format("%-60s", "  " .. title) .. "║")
    print("╚" .. string.rep("═", 60) .. "╝")
end

local function separator()
    print("├" .. string.rep("─", 60) .. "┤")
end

local function waitEnter()
    print("")
    io.write("  按回车返回菜单...")
    io.flush()
    io.read()
end

-- ============================================================
-- 菜单
-- ============================================================

local function printModeMenu()
    header("GenKit 代码生成工具")
    print("  项目: " .. GenKit.getProjectRoot())
    print("")
    print("  请选择使用模式:")
    print("")
    print("  [1] 预设模式")
    print("      按常用场景组合生成多个文件")
    print("")
    print("  [2] 详细模式")
    print("      单独选择要运行的生成器")
    print("")
    print("  [C] 清理控制台")
    print("  [0] 退出")
    print("")
    io.write("  请输入: ")
    io.flush()
end

local function printDetailMenu(tools)
    header("详细模式")
    print("  项目: " .. GenKit.getProjectRoot())
    print("")
    print("  请选择要运行的生成器:")
    print("")

    for i, tool in ipairs(tools) do
        print(string.format("  [%d] %s", i, tool.name))
        print(string.format("      %s", tool.description))
        print("")
    end

    print("  [C] 清理控制台")
    print("  [0] 返回模式菜单")
    print("")
    io.write("  请输入: ")
    io.flush()
end

local function printPresetMenu(presets)
    header("预设模式")
    print("  项目: " .. GenKit.getProjectRoot())
    print("")

    if #presets == 0 then
        print("  当前暂无可用预设")
        print("")
    else
        print("  请选择要运行的预设:")
        print("")
        for i, preset in ipairs(presets) do
            print(string.format("  [%d] %s", i, preset.name))
            print(string.format("      %s", preset.description))
            print("")
        end
    end

    print("  [C] 清理控制台")
    print("  [0] 返回模式菜单")
    print("")
    io.write("  请输入: ")
    io.flush()
end

-- ============================================================
-- 主循环
-- ============================================================

local function readChoice()
    local choice = io.read()
    return (choice or ""):gsub("^%s*(.-)%s*$", "%1")
end

local function runDetailMode()
    while true do
        local tools = GenKit.getTools()
        printDetailMenu(tools)
        local choice = readChoice()

        if choice == "0" then
            break
        elseif choice == "c" or choice == "C" then
            os.execute("cls")
        else
            local idx = tonumber(choice)
            if idx and idx >= 1 and idx <= #tools then
                local tool = tools[idx]
                header(tool.name)
                print("")

                local called, ok, err = pcall(tool.run)

                if not called then
                    print("")
                    print("[ERROR] 执行失败: " .. tostring(ok))
                elseif not ok then
                    print("")
                    print("[ERROR] 执行失败: " .. tostring(err))
                end

                waitEnter()
            else
                header("无效选择")
                print("  请输入有效的选项")
                waitEnter()
            end
        end
    end
end

local function runPresetMode()
    while true do
        local presets = GenKit.getPresets()
        printPresetMenu(presets)
        local choice = readChoice()

        if choice == "0" then
            break
        elseif choice == "c" or choice == "C" then
            os.execute("cls")
        else
            local idx = tonumber(choice)
            if idx and idx >= 1 and idx <= #presets then
                local preset = presets[idx]
                header(preset.name)
                print("")

                local called, ok, err = pcall(preset.run)
                if not called then
                    print("")
                    print("[ERROR] 执行失败: " .. tostring(ok))
                elseif not ok then
                    print("")
                    print("[ERROR] 执行失败: " .. tostring(err))
                end
                waitEnter()
            else
                header("无效选择")
                print("  请输入有效的选项")
                waitEnter()
            end
        end
    end
end

local function main()
    os.execute("chcp 65001 >nul 2>&1")

    while true do
        printModeMenu()
        local choice = readChoice()

        if choice == "0" then
            header("退出")
            print("  再见!")
            break
        elseif choice == "1" then
            runPresetMode()
        elseif choice == "2" then
            runDetailMode()
        elseif choice == "c" or choice == "C" then
            os.execute("cls")
        else
            header("无效选择")
            print("  请输入有效的选项")
            waitEnter()
        end
    end
end

main()
