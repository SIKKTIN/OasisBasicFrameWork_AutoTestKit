# 项目架构思想：Core–Package–Const–Config–Event–Setting

本文描述绿洲启元 Lua 项目的通用框架架构，适用于采用本框架的项目。架构以 Core、Package、Const、Config、Event、Setting 六类模块为核心，通过“稳定基础设施、自治业务边界、显式公共契约、自动生成装配”控制依赖方向和改动影响范围。文中 Withdraw 等项目名称仅用于示例，实际路径以目标项目为准。

本文是架构总纲。Package 内部目录与 Define/Config 选型见 [Package 目录结构规范](./Package_Structure.md)，Package 元数据字段见 [Package_Meta 规范](./Package_Meta.md)。

---

## 核心目标

- 业务能力按 Package 聚合，新增或移除业务时尽量只影响一个 Package。
- Core 提供全项目统一机制，但不持有具体业务规则。
- Const、Config、Event 分别承载稳定标识、可变策略和通信契约，避免散落的魔法值与隐式约定。
- Setting 保存工具生成的运行时索引和装配清单，不承载业务规则。
- Package 只通过 Registry 暴露公共 API，内部结构可以独立演进。
- 依赖必须可声明、可扫描、可生成、可校验，减少启动文件中的手工装配。
- 查询、命令和通知使用不同通道，避免同步事务被隐藏在事件链中。

---

## 总体结构

```text
        Setting（生成的装配与索引）
              │
       ┌──────┴──────┐
       ▼             ▼
     Core       Package Registry ◄── Blueprint / UI / RPC / GamePlay
                     │
        ┌────────┼────────┐
        ▼        ▼        ▼
      Query    System    Data
        │        │        │
        └────────┼────────┘
                 │
        ┌────────┼─────────┬─────────┐
        ▼        ▼         ▼         ▼
       Core     Const     Config    Event
        │                    │         │
        └──── 通用机制 ──────┘         ▼
                              Core/EventCore
```

这不是六个互相平行的文件夹，而是六种明确的架构职责：

- Core 解决“所有业务都需要的机制”。
- Package 解决“某个业务领域应该做什么”。
- Const 解决“全项目如何稳定地指代同一个概念”。
- Config 解决“业务参数从哪里来、如何覆盖和校验”。
- Event 解决“已经发生的事实如何通知多个关注方”。
- Setting 解决“源码声明如何转换为确定的运行时装配”。

---

## Core：稳定基础设施

Core 位于 `Script/Core/<CoreName>/`，提供跨业务、可复用、需要统一生命周期的基础能力，例如 PlayerDataCore、GameDataCore、EventCore、ClientCache 和 DebugKit。

Core 的基本规则：

- 提供机制，不包含建筑、任务、制作等具体业务策略。
- 可以被多个 Package 依赖，但不能反向依赖某个 Package 的内部实现。
- 对外入口使用 `Global_<CoreName>.lua`；内部实现放在 `System_<CoreName>.lua` 等职责文件中。
- 由生成的 `Script/Setting/Core_Registry.lua` 统一加载并调用 `BeginPlay`、`Tick` 等生命周期。
- 初始化必须幂等；单个 Core 的失败应记录明确错误，不能静默破坏其他模块。

Core 可以通过生成索引读取所有 `Package_Meta.lua` 的声明。例如 PlayerDataCore、GameDataCore 从 `Package_Meta_Index` 收集数据入口。这属于“Core 消费声明”，不是 Core 依赖业务实现：Core 只理解统一的元数据契约，不调用某个 Package 的私有 Query 或 System。

判断一个能力是否应进入 Core，至少要同时满足：

1. 多个业务领域需要同一种机制。
2. 能力不包含具体业务规则。
3. 生命周期、错误隔离或数据一致性需要全局统一。

“当前被多个文件调用”本身不是进入 Core 的充分理由。

---

## Package：业务自治单元

Package 位于 `Script/Package/<PackageName>/`，是业务规则、数据和行为的所有者。Building、Task、MakeUp、ItemSystem 等都应作为独立 Package 演进。

每个 Package 至少包含：

```text
Package/<PackageName>/
├── Package_Meta.lua
└── Registry_<PackageName>.lua
```

Package 的基本规则：

- `Registry_<PackageName>` 是包外唯一入口，包外不得直接依赖内部 Query、System、Data 或 Handler。
- Query 负责只读业务查询和只读引擎调用。
- System 负责写操作、事务、监听注册和生命周期。
- Data 负责领域定义以及玩家或全局数据的初始化、格式化。
- `Package_Meta.lua` 只声明身份、依赖、私有状态和数据入口，不执行运行时逻辑。
- 由生成的 `Package_Registry` 自动进入生命周期，不在 GameState 或 LifeCycle 中逐包手工加载。

Package 之间允许依赖，但必须满足：

- 依赖对方 Registry，不依赖对方内部文件。
- 在 `Package_Meta.dependsOn` 中显式声明。
- 不形成循环依赖。
- 如果只是响应一个已经发生的事实，优先通过 Event 解耦，而不是建立反向依赖。

同步查询、带返回值的命令和需要明确成功/失败的事务，必须直接调用 Registry，不使用 Event 代替。

---

## Const：稳定标识

Const 位于 `Script/Const/<Domain>/Const_<Subject>.lua`，保存跨 Package 或跨层共享、需要稳定引用的标识和值，例如数据键、Core 检测线 ID 和协议级枚举。

Const 的基本规则：

- 只保存稳定常量、枚举、映射及无副作用的解析函数。
- 不读取玩家状态，不调用引擎写接口，不注册监听。
- 不依赖 Package、Config、Event 或业务运行时对象。
- 返回的数据默认视为只读；需要返回集合时应避免让调用方修改内部表。
- 可由 GenKit 等工具生成的文件不得手工维护生成区内容。

策划 DataTable 派生的领域常量统一生成到 `Script/Const/Generate/`。
这些文件仍属于 Const 契约，但其事实来源是外部 CSV；生成结果应提交版本库，
不得手工编辑。`Const/Data/Const_Data.lua` 属于框架数据契约，暂时保留现有位置。

Const 与 Package 内 Define 的边界：

| 类型 | 放置位置 |
|------|----------|
| 多个 Package、Core 或蓝图共同使用的稳定标识 | `Script/Const/` |
| 只属于一个 Package 的领域常量、记录结构和校验规则 | `Package/<Name>/Data/Define_*.lua` |
| 会随策划数据、DataTable 或环境变化的值 | `Script/Config/` |

不要为了“方便访问”把业务配置或可变状态放进 Const。

---

## Config：可变策略与外部数据

Config 位于 `Script/Config/`。属于某个 Package 的外置配置统一放在：

```text
Script/Config/Package/<PackageName>/Config_<Subject>.lua
```

Config 的基本规则：

- 保存 Lua 默认配置、DataTable 路径和外部数据源定义。
- 负责加载、缓存、重载、覆盖合并和配置来源诊断。
- 最终记录必须交给所属 Package 的 Define 规范化与校验。
- 不依赖 Registry、Query 或 System，不执行玩家数据写入、奖励发放或监听注册。
- 外置 Config 目录名必须与 Package 名一致。

标准解析流程：

```text
Lua 默认配置
      ↓
外部数据覆盖
      ↓
Package Define 规范化与校验
      ↓
Query 返回最终配置
```

简单、稳定、由程序维护的小型配置可以直接放在 Package 的 Define 中。需要策划编辑、DataTable、环境覆盖、热重载或来源诊断时，采用 Define + 外置 Config。

当前 `LevelSystem → Script/Config/Package/Level/` 是历史目录例外，不代表新规范；新增配置不得复制该命名。

---

## Event：通信契约

Event 分为“事件契约”和“派发机制”：

- `Script/Event/` 定义跨模块可见的事件 ID、名称、参数和语义。
- `Script/Core/EventCore/UGCEventSystem.lua` 提供监听、移除和派发机制。
- Package 内部事件可以保持私有；一旦需要被其他 Package、Core、UI 或蓝图监听，就必须提升为公共事件契约。

Event 的基本规则：

- 事件名表达已经发生的事实，例如“玩家数据已变化”，而不是模糊的执行请求。
- 事件定义必须说明发送端、触发时机、运行端和参数顺序。
- 发送方不假设监听方数量和执行顺序。
- 监听注册必须幂等，并在对象或生命周期结束时按需解除。
- 事件参数传递身份和必要上下文，不传递可被任意监听方修改的共享业务状态。
- 公共事件 ID 必须集中管理或由工具生成，禁止在业务文件中临时写数字。

### Registry 调用与 Event 的选择

| 需求 | 使用方式 |
|------|----------|
| 查询数据并立即获得结果 | Registry Query |
| 执行命令并判断成功、失败或实际变化量 | Registry System API |
| 完成需要回滚的一致性事务 | Registry System API |
| 一个事实发生后通知多个无直接依赖的模块 | Event |
| 生命周期广播、数据变化通知、UI 被动刷新 | Event |

Event 不承担查询返回值，也不作为隐藏的跨 Package 命令总线。

---

## Setting：生成后的装配清单

Setting 位于 `Script/Setting/`，保存由工具扫描源码后生成的运行时索引、注册表和静态清单。它把“项目里实际有哪些 Core、Package、Meta、命令和测试”固化为 Lua 模块，使运行时不需要扫描磁盘。

Setting 的基本规则：

- Setting 是装配结果，不是业务配置；业务数值和 DataTable 路径仍属于 Config。
- 生成文件必须带有“自动生成，请勿手动编辑”标记。
- 业务代码不在 Setting 中实现，生成器也不把业务逻辑复制到 Setting。
- LifeCycle、Core 和工具只消费所需索引，不通过 Setting 绕过 Package Registry。
- 新增、移动或删除被扫描的源码后，必须重新运行 GenKit。
- GenKit 重跑应无额外漂移；相同源码必须产生稳定、可复现的输出。

### 当前 Setting 文件

| 文件 | 来源 | 运行时用途 |
|------|------|------------|
| `Core_Registry.lua` | 扫描 `Script/Core/**/Global_*.lua` | 统一加载 Core，并分发 `BeginPlay`、`Tick`。 |
| `Package_Registry.lua` | 扫描 `Script/Package/*/Registry_*.lua` | 统一加载并初始化所有 Package。 |
| `Package_Meta_Index.lua` | 扫描 `Script/Package/*/Package_Meta.lua` | 供 PlayerDataCore、GameDataCore 等读取声明。 |
| `Project_Globals.lua` | 扫描项目全局表定义 | 记录全局名称与来源，供依赖检查使用。 |
| `CommandConfigIndex.lua` | 扫描外置命令配置 | 供 CommandSystem 加载命令配置。 |
| `CommandList.lua` | 汇总命令配置 | 提供稳定的可读指令清单。 |
| `DebugKitPrediction.lua` | 扫描 `DebugKit.Log` 调用 | 保存检测线、运行端和节点的预测结果。 |
| `AutoTestSuiteIndex.lua` | 扫描 AutoTest Suite | 供 AutoTestKit 在运行时加载测试套件。 |

### Setting 与 Config 的区别

| 对比项 | Setting | Config |
|--------|---------|--------|
| 内容 | 模块索引、注册表、扫描结果 | 业务参数、默认记录、DataTable 路径 |
| 主要维护者 | 工具生成 | 程序、策划或外部数据 |
| 是否手工编辑 | 否 | 可以 |
| 变化原因 | 源码结构或声明变化 | 玩法规则或环境数据变化 |
| 运行时职责 | 装配和发现 | 提供最终业务配置 |

`TestHelper/setting.json` 是本地工具的路径设置，不属于游戏运行时的 `Script/Setting/`，两者不要混淆。

---

## 依赖方向

允许的主要依赖方向如下：

```text
Blueprint / UI / RPC
        │
        ▼
Package Registry
        │
        ├── Package 内部模块
        ├── 其他 Package Registry（显式声明）
        ├── Core 公共入口
        ├── Const
        ├── Config
        └── Event 契约

Core ───────► Const / Event 契约
Config ─────► Const / 所属 Package Define
EventCore ──► Event 契约
LifeCycle ──► Setting 注册表 ──► Core / Package 公共入口
```

禁止的依赖包括：

- Core 依赖具体 Package 的 Registry、Query、System 或业务配置。
- 包外代码绕过 Registry 直接调用 Package 私有模块。
- Config 依赖 Registry、Query 或 System。
- Const 依赖业务运行时模块。
- Event 定义文件执行事件监听、业务修改或生命周期逻辑。
- 在 Setting 生成文件中手工添加业务模块、常量或初始化逻辑。
- Package 之间通过隐式全局变量建立不可追踪的依赖。

`Package_Meta.dependsOn` 和生成索引用于让依赖可被工具检查；它们不能替代代码中的局部 `require`，也不能为循环依赖提供豁免。

---

## 生命周期与装配

项目启动时遵循“基础设施先于业务”的顺序：

```text
GameState 初始化
      ↓
Core_Registry.BeginPlay()
      ↓
Package_Registry.BeginPlay()
      ↓
Lifecycle_FrameworkReady(gameState)（两端分别通知）
      ↓
各 Package 自行响应，进入地图与玩家生命周期
```

- Core 先建立数据、调试、缓存等通用机制。
- Package 再初始化配置缓存、注册业务监听和准备运行时状态。
- PlayerDataCore、GameDataCore 通过 `Package_Meta_Index` 统一发现 Package 声明。
- `Core_Registry`、`Package_Registry`、`Package_Meta_Index` 和 `Project_Globals` 属于生成结果，应通过 GenKit 更新。
- 所有 `BeginPlay`、监听绑定和缓存初始化都必须支持重复调用而不产生重复副作用。

LifeCycle 负责触发阶段，不应逐个了解业务 Package 的内部初始化步骤。

Core、Package 注册表应汇总启动失败，明确返回 false 或异常不能当成成功；成功项不因重试重复执行，失败项自身须幂等。就绪事件只在两阶段成功后发送，通知监听不承担业务返回值汇总。GameMode 订阅就绪事件后自行加载模式；GM 作为可选 Package 订阅客户端本地控制器事件，不由 LifeCycle 打开 UI。

玩家数据加载方在成功后调用 LifeCycle.NotifyPlayerDataLoaded；LifeCycle 不用定时器猜测存档成功。PC/Pawn 等待条件由 Tick 推进，退出时清理，重生按新 Pawn 实例去重。具体接口与来源项目迁移边界见 [模板 LifeCycle 说明](../../Templates/framework-base/README.md#lifecycle-接口与装配)。

---

## 框架自动化

当前自动化采用“离线扫描生成，运行时读取固定索引”的方式：

```text
手写源码与声明
      ↓
GenKit 扫描、预览
      ↓
一次确认后生成静态文件
      ↓
运行时通过 Setting / Const / Event 固定模块加载
      ↓
PackageKit / AutoTestKit 验证
```

这种方式避免运行时文件系统扫描，同时保留生成结果的可读性和版本差异。手写源码与 `Package_Meta.lua` 是事实来源，生成文件只是可重建产物。

### 已实现的生成能力

| 扫描来源 | GenKit 输出 | 自动化作用 |
|----------|-------------|------------|
| `Core/**/Global_*.lua` | `Setting/Core_Registry.lua` | 自动接入 Core 生命周期和 Tick。 |
| `Package/*/Registry_*.lua` | `Setting/Package_Registry.lua` | 自动接入 Package 生命周期。 |
| `Package/*/Package_Meta.lua` | `Setting/Package_Meta_Index.lua` | 自动建立 Meta 发现入口。 |
| 项目全局表定义 | `Setting/Project_Globals.lua` | 自动生成全局名称与来源白名单。 |
| Meta 中的 `playerData/gameData` | `Const/Data/Const_Data.lua` | 自动生成数据类型常量。 |
| Meta 中的 `playerData/gameData` | `Event/Event_DataChange.lua` | 自动生成通用及分类数据变更事件。 |
| 项目登记的 DataTable CSV | `Const/Generate/Const_*.lua` | 自动生成供 Lua 使用的领域 ID 枚举。 |
| 外置命令配置 | `Setting/CommandConfigIndex.lua`、`CommandList.lua` | 自动建立命令运行时索引和可读清单。 |
| `DebugKit.Log` 调用 | `Setting/DebugKitPrediction.lua` | 自动统计检测线节点及客户端、服务端预期数量。 |
| `Config/AutoTestSuite/Suite_*.lua` | `Setting/AutoTestSuiteIndex.lua` | 自动接入运行时测试套件。 |

GenKit 提供四个常用预设：

- “数据定义与变更事件”：生成 `Const_Data` 和 `Event_DataChange`。
- “调试与运行配置”：生成命令、DebugKit 和 AutoTestSuite 相关文件。
- “包与核心配置”：生成 Package Registry、Meta 索引和 Core Registry。
- “表常量”：读取项目登记的 DataTable CSV，生成领域 ID 枚举。

预设会先完成全部扫描和预览，再统一确认一次写入；详细模式可以单独运行十项生成操作。

### 已实现的检查与测试

| 工具 | 当前职责 | 使用位置 |
|------|----------|----------|
| GenKit | 扫描源码并生成可复现的静态索引、常量和事件。 | 本地开发期 |
| PackageKit | 检查 `Package_Meta.dependsOn`，并检查 Package 内部模块是否创建隐式全局。 | 本地静态检查 |
| AutoTestKit | 从生成索引加载 Suite，在游戏运行环境执行断言。 | 运行时回归测试 |
### 自动化边界

以下事项目前仍需要开发者明确执行或复核：

- GenKit 不是后台监听器；新增、移动、删除模块或修改 Meta 后需要手动运行对应生成器。
- PackageKit 当前验证 Package 核心文件、依赖名称和 Package 局部模块约束，不等价于完整的循环依赖和架构方向分析。
- 未纳入 Package Meta 的历史玩家数据键通过项目级 `Script/Setting/GenKit_Config.lua` 配置，并由 GenKit 同步生成常量和变更事件；已迁入 Package 的数据键不再重复配置。
- 工具不会自动迁移旧 Service、Manager、Tool，也不会替代业务回归测试。
- 生成成功只说明结构一致，不代表客户端、服务端权限和事务语义正确。

### 标准变更流程

1. 修改 Core、Package、Meta、Config、命令或测试 Suite 的手写源。
2. 运行对应 GenKit 预设或单项生成器。
3. 审查生成文件差异，确认没有异常新增、丢失或 ID 漂移。
4. 运行 PackageKit 检查。
5. 在 AutoTestKit 中执行受影响的 Suite 和必要的业务回归。
6. 再次运行同一生成器，确认没有额外漂移后提交。

从 TestHelper 的父目录执行 `lua54 TestHelper/GenKit/Run_Console.lua` 或 `lua54 TestHelper/PackageKit/Run_Console.lua` 启动本地工具。GenKit 自身的测试位于 `TestHelper/GenKit/Tests/`，可直接通过 Lua 5.4 运行。

---

## 一个业务请求的标准流向

以“制作医疗物品”为例：

```text
UI 点击
  ↓
Blueprint RPC
  ↓
Registry_MakeUp.Execute
  ↓
System_MakeUp 校验并执行事务
  ├── Registry_ItemSystem 查询和修改物品
  ├── Global_PlayerDataCore 保存数据
  └── 发送已完成或数据变化事件
                         ↓
                    UI 被动刷新
```

这条链路体现了架构中的核心分工：

- Package Registry 是业务入口。
- System 持有制作事务和回滚规则。
- ItemSystem、PlayerDataCore 提供可复用能力。
- 物品 ID 来自稳定 Const 或共享枚举。
- 配方来自 Define-only 或外置 Config。
- Event 只广播结果，不决定事务是否成功。

---

## 新增功能的落位判断

新增代码前依次判断：

1. 它是否是一个独立业务能力？是则创建或扩展 Package。
2. 它是否是多个业务共享且不含业务规则的机制？是则评估进入 Core。
3. 它是否是跨模块稳定标识？是则放入 Const。
4. 它是否需要策划编辑、DataTable 或环境覆盖？是则放入 Config，并由 Define 校验。
5. 它是否描述一个已经发生、可能被多个模块关注的事实？是则定义 Event。
6. 它是否需要同步返回或事务保证？是则通过 Registry API 调用，不能只发送 Event。
7. 它是否只是源码扫描后可重建的装配信息？是则由工具生成到 Setting，不手工维护。

无法明确归属时，优先把代码放回拥有该规则的业务 Package，等出现真实的跨业务复用后再抽取 Core。

---

## 迁移与兼容原则

当前项目仍可能存在历史 Service、Manager、Tool、全局 Config 或手工加载代码。迁移采用渐进方式：

- 新代码直接遵循本规范，不新增同类历史结构。
- 迁移一个业务时，以 Registry 为切换边界，一次性迁移仓库内调用方。
- 删除旧入口前先完成引用扫描、生命周期接入和回归测试。
- 生成文件通过工具更新，不手工复制注册项。
- 历史例外需要在文档中明确标注，但不能自动成为新规范。

架构治理的目标不是一次性重写所有旧代码，而是保证每次改动都减少隐式依赖，并让业务所有权越来越清晰。

---

## 设计检查清单

提交新的 Core、Package、Const、Config、Event 或 Setting 相关变更前确认：

- 公共入口是否唯一且命名清晰。
- 业务规则是否仍由对应 Package 所有。
- Core 是否保持无具体业务语义。
- Const 是否稳定、只读且无副作用。
- Config 是否经过 Define 校验，且没有依赖 Registry、Query、System。
- Event 是否描述事实并明确参数契约。
- Setting 是否完全由声明和扫描结果生成，没有混入业务逻辑。
- 同步事务是否使用 Registry API，而不是依赖事件执行顺序。
- Package 依赖是否记录在 `Package_Meta.dependsOn`，且不存在循环。
- 生命周期初始化和监听绑定是否幂等。
- 生成索引是否由 GenKit 更新且重跑无漂移。

---

## 变更历史

| 版本 | 日期 | 说明 |
|------|------|------|
| 1.1 | 2026-09-03 | 增加 Setting 职责，并记录 GenKit、PackageKit 和 AutoTestKit 的自动化现状与边界。 |
| 1.0 | 2026-09-03 | 建立 Core–Package–Const–Config–Event 项目架构总纲。 |
