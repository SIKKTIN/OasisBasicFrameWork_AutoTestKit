# GenKit - 代码生成工具

项目代码生成工具套件，参考 TestKit 的架构。

## 目录结构

```
TestHelper/
├── GenKit/
│   ├── init.lua          # 核心生成逻辑
│   ├── Run_Console.lua   # 交互式控制台
│   └── README.md         # 本文件
└── GenKit_Runner.ps1     # 启动器
```

## 使用方法

### 方式一：PowerShell 启动器（推荐）

```powershell
cd E:\Project\AgentHelper\WithDrawCache
.\TestHelper\GenKit_Runner.ps1
```

### 方式二：直接运行 Lua

```powershell
cd E:\Project\AgentHelper\WithDrawCache
lua54 TestHelper\GenKit\Run_Console.lua
```

## 使用模式

启动后先选择使用模式：

- **预设模式**：按常用场景组合运行多个生成器。所有生成器扫描成功后只需确认一次写入：
  - `数据定义与变更事件`：生成 `Const_Data.lua`、`Event_DataChange.lua`。
  - `调试与运行配置`：生成 CommandSystem 索引与指令清单、DebugKit 预测配置、AutoTestSuite 索引。
  - `包与核心配置`：生成 `Package_Registry.lua`、`Package_Meta_Index.lua`、`Core_Registry.lua`。
  - `表常量`：读取项目登记的 DataTable CSV，生成 `Script/Const/Generate/Const_*.lua`。
- **详细模式**：逐项选择生成器，保留以下 10 个独立生成操作，适合需要精确控制生成范围的场景。

## 工具列表（详细模式）

### 8. 生成 Const_Data.lua

扫描 `Withdraw/Script/Package` 下所有 `Package_Meta.lua` 的 `playerData[].dataKey` 和 `gameData[].dataKey`，生成：

```text
Withdraw/Script/Const/Data/Const_Data.lua
```

字段名由 `dataKey` 转换为大写蛇形命名，输出分为 `PLAYER_DATA_TYPE` 和 `GAME_DATA_TYPE`。生成器只读取 Meta 源码，不加载依赖引擎全局对象的业务模块；重复类型会去重，字段冲突或无效 `dataKey` 会阻止写入。

生成器还会读取目标项目的可选配置 `Script/Setting/GenKit_Config.lua`，将 `additionalPlayerDataKeys` 注入 `PLAYER_DATA_TYPE`。项目没有该配置或未声明该字段时，默认补入 Withdraw 的历史 `condition_data`、`backitem_data`；显式配置空数组可关闭补入。

业务代码统一通过 `Script.Const.Data.Const_Data` 获取数据类型，不再使用 `Util_EnumManager.DATA_TYPE`。

### 9. 生成 Event_DataChange.lua

扫描所有 `Package_Meta.lua` 的 `playerData[].dataKey` 和 `gameData[].dataKey`，并纳入项目配置的 `additionalPlayerDataKeys`，生成：

```text
Withdraw/Script/Event/Event_DataChange.lua
```

生成内容包括通用事件 `ON_PLAYER_DATA_CHANGE`、`ON_GAME_DATA_CHANGE`，以及按数据类型生成的分类事件。事件字段名由 `dataKey` 转换为大写蛇形命名，例如 `building_data` 对应 `ON_PLAYER_BUILDING_DATA_CHANGE`。

所有事件 ID 固定从 `5000` 开始分配，且不能超出 `5000-5999`。生成结果按字段名稳定排序；重复类型会去重并警告，字段冲突或非法 `dataKey` 会阻止写入，失败时不会覆盖已有文件。

该文件是纯静态配置，业务代码通过 `require("Script.Event.Event_DataChange")` 使用，不挂载全局变量。运行时数据变更由 `Global_PlayerDataCore` 或 `Global_GameDataCore` 统一派发。

### 1. 生成 Project_Globals.lua

扫描 `Withdraw/Script` 目录下所有 `.lua` 文件，收集所有全局表定义，生成 `Project_Globals.lua`。

**匹配模式**：
```lua
XXX = XXX or {}
```

例如：
- `Query_Loot = Query_Loot or {}`
- `Mgr_PlayerAttributeDataManager = Mgr_PlayerAttributeDataManager or {}`

**输出文件**：
```
Withdraw/Script/Setting/Project_Globals.lua
```

### 2. 生成 Package_Registry.lua

扫描 `Withdraw/Script/Package` 目录下所有 Registry 文件，生成 `Package_Registry.lua`。

**匹配模式**：
```
Script/Package/{PackageName}/Registry_{PackageName}.lua
```

例如：
- `Script/Package/CountDown/Registry_CountDown.lua`
- `Script/Package/Task/Registry_Task.lua`

**输出文件**：
```
Withdraw/Script/Setting/Package_Registry.lua
```

**输出结构**：
```lua
local Package_Registry = {
    "Script.Package.CountDown.Registry_CountDown",
    "Script.Package.AutoTestKit.Registry_AutoTestKit",
    "Script.Package.GamePlayRecord.Registry_GamePlayRecord",
    "Script.Package.Task.Registry_Task",
}

function Package_Registry.BeginPlay()
    for _, modulePath in ipairs(Package_Registry) do
        local ok, registry = pcall(require, modulePath)
        if ok and registry and registry.BeginPlay then
            registry.BeginPlay()
        end
    end
end

return Package_Registry
```

**使用方式**：
```lua
local Package_Registry = require("Script.Setting.Package_Registry")
Package_Registry.BeginPlay()
```

### 3. 生成 Package_Meta_Index.lua

扫描 `Withdraw/Script/Package` 目录下所有 `Package_Meta.lua`，生成 `Package_Meta_Index.lua`。

**匹配模式**：
```
Script/Package/{PackageName}/Package_Meta.lua
```

**输出文件**：
```
Withdraw/Script/Setting/Package_Meta_Index.lua
```

**作用**：
Core 层（PlayerDataCore / EventCore / 等）按需加载所有 Meta；
每次 `Load()` 都重新 `require`，不缓存，调用方拿到 Meta 列表自行处理。

**使用方式**：
```lua
local Package_Meta_Index = require("Script.Setting.Package_Meta_Index")

-- 加载全部 Meta（每次都重新 require，不缓存）
for _, meta in ipairs(Package_Meta_Index.Load()) do
    if meta.playerData then
        -- 注册到 PlayerDataCore / EventCore / 等
    end
end

-- 按包名过滤
for _, meta in ipairs(Package_Meta_Index.Load()) do
    if meta.packageName == "Task" then
        -- 处理 Task Meta
    end
end
```

> **变更说明**：旧版 `BeginPlay()` / `Get()` / `ForEach()` 已被删除，统一改为单 `Load()` API。
> `Load()` 每次都重新 `require`，但 Lua 的 `package.loaded` 自带模块缓存，第二次同路径几乎零开销。

### 4. 生成 Core_Registry.lua

递归扫描 `setting.coreScanDir` 下所有 `Global_*.lua`，生成 Core 生命周期注册表。

**输出文件**：
```text
Script/Setting/Core_Registry.lua
```

注册表提供：
```lua
Core_Registry.BeginPlay()
Core_Registry.Tick(deltaTime)
```

- 模块存在 `BeginPlay` 时自动调用，不存在则只加载。
- 模块存在 `Tick` 时由注册表逐帧分发。
- 单个模块加载或 BeginPlay 失败不会阻断其他 Core。
- Tick 首次失败后会停用对应模块，避免每帧重复报错。
- 非 `Global_` 前缀的 Core 不会进入注册表，继续由业务手工管理。

新增、移动或删除 Global Core 后，重新运行“生成 Core_Registry.lua”。

### 10. 生成 DataTable 常量

本机 CSV 公共根目录配置在根目录 `setting.json`：

```lua
dataTableCsvRoot = [[E:\Project\DemoExcel\DayBreakDefenseDemoV1\Asset\Data\Table\Customized]],
```

目标项目的 `Script/Setting/GenKit_Config.lua` 只登记相对路径：

```lua
tableConsts = {
    {
        name = "Item",
        source = "Item/DT_Item_Config.csv",
        enumType = "ItemID",
    },
}
```

默认读取 `---` 作为数值 ID 列、`ConstName` 作为常量名列，并输出到
`Script/Const/Generate/Const_<Name>.lua`。不同字段结构可以通过
`keyColumn`、`nameColumn` 和 `output` 覆盖。生成器会统一校验路径、列、
正整数 ID、常量名和重复项；全部表扫描成功后才允许写入。

生成文件带有 EmmyLua `---@enum` 标注，可供 Lua 编辑器补全和类型检查。
生成结果应提交版本库，但不得手工编辑。

## 扩展新工具

在 `GenKit/init.lua` 中添加新的生成器：

```lua
M.tools = {
    -- 已有工具...
    {
        id = "my_tool_id",
        name = "工具名称",
        description = "工具描述",
        run = function()
            -- 你的生成逻辑
            return true, result
        end,
    },
}
```

## 配置

本机路径相关的配置集中在 `TestHelper/setting.json`，由所有 Kit 共用。

数据键的项目级补充配置位于目标项目：

```lua
-- Script/Setting/GenKit_Config.lua
return {
    additionalPlayerDataKeys = {},
}
```

- 配置文件缺失或字段缺失：使用 `condition_data`、`backitem_data` 历史默认值，兼容 Withdraw。
- 显式空数组：只使用 Package Meta 声明的数据键。
- 非连续数组、非字符串、空字符串或非法 dataKey 会阻止 `Const_Data` 和 `Event_DataChange` 写入。
- 补充键会同时生成数据常量和分类变更事件，不需要生成后手工修改。

需要调整时，**改 `setting.json` 即可**，不要改 `GenKit/init.lua`：

```lua
return {
    -- 被测业务项目根目录
    projectRoot = [[E:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Withdraw]],

    -- TestHelper 工具根目录
    testHelperRoot = [[E:\Project\AgentHelper\WithDrawCache\TestHelper]],

    -- 项目全局白名单文件（相对于 projectRoot）
    projectGlobalsPath = [[Script\Setting\Project_Globals.lua]],

    -- Core Global 扫描目录和注册表输出路径（相对于 projectRoot）
    coreScanDir = [[Script\Core]],
    coreRegistryPath = [[Script\Setting\Core_Registry.lua]],
}
```

GenKit 启动时通过公共配置加载器读取 `setting.json`，并派生：

- `GenKit.PROJECT_ROOT` — 业务项目根目录
- `GenKit.getScriptDir()` — Lua 源码目录
- `GenKit.getProjectGlobalsOutputPath()` — Project_Globals.lua 绝对路径
- `GenKit.getCoreScanDir()` — Core Global 扫描目录
- `GenKit.getCoreRegistryOutputPath()` — Core_Registry.lua 绝对路径
