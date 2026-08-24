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
}
```

GenKit 启动时通过 `require("ExternalConfig.setting")` 读取上述字段，并派生：

- `GenKit.PROJECT_ROOT` — 业务项目根目录
- `GenKit.getScriptDir()` — Lua 源码目录
- `GenKit.getProjectGlobalsOutputPath()` — Project_Globals.lua 绝对路径
