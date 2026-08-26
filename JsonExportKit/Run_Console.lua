-- ============================================================
-- JsonExportKit 交互式控制台
-- 运行: cd TestHelper && lua54 JsonExportKit\Run_Console.lua
-- ============================================================

-- UTF-8 支持
os.execute("chcp 65001 >nul 2>&1")

-- TestHelper 根目录（固定路径）
local TEST_HELPER_ROOT = [[E:\Project\AgentHelper\WithDrawCache\TestHelper]]

-- Lua require 使用正斜杠
package.path =
      TEST_HELPER_ROOT .. "/JsonExportKit/?.lua"
    .. ";" .. TEST_HELPER_ROOT .. "/ExternalConfig/?.lua"
    .. ";" .. TEST_HELPER_ROOT .. "/?.lua"
    .. ";" .. package.path

local JsonExportKit = require("init")

-- ============================================================
-- 打印工具
-- ============================================================

local function header(title)
    print("")
    print("╔" .. string.rep("═", 60) .. "╗")
    print("║" .. string.format("%-60s", "  " .. title) .. "║")
    print("╚" .. string.rep("═", 60) .. "╝")
end

local function waitEnter()
    print("")
    io.write("  按回车返回菜单...")
    io.flush()
    io.read()
end

-- ============================================================
-- 一级菜单：模式选择
-- ============================================================

local function printMainMenu()
    header("JsonExportKit 配置模板工具")
    print("  导出目录: " .. JsonExportKit.getExportRoot())
    print("")
    print("  请选择模式:")
    print("")
    print("  [1] 导出模式")
    print("  [2] 导入模式")
    print("")
    print("  [C] 清理控制台")
    print("  [0] 退出")
    print("")
    io.write("  请输入: ")
    io.flush()
end

local function printExportSubMenu()
    header("导出模式")
    print("  模式: 将 Package 配置导出为 JSON 模板")
    print("")
    print("  [1] 导出所有 Package")
    print("  [2] 选择导出 Package")
    print("")
    print("  [0] 返回上级")
    print("")
    io.write("  请输入: ")
    io.flush()
end

local function printImportSubMenu()
    header("导入模式")
    print("  模式: 从 JSON 配置同步到 Lua 文件")
    print("  源目录: " .. JsonExportKit.getExportRoot())
    print("")
    print("  [1] 导入所有 Package")
    print("  [2] 选择导入 Package")
    print("")
    print("  [0] 返回上级")
    print("")
    io.write("  请输入: ")
    io.flush()
end

-- ============================================================
-- 二级菜单：子菜单
-- ============================================================

local function printSubMenuExportAll()
    header("导出所有 Package")
    print("  模式: 一次性导出所有扫描到的 Package")
    print("")
    print("  [1] 预览所有")
    print("  [2] 执行导出（预览 + 确认）")
    print("")
    print("  [0] 返回上级")
    print("")
    io.write("  请输入: ")
    io.flush()
end

local function printSubMenuExportSelect(metaList)
    header("选择导出 Package")
    print("  模式: 选择指定的 Package 导出")
    print("")
    print("  [A] 全选所有 Package")
    for i, item in ipairs(metaList) do
        print(string.format("  [%d] %s", i, item.packageName))
    end
    print("")
    print("  输入规则:")
    print("    - 单个序号: 如 1")
    print("    - 多选: 1,3,5")
    print("    - 范围:   1-3")
    print("    - 全选:   A 或 a")
    print("")
    print("  [0] 返回上级")
    print("")
    io.write("  请输入: ")
    io.flush()
end

local function printSubMenuImportSelect(metaList)
    header("选择导入 Package")
    print("  模式: 选择指定的 Package 从 JSON 导入")
    print("")
    print("  [A] 全选所有 Package")
    for i, item in ipairs(metaList) do
        print(string.format("  [%d] %s", i, item.packageName))
    end
    print("")
    print("  输入规则:")
    print("    - 单个序号: 如 1")
    print("    - 多选: 1,3,5")
    print("    - 范围:   1-3")
    print("    - 全选:   A 或 a")
    print("")
    print("  [0] 返回上级")
    print("")
    io.write("  请输入: ")
    io.flush()
end

-- ============================================================
-- 选择模式：解析用户输入
-- ============================================================

local function parseSelection(input, max)
    input = (input or ""):gsub("^%s*(.-)%s*$", "%1")
    if input == "" then return {}, "空输入" end

    -- 全选
    if input == "a" or input == "A" then
        local all = {}
        for i = 1, max do table.insert(all, i) end
        return all, nil
    end

    local indices = {}
    for segment in input:gmatch("[^,]+") do
        local rangeStart, rangeEnd = segment:match("^%s*(%d+)%s*%-%s*(%d+)%s*$")
        if rangeStart then
            local s, e = tonumber(rangeStart), tonumber(rangeEnd)
            if s and e and s <= e and s >= 1 and e <= max then
                for i = s, e do table.insert(indices, i) end
            else
                return {}, "范围无效: " .. segment
            end
        else
            local num = segment:match("^%s*(%d+)%s*$")
            if num then
                local n = tonumber(num)
                if n >= 1 and n <= max then
                    table.insert(indices, n)
                else
                    return {}, "序号越界: " .. num
                end
            else
                return {}, "无法解析: " .. segment
            end
        end
    end

    local seen = {}
    local unique = {}
    for _, idx in ipairs(indices) do
        if not seen[idx] then
            seen[idx] = true
            table.insert(unique, idx)
        end
    end
    table.sort(unique)
    return unique, nil
end

-- ============================================================
-- 业务流程
-- ============================================================

local function doExportAndReport(results)
    print("")
    print("═══════════════════════════════════════════════════════════")
    print("  导出完成!")
    print("═══════════════════════════════════════════════════════════")
    print("")
    print("  成功: " .. results.success .. " / " .. results.total)
    print("  失败: " .. results.failed .. " / " .. results.total)
    print("")
    print("  导出目录: " .. JsonExportKit.getExportRoot())
    print("")
    print("═══════════════════════════════════════════════════════════")
end

local function doImportAndReport(results)
    print("")
    print("═══════════════════════════════════════════════════════════")
    print("  导入完成!")
    print("═══════════════════════════════════════════════════════════")
    print("")
    print("  成功: " .. results.success)
    print("  失败: " .. results.failed)
    print("")
    print("═══════════════════════════════════════════════════════════")
end

local function confirmExport()
    print("")
    io.write("  确认导出? [Y] 是  [N] 否: ")
    io.flush()
    local confirm = io.read()
    confirm = (confirm or ""):gsub("^%s*(.-)%s*$", "%1"):lower()
    return confirm == "y" or confirm == "yes"
end

-- 导出：全部
local function modeExportAll()
    while true do
        printSubMenuExportAll()
        local choice = io.read()
        choice = (choice or ""):gsub("^%s*(.-)%s*$", "%1")

        if choice == "0" then
            return
        elseif choice == "1" then
            header("预览所有 Package")
            pcall(JsonExportKit.previewAll)
            waitEnter()
        elseif choice == "2" then
            header("导出所有 Package")
            pcall(JsonExportKit.previewAll)

            if not confirmExport() then
                print("")
                print("  [取消] 操作已取消")
                waitEnter()
                return
            end

            print("")
            print("  正在导出...")
            print("")

            local results = JsonExportKit.exportAll()
            doExportAndReport(results)
            waitEnter()
            return
        else
            header("无效选择")
            print("  请输入有效的选项")
            waitEnter()
        end
    end
end

-- 导出：选择
local function modeExportSelect()
    local metas = JsonExportKit.scanAllMeta()
    if #metas == 0 then
        header("无可导出 Package")
        print("  [INFO] 未找到任何 Package_Meta")
        waitEnter()
        return
    end

    while true do
        printSubMenuExportSelect(metas)
        local input = io.read()
        input = (input or ""):gsub("^%s*(.-)%s*$", "%1")

        if input == "0" then
            return
        end

        local indices, parseErr = parseSelection(input, #metas)
        if not indices or #indices == 0 then
            header("选择无效")
            print("  " .. (parseErr or "未选择任何 Package"))
            waitEnter()
        else
            local selectedNames = {}
            for _, idx in ipairs(indices) do
                table.insert(selectedNames, metas[idx].packageName)
            end

            header("选中 " .. #selectedNames .. " 个 Package")
            for _, name in ipairs(selectedNames) do
                print("  - " .. name)
            end

            pcall(JsonExportKit.previewByNames, selectedNames)

            if not confirmExport() then
                print("")
                print("  [取消] 操作已取消")
                waitEnter()
                return
            end

            print("")
            print("  正在导出...")
            print("")

            local results = JsonExportKit.exportByNames(selectedNames)
            doExportAndReport(results)
            waitEnter()
            return
        end
    end
end

-- 导入：选择
local function modeImportSelect()
    local metas = JsonExportKit.scanAllMeta()
    if #metas == 0 then
        header("无可导入 Package")
        print("  [INFO] 未找到任何 Package_Meta")
        waitEnter()
        return
    end

    while true do
        printSubMenuImportSelect(metas)
        local input = io.read()
        input = (input or ""):gsub("^%s*(.-)%s*$", "%1")

        if input == "0" then
            return
        end

        local indices, parseErr = parseSelection(input, #metas)
        if not indices or #indices == 0 then
            header("选择无效")
            print("  " .. (parseErr or "未选择任何 Package"))
            waitEnter()
        else
            local selectedNames = {}
            for _, idx in ipairs(indices) do
                table.insert(selectedNames, metas[idx].packageName)
            end

            header("选中 " .. #selectedNames .. " 个 Package")
            for _, name in ipairs(selectedNames) do
                print("  - " .. name)
            end

            pcall(JsonExportKit.previewImport, selectedNames)

            if not confirmExport() then
                print("")
                print("  [取消] 操作已取消")
                waitEnter()
                return
            end

            print("")
            print("  正在导入...")
            print("")

            local results = JsonExportKit.importByNames(selectedNames)
            doImportAndReport(results)
            waitEnter()
            return
        end
    end
end

-- 导入：全部
local function modeImportAll()
    header("导入所有 Package")
    print("  模式: 将 JSON 配置同步到 Lua 文件")
    print("  源目录: " .. JsonExportKit.getExportRoot())
    print("")

    if not confirmExport() then
        print("")
        print("  [取消] 操作已取消")
        waitEnter()
        return
    end

    print("")
    print("  正在导入...")
    print("")

    local results = JsonExportKit.importAll()
    doImportAndReport(results)
    waitEnter()
end

-- 导入模式主菜单
local function modeImport()
    while true do
        printImportSubMenu()
        local choice = io.read()
        choice = (choice or ""):gsub("^%s*(.-)%s*$", "%1")

        if choice == "0" then
            return
        elseif choice == "1" then
            modeImportAll()
            return
        elseif choice == "2" then
            modeImportSelect()
            return
        else
            header("无效选择")
            print("  请输入有效的选项")
            waitEnter()
        end
    end
end

-- 导出模式主菜单
local function modeExport()
    while true do
        printExportSubMenu()
        local choice = io.read()
        choice = (choice or ""):gsub("^%s*(.-)%s*$", "%1")

        if choice == "0" then
            return
        elseif choice == "1" then
            modeExportAll()
            return
        elseif choice == "2" then
            modeExportSelect()
            return
        else
            header("无效选择")
            print("  请输入有效的选项")
            waitEnter()
        end
    end
end

-- ============================================================
-- 主循环
-- ============================================================

local function main()
    os.execute("chcp 65001 >nul 2>&1")

    while true do
        printMainMenu()

        local choice = io.read()
        choice = (choice or ""):gsub("^%s*(.-)%s*$", "%1")

        if choice == "0" then
            header("退出")
            print("  再见!")
            break
        elseif choice == "c" or choice == "C" then
            os.execute("cls")
        elseif choice == "1" then
            modeExport()
        elseif choice == "2" then
            modeImport()
        else
            header("无效选择")
            print("  请输入有效的选项")
            waitEnter()
        end
    end
end

main()
