local Data = require("Script.Package.TaskExample.Data.PlayerData_TaskExample")
return {packageKind = "owner", packageName = "TaskExample", description = "仅供验证的模拟奖励数据",
    dependsOn = {"Global_PlayerDataCore"},
    playerData = {{dataKey = "task_example_data", DataInit = Data.Init}}}
