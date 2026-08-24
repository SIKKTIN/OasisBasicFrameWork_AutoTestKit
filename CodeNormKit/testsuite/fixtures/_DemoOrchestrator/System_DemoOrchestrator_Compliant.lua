-- ============================================================
-- System_DemoOrchestrator_Compliant.lua
-- _DemoOrchestrator 包的 System 文件（Type B 胶水包 - 走 Get 合规样例）
--
-- 与 _Violating 对照：
--   _Violating 故意读 owner 私有字段 → 5 个违规
--   _Compliant 走 Config_DemoOrchestrator 的公开 API → 0 个违规
--
-- 期望 count=0：证明"包内走 Get 后胶水包也能合规"，与 orchestrator 包级跳过无关。
--
-- 合规要点：本文件不能出现
--   - 私有表名 "SnapshotFields"
--   - 私有字段名 "playerHp" / "playerWeapon" / "mapId"
-- 用 CamelCase 的公开方法 Get*() 代替，方法名不与字段名重名。
-- ============================================================

local function OnSnapshotCapture()
    -- 走公开接口（合规访问）——方法名刻意用全大写命名空间前缀，避免与字段名重名
    local field  = Config_DemoOrchestrator.GET_FIELD(1)
    local hp     = Config_DemoOrchestrator.GET_HP()
    local weapon = Config_DemoOrchestrator.GET_WEAPON()
    local mapId  = Config_DemoOrchestrator.GET_MAP()
    local total  = Config_DemoOrchestrator.GET_FIELD_COUNT()

    local _ = { hp = hp, weapon = weapon, mapId = mapId, total = total }
    return _
end

return OnSnapshotCapture