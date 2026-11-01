-- 独立演示配置；只在明确选择示例的测试工程使用。
return {
    ui = {enabled = true, id = "1010", entryLabel = "任务"},
    tasks = {
        {id = 1001, name = "初次挑战", description = "完成示例目标，体验接取、进度与领奖。奖励为独立模拟数据。",
            objectives = {{id = "kill", type = "kill", target = "example_enemy", count = 3, label = "击败示例敌人"},
                {id = "collect", type = "collect", target = "example_supply", count = 2, label = "收集示例物资"}},
            rewards = {{type = "example", id = "gold", amount = 500, label = "示例金币", iconText = "金"},
                {type = "example", id = "exp", amount = 100, label = "示例经验", iconText = "EXP"},
                {type = "example", id = "medkit", amount = 2, label = "示例急救包", iconText = "＋"}}},
        {id = 1002, name = "物资收集", description = "累计收集五份示例物资。",
            objectives = {{id = "collect", type = "collect", target = "example_supply", count = 5, label = "收集示例物资"}}, rewards = {}},
        {id = 1003, name = "新的征程", description = "领取初次挑战奖励后，继续完成示例目标。", prerequisites = {1001},
            objectives = {{id = "visit", type = "visit", target = "example_site", count = 1, label = "进入示例区域"}}, rewards = {}},
        {id = 1004, name = "深入工厂", description = "前置任务完成并领奖后解锁。", prerequisites = {1003},
            objectives = {{id = "kill", type = "kill", target = "example_enemy", count = 1, label = "击败示例敌人"}}, rewards = {}},
        {id = 1005, name = "初次出发", description = "体验一条没有额外奖励的任务。",
            objectives = {{id = "visit", type = "visit", target = "example_site", count = 1, label = "进入示例区域"}}, rewards = {}},
    },
}
