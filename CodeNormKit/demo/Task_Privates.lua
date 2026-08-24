-- 临时验证文件: 模拟 Config_Task 的私有结构
-- 拥有私有表 Tasks，每个 Task 有 id/title/reward 字段
return {
    {
        owner = "Config_Task",
        privateTables = {
            {
                name = "Tasks",
                fields = { "id", "title", "reward" },
            },
        },
    },
}
