-- ============================================================
-- Package_Meta.lua  (Type B 胶水包测试 fixture)
-- _DemoOrchestrator 包的元数据契约
--
-- 关键设计：
--   1. 顶层 packageKind = "orchestrator" → 整包分类标记
--      - 不再触发任何 lint 跳过！胶水包也必须走 Get。
--   2. privates 内: owner = "Config_DemoOrchestrator"，故意声明私有表
--      - 用于验证"胶水包读 owner 私有字段照样违规"。
--        System_DemoOrchestrator.lua 故意访问这表的私有字段 → 期望 5 违规。
--
-- deps 字段：仅作为文档/架构图谱，不影响 lint。
-- ============================================================

return {
    packageKind = "orchestrator",
    packageName = "_DemoOrchestrator",
    description = "胶水包 fixture，验证 owner-decl 在 orchestrator 包内仍被 lint",

    privates = {
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
            -- 哪些字段已通过 Get 暴露（仅记录）
            exposedVia = {},
        },
    },
}
