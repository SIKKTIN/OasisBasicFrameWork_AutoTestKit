-- 临时验证文件: 多 owner 场景，一个文件声明多个数据拥有者
return {
    { owner = "Config_Task",  privateTables = { { name = "Tasks",  fields = { "id", "title" } } } },
    { owner = "Config_Player", privateTables = { { name = "Items", fields = { "count", "type" } } } },
    { owner = "Config_Player", privateTables = { { name = "Buffs",  fields = { "duration" } } } },
}
