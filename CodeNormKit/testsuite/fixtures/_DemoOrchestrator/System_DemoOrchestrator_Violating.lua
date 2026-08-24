-- ============================================================
-- System_DemoOrchestrator_Violating.lua
-- _DemoOrchestrator 包的 System 文件（Type B 胶水包 - 违反样例）
--
-- 故意写"按 owner 包规则必然违规"的访问，引用本包 Package_Meta 声明的私有字段：
--   - 直接索引私有表: Config_DemoOrchestrator.SnapshotFields[1]
--   - 直接读取私有字段: x.playerHp / x.playerWeapon / x.mapId
--   - 取私有表长度: #Config_DemoOrchestrator.SnapshotFields
--
-- packageKind = "orchestrator" 不再触发任何 lint 跳过！
-- 期望 count=5：证明胶水包读 owner 私有字段照样违规。
--
-- 对照（同 Package_Meta，路径换成 _Compliant）：期望 count=0。
-- ============================================================

local function OnSnapshotCapture()
    -- 模拟"拉取本包 Config 的私有字段"
    local field = Config_DemoOrchestrator.SnapshotFields[1]
    local hp = field.playerHp
    local weapon = field.playerWeapon
    local mapId = field.mapId
    local total = #Config_DemoOrchestrator.SnapshotFields

    -- 故意"使用"一次以避免 unused
    local _ = { hp = hp, weapon = weapon, mapId = mapId, total = total }
    return _
end

return OnSnapshotCapture