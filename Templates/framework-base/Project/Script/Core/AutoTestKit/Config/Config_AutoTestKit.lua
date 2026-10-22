local Config_AutoTestKit = {
    Settings = {
        --- 每个 case 之间的等待秒数（让数据同步）
        CASE_WAIT_SECONDS = 3,
        --- 每个 setup/teardown 之后的等待秒数
        SETUP_WAIT_SECONDS = 1,
    }
}

--- 获取每个 case 之间的等待秒数
---@return number
function Config_AutoTestKit.GetCaseWait()
    return Config_AutoTestKit.Settings.CASE_WAIT_SECONDS
end

--- 获取每个 setup/teardown 之后的等待秒数
---@return number
function Config_AutoTestKit.GetSetupWait()
    return Config_AutoTestKit.Settings.SETUP_WAIT_SECONDS
end

return Config_AutoTestKit