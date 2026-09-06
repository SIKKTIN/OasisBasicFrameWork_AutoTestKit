# 开发、测试与调试指导

本文说明 Withdraw 项目在功能开发过程中如何使用三套内置调试工具：

- DebugKit：用检测线记录运行节点、执行端、耗时和错误。
- AutoTestKit：用 Suite、Case 和断言完成自动化测试与功能验收。
- CommandSystem：用开发指令快速构造状态、触发行为和读取诊断结果。

三者不是互相替代的工具。Command 负责“让场景出现”，DebugKit 负责“看清过程”，AutoTest 负责“证明结果”。架构边界和自动装配方式见 [项目架构思想](./Project_Architecture.md)。

---

## 核心原则

功能开发不能以“代码写完”作为完成标准。一个功能至少要经过：

```text
明确验收条件
      ↓
实现 Registry / Query / System
      ↓
Command 构造场景 ──► DebugKit 观察链路
      ↓
AutoTest 断言结果与回滚
      ↓
RPC / UI 最小人工回归
      ↓
相关 Suite 与全量回归通过
```

推荐把 AutoTest Suite 与功能代码一起设计、一起提交。特别是物品、货币、存档、奖励、等级、制作等会修改玩家状态的功能，自动化用例应成为验收依据，而不是开发完成后的可选补充。

---

## 三种工具的职责

| 工具 | 解决的问题 | 适合场景 | 不能替代 |
|------|------------|----------|----------|
| DebugKit | 代码是否经过预期节点，发生在哪一端，顺序和耗时是否合理 | 生命周期、客户端/服务端链路、事件链、偶发漏调用 | 精确状态断言 |
| AutoTestKit | 输入执行后，状态和返回值是否符合验收条件 | 查询、事务、权限、回滚、幂等、回归测试 | 复杂交互体验和画面检查 |
| CommandSystem | 如何快速构造状态、触发功能和获取诊断信息 | GM 调试、边界值复现、服务端行为触发 | 自动验收结论 |

选择原则：

- 需要确认结果对不对：先写 AutoTest。
- 结果不对但不知道链路断在哪里：加 DebugKit。
- 前置状态难以手工构造或需要反复触发：加 Command。
- 涉及 UI、RPC、服务端事务：三者组合使用，并保留最小人工回归。

---

## 推荐开发流程

### 1. 先写验收矩阵

开发前把需求转换为可验证条件。至少考虑：

| 类型 | 需要回答的问题 |
|------|----------------|
| 正常路径 | 正确输入时返回什么，哪些状态精确变化？ |
| 参数校验 | 空对象、非法 ID、零数、负数、小数如何处理？ |
| 权限 | 客户端能否直接执行服务端写操作？ |
| 资源不足 | 材料、货币、容量不足时是否保持原状态？ |
| 部分完成 | API 是否允许部分变化，实际变化量如何返回？ |
| 中途失败 | 扣除、发放、保存失败后能否完整回滚？ |
| 生命周期 | 重复 BeginPlay、重复绑定、重生后是否重复执行？ |
| 事件 | 成功和失败各发送几次，参数是否正确？ |
| RPC / UI | RPC 是否仍兼容，UI 是否只在正确时机刷新？ |

这些条件应优先变成 AutoTest Case；无法自动断言的视觉和交互项才进入人工检查清单。

### 2. 实现稳定公共入口

测试业务能力时优先调用 Package Registry 或 Core 公共入口，不直接调用 Package 私有 System、Query、Data。这样测试覆盖的是外部真实契约，内部重构后仍能保留。

### 3. 为复杂链路添加检测线

跨客户端/服务端、跨生命周期或依赖多个事件的流程，在关键边界记录 DebugKit 节点。不要给每个函数都打点，只记录能够判断“开始、关键分支、提交、完成、失败”的节点。

### 4. 为难复现场景添加指令

需要重复设置等级、物品、配置或触发入口时，使用 CommandSystem 提供开发指令。指令处理函数仍应调用正式 Registry API，不复制一套调试专用业务逻辑。

### 5. 编写并运行 AutoTest

先运行单个 Case 定位，再运行整个 Suite 验证清理和 Case 组合，最后运行受影响的其他 Suite。新增或移动 Suite 后先用 GenKit 更新索引。

### 6. 完成人工回归

自动测试通过后，再检查蓝图 RPC、按钮、颜色、提示、动画、音效等无法由当前 Suite 完整覆盖的表现。人工回归不能替代对状态和事务的自动断言。

---

## AutoTestKit：自动化测试与验收

AutoTestKit 位于 `Script/Core/AutoTestKit/`，测试 Suite 位于 `Script/Config/AutoTestSuite/`。运行时通过生成的 `Script/Setting/AutoTestSuiteIndex.lua` 加载 Suite，不扫描磁盘。

### 公共入口

```lua
Global_AutoTestKit.RunAll(playerController)
Global_AutoTestKit.RunSuite(playerController, "MakeUp")
Global_AutoTestKit.RunSingleCase(
    playerController,
    "MakeUp",
    "材料检查_足够与不足"
)
Global_AutoTestKit.Stop()
Global_AutoTestKit.IsRunning()
Global_AutoTestKit.GetProgress()
Global_AutoTestKit.GetSuiteDescriptors()
```

`BeginPlay` 和 `Tick` 已由 Core 生命周期自动接入。GM UI 可以运行全部或指定 Suite，并通过服务端 RPC 启动测试。

### Suite 标准结构

```lua
local Registry_Example = require(
    "Script.Package.Example.Registry_Example"
)

local baseline

return {
    name = "Example",

    setup = function(pc)
        baseline = Registry_Example.GetState(pc)
    end,

    cases = {
        {
            name = "查询_有效ID返回记录",
            run = function(pc)
                local record = Registry_Example.GetRecord(1001)
                return TAssert.is_not_nil(record, "有效 ID 应返回记录")
            end,
        },
        {
            name = "写入_成功后精确变化",
            run = function(pc)
                local before = Registry_Example.GetCount(pc)
                local ok, actual = Registry_Example.Add(pc, 2)

                TAssert.is_true(ok, "添加应成功")
                TAssert.equals(2, actual, "实际变化量应为 2")
                TAssert.equals(
                    before + 2,
                    Registry_Example.GetCount(pc),
                    "最终数量应精确增加"
                )
            end,
        },
    },

    teardown = function(pc)
        Registry_Example.RestoreState(pc, baseline)
        baseline = nil
    end,
}
```

### Case 设计规则

- 一个 Case 只验证一个清晰行为，名称使用“场景_期望结果”。
- 对外 API 的返回值和最终状态都要断言，不能只检查其中一个。
- 写操作记录调用前状态，再比较调用后的精确差值。
- 失败用例必须断言状态没有改变。
- 事务用例必须覆盖每一个可能中断的位置及补偿结果。
- 权限用例要证明非法运行端不会修改状态。
- 事件和 UI 刷新要断言次数，避免重复绑定或无条件刷新。
- Case 尽量互相独立，不依赖前一个 Case 已经成功执行。
- 每个 Case 至少调用一次 `TAssert`；当前 Runner 会把“未调用断言且无异常”视为通过，这不能作为有效验收。

单一断言可以直接 `return TAssert.*`。包含多个断言时，可以不显式返回；Runner 会读取本 Case 的断言状态，并保留首个失败结果。不要只返回最后一个断言，否则可能掩盖前面的失败。

当前可用断言：

```lua
TAssert.equals(expected, actual, message)
TAssert.not_equals(expected, actual, message)
TAssert.is_true(value, message)
TAssert.is_false(value, message)
TAssert.is_not_nil(value, message)
TAssert.is_nil(value, message)
TAssert.greater_than(expected, actual, message)
TAssert.error(function() ... end, message)
```

### Setup 与 Teardown

`setup` 用于准备前置状态，`teardown` 用于恢复测试前状态。

推荐顺序：

```text
setup：保存原始状态 → 准备最小前置条件
case：执行一次行为 → 断言返回值 → 断言最终状态
teardown：恢复原始状态 → 必要时保存恢复后的数据
```

注意当前 Runner 行为：

- 运行完整 Suite 或全部 Suite 时会执行 setup 和 teardown。
- 运行单个 Case 时会执行 setup，但不会执行 teardown，以便继续手工观察。
- setup、teardown 当前通过 `pcall` 调用，其异常不会自动记录为 Case 失败。
- 关键前置条件必须在 Case 中再次断言；清理函数必须幂等。
- 单 Case 调试结束后，需要手工恢复状态，或再运行完整 Suite 触发 teardown。

会修改玩家数据的 Suite 应保存测试前快照，并只恢复自己修改的字段。不要用整表覆盖破坏其他 Suite 或玩家当前状态。

### 异步与数据同步

AutoTestKit 通过 Tick 队列逐项执行：

- setup、teardown 后默认等待 1 秒。
- Case 之间默认等待 3 秒。
- 等待时间来自 `Config_AutoTestKit.lua`。

测试不能假设同一帧内所有客户端复制、UI 刷新和存档回调都已完成。需要验证延迟结果时，应把操作和观察拆成可稳定执行的步骤；不要在 Case 内创建无边界的等待。

### 推荐的验收覆盖

对一个带服务端写入的 Package，建议至少包含：

1. 配置和只读查询。
2. 正常写入及精确变化量。
3. 非法参数。
4. 客户端越权调用。
5. 资源不足和容量不足。
6. 部分完成语义。
7. 中途失败与完整回滚。
8. 存档失败与补偿保存。
9. 重复初始化和重复绑定。
10. RPC、事件及 UI 刷新次数。

不是每个功能都需要十类 Case，但被明确排除的场景应写在验收说明中。

### 新增 Suite

1. 在 `Script/Config/AutoTestSuite/` 创建 `Suite_<Feature>.lua`。
2. 返回包含唯一 `name` 和 `cases` 的表。
3. 使用 Registry 或 Core 公共入口编写 Case。
4. 运行 GenKit 的“生成 AutoTestSuite 索引”。
5. 确认 `Script/Setting/AutoTestSuiteIndex.lua` 出现新路径。
6. 依次运行单 Case、完整 Suite、相关回归 Suite。

新增、移动或删除 Suite 后，如果提示“套件未注册”，先检查生成索引是否更新，不要在运行时代码中手工 require Suite。

---

## DebugKit：检测线调试

DebugKit 位于 `Script/Core/DebugKit/`。检测线定义在 `Script/Const/Core/Const_DebugKit.lua`，GenKit 扫描 `Global_DebugKit.Log` 调用后生成 `Script/Setting/DebugKitPrediction.lua`。

检测线适合回答：

- 客户端和服务端是否都经过了预期节点？
- 生命周期节点是否缺失、重复或顺序异常？
- 玩家专属流程是否记录到了正确 playerKey？
- 某一步之后是否出现了明确错误？
- 实际节点数量是否与静态预测一致？

### 定义检测线

```lua
Const_DebugKit.Lines.FEATURE_FLOW = {
    id = 1003, -- 使用项目内唯一 ID
    name = "FeatureFlow",
    type = Const_DebugKit.LineType.PLAYER,
}
```

- `GAME` 检测线记录全局流程，不接受 playerKey。
- `PLAYER` 检测线按玩家隔离，必须提供 playerKey；客户端可以解析本地玩家。
- ID 和 name 都必须唯一。

### 记录节点

```lua
local lineID = Global_DebugKit.ID.FEATURE_FLOW
local playerKey = UGCGameSystem.GetPlayerKeyByPlayerController(pc)

Global_DebugKit.EnsureStarted(lineID, playerKey)

Global_DebugKit.Log(
    lineID,
    "服务端校验开始",
    Global_DebugKit.Target.SERVER,
    playerKey
)

if not valid then
    Global_DebugKit.LogError(
        lineID,
        "服务端校验失败: " .. tostring(message),
        Global_DebugKit.Target.SERVER,
        playerKey
    )
end
```

`Target.CLIENT`、`Target.SERVER`、`Target.BOTH` 表示节点设计上应在哪一端出现；DebugKit 还会记录实际执行端。节点名应稳定并描述业务阶段，不要拼入每次变化的数量或对象地址。

`Start` 会重新启动并清空已有记录；`EnsureStarted` 已启动时不会清空，适合可能被多处进入的流程。

### 生成预测配置

新增、删除或移动 `Global_DebugKit.Log` 调用后，运行 GenKit 的“调试与运行配置”预设，或详细模式中的“生成 DebugKit 预测配置”。

预测配置记录每条检测线在客户端、服务端应出现的静态节点数量。数量匹配只能证明节点完整性，不能证明业务结果正确；最终状态仍由 AutoTest 断言。

### 查看检测线

当前 DebugKit 已接入 CommandSystem：

```text
cmd -s default -t both -DebugKit -Sum "PlayerLifecycle"
cmd -s default -t both -DebugKit -Errors "PlayerLifecycle"
cmd -s default -t both -DebugKit -Clear "PlayerLifecycle"
```

- `Sum` 输出节点明细、耗时以及预测数与实际数。
- `Errors` 输出累计错误；省略检测线名称时汇总当前活动检测线。
- `Clear` 清除指定检测线。

验收复杂流程时，应同时满足：

- 关键节点顺序合理。
- 客户端、服务端节点数量与预测一致。
- Error 汇总为零。
- 对应 AutoTest 状态断言通过。

---

## CommandSystem：指令调试

CommandSystem 位于 `Script/Core/CommandSystem/`，命令配置位于 `Script/Config/Command/`。GenKit 根据配置生成：

```text
Script/Setting/CommandConfigIndex.lua
Script/Setting/CommandList.lua
```

### 指令格式

```text
cmd -s <解释器> -t <client|server|both> -<命名空间> -<动作> [参数...]
```

例如：

```text
cmd -s default -t both -DebugKit -Sum
cmd -s default -t server -Example -SetCount 10
```

- `-s default` 使用默认解释器。
- `-t` 选择执行端；省略时使用命令配置的 `defaultTarget`。
- 未加引号的 `true`、`false` 和数字会自动转换类型。
- 需要保留为空格字符串或数字字符串时使用引号。

### 新增命令

```lua
local Registry_Example = require(
    "Script.Package.Example.Registry_Example"
)

return {
    namespace = "Example",

    commands = {
        SetCount = {
            describe = "设置调试场景所需数量",
            argDescribe = "正整数数量",
            argExamples = { "10" },
            defaultTarget = "Server",
            allowedTargets = {
                Server = true,
            },
            minArgs = 1,
            maxArgs = 1,
            validate = function(args)
                local count = args[1]
                return type(count) == "number"
                    and count > 0
                    and count % 1 == 0,
                    "count 必须是正整数"
            end,
            handler = function(context, count)
                return Registry_Example.SetCount(
                    context.playerController,
                    count
                )
            end,
        },
    },
}
```

命令规则：

- Handler 只调用正式 Registry 或 Core 公共 API，不直接改 Package 私有表。
- 服务端写操作只允许 `Server`，不要为了方便开放 `Client` 或 `Both`。
- 参数在 `validate` 中完整校验，Handler 仍保留正式业务校验。
- 指令应可重复执行、结果可读，并避免不可恢复的大范围修改。
- 新增命令配置后运行 GenKit 的“调试与运行配置”预设，更新命令索引和清单。

### 权限与发布安全

当前 `Config_CommandSystem.CanExecute` 默认返回 `true`。正式发布前必须至少完成一项：

- 关闭 CommandSystem。
- 增加开发环境判断。
- 增加 UID 或权限白名单。

客户端发起的服务端指令会通过 `Server_ExecuteDevCommand` RPC 转发，服务端仍必须重新鉴权和校验。不要把 CommandSystem 当作可信输入源。

Command 的成功只表示 Handler 被成功调用，不代表功能验收通过。执行指令后应通过查询、DebugKit 或 AutoTest 确认结果。

---

## 三种工具的组合方式

### 事务型功能

```text
Command：准备物品、货币或等级
DebugKit：记录校验、扣除、发放、保存、回滚节点
AutoTest：断言返回值、实际变化量和失败后完整状态
```

重点覆盖正常提交和每一个失败注入点。

### 客户端/服务端链路

```text
Command：从客户端触发入口
DebugKit：确认 Client → RPC → Server → Event → Client 节点
AutoTest：服务端断言权威状态和事件次数
人工回归：检查 UI 表现
```

### 配置驱动功能

```text
Command：重载或切换测试场景
DebugKit：记录配置来源、加载成功和无效记录
AutoTest：断言默认值、外部覆盖、非法字段和回退结果
```

---

## 失败定位顺序

AutoTest 失败时按以下顺序排查：

1. 先看失败 Case 的 message、expected、actual。
2. 确认 Suite 索引是否为最新，Case 是否实际执行。
3. 确认 setup 前置条件和运行端是否正确。
4. 用 Command 重建最小失败场景。
5. 查看 DebugKit Sum，寻找缺失、重复或运行端错误的节点。
6. 查看 DebugKit Errors 和客户端、服务端日志。
7. 修复后先重跑单 Case，再跑完整 Suite。
8. 最后运行相关 Suite，确认没有回归。

不要通过放宽断言、增加任意等待或依赖 Case 执行顺序来“修复”测试。

---

## 功能验收标准

一个功能可以标记为完成时，应满足：

- 公共 API、参数、权限和返回语义已明确。
- 正常、失败、边界和回滚 Case 已自动化。
- AutoTest 单 Suite 全部通过。
- 受影响的关联 Suite 通过。
- DebugKit 关键检测线无缺失、重复和累计错误。
- Command 能稳定复现需要人工观察的场景。
- RPC 和 UI 完成最小人工回归。
- 测试造成的数据变化已经恢复。
- GenKit 重跑无额外漂移。
- 日志中没有未处理异常或持续报错。

验收记录建议使用：

```text
功能：
变更范围：
AutoTest Suite：
通过 Case：
失败/跳过 Case：
DebugKit 检测线：
Command 复现指令：
人工回归项：
已知限制：
```

---

## 变更历史

| 版本 | 日期 | 说明 |
|------|------|------|
| 1.0 | 2026-09-03 | 建立 DebugKit、AutoTestKit、CommandSystem 的开发测试与调试流程。 |
