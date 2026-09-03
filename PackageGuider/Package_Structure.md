# Package 目录结构规范

Package 按业务边界组织。核心入口固定，内部目录按职责和复杂度按需创建；不为了满足模板保留空文件或空目录。

---

## 标准结构

```text
Withdraw/Script/Package/<PackageName>/
├── Package_Meta.lua       -- 必选：包元数据与数据契约
├── Registry_<Name>.lua    -- 必选：唯一对外门面
├── README.md              -- 推荐：包职责、接口和数据说明
├── Data/                  -- 按需：静态定义和数据初始化
│   ├── Define_<Name>.lua
│   ├── Define_<Feature>.lua
│   ├── PlayerData_<Name>.lua
│   └── GameData_<Name>.lua
├── System/                -- 按需：有副作用的业务系统
├── Query/                 -- 按需：只读查询接口
├── Model/                 -- 按需：运行时模型
├── Handler/               -- 按需：事件或策略处理
└── Adapter.lua            -- 按需：外部系统适配
```

`Data` 在文件数量较少时采用职责命名的扁平结构。只有同类文件数量明显增加时，才按业务需要继续拆分子目录。

---

## 核心文件

| 文件 | 要求 | 职责 |
|------|------|------|
| `Package_Meta.lua` | 必选 | 声明 `packageKind`、`packageName`、依赖和 PlayerDataCore/GameDataCore 数据入口。 |
| `Registry_<Name>.lua` | 必选 | Package 唯一对外门面，组合内部模块并暴露有限公共 API。 |
| `README.md` | 推荐 | 说明 Package 边界、数据结构、对外 API 和生命周期。 |
| `Adapter.lua` | 可选 | 封装引擎、蓝图、网络或其他外部系统的调用协议。没有独立适配职责时不创建。 |

`Registry_<Name>.lua` 通过 `local + require` 组合包内模块，并通过 `return Registry_<Name>` 导出。它不要求挂载到 `_G`；包外统一使用：

```lua
local Registry_Name = require("Script.Package.Name.Registry_Name")
```

---

## 目录职责与命名

| 位置 | 命名 | 职责 |
|------|------|------|
| `Data/` | `Define_*` | 静态配置、枚举、结构定义和纯查询 Getter。 |
| `Data/` | `PlayerData_*` | 玩家数据初始化、格式化和数据相关缓存；通过 `Package_Meta.lua` 的 `playerData` 声明。 |
| `Data/` | `GameData_*` | 全局游戏数据初始化、格式化和数据相关缓存；通过 `Package_Meta.lua` 的 `gameData` 声明。 |
| `System/` | `System_*` | 收集、激活、写数据、注册监听和其他有副作用操作。 |
| `Query/` | `Query_*` 或 `Query.lua` | 只读查询接口，不修改数据或发放奖励。 |
| `Model/` | 业务模型名 | 运行时业务对象或状态模型。 |
| `Handler/` | `Handler_*` | 事件分派、策略判断和模式处理。 |
| 根目录 | `Adapter.lua` | 仅用于明确的外部适配边界。 |

Package 内部模块默认使用 `local Module = {}` 和 `return Module`，不创建隐式全局变量。除非由 Registry 明确转发，否则包外不可直接依赖内部实现模块。

---

## Collect 示例

当前 Collect Package 是推荐结构示例：

```text
Collect/
├── Package_Meta.lua
├── Registry_Collect.lua
├── README.md
├── Data/
│   ├── Define_Collect.lua
│   └── PlayerData_Collect.lua
├── Query/
│   └── Query_Collect.lua
└── System/
    └── System_Collect.lua
```

- `Define_Collect` 保存收藏类别、物品需求和奖励配置。
- `PlayerData_Collect` 负责 `collect_data` 初始化与数据入口。
- `System_Collect` 负责收集、套装完成和套装激活。
- `Query_Collect` 提供只读进度和状态查询。
- `Registry_Collect` 是 Package 唯一对外访问入口。
- Collect 没有独立外部适配职责，因此不需要 `Adapter.lua`。

---

## 创建新 Package

新 Package 至少创建：

```text
<PackageName>/
├── Package_Meta.lua
└── Registry_<PackageName>.lua
```

当 Package 管理玩家持久化数据时，创建 `Data/PlayerData_<Name>.lua` 并在 `Package_Meta.lua` 的 `playerData` 中声明入口；管理全局游戏持久化数据时，创建 `Data/GameData_<Name>.lua` 并在 `gameData` 中声明入口。两类数据都需要与对应的 `DATA_TYPE` 或数据键保持一致。其余目录和 `Adapter.lua` 均在出现明确职责后再创建。

---

## 变更历史

| 版本 | 日期 | 说明 |
|------|------|------|
| 1.1 | 2026-09-01 | 以 Collect/Task 实践更新：Adapter 改为可选，Data 改为职责化扁平结构，Registry 明确为 local 对外门面。 |
| 1.0 | 2026-08-25 | 初始目录模板。 |
