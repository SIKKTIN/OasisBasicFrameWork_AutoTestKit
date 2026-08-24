-- ============================================================
-- Package_Meta.lua  (Type B 胶水包测试 fixture)
-- _DemoOrchestrator 包的数据所有者声明
--
-- 关键设计：
--   1. 顶层 packageKind = "orchestrator" → 整包分类标记
--      - 不再触发任何 lint 跳过！胶水包也必须走 Get。
--   2. 第二条 decl: owner = "Config_DemoOrchestrator"，故意声明私有表
--      - 用于验证"胶水包读 owner 私有字段照样违规"。
--        System_DemoOrchestrator.lua 故意访问这表的私有字段 → 期望 5 违规。
--
-- deps 字段：仅作为文档/架构图谱，不影响 lint。
-- ============================================================

return {
    packageKind = "orchestrator",
    {
        kind = "orchestrator",
        deps = { "CountDown", "AutoTestKit" },
    },
    {
        owner = "Config_DemoOrchestrator",
        privateTables = {
            {
                name = "SnapshotFields",
                fields = { "playerHp", "playerWeapon", "mapId" },
            },
        },
    },
}