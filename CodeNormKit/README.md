# CodeNormKit

绿洲启元（Oasis）项目通用的 **Lua 代码规范审查工具包**，独立部署于 `TestHelper/CodeNormKit/`，与业务项目完全解耦。

## 作用

对 `Script/Package/<Name>/System/System_*.lua` 文件做静态扫描，检测"违反私有表访问规范"的情况：
1. **禁止直接 table[i] 索引** 私有表（`forbid_table_index`）
2. **禁止直接读取** 私有字段（`forbid_field_read`）
3. **禁止用 # 取** 私有表长度（`forbid_table_length`）

## 部署位置

```
TestHelper/
├── CodeNormKit_Runner.ps1                   # 唯一启动器（双击即跑）
└── CodeNormKit/
    ├── init.lua                             # 主入口：两步注册 + Run/PrintReport
    ├── rules.lua                            # 三个内置规则工厂
    ├── parser.lua                           # 文件 IO + 字符串工具（纯 Lua 标准库）
    │
    ├── demo/                                # 自带 fixture（验证 Kit 自身正确性 + 用法示例）
    │   ├── Run_Demo.lua                     # demo 入口（4 用例）
    │   ├── System_Task_Bad.lua              # 6 处违规样本
    │   ├── System_Task_Clean.lua            # 0 违规样本
    │   ├── System_Task_Comment.lua          # 注释豁免样本
    │   ├── System_Player_Bad.lua            # 多 owner 样本（7 处违规）
    │   ├── Task_Privates.lua                # Task 包私有声明
    │   └── Multi_Privates.lua               # 多 owner 私有声明
    │
    └── testsuite/                           # 业务包用例（日常检测用）
        ├── Run_All.lua                      # 唯一 Lua 入口
        ├── Cases/
        │   └── Index.lua                    # 手动 require 注册表（新增被测包改这里）
        └── registry/
            └── CountDown.lua
```

> **demo/ 与 testsuite/ 的区别**
>
> | 入口 | 跑什么 | 用途 |
> |------|--------|------|
> | `demo/Run_Demo.lua` | 4 个 Kit 自带 fixture | 验证 Kit 规则 + 用法示例 |
> | `testsuite/Run_All.lua` | 业务包（如 CountDown） | 业务包日常 Lint |
>
> 两者互不耦合——demo 不出现在 Run_All，业务包不出现在 demo。

## 配置

CodeNormKit 通过两条途径拿到"被测业务项目根"：

1. **`init.lua` 顶部常量 `M.PROJECT_ROOT`** — 默认值写在那里，直接改一行即可（推荐）
2. **`CodeNormKit_Runner.ps1` 顶部变量 `$PROJECT_ROOT`** — 启动器用此值设置 cwd 与 package.path

两条必须指向同一个项目根（Withdraw）。

## 用法

### 模式 A：两步注册（推荐，跨项目友好）

**第一步：注册被测包**——按绿洲惯例推导路径，也可显式覆盖：

```lua
local CodeNorm = require("init")                          -- CodeNormKit/init.lua

-- 业务包（按惯例推导）
CodeNorm.RegisterPackage("CountDown")
-- 默认推导:
--   systemDir    = Script/Package/CountDown/System
--   privatesPath = Script/Package/CountDown/Package_Meta.lua

-- fixture 包（opts 覆盖路径）
CodeNorm.RegisterPackage("Task", {
    systemDir    = "TestHelper/CodeNormKit/demo",
    privatesPath = "TestHelper/CodeNormKit/demo/Task_Privates.lua",
})
```

**第二步：注册测试期望**——声明某个 system 文件期望有多少违规：

```lua
CodeNorm.Expect("CountDown", "System_CountDown.lua", { count = 4 })
CodeNorm.Expect("Task",      "System_Task_Bad.lua",  { count = 6 })
```

**第三步：跑 + 打印**：

```lua
local results = CodeNorm.Run()
CodeNorm.PrintReport(results)
os.exit(results.allOk and 0 or 1)
```

### 模式 B：即兴单文件扫描

不注册，直接对一个文件做扫描：

```lua
local violations = CodeNorm.RunLint(
    "Script/Package/MyPkg/System/System_MyPkg.lua",
    "Script/Package/MyPkg/Package_Meta.lua"
)
for _, v in ipairs(violations) do
    print(string.format("L%d [#%s]: %s", v.line, v.rule, v.text))
end
```

## API 总览

| 函数 | 用途 |
|------|------|
| `RegisterPackage(name, opts?)` | 注册包；opts 可覆盖 `systemDir` / `privatesPath` |
| `Expect(pkgName, sysFile, opts?)` | 注册期望；opts.count 期望违规数；nil 表示只跑不断言 |
| `ClearRegistry()` | 清空所有注册 |
| `Run(projectRoot?)` | 跑所有期望，返回 `{ allOk, total, pass, fail, cases[] }` |
| `PrintReport(results)` | 友好打印报告 |
| `RunLint(target, privates, root?)` | 即兴单文件入口 |
| `CountViolations(target, privates, root?)` | 即兴只取数量 |
| `getProjectRoot()` | 返回 `M.PROJECT_ROOT` 常量 |
| `PROJECT_ROOT` | 业务项目根（Lua 常量，修改此处即可换被测项目） |

## violation 结构

每条违规：
```lua
{ line = 37, text = "    local len = #CountDown.Tasks", rule = "forbid_table_length" }
```

## 报告示例（FAIL 时）

```
▶ [CountDown::System_CountDown.lua] CountDown / System_CountDown.lua   ✗ FAIL
  target:   Script/Package/CountDown/System/System_CountDown.lua
  privates: Script/Package/CountDown/Package_Meta.lua
  期望违规: 5  实际: 4
  ────────────────────────────────────────────────────────────────────────
  L  61 [#forbid_table_index]   禁止直接索引私有表
         local milestone = Config_CountDown.Milestones[g_currentIndex]
  L  63 [#forbid_field_read]    禁止直接读取私有字段
         System_CountDown._OnMilestoneReached(milestone.name)
  L  62 [#forbid_field_read]    禁止直接读取私有字段
         if milestone and g_elapsedTime >= milestone.threshold then
  L  65 [#forbid_table_length]  禁止用 # 取私有表长度
         if g_currentIndex >= #Config_CountDown.Milestones then
  ────────────────────────────────────────────────────────────────────────
```

规则名稳定可跨项目对比。中文描述表 `CodeNorm.RULE_DESCRIPTIONS` 与 `rule` 字段解耦——
跨项目移植时如果不需要中文描述，可自行覆盖该表（或保持空表，仍能打印规则名 + 代码）。

## 准备私有声明表

每个被测包需要 `Package_Meta.lua`（沿用绿洲惯例，命名就是 `Package_Meta.lua`），声明哪些 table + field 是私有的：

```lua
-- Script/Package/MyPkg/Package_Meta.lua
return {
    {
        owner = "MyPkg",
        privateTables = {
            { name = "PrivateTasks", fields = { "secret", "score" } },
        },
    },
}
```

## 运行

### testsuite/ — 业务包日常检测

通过 `CodeNormKit_Runner.ps1` 启动（最简方式）：

```powershell
# 双击，或：
powershell -File "TestHelper\CodeNormKit_Runner.ps1"
```

只跑某个包：

```powershell
powershell -File "TestHelper\CodeNormKit_Runner.ps1" CountDown
```

直接调 lua（需手动切到业务项目根并设置 LUA_PATH）：

```bash
cd /d "E:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\UGCProjects\Withdraw"
lua TestHelper/CodeNormKit/testsuite/Run_All.lua
lua TestHelper/CodeNormKit/testsuite/Run_All.lua CountDown
```

### demo/ — 验证 Kit 自身

```bash
cd /d "E:\Project\AgentHelper\WithDrawCache"
lua TestHelper/CodeNormKit/demo/Run_Demo.lua
```

跑 4 个用例：Task Bad（6 违规）、Task Clean（0）、Task Comment 豁免（0）、Player 多 owner（7 违规）。

### testsuite/ 新增被测包（2 步）

1. 在 `TestHelper/CodeNormKit/testsuite/registry/` 下加一个 `<Pkg>.lua`：

```lua
package.path = package.path .. ";./TestHelper/CodeNormKit/?.lua"
local CodeNorm = require("init")

CodeNorm.RegisterPackage("Pkg")
CodeNorm.Expect("Pkg", "System_Pkg.lua", { count = 0, label = "Pkg / System_Pkg.lua" })
```

2. 在 `TestHelper/CodeNormKit/testsuite/Cases/Index.lua` 加一行 `require`：

```lua
require("registry.Pkg")
```

完成。无需改 ps1。

## require 约定

CodeNormKit 内部 100% 用**纯文件名** require：

```lua
local CodeNorm = require("init")        -- init.lua
local parser   = require("parser")      -- parser.lua
local rules    = require("rules")       -- rules.lua
```

各入口文件（`Run_All.lua` / `Run_Demo.lua` / `cases/*.lua` / `registry/*.lua`）顶部都加了：

```lua
package.path = package.path .. ";./TestHelper/CodeNormKit/?.lua" .. ";./?.lua"
```

`CodeNormKit_Runner.ps1` 额外把 `testsuite/` 与 `demo/` 也加进 `package.path`，所以 `registry.CountDown` 这类跨子目录 require 也能解析。

## 依赖

- 纯 Lua 5.1+ 标准库，无外部依赖
- 仅用于本地 lint 验证，不参与游戏运行时
