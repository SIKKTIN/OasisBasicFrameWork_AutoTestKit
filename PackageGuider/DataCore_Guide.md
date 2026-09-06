# DataCore 数据核心指导

本文说明 Withdraw 项目中 PlayerDataCore 与 GameDataCore 的职责、声明方式、读写接口、生命周期、事件、存档和复制规则。

DataCore 是 Core 层的基础设施：它统一管理“数据包如何注册、读写和通知”，但不拥有建筑、任务、收藏等业务数据的含义。每段业务数据仍由对应 Package 定义和维护。

总体架构见 [项目架构思想](./Project_Architecture.md)，Package 数据声明字段见 [Package_Meta 规范](./Package_Meta.md)，测试方法见 [开发、测试与调试指导](./Development_Test_Debug_Guide.md)。

---

## 设计目标

- 每个 Package 自己定义数据结构和默认值。
- Package 通过 `Package_Meta.lua` 声明数据入口，不在 Core 中手工登记。
- Core 只理解统一的 `dataKey / DataInit / DataFormat` 契约。
- 所有运行时写入集中经过 DataCore，统一执行服务端校验和数据变更事件。
- 数据键、变更事件和运行时索引由 GenKit 从 Meta 自动生成。
- 玩家数据、全局游戏数据使用相同风格的 API，但保持不同宿主和生命周期。

---

## 总体结构

```text
Package/<Name>/Package_Meta.lua
        │
        ├── playerData 声明
        └── gameData 声明
        │
        ▼
GenKit 离线扫描
        ├── Setting/Package_Meta_Index.lua
        ├── Const/Data/Const_Data.lua
        └── Event/Event_DataChange.lua
        │
        ▼
Core_Registry.BeginPlay()
        ├── Global_PlayerDataCore
        │      └── PlayerController.<dataKey>
        └── Global_GameDataCore
               └── GameState.<dataKey>
                      │
                      ▼
          Modify → 数据变更 Event → 客户端/UI/其他 Package
```

数据所有权方向固定为：

```text
业务 Package 定义数据语义
        ↓
DataCore 提供统一机制
        ↓
PlayerController / GameState 承载运行时数据
```

Core 不应包含某个 Package 的默认业务记录，也不应根据具体业务名称写分支。

---

## PlayerData 与 GameData

| 对比项 | PlayerDataCore | GameDataCore |
|--------|----------------|--------------|
| 公共入口 | `Global_PlayerDataCore` | `Global_GameDataCore` |
| 数据宿主 | PlayerController | GameState |
| 数据范围 | 单个玩家独立 | 当前对局所有玩家共享 |
| Meta 字段 | `playerData` | `gameData` |
| DataInit 参数 | `playerKey` | `gameState` |
| 写入权限 | 仅服务端 | 仅服务端 |
| 查询权限 | 客户端和服务端 | 客户端和服务端 |
| 持久化 | 通过玩家存档接口保存和恢复 | 当前不负责跨局持久化 |
| 复制宿主 | PlayerController 复制属性 | GameState 复制属性 |
| 初始化时机 | 当前仅新建玩家存档时触发 | GameDataCore BeginPlay 时触发 |

选择原则：

- 数据属于一个玩家并需要跨局保存：PlayerData。
- 数据属于当前对局并由所有玩家共享：GameData。
- 数据由引擎自己的系统持久化，例如虚拟物品：使用对应引擎系统，不重复写入 PlayerData。
- 临时函数局部状态、UI 状态或可重新计算的缓存：不进入 DataCore。

---

## 模块组成

```text
Script/
├── Core/
│   ├── PlayerDataCore/
│   │   ├── Global_PlayerDataCore.lua
│   │   └── System_PlayerDataCore.lua
│   └── GameDataCore/
│       ├── Global_GameDataCore.lua
│       └── System_GameDataCore.lua
├── Const/Data/
│   └── Const_Data.lua
├── Event/
│   └── Event_DataChange.lua
└── Setting/
    └── Package_Meta_Index.lua
```

- `Global_*DataCore` 是公共入口。
- `System_*DataCore` 持有注册表、读写和事件派发实现。
- `Const_Data` 提供稳定 dataKey 常量。
- `Event_DataChange` 提供通用及分类数据变更事件。
- `Package_Meta_Index` 让 Core 在运行时发现所有 Package 声明。

`Const_Data`、`Event_DataChange` 和 `Package_Meta_Index` 均由 GenKit 生成，不手工添加普通 Package 条目。未迁入 Meta 的历史玩家数据键通过项目内 `Script/Setting/GenKit_Config.lua` 的 `additionalPlayerDataKeys` 统一声明，同时参与常量和事件生成。

---

## Package_Meta 数据声明

### PlayerData 声明

```lua
local PlayerData_Example = require(
    "Script.Package.Example.Data.PlayerData_Example"
)

return {
    packageKind = "owner",
    packageName = "Example",
    description = "示例业务",

    dependsOn = {
        "Global_PlayerDataCore",
    },

    privates = {},

    playerData = {
        {
            dataKey = "example_data",
            DataInit = PlayerData_Example.Init,
            DataFormat = PlayerData_Example.Format,
        },
    },
}
```

### GameData 声明

```lua
local GameData_Example = require(
    "Script.Package.Example.Data.GameData_Example"
)

return {
    packageKind = "owner",
    packageName = "Example",
    description = "示例业务",

    dependsOn = {
        "Global_GameDataCore",
    },

    privates = {},

    gameData = {
        {
            dataKey = "example_game_data",
            DataInit = GameData_Example.Init,
            DataFormat = GameData_Example.Format,
        },
    },
}
```

声明规则：

- `dataKey` 必须唯一，并与 PlayerController 或 GameState 上的字段名完全一致。
- `DataInit` 负责初始化缺失字段，必须服务端执行且支持重复调用。
- `DataFormat` 可选，当前用于调试打印，不是存档版本迁移函数。
- Meta 只保存函数引用，不主动执行初始化、修改或监听注册。
- Package 必须在 `dependsOn` 声明对应 DataCore 公共入口。
- 当前反向索引 `GetKeyByPackage` 每个 Package 只保存一个 dataKey。虽然 Meta 字段是数组，新代码仍建议每个 Package 分别最多声明一个 playerData 和一个 gameData。

---

## 初始化生命周期

### 生成阶段

修改 `Package_Meta.playerData` 或 `gameData` 后，GenKit 会生成：

| 生成文件 | 用途 |
|----------|------|
| `Package_Meta_Index.lua` | DataCore 发现全部 Meta。 |
| `Const_Data.lua` | 生成 `PLAYER_DATA_TYPE`、`GAME_DATA_TYPE`。 |
| `Event_DataChange.lua` | 生成通用事件和每个 dataKey 的分类事件。 |

应运行：

- “包与核心配置”预设，更新 Meta 索引。
- “数据定义与变更事件”预设，更新常量和事件。

### Core 启动

```text
LifeCycle.OnGameStateInit
        ↓
Core_Registry.BeginPlay
        ├── GameDataCore：加载 Meta → 注册 gameData → InitAllData
        └── PlayerDataCore：加载 Meta → 注册 playerData → 绑定玩家初始化事件
        ↓
Package_Registry.BeginPlay
```

GameData 的 `DataInit` 可能早于所属 Package 的 `Registry.BeginPlay`。因此 DataInit 不能假设 Package 的运行时缓存或监听已经完成初始化。

### PlayerData 当前流程

```text
PlayerController 初始化
        ↓
BP_PlayerPropertyComponent 检查存档
        ├── 无存档
        │     ├── 发送 Server_Delegate_PlaerDataLoad
        │     ├── PlayerDataCore 调用全部 DataInit(playerKey)
        │     ├── ConditionData 等 Package 初始化自己的数据
        │     └── SaveArchiveData
        └── 有存档
              ├── RestoreArchiveData
              └── 延迟恢复枪械/护甲
```

`Server_Delegate_PlaerDataLoad` 中的 `Plaer` 是现有兼容名称。未统一迁移前不要只在一处修正拼写。

当前已有存档恢复后不会再次调用 Package `DataInit`。新增字段不能依赖 DataInit 自动补齐旧存档，必须设计显式兼容方案。

### GameData 当前流程

GameDataCore 在自身 `BeginPlay` 中注册全部 `gameData`，取得当前 GameState，并立即调用全部 `DataInit(gameState)`。

GameData DataInit 自身必须检查服务端权限，只补缺失字段，并通过 `Global_GameDataCore.ModifyList` 写入。

---

## 公共 API

### PlayerDataCore

```lua
Global_PlayerDataCore.Query(pc, dataKey, key)
Global_PlayerDataCore.QueryPackage(pc, dataKey)
Global_PlayerDataCore.ModifyList(pc, dataKey, changes)
Global_PlayerDataCore.ModifyPackage(pc, dataKey, data)

Global_PlayerDataCore.SaveArchiveData(pc)
Global_PlayerDataCore.CheckArchiveData(pc)
Global_PlayerDataCore.RestoreArchiveData(pc)

Global_PlayerDataCore.InitAllData(playerKey)
Global_PlayerDataCore.FormatAllData(pc)
Global_PlayerDataCore.FormatByKey(pc, dataKey)
Global_PlayerDataCore.FormatPackage(pc, packageName)
Global_PlayerDataCore.GetAllKeys()
Global_PlayerDataCore.GetKeyByPackage(packageName)
```

### GameDataCore

```lua
Global_GameDataCore.Query(gameState, dataKey, key)
Global_GameDataCore.QueryPackage(gameState, dataKey)
Global_GameDataCore.ModifyList(gameState, dataKey, changes)
Global_GameDataCore.ModifyPackage(gameState, dataKey, data)

Global_GameDataCore.InitAllData(gameState)
Global_GameDataCore.FormatAllData(gameState)
Global_GameDataCore.FormatByKey(gameState, dataKey)
Global_GameDataCore.FormatPackage(gameState, packageName)
Global_GameDataCore.GetAllKeys()
Global_GameDataCore.GetKeyByPackage(packageName)
```

业务 UI、蓝图或其他 Package 不应直接用 DataCore 理解另一个 Package 的数据结构。包外读取和写入业务状态仍通过所属 Package Registry。

---

## 查询规则

### 查询单个字段

```lua
local Const_Data = require("Script.Const.Data.Const_Data")
local Global_PlayerDataCore = require(
    "Script.Core.PlayerDataCore.Global_PlayerDataCore"
)

local level = Global_PlayerDataCore.Query(
    pc,
    Const_Data.PLAYER_DATA_TYPE.ATTRIBUTE_DATA,
    "level"
)
```

PlayerDataCore 的 `Query` 支持使用点分隔的嵌套路径。GameDataCore 当前只查询数据包的直接子键。

### 查询整个数据包

```lua
local data = Global_PlayerDataCore.QueryPackage(pc, DATA_KEY)
```

`QueryPackage` 返回宿主上的活动 table 引用，不是副本。调用方必须把它视为只读：

```lua
-- 错误：绕过服务端权限、变化检测和事件派发
local data = Global_PlayerDataCore.QueryPackage(pc, DATA_KEY)
data.level = data.level + 1

-- 正确：读取后通过 DataCore 写接口提交
local level = Global_PlayerDataCore.Query(pc, DATA_KEY, "level") or 1
Global_PlayerDataCore.ModifyList(pc, DATA_KEY, {
    { key = "level", value = level + 1 },
})
```

Query 或 Registry 返回整包数据时，不应把可变内部引用继续暴露给不可信调用方；必要时返回副本或领域 Getter。

---

## 写入规则

所有 DataCore 写接口仅允许服务端调用。

### ModifyList

```lua
local changed = Global_PlayerDataCore.ModifyList(
    pc,
    DATA_KEY,
    {
        { key = "level", value = 2 },
        { key = "experience", value = 50 },
    }
)
```

- PlayerDataCore 可使用点分隔路径更新嵌套字段。
- GameDataCore 的 key 是数据包直接子键。
- 返回 `true` 表示至少有一个值发生写入。
- 返回 `false` 可能表示客户端调用、参数错误、数据包不存在或全部值未变化。
- 成功变化后，一批 ModifyList 只派发一次通用事件和一次分类事件。

### ModifyPackage

```lua
Global_PlayerDataCore.ModifyPackage(pc, DATA_KEY, {
    level = 2,
    experience = 50,
})
```

`ModifyPackage` 的实际语义是“把传入字段合并写入当前数据包”，不是替换整个 table：

- 未传入的旧字段会保留。
- 它不负责删除字段。
- 它不自动深拷贝传入的 table。
- 它不自动保存玩家存档。

建议新代码把它用于初始化或明确的批量合并；普通业务变化优先使用 `ModifyList`，使变更字段更清晰。

### DataCore 不提供事务

DataCore 统一写入和通知，但不提供自动回滚：

- PlayerDataCore 的批量写入如果中途遇到非法项，前面已经写入的值可能保留。
- GameDataCore 会跳过部分无效项并继续处理其他项。
- 数据变更事件在 Modify 成功后立即发送，早于后续存档结果。
- `SaveArchiveData` 失败不会自动撤销之前的修改。

因此 Package System 在调用 DataCore 前必须一次性验证全部输入。需要“修改 → 保存 → 失败回滚”的业务，应由 Package 持有修改前快照并实现补偿事务。

---

## 数据变更事件

DataCore 使用 `Script/Event/Event_DataChange.lua` 派发两级事件。

### PlayerData 事件

```lua
UGCEventSystem:SendEvent(
    Event_DataChange.ON_PLAYER_DATA_CHANGE,
    pc,
    dataKey
)

UGCEventSystem:SendEvent(
    Event_DataChange.ON_PLAYER_<DATA_KEY>_CHANGE,
    pc
)
```

### GameData 事件

```lua
UGCEventSystem:SendEvent(
    Event_DataChange.ON_GAME_DATA_CHANGE,
    gameState,
    dataKey
)

UGCEventSystem:SendEvent(
    Event_DataChange.ON_GAME_<DATA_KEY>_CHANGE,
    gameState
)
```

监听方按需求选择：

- 关注所有数据包变化：监听通用事件，并检查 dataKey。
- 只关注一个数据包：监听生成的分类事件。
- 需要修改结果、错误信息或事务保证：直接调用 Registry API，不依赖事件返回。

不要在 Package 中手写数据变更事件数字。新增 dataKey 后由 GenKit 生成稳定字段。

直接修改 `pc[dataKey]` 或 `gameState[dataKey]` 不会经过 DataCore 的变化检测和事件派发，因此新代码禁止直接写宿主数据表。

---

## 玩家存档

### 保存

`Global_PlayerDataCore.SaveArchiveData(pc)` 当前执行：

1. 检查服务端权限。
2. 调用 `Tool_BackitemPersist.SnapshotBeforeSave(pc)` 保存枪械和护甲快照。
3. 按 `Const_Data.PLAYER_DATA_TYPE` 收集 PlayerController 上的数据包。
4. 清理任务记录中的历史字符串异常数据。
5. 调用 `UGCPlayerStateSystem.SavePlayerArchiveData`。

Modify 接口不会自动调用 Save。业务需要持久化时，必须在事务提交点显式保存。

### 检查与恢复

`CheckArchiveData` 当前用 `condition_data` 是否存在作为“有效存档”标记。这是存档兼容约定；ConditionData 是否已迁入 Package Meta 不改变存档字段和判定方式。

`RestoreArchiveData` 会遍历 `Const_Data.PLAYER_DATA_TYPE`，把存档中的数据包恢复到 PlayerController；存档缺少的包会恢复为 `{}`。恢复过程当前不派发 DataCore 变更事件，也不执行 Package DataInit。

### 不属于普通 PlayerData 的数据

- 虚拟物品由 VirtualItemManager 和引擎商业化数据管理，不重复保存进普通玩家数据包。
- `backitem_data` 由 `Tool_BackitemPersist` 管理枪械、护甲快照和延迟补发。
- `backitem_data` 在 Withdraw 中仍是未迁入 Package Meta 的历史数据类型。
- `condition_data` 可以迁入 ConditionData Package；未迁移的项目可暂时通过 `GenKit_Config.additionalPlayerDataKeys` 保留。

不要在不了解专用持久化链路时迁移 `backitem_data`；ConditionData Package 必须保持原 dataKey 和存档结构，确保旧存档兼容。

---

## 数据复制

DataCore 的 dataKey 必须与宿主字段和复制声明一致：

```text
Package_Meta.dataKey
        =
Const_Data 常量值
        =
PlayerController / GameState Lua 字段名
        =
Blueprint UPROPERTY 名称
        =
GetReplicatedProperties 返回值
```

当前 `GetAllKeys()` 可以返回 Core 已注册的 dataKey，但项目中的 `UGCPlayerController:GetReplicatedProperties()` 和 `UGCGameState:GetReplicatedProperties()` 仍显式列出复制字段。GenKit 不会自动创建蓝图属性。

新增 dataKey 后必须同时确认：

1. Meta 声明已添加。
2. GenKit 已更新 `Const_Data`、`Event_DataChange` 和 Meta 索引。
3. PlayerController 或 GameState Lua 初始字段已存在。
4. 对应 Blueprint UPROPERTY 已创建，并按需要设置 Replicated。
5. `GetReplicatedProperties` 已包含该字段。
6. 客户端实际收到变化，并且 UI 监听正确事件。

只生成 Const 和 Event 不代表复制链路已经完成。

---

## 数据结构与兼容

持久化数据结构应满足：

- 只保存可序列化的 number、string、boolean 和普通 table。
- 不保存函数、userdata、Actor、Widget、Delegate 或临时引擎对象。
- 默认值由所属 Package 定义，不由 DataCore 猜测。
- 新字段读取时提供合理 fallback。
- 删除或改名字段前先设计旧存档迁移。
- 数据包内字段名保持稳定，避免把显示文本作为数据键。

当前 DataCore 没有统一的 schema version 或 migration 回调。`DataFormat` 仅用于调试输出，不能用于补字段或迁移旧存档。

修改持久化结构时，Package 必须明确选择一种兼容方式：

- 读取时兼容旧字段并返回默认值。
- 在玩家存档恢复后的明确生命周期中执行幂等迁移。
- 增加 Package 自有版本字段和迁移函数。

迁移完成后应保存一次新结构，并用旧存档样本编写 AutoTest。

---

## 新增 PlayerData

推荐步骤：

1. 在 Package Data 目录定义数据结构、默认值、`DataInit` 和 `DataFormat`。
2. 在 `Package_Meta.playerData` 声明唯一 dataKey。
3. 在 `dependsOn` 声明 `Global_PlayerDataCore`。
4. 运行 GenKit 的“包与核心配置”。
5. 运行 GenKit 的“数据定义与变更事件”。
6. 补齐 PlayerController Lua 字段、蓝图属性和复制列表。
7. Package Query/System 使用 `Const_Data` 和 `Global_PlayerDataCore`。
8. Registry 暴露领域 Getter 和命令，不暴露活动数据表。
9. 编写新存档、旧存档、修改、事件、保存失败和客户端权限测试。
10. 运行 PackageKit、相关 AutoTest Suite，并重跑 GenKit 确认无漂移。

---

## 新增 GameData

推荐步骤：

1. 在 Package Data 目录实现服务端、幂等的 `DataInit(gameState)`。
2. 在 `Package_Meta.gameData` 声明唯一 dataKey。
3. 在 `dependsOn` 声明 `Global_GameDataCore`。
4. 运行两个相关 GenKit 预设。
5. 补齐 GameState Lua 字段、蓝图属性和复制列表。
6. 确认 DataInit 不依赖尚未执行的 Package Registry BeginPlay。
7. 使用 `ModifyList` 修改数据，通过生成 Event 通知客户端。
8. 编写初始化、重复初始化、服务端权限、事件次数和客户端复制测试。

---

## AutoTest 验收建议

每个 DataCore 接入至少覆盖：

| 测试 | 验收点 |
|------|--------|
| Meta 注册 | `GetKeyByPackage`、`GetAllKeys` 能找到 dataKey。 |
| 初始化 | 缺失字段被补齐，重复初始化不覆盖已有有效数据。 |
| 查询 | 单字段、整包、无效 key 的结果正确。 |
| 写入权限 | 客户端 Modify 不改变数据。 |
| 变化检测 | 相同标量值不重复派发事件。 |
| 批量修改 | 多字段结果正确，事件只发送一次。 |
| 直接引用风险 | 业务 Registry 不向外暴露可变内部表。 |
| 保存恢复 | 保存后恢复的结构和值一致。 |
| 旧存档 | 缺字段、旧字段和空包能够安全处理。 |
| 事务失败 | 保存失败时由业务 Package 正确回滚。 |
| 复制 | 客户端能收到服务端变化。 |
| 格式化 | DataFormat 不修改数据。 |

涉及真实玩家存档的测试必须保存原始快照，并在 teardown 恢复。单 Case 当前不会自动执行 teardown，测试后需要手工恢复或运行完整 Suite。

---

## 常见错误

| 现象 | 常见原因 | 检查 |
|------|----------|------|
| Meta 已写但 Core 找不到 dataKey | Meta 索引未生成 | 重跑“包与核心配置”。 |
| Const 或数据事件缺少字段 | 数据定义与事件未生成 | 重跑“数据定义与变更事件”。 |
| 服务端数据变化但客户端不更新 | 宿主字段、蓝图属性或复制列表缺失 | 核对五处 dataKey 一致性。 |
| UI 没收到数据变化事件 | 直接修改了活动 table | 所有写入改走 Modify 接口。 |
| 修改成功但下局丢失 | 未调用 SaveArchiveData | 在业务事务提交点保存。 |
| 旧存档缺少新字段 | Restore 后不执行 DataInit | 增加显式迁移或读取 fallback。 |
| ModifyPackage 后旧字段仍存在 | 它是合并写入，不是替换 | 显式设计删除或重建逻辑。 |
| GetKeyByPackage 返回意外 key | 同一 Package 声明多个同类 dataKey | 保持每类一个，或扩展反向索引契约。 |
| 测试之间互相污染 | teardown 未执行或恢复范围不完整 | 运行完整 Suite 并恢复快照。 |

---

## 设计检查清单

提交 DataCore 相关变更前确认：

- 数据明确属于 PlayerData 或 GameData。
- dataKey 唯一且五处名称一致。
- Package 是数据语义和默认值的所有者。
- Meta 只声明入口，没有运行时副作用。
- DataInit 服务端、幂等，并只补缺失字段。
- 包外通过 Registry 使用业务数据。
- QueryPackage 返回值没有被直接修改或泄漏。
- 所有写入经过 DataCore，且写前完成整批校验。
- 复杂事务由 Package 实现快照、保存和回滚。
- 数据变更事件参数及次数正确。
- 玩家数据在正确提交点保存。
- 旧存档兼容方案明确，未把 DataFormat 当作迁移。
- Lua 字段、蓝图属性和复制列表已经补齐。
- GenKit、PackageKit 和 AutoTest 验证通过。

---

## 变更历史

| 版本 | 日期 | 说明 |
|------|------|------|
| 1.1 | 2026-09-03 | 增加项目级数据键生成配置及 ConditionData Package 化说明。 |
| 1.0 | 2026-09-03 | 建立 PlayerDataCore、GameDataCore、Meta、事件、存档和复制规范。 |
