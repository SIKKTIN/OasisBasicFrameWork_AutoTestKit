-- ============================================================
-- Global_AutoTestKit.lua
-- AutoTestKit Core 的唯一对外入口
--
-- 外部调用惯例：
--   Global_AutoTestKit.BeginPlay()       -- 包初始化（由 LifeCycle 调用）
--   Global_AutoTestKit.Tick(dt)          -- 每帧（由 UGCGameState 调用）
--   Global_AutoTestKit.RunAll(pc)        -- 跑全部已注册 suite
--   Global_AutoTestKit.RunSuite(pc, n)   -- 跑单个 suite
--   Global_AutoTestKit.RunSingleCase(pc, suite, case)
--   Global_AutoTestKit.Stop()
--   Global_AutoTestKit.IsRunning()
--   Global_AutoTestKit.GetSuiteDescriptors()
--   Global_AutoTestKit.GetProgress()
--   Global_AutoTestKit.GetReport()       -- 结果、生命周期错误与最终状态
-- ============================================================

Global_AutoTestKit = Global_AutoTestKit or {}
local initialized = false

-- 内部模块（local，仅本文件可见）
local TestManager = require("Script.Core.AutoTestKit.TestRunner.TestManager")
local System_AutoTestKit = require("Script.Core.AutoTestKit.System_AutoTestKit")

--------------------------------------------------------------------------------
-- 生命周期
--------------------------------------------------------------------------------
--- 由 LifeCycle.BeginPlay 调用，集中加载 Suites
function Global_AutoTestKit.BeginPlay()
    if initialized then
        return true
    end
    initialized = TestManager.BeginPlay() == true
    return initialized
end

--- 由 UGCGameState.ReceiveTick 调用
---@param deltaTime number 秒
function Global_AutoTestKit.Tick(deltaTime)
    TestManager.Tick(deltaTime)
end

--------------------------------------------------------------------------------
-- 业务 API（从 Service 转发，Service 内部使用 local TestManager）
--------------------------------------------------------------------------------
Global_AutoTestKit.RunAll              = System_AutoTestKit.RunAll
Global_AutoTestKit.RunSuite            = System_AutoTestKit.RunSuite
Global_AutoTestKit.RunSingleCase       = System_AutoTestKit.RunSingleCase
Global_AutoTestKit.Stop                = System_AutoTestKit.Stop
Global_AutoTestKit.IsRunning           = System_AutoTestKit.IsRunning
Global_AutoTestKit.GetProgress         = System_AutoTestKit.GetProgress
Global_AutoTestKit.GetSuiteDescriptors = System_AutoTestKit.GetSuiteDescriptors
Global_AutoTestKit.GetReport           = System_AutoTestKit.GetReport


-- 等待常量（外部 UI 可读）
Global_AutoTestKit.CASE_WAIT_SECONDS    = System_AutoTestKit.CASE_WAIT_SECONDS
Global_AutoTestKit.SETUP_WAIT_SECONDS   = System_AutoTestKit.SETUP_WAIT_SECONDS

-- 启动入口别名（保留原 Server_RunAutoTest 蓝图侧的语义）
function Global_AutoTestKit.StartQueue(pc)
    return System_AutoTestKit.RunAll(pc)
end

return Global_AutoTestKit
