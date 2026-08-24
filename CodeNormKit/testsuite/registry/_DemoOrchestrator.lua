-- ============================================================
-- registry/_DemoOrchestrator.lua
-- _DemoOrchestrator 包（Type B 胶水包）的 lint 测试用例
--
-- 目的：验证 "packageKind = orchestrator" 不再触发任何跳过——胶水包必须走 Get。
--
-- 测试构造：
--   Package_Meta.lua：
--     - 顶层 packageKind = "orchestrator"
--     - 含一个 owner decl（Config_DemoOrchestrator.SnapshotFields）
--   System_DemoOrchestrator_Violating.lua  故意读 owner decl 的私有字段
--     （直接索引 / 字段读取 / #长度 三类典型违规都用上） → 期望 5 违规
--   System_DemoOrchestrator_Compliant.lua  全部走 Get → 期望 0 违规
--
-- 关键语义反转（旧版本：orchestrator 跳过 → 期望 0；
--          新版本：orchestrator 不豁免 → 期望 5）
-- ============================================================

local function scriptAbsDir()
    local info = debug.getinfo(1, "S")
    local p = info.source:match("@(.*)") or ""
    if not p:match("^%a:") and not p:match("^[/\\]") then
        local pwd = io.popen("cd"):read("*all"):gsub("[\r\n]", "")
        p = pwd .. "\\" .. p
    end
    return (p:gsub("\\", "/"):match("(.*/)") or "./")
end
local registryDir = scriptAbsDir()
local kitDir      = registryDir:gsub("/testsuite/registry/$", "")
local fixtureDir  = kitDir .. "/testsuite/fixtures/_DemoOrchestrator"

local CodeNorm = require("init")

CodeNorm.RegisterPackage("_DemoOrchestrator", {
    privatesPath = fixtureDir .. "/Package_Meta.lua",
})

-- 1) 故意违反：期望 5 违规（直接索引 1 + 字段读取 3 + #长度 1）
CodeNorm.Expect("_DemoOrchestrator", {
    path  = fixtureDir .. "/System_DemoOrchestrator_Violating.lua",
    count = 5,
    label = "_DemoOrchestrator (Type B) Violating: 胶水包读 owner 私有字段应报 5 违规",
})

-- 2) 合规版本：期望 0 违规（走公开 Get 接口）
CodeNorm.Expect("_DemoOrchestrator", {
    path  = fixtureDir .. "/System_DemoOrchestrator_Compliant.lua",
    count = 0,
    label = "_DemoOrchestrator (Type B) Compliant: 走 Get 后 0 违规",
})