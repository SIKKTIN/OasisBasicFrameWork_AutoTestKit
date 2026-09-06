# Package 目录结构规范

Package 按业务边界组织。核心入口固定，内部目录按职责和复杂度按需创建；不为了满足模板保留空文件或空目录。需要外部编辑或覆盖的配置放在 Package 目录之外，并与所属 Package 保持明确的一一映射。

---

## 标准结构

```text
Withdraw/Script/
├── Package/<PackageName>/
│   ├── Package_Meta.lua              -- 必选：包元数据与数据契约
│   ├── Registry_<PackageName>.lua    -- 必选：唯一对外门面
│   ├── README.md                     -- 推荐：包职责、接口和数据说明
│   ├── Data/                         -- 按需：领域定义和数据初始化
│   │   ├── Define_<Subject>.lua
│   │   ├── PlayerData_<Subject>.lua
│   │   └── GameData_<Subject>.lua
│   ├── System/                       -- 按需：有副作用的业务系统
│   ├── Query/                        -- 按需：只读查询接口
│   ├── Model/                        -- 按需：运行时模型
│   └── Handler/                      -- 按需：事件或策略处理
└── Config/Package/<PackageName>/     -- 按需：所属 Package 的外置配置
    ├── Config_<Subject>.lua
    └── Config_<Feature>.lua
```

`Data` 在文件数量较少时采用职责命名的扁平结构。只有同类文件数量明显增加时，才按业务需要继续拆分子目录。

外置 Config 的目录名必须与 `Package/<PackageName>` 完全一致。例如 Building 的外置配置必须位于 `Script/Config/Package/Building/`。当前 `LevelSystem` 使用 `Script/Config/Package/Level/` 是历史例外，新增代码不得沿用这种不一致命名。

---

## 核心文件

| 文件 | 要求 | 职责 |
|------|------|------|
| `Package_Meta.lua` | 必选 | 声明 `packageKind`、`packageName`、依赖和 PlayerDataCore/GameDataCore 数据入口。 |
| `Registry_<PackageName>.lua` | 必选 | Package 唯一对外门面，组合内部模块并暴露有限公共 API。 |
| `README.md` | 推荐 | 说明 Package 边界、数据结构、对外 API 和生命周期。 |
| `Data/Define_<Subject>.lua` | 按需 | 定义领域常量、结构约束、构造、校验、纯 Getter，以及小型稳定代码配置。 |
| `Config/Package/<PackageName>/Config_<Subject>.lua` | 按需 | 保存可外部编辑或覆盖的配置，并负责加载、合并、缓存和来源诊断。 |

`Registry_<PackageName>.lua` 通过 `local + require` 组合包内模块，并通过 `return Registry_<PackageName>` 导出。它不要求挂载到 `_G`；包外统一使用：

```lua
local Registry_Name = require("Script.Package.Name.Registry_Name")
```

---

## 目录职责与命名

| 位置 | 命名 | 职责 |
|------|------|------|
| `Package/<Name>/Data/` | `Define_*` | 领域常量、结构定义、构造与校验；可持有小型稳定配置。 |
| `Package/<Name>/Data/` | `PlayerData_*` | 玩家数据初始化、格式化和数据相关缓存；通过 `Package_Meta.lua` 的 `playerData` 声明。 |
| `Package/<Name>/Data/` | `GameData_*` | 全局游戏数据初始化、格式化和数据相关缓存；通过 `Package_Meta.lua` 的 `gameData` 声明。 |
| `Package/<Name>/System/` | `System_*` | 写数据、发放奖励、调用引擎写接口、注册监听和处理生命周期。 |
| `Package/<Name>/Query/` | `Query_*` 或 `Query.lua` | 只读查询，包括只读引擎接口；不修改数据或发放奖励。 |
| `Package/<Name>/Model/` | 业务模型名 | 运行时业务对象或状态模型。 |
| `Package/<Name>/Handler/` | `Handler_*` | 事件分派、策略判断和模式处理。 |
| `Config/Package/<Name>/` | `Config_*` | Package 的外置配置、默认记录、外部数据源加载与合并。 |

只读外部能力归入 Query；外部写操作、事件绑定和生命周期归入 System。不要为引擎、蓝图或网络调用额外创建等价中间层。

Package 内部模块默认使用 `local Module = {}` 和 `return Module`，不创建隐式全局变量。除非由 Registry 明确转发，否则包外不可直接依赖内部实现模块。

---

## Define 与外置 Config

### Define 的职责

`Define_<Subject>.lua` 属于 Package，是领域规则的代码所有者：

- 定义枚举集合、合法范围、记录字段和不变量。
- 提供记录构造、深拷贝、规范化、校验和纯 Getter。
- 可以直接持有体量小、变化少、由程序维护的静态配置。
- 不负责读取 DataTable、按环境覆盖配置或维护外部配置来源状态。

MakeUp 的固定医疗配方、Collect 的收藏套装等小型稳定数据，可以采用 Define-only 模式，不需要创建外置 Config。

### 外置 Config 的职责

`Config_<Subject>.lua` 位于 `Script/Config/Package/<PackageName>/`，用于需要策划编辑、DataTable 接入或环境覆盖的数据：

- 保存 Lua 默认记录和外部 DataTable 路径。
- 读取外部数据，完成缓存、重载、覆盖合并和配置来源诊断。
- 使用所属 Package 的 Define 构造并校验最终记录。
- 不依赖 Registry、Query、System，也不执行玩家数据写入或奖励发放。

依赖方向固定为：

```text
Registry
└── Query / System / Data
    ├── Define
    └── Config
        └── Define
```

外部配置的解析顺序固定为：

```text
Lua 默认配置 → 外部数据覆盖 → Define 规范化与校验 → Query 返回最终配置
```

外部数据缺失时使用 Lua 默认配置；外部字段非法时不能绕过 Define 校验。具体采用默认值回退还是把记录标记为无效，由 Config 明确实现并在 Package README 中说明。

### 选型规则

| 场景 | 结构 |
|------|------|
| 数据量小、稳定、程序维护 | `Data/Define_<Subject>.lua` |
| 需要策划或 JSON 编辑 | `Define_<Subject>` + 外置 `Config_<Subject>` |
| 需要读取或覆盖 DataTable | `Define_<Subject>` + 外置 `Config_<Subject>` |
| 需要默认配置、热重载或来源诊断 | `Define_<Subject>` + 外置 `Config_<Subject>` |

---

## 结构示例

### Building：Define + Config

```text
Script/
├── Package/Building/
│   ├── Package_Meta.lua
│   ├── Registry_Building.lua
│   ├── Data/Define_Building.lua
│   ├── Query/Query_Building.lua
│   └── System/System_Building.lua
└── Config/Package/Building/
    └── Config_BuildingUpgrade.lua
```

- `Define_Building` 定义等级范围、升级记录构造和奖励校验。
- `Config_BuildingUpgrade` 保存默认升级记录，读取并合并建筑 DataTable。
- `Query_Building` 查询 Config 产出的最终配置。
- `Registry_Building` 对包外隐藏 Define、Config、Query 和 System 的组合细节。

### Collect / MakeUp：Define-only

```text
Package/Collect/Data/Define_Collect.lua
Package/MakeUp/Data/Define_MakeUp.lua
```

- `Define_Collect` 直接持有小型收藏配置和纯 Getter。
- `Define_MakeUp` 直接持有固定制作配方和纯 Getter。
- 只有当这些配置需要外部编辑或 DataTable 覆盖时，才新增与 Package 同名目录下的外置 Config。

---

## 创建新 Package

新 Package 至少创建：

```text
Package/<PackageName>/
├── Package_Meta.lua
└── Registry_<PackageName>.lua
```

根据需求继续添加：

- 有领域常量、结构规则或小型稳定配置时，创建 `Data/Define_<Subject>.lua`。
- 需要外部编辑、DataTable 或覆盖合并时，同时创建 `Config/Package/<PackageName>/Config_<Subject>.lua`。
- 管理玩家持久化数据时，创建 `Data/PlayerData_<Subject>.lua` 并在 `Package_Meta.lua` 的 `playerData` 中声明入口。
- 管理全局游戏持久化数据时，创建 `Data/GameData_<Subject>.lua` 并在 `gameData` 中声明入口。
- 出现只读引擎查询时创建 Query；出现引擎写入、监听或生命周期时创建 System。

两类持久化数据都需要与对应的 `DATA_TYPE` 或数据键保持一致。没有明确职责时不创建空目录或空模块。

---

## 变更历史

| 版本 | 日期 | 说明 |
|------|------|------|
| 1.2 | 2026-09-03 | 移除外部适配层；补充 Define-only、Define + 外置 Config、目录命名和依赖方向规范。 |
| 1.1 | 2026-09-01 | 以 Collect/Task 实践更新：Data 改为职责化扁平结构，Registry 明确为 local 对外门面。 |
| 1.0 | 2026-08-25 | 初始目录模板。 |
