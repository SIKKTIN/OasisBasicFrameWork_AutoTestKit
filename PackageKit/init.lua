-- ============================================================
-- PackageKit
-- 包诊断工具套件
--
-- 工具列表:
--   1. check_depends - 检查 Package_Meta 中 dependsOn 的有效性
--
-- 使用:
--   lua54 TestHelper/PackageKit/Run_Console.lua
--   或在脚本中 require("TestHelper.PackageKit.init")
-- ============================================================

package.path = package.path
    .. ";./TestHelper/PackageKit/?.lua"
    .. ";./TestHelper/PackageKit/tools/?.lua"
    .. ";./TestHelper/?.lua"

local M = {}

-- 引入项目级配置
local setting = require("ExternalConfig.setting")

-- 项目根目录
M.PROJECT_ROOT = setting.projectRoot

function M.getProjectRoot()
    return M.PROJECT_ROOT
end

-- 加载工具
local check_depends = require("check_depends")

-- 导出工具
M.tools = {
    check_depends = check_depends,
}

-- 运行所有工具
function M.RunAll()
    print("")
    print("╔" .. string.rep("═", 60) .. "╗")
    print("║" .. string.format("%-60s", "  PackageKit 包诊断工具") .. "║")
    print("╚" .. string.rep("═", 60) .. "╝")
    print("")

    local results = {}

    -- 工具 1: 检查 dependsOn
    print("▶ 工具 1: 检查 dependsOn 依赖")
    print(string.rep("─", 62))
    local depsResult = check_depends.run(M.PROJECT_ROOT)
    results.check_depends = depsResult
    check_depends.printReport(depsResult)
    print("")

    -- 汇总
    local totalErrors = 0
    local totalWarnings = 0
    for name, res in pairs(results) do
        totalErrors = totalErrors + (res.errors or 0)
        totalWarnings = totalWarnings + (res.warnings or 0)
    end

    print(string.rep("═", 62))
    print(string.format("  诊断完成: %d 个错误, %d 个警告",
        totalErrors, totalWarnings))
    print(string.rep("═", 62))

    return results
end

return M
