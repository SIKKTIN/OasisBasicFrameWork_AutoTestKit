local System_AutoTestKit = {}

local Config = require("Script.Core.AutoTestKit.Config.Config_AutoTestKit")
local TestManager = require("Script.Core.AutoTestKit.TestRunner.TestManager")

--------------------------------------------------------------------------------
--- 等待秒数常量（暴露给外部，便于 UMG_TestPanel 显示）
--------------------------------------------------------------------------------
System_AutoTestKit.CASE_WAIT_SECONDS    = Config.GetCaseWait()
System_AutoTestKit.SETUP_WAIT_SECONDS   = Config.GetSetupWait()

--------------------------------------------------------------------------------
--- 启动全部已注册的测试套件（与原 Server_RunAutoTest 行为兼容）
---@param pc UGCPlayerController
---@return boolean 是否成功启动
function System_AutoTestKit.RunAll(pc)
    ugcprint("[AutoTestKit] Service.RunAll")
    return TestManager.StartQueue(pc)
end

--------------------------------------------------------------------------------
--- 跑指定 suite 的全部 case
---@param pc UGCPlayerController
---@param suiteName string
---@return boolean
function System_AutoTestKit.RunSuite(pc, suiteName)
    ugcprint("[AutoTestKit] Service.RunSuite: " .. tostring(suiteName))
    if not TestManager.RunSuite then
        ugcprint("[AutoTestKit] RunSuite 不可用，请确认 TestManager 已热更新")
        return false
    end
    return TestManager.RunSuite(pc, suiteName)
end

--------------------------------------------------------------------------------
--- 跑指定 suite 的单个 case
---@param pc UGCPlayerController
---@param suiteName string
---@param caseName string
---@return boolean
function System_AutoTestKit.RunSingleCase(pc, suiteName, caseName)
    ugcprint(string.format("[AutoTestKit] Service.RunSingleCase: %s.%s", tostring(suiteName), tostring(caseName)))
    if not TestManager.RunSingleCase then
        ugcprint("[AutoTestKit] RunSingleCase 不可用，请确认 TestManager 已热更新")
        return false
    end
    return TestManager.RunSingleCase(pc, suiteName, caseName)
end

--------------------------------------------------------------------------------
--- 获取 UI 元数据：所有 enabled suites + cases
---@return table[]
function System_AutoTestKit.GetSuiteDescriptors()
    return TestManager.GetSuiteDescriptors()
end

--- 获取 Case 结果、生命周期错误和最终状态；无测试不等同于通过。
function System_AutoTestKit.GetReport()
    return TestManager.GetReport()
end

--------------------------------------------------------------------------------
--- 获取当前进度（供 UMG 显示进度条）
---@return number currentIdx, number totalCount, string phase
function System_AutoTestKit.GetProgress()
    if TestManager.GetProgress then
        return TestManager.GetProgress()
    end
    return 0, 0, "idle"
end

--------------------------------------------------------------------------------
--- 是否正在跑队列
---@return boolean
function System_AutoTestKit.IsRunning()
    if TestManager.IsQueueRunning then
        return TestManager.IsQueueRunning()
    end
    return false
end

--------------------------------------------------------------------------------
--- 停止测试（供 UMG "停止" 按钮调用）
function System_AutoTestKit.Stop()
    ugcprint("[AutoTestKit] Service.Stop")
    TestManager.Stop()
end

return System_AutoTestKit
