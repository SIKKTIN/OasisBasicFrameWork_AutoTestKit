local Data = require("Script.Package.TaskSystem.Data.PlayerData_Task")
return {
    packageKind = "owner",
    packageName = "TaskSystem",
    description = "独立任务状态、累计目标与奖励领取协议",
    dependsOn = {"Global_PlayerDataCore"},
    playerData = {{dataKey = "task_data", DataInit = Data.Init, DataFormat = Data.Format}},
}
