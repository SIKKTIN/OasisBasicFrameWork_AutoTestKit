local PlayerData_Skill = require(
    "Script.Package.SkillSystem.Data.PlayerData_Skill")

return {
    packageKind = "owner",
    packageName = "SkillSystem",
    description = "管理玩家技能配置、持久化状态与运行时实例",

    dependsOn = {
        "Global_PlayerDataCore",
    },

    playerData = {
        {
            dataKey = "skill_data",
            DataInit = PlayerData_Skill.InitSkillData,
            DataFormat = PlayerData_Skill.Format,
        },
    },
}
