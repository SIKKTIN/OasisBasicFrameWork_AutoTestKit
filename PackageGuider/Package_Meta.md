# Package_Meta 规范

每个业务包的元数据契约文件，位于 `Script/Package/<PackageName>/Package_Meta.lua`。

**单一职责：** 描述包"对外是什么"，**不写运行时逻辑**。

---

## 顶层字段

| 字段 | 类型 | 必填 | 说明 |
|------|------|------|------|
| `packageKind` | string | 是 | 包类型。`"owner"` = 拥有私有数据的业务包；`"orchestrator"` = 胶水包；未来可扩展 |
| `packageName` | string | 是 | 与目录名一致，可被 lint 校验 |
| `description` | string | 是 | 一句话描述，建议不超过 30 字 |
| `privates` | array | 是 | 数据所有者声明数组，lint 主数据来源 |
| `playerData` | array | 否 | PlayerDataCore 调度入口（Core 层会读这个表） |

---

## `privates[]` 数组项

| 字段 | 类型 | 必填 | 说明 |
|------|------|------|------|
| `owner` | string | 条件必填 | 拥有数据的 Config 模块名，如 `"Config_CountDown"` |
| `privateTables` | array | 条件必填 | 该 owner 下的私有表列表 |
| `privateTables[].name` | string | 是 | 表名，如 `"Milestones"` |
| `privateTables[].fields` | string[] | 是 | 该表的私有字段列表（直接访问会触发 lint） |
| `exposedVia` | string[] | 否 | 已通过 `Config_XXX.GetXxx()` 暴露的字段，仅作记录，暂无 lint 校验 |
| `kind` | string | 否 | 包类型（可省略，parser 会自动注入为 `"owner"`） |
| `deps` | string[] | 否 | 依赖的其他包名，仅作文档，不影响 lint |

---

## 注意事项

- **不得写运行时逻辑**：`Package_Meta.lua` 只 return 数据结构。
- **ipairs 兼容**：Lua `ipairs` 只遍历数字下标，顶层的 `packageKind`/`packageName`/`description` 不会被误遍历。
- **胶水包不豁免**：`packageKind = "orchestrator"` 的包同样必须遵守 lint 规则，lint 不会跳过。

---

## `playerData[]` 数组项

声明本包需要纳入 `PlayerDataCore` 统一调度的玩家数据入口。Core 层（`System_PlayerDataCore`）会在玩家加入时调用 `DataInit`，在调试打印时调用 `DataFormat`。

| 字段 | 类型 | 必填 | 说明 |
|------|------|------|------|
| `dataKey` | string | 是 | 数据键名，需与 `Util_EnumManager.DATA_TYPE` 对齐 |
| `DataInit` | function | 是 | 玩家加入时调用，签名为 `function(pc) -> void`，pc 为 PlayerController |
| `DataFormat` | function | 否 | 调试打印时调用，签名为 `function(pc) -> string` |

**示例（Task 包）：**

```lua
playerData = {
    {
        dataKey = "task_data",  -- 与 Util_EnumManager.DATA_TYPE.TASK_DATA 对齐

        --- 玩家加入时：初始化 task_data
        DataInit = System_Task.Init_TaskDataTable,

        --- 调试打印时：格式化输出 task_data
        DataFormat = Registry_Task.Tool_FormatTaskData
    },
},
```

**说明：**
- `DataInit` / `DataFormat` 由 Core 层（`System_PlayerDataCore`）统一调度，包内只需声明入口，不写注册逻辑。
- 包内通常应在文件顶部 `local System_Task = require(...)` / `local Registry_Task = require(...)`，以便在表结构中引用其函数。

---

## 示例

```lua
return {
    packageKind = "owner",
    packageName = "CountDown",
    description = "游戏时长倒计时，到达阈值触发里程碑事件",

    privates = {
        {
            owner = "Config_CountDown",
            privateTables = {
                { name = "Milestones", fields = { "name", "threshold" } },
            },
            -- 目前为空，待 Get 接口实现后补充
            exposedVia = {},
        },
    },
}
```

---

## 变更历史

| 版本 | 日期 | 说明 |
|------|------|------|
| 1.0 | 2026-08-24 | 初始版本，引入顶层 `packageKind`/`packageName`/`description` + `privates` 包装格式 |
| 1.1 | 2026-08-25 | 新增 `playerData` 顶层字段（PlayerDataCore 调度入口） |
