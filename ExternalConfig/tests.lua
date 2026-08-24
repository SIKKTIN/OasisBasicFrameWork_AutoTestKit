-- ============================================================
-- CodeNormKit 测试配置
--
-- 配置说明:
--   package      - 被测包名（用于自动推导 Script/Package/<package>/ 路径）
--   systemDir    - 可选，覆盖 system 目录（默认: Script/Package/<package>/System）
--   privatesPath - 可选，覆盖 privates 文件（默认: Script/Package/<package>/Package_Meta.lua）
--   tests        - 测试用例数组
--     - path    - 被测文件路径（相对于 projectRoot，或绝对路径）
--     - count   - 期望违规数（nil 表示只运行不断言）
--     - label   - 可选，测试标签
-- ============================================================

return {
    {
        package = "AutoTestKit",
        tests = {
            {
                path = "Script/Package/AutoTestKit/TestRunner/TestManager.lua",
                count = 5,
                label = "TestManager 测试用例",
            },
        },
    },
    {
        package = "CountDown",
        tests = {
            {
                path = "Script/Package/CountDown/System/System_CountDown.lua",
                count = 0,
                label = "System_CountDown 测试用例",
            },
        },
    },
    {
        package = "_DemoOrchestrator",
        privatesPath = "@@TestHelper/CodeNormKit/testsuite/fixtures/_DemoOrchestrator/Package_Meta.lua",
        tests = {
            {
                path = "@@TestHelper/CodeNormKit/testsuite/fixtures/_DemoOrchestrator/System_DemoOrchestrator_Violating.lua",
                count = 7,
                label = "Violating: 胶水包读 owner 私有字段",
            },
            {
                path = "@@TestHelper/CodeNormKit/testsuite/fixtures/_DemoOrchestrator/System_DemoOrchestrator_Compliant.lua",
                count = 0,
                label = "Compliant: 走 Get 后 0 违规",
            },
        },
    },
}
