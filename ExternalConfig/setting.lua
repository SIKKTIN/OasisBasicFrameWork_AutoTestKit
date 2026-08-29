-- ============================================================
-- 项目级别配置
--
-- 说明：
--   - 所有项目相关的路径和配置集中在此文件
--   - 支持通过 ps1 launcher 的 -e 参数覆盖（运行时注入）
--   - 配置文件使用 Lua 语法，支持 return { ... } 格式
-- ============================================================

return {
    -- 被测业务项目根目录
    projectRoot = [[E:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\DayBreakDefenseDemoV1]],

    -- TestHelper 工具根目录
    testHelperRoot = [[E:\Project\AgentHelper\WithDrawCache\TestHelper]],

    -- 项目全局白名单文件（相对于 projectRoot）
    projectGlobalsPath = [[Script\Setting\Project_Globals.lua]],

    -- Package_Registry 生成文件路径（相对于 projectRoot）
    packageRegistryPath = [[Script\Setting\Package_Registry.lua]],

    -- Package_Meta_Index 生成文件路径（相对于 projectRoot）
    packageMetaIndexPath = [[Script\Setting\Package_Meta_Index.lua]],

    -- CommandSystem 配置扫描目录和指令清单输出路径（相对于 projectRoot）
    commandConfigDir = [[Script\Core\CommandSystem\Config]],
    commandListPath = [[Script\Setting\CommandList.lua]],

    -- DebugKit 预测扫描目录和输出路径（相对于 projectRoot）
    debugKitScanDir = [[Script]],
    debugKitPredictionPath = [[Script\Setting\DebugKitPrediction.lua]],

    -- TestKit: 单元测试根目录（相对于 testHelperRoot）
    testDir = [[UnitTests]],

    -- Lua 可执行文件路径（供 ps1 launcher 使用，避免依赖 PATH）
    luaPath = [[D:\dev\Lua\lua54.exe]],

    -- JsonExportKit: 导出目标根目录（策划配置模板存放位置）
    jsonExportRoot = [[E:\Docs]],
}
