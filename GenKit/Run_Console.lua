-- ============================================================
-- GenKit 交互式控制台
-- 运行: lua54 TestHelper\GenKit\Run_Console.lua
-- ============================================================

-- UTF-8 支持
os.execute("chcp 65001 >nul 2>&1")

-- 添加 GenKit 目录到 package.path
-- 同时把 TestHelper 根目录加进去，使 init.lua 能 require("ExternalConfig.setting")
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

local function printMenu(tools)
    header("GenKit 代码生成工具")
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
    print("  [0] 退出")
    print("")
    io.write("  请输入: ")
    io.flush()
end

-- ============================================================
-- 主循环
-- ============================================================

local function main()
    os.execute("chcp 65001 >nul 2>&1")

    while true do
        local tools = GenKit.getTools()

        printMenu(tools)

        local choice = io.read()
        choice = (choice or ""):gsub("^%s*(.-)%s*$", "%1")  -- trim

        if choice == "0" then
            header("退出")
            print("  再见!")
            break
        elseif choice == "c" or choice == "C" then
            os.execute("cls")
        else
            local idx = tonumber(choice)
            if idx and idx >= 1 and idx <= #tools then
                local tool = tools[idx]
                header(tool.name)
                print("")

                local ok, result = pcall(tool.run)

                if not ok then
                    print("")
                    print("[ERROR] 执行失败: " .. tostring(result))
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

main()
