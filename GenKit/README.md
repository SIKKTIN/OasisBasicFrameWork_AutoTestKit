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

## 工具列表

### 8. 生成 Const_Data.lua

扫描 `Withdraw/Script/Package` 下所有 `Package_Meta.lua` 的 `playerData[].dataKey` 和 `gameData[].dataKey`，生成：

```text
Withdraw/Script/Const/Data/Const_Data.lua
```

字段名由 `dataKey` 转换为大写蛇形命名，输出分为 `PLAYER_DATA_TYPE` 和 `GAME_DATA_TYPE`。生成器只读取 Meta 源码，不加载依赖引擎全局对象的业务模块；重复类型会去重，字段冲突或无效 `dataKey` 会阻止写入。

`condition_data` 和 `backitem_data` 是历史遗留类型，不属于 Package Meta 扫描范围。每次生成后需要手动确认并补入 `PLAYER_DATA_TYPE`；新增 Package 数据类型后应重新运行本工具。

业务代码统一通过 `Script.Const.Data.Const_Data` 获取数据类型，不再使用 `Util_EnumManager.DATA_TYPE`。

### 9. 生成 Event_DataChange.lua

扫描所有 `Package_Meta.lua` 的 `playerData[].dataKey` 和 `gameData[].dataKey`，并纳入历史遗留的 `condition_data`、`backitem_data`，生成：

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

所有项目路径相关的配置集中在 `TestHelper/ExternalConfig/setting.lua`，由所有 Kit 共用。

需要调整时，**改 `setting.lua` 即可**，不要改 `GenKit/init.lua`：

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

GenKit 启动时通过 `require("ExternalConfig.setting")` 读取上述字段，并派生：

- `GenKit.PROJECT_ROOT` — 业务项目根目录
- `GenKit.getScriptDir()` — Lua 源码目录
- `GenKit.getProjectGlobalsOutputPath()` — Project_Globals.lua 绝对路径
- `GenKit.getCoreScanDir()` — Core Global 扫描目录
- `GenKit.getCoreRegistryOutputPath()` — Core_Registry.lua 绝对路径
