# TestKit 测试框架

包内 Lua 单元测试统一管理套件，支持交互式控制台运行。

## 目录结构

```
TestHelper/
├── TestKit/
│   ├── init.lua          -- 核心库（包注册、扫描、运行）
│   ├── Run_Console.lua   -- 交互式控制台入口
│   └── README.md         -- 本文档
└── UnitTests/            -- 测试文件目录
    └── Test_*.lua
```

## 快速开始

```powershell
# 进入 TestKit 目录
cd TestHelper\TestKit

# 运行控制台
lua54 Run_Console.lua
```

## 配置

路径相关配置统一从 `ExternalConfig/setting.lua` 读取：

- `projectRoot` — 被测业务项目根（Withdraw）
- `testHelperRoot` — TestHelper 工具根
- `testDir` — 单元测试根目录，相对 `testHelperRoot`，默认 `UnitTests`

修改这些字段即可；TestKit 无需硬编码路径。

## 目录约定

| 约定 | 默认路径 | 说明 |
|------|----------|------|
| 测试根目录 | `<testHelperRoot>/<testDir>/` | 默认 `TestHelper/UnitTests/`，可通过 `setting.testDir` 修改 |
| 测试文件 | `Test_*.lua` | 必须以 `Test_` 开头 |

## 新增测试包的流程

1. **创建测试文件**

   路径约定：`<testDir>/<PackageName>/Test_*.lua`（如 `UnitTests/CountDown/Test_Config.lua`）

   ```
   TestHelper/
   └── UnitTests/
       └── CountDown/
           ├── Test_Config.lua
           └── Test_Service.lua
   ```

2. **注册包**

   在 `Run_Console.lua` 中添加一行（路径相对 `testHelperRoot`）：

   ```lua
   TestKit.RegisterPackage("CountDown", { testDir = "UnitTests/CountDown" })
   ```

   或者更省事的写法（用 `setting.testDir` 默认值作根，包名作子目录）：

   ```lua
   TestKit.RegisterPackage("CountDown")  -- 自动 = <setting.testDir>/CountDown
   ```

   启动控制台即可自动发现并运行测试。

## API 参考

### 注册

```lua
TestKit.RegisterPackage(name, opts)
```

- `name`: 包名
- `opts.testDir`: 可选，自定义测试目录

```lua
TestKit.ClearRegistry()  -- 清空所有注册
```

### 查询

```lua
TestKit.GetRegisteredPackages()  -- 返回所有已注册包名（已排序）
TestKit.GetTestFiles(packageName) -- 返回该包下所有 Test_*.lua 文件名
```

### 运行

```lua
TestKit.RunSingleFile(packageName, fileName)  -- 运行单个测试文件
TestKit.RunPackage(packageName)                -- 运行整个包
TestKit.RunAll()                               -- 运行所有已注册包
```

返回值结构：

```lua
{
    packageName = "CountDown",
    pass = true,            -- 整体是否通过
    error = nil,            -- 错误信息（如有）
    testFileCount = 2,
    results = {
        {
            fileName = "Test_Config.lua",
            filePath = "UnitTests/CountDown/Test_Config.lua",
            output = "...",    -- 原始输出
            exitCode = 0,
            pass = true
        },
        ...
    }
}
```

## 控制台操作

| 按键 | 作用 |
|------|------|
| 数字 | 选择对应包或测试文件 |
| A | 运行全部 |
| C | 清理控制台 |
| 0 | 返回 / 退出 |

## 示例输出

```
╔══════════════════════════════════════════════════════════════╗
║  TestKit 测试控制台                                     ║
╚══════════════════════════════════════════════════════════════╝
  请选择要测试的包:

  [1] CountDown (2 个测试文件)

  [A] 运行全部已注册包
  [C] 清理控制台
  [0] 退出

=============================================================
Config_CountDown 单元测试
=============================================================

[GetThreshold]
  [通过] 应该返回 RandomEvacuateShow 的阈值 600
  [通过] 应该返回 EvacuateFail 的阈值 1500

==============================================================
结果: 6 通过, 0 失败, 共 6 个测试
==============================================================
EXITCODE: 0
```
