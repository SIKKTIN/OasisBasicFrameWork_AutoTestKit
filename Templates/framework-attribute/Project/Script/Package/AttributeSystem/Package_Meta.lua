local Data = require("Script.Package.AttributeSystem.Data.PlayerData_Attribute")
return {
    packageKind = "owner",
    packageName = "AttributeSystem",
    description = "可配置的玩家属性持久化、Pawn 同步和运行时属性管理",
    dependsOn = {"Global_PlayerDataCore"},
    privates = {},
    playerData = {
        {
            dataKey = "attribute_data",
            DataInit = Data.Init,
            DataFormat = Data.Format,
        },
    },
}
