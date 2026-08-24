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
    projectRoot = [[E:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Withdraw]],

    -- TestHelper 工具根目录
    testHelperRoot = [[E:\Project\AgentHelper\WithDrawCache\TestHelper]],

    -- 项目全局白名单文件（相对于 projectRoot）
    projectGlobalsPath = [[Script\Setting\Project_Globals.lua]],
}
