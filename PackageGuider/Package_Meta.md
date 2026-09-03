# Package_Meta 规范

Package 元数据契约文件位于 `Script/Package/<PackageName>/Package_Meta.lua`。

**单一职责：** 描述 Package 的身份、依赖、私有数据和持久化数据入口；只返回声明表，不执行运行时逻辑、初始化或监听注册。

---

## 顶层字段

| 字段 | 类型 | 必填 | 说明 |
|------|------|------|------|
| `packageKind` | string | 是 | 包类型，例如 `"owner"`、`"orchestrator"`。 |
| `packageName` | string | 是 | 必须与 Package 目录名一致，可由工具校验。 |
| `description` | string | 是 | Package 职责说明。 |
| `dependsOn` | string[] | 否 | 初始化或元数据解析真正依赖的全局模块、Core 或 Package。 |
| `privates` | table[] | 否 | Package 内部私有数据声明，没有时使用 `{}`。 |
| `playerData` | table[] | 否 | PlayerDataCore 的玩家数据初始化和格式化入口。 |
| `gameData` | table[] | 否 | GameDataCore 的全局游戏数据初始化和格式化入口。 |

`playerData` 和 `gameData` 按需声明，不需要时不要创建无意义的空数据项。

---

## 基本示例

```lua
local PlayerData_Collect = require(
    "Script.Package.Collect.Data.PlayerData_Collect"
)
local System_Collect = require(
    "Script.Package.Collect.System.System_Collect"
)

return {
    packageKind = "owner",
    packageName = "Collect",
    description = "玩家收藏与套装激活系统",

    dependsOn = {
        "Util_EnumManager",
        "Util_PlayerData_Tool",
    },

    privates = {},

    playerData = {
        {
            dataKey = "collect_data",
            DataInit = PlayerData_Collect.Init_CollectDataTable,
            DataFormat = System_Collect.FormatCollectData,
        },
    },
}
```

Package 内部模块通过 `local + require` 获取函数引用。公共 API 不在 Meta 中登记，由 `Registry_<Name>.lua` 统一转发。

---

## dependsOn

```lua
dependsOn = {
    "Util_EnumManager",
    "Util_PlayerData_Tool",
    "Registry_GameDataCore",
}
```

约定：

- 只声明真正参与 Package 初始化、数据调度或元数据检查的依赖。
- 可填写全局模块名、Core Registry 名称或其他 Package Registry 名称。
- 不重复填写包内普通实现文件。
- `dependsOn` 是声明数据，不在 `Package_Meta.lua` 中执行 `require`。

---

## privates

`privates` 用于声明 Package 内部模块持有的私有数据，供规范检查和工具分析使用。

```lua
privates = {
    {
        owner = "Define_CountDown",
        dataPath = "Script/Package/CountDown/Data/",
        privateTables = {
            {
                name = "Milestones",
                itemFields = {
                    { name = "name", type = "string" },
                    { name = "threshold", type = "number" },
                },
            },
        },
        deps = {
            "Util_EnumManager",
        },
    },
}
```

字段约定：

| 字段 | 类型 | 必填 | 说明 |
|------|------|------|------|
| `owner` | string | 是 | 持有私有数据表的模块名。 |
| `dataPath` | string | 否 | 私有数据来源文件或目录路径。 |
| `privateTables` | table[] | 是 | 该模块持有的私有表声明列表。 |
| `privateTables[].name` | string | 是 | 私有表名称。 |
| `privateTables[].itemFields` | table[] | 是 | 字段描述的唯一合法形式；无字段时使用 `{}`。 |
| `itemFields[].name` | string | 是 | 字段名。 |
| `itemFields[].type` | string | 是 | 字段类型，例如 `"string"`、`"number"`、`"boolean"`。 |
| `deps` | string[] | 否 | 私有模块依赖说明。 |

禁止使用：

```lua
fields = { ... }
exposedVia = { ... }
```

公共字段和 Getter 不在 `Package_Meta.lua` 中维护，公共能力统一通过 `Registry_<Name>.lua` 暴露。

---

## playerData

用于声明纳入 PlayerDataCore 统一调度的玩家数据。

```lua
playerData = {
    {
        dataKey = "collect_data",
        DataInit = PlayerData_Collect.Init_CollectDataTable,
        DataFormat = System_Collect.FormatCollectData,
    },
}
```

约定：

- `dataKey` 必填，并与项目玩家数据键保持一致。
- `DataInit` 必填，作为玩家数据初始化入口。
- `DataFormat` 可选，作为调试格式化入口。
- `DataInit` 和 `DataFormat` 由 PlayerDataCore 调用，Meta 本身不执行它们。
- 函数引用由 Meta 顶部的 local require 提供。

---

## gameData

用于声明纳入 GameDataCore 统一调度的全局游戏数据。

```lua
local GameData_CountDown = require(
    "Script.Package.CountDown.Data.CountDown_Data"
)

return {
    packageKind = "owner",
    packageName = "CountDown",
    description = "游戏时长倒计时与里程碑事件",

    dependsOn = {
        "Registry_GameDataCore",
    },

    privates = {},

    gameData = {
        {
            dataKey = "countdown_data",
            DataInit = GameData_CountDown.Init,
            DataFormat = GameData_CountDown.Format,
        },
    },
}
```

约定：

- `dataKey` 必须与 GameState 上的数据字段一致。
- `DataInit` 接收 `gameState`，负责全局游戏数据初始化。
- `DataFormat` 可选，接收 `gameState`，用于调试输出。
- 入口函数由 GameDataCore 统一调用，Meta 本身不执行它们。
- 没有全局游戏数据时不声明 `gameData`，或使用空数组。

---

## 规范边界

- `Package_Meta.lua` 只描述声明，不写业务逻辑。
- `Package_Meta.lua` 不负责注册事件、启动服务或修改玩家/游戏数据。
- Package 的内部模块默认使用 `local Module = {}` 和 `return Module`。
- Package 的公共能力由 `Registry_<Name>.lua` 统一暴露。
- `privates` 的字段描述只能使用 `itemFields`，不得使用 `fields`。
- 不再使用 `exposedVia`。
- `Package_Meta.lua` 的字段名应使用项目当前约定的大小写：`DataInit`、`DataFormat`。

---

## 变更历史

| 版本 | 日期 | 说明 |
|------|------|------|
| 1.2 | 2026-09-01 | 统一 Collect 模式，加入 `dependsOn`、`gameData`，明确 `itemFields` 为唯一字段描述形式，移除 `exposedVia`。 |
| 1.1 | 2026-08-25 | 新增 `playerData` 顶层字段。 |
| 1.0 | 2026-08-24 | 初始版本。 |

