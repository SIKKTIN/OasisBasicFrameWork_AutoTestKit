# OasisBasicFrameWork_AutoTestKit

面向绿洲启元编辑器 UGC 项目的通用 Lua 框架与开发辅助工具。日常通过 Skill 完成项目理解、环境检测和框架部署；GenKit、PackageKit、模板和文档为这些流程提供支持。

## 先选择需要的 Skill

| 你的需求 | Skill | 执行结果 |
| --- | --- | --- |
| 新对话开始前，让 AI 了解项目，再接续开发 | [oasis-project-init](.agents/skills/oasis-project-init/SKILL.md) | 阅读文档、约定和进度，核对相关实现，说明当前理解 |
| 初次了解这套框架，或查询工具用途 | [oasis-introduce](.agents/skills/oasis-introduce/SKILL.md) | 介绍架构、模块职责、工具和文档入口 |
| 检查项目目录、Lua 解释器等配置 | [oasis-environment](.agents/skills/oasis-environment/SKILL.md) | 按必需与可选分类报告配置状态，引导补全必需项 |
| 向已创建的空白 UGC 工程接入框架 | [oasis-project-deploy](.agents/skills/oasis-project-deploy/SKILL.md) | 先预检，用户确认后完整部署并完成实际启动验收 |

**初始化用于建立当前对话的项目上下文；部署用于把框架接入工程。** 每个新对话开始工作前使用初始化；只有需要接入框架时才使用部署。介绍和环境检测按需调用，无需每次执行全部 Skill。

## 如何使用

在对话中选择对应 Skill，并附上任务和必要路径。下面的 `$skill-name` 是显式调用示例，工程路径仅作示例，请替换为实际目录。

### 新对话：初始化项目上下文

```text
$oasis-project-init
目标项目：E:\UGCProjects\MyGame
先阅读项目文档、开发约定和当前进度，结合相关实现，告诉我你对项目的理解。
```

也可以把后续任务一起说明：

```text
$oasis-project-init
目标项目：E:\UGCProjects\MyGame
先了解项目，然后检查玩家存档加载流程是否存在问题。
```

Skill 会先读文档，再核对相关代码和现有修改，简要说明架构规则、当前状态和不确定项。仅要求初始化时只读并汇报；已明确后续任务时，建立上下文后继续该任务。目标目录可在当前工作目录能够唯一确定时省略；Lua、CSV 和 MCP 未配置不影响本地上下文阅读。

### 初次了解：介绍框架与工具

```text
$oasis-introduce
介绍这套框架的 Core、Package、数据与事件如何组织，以及 GenKit、PackageKit 分别在什么时候使用。
```

可只问一个模块或工具。该 Skill 读取现有文档与必要实现，不要求先完成环境配置。

### 配置检查：检测环境

```text
$oasis-environment
检查当前 setting.json 中的环境配置，告诉我哪些可用、哪些需要补全。
```

检测范围仅包括以下三项：

| 类别 | 配置 | 要求 |
| --- | --- | --- |
| 必需 | `projectRoot` | 目标项目根目录存在且可访问 |
| 必需 | `luaPath` | Lua 解释器存在，且有限时执行验证为 Lua 5.4 |
| 可选 | `dataTableCsvRoot` | 配置后检查目录是否可用；缺失不阻断必需项通过 |

默认只检查。需要补全或切换配置时，明确提供新路径，例如：

```text
$oasis-environment
把目标项目切换到 E:\UGCProjects\MyGame，Lua 解释器使用 D:\dev\Lua\lua54.exe，更新配置并检查。
```

### 空白工程：部署框架

先在编辑器创建并打开目标空白 UGC 工程，准备 Lua 5.4 和可连接该工程的编辑器 MCP 服务，再调用：

```text
$oasis-project-deploy
目标项目：E:\UGCProjects\MyGame
请先预检并展示结果。选装 GM，不安装 AttributeSystem 和 SkillSystem。
```

部署分为两阶段：

1. **只读预检并等待确认。** 展示目标工程、MCP 实际连接与当前工程、Lua 验证结果、模板及入口检查、冲突和完整部署计划。用户查看报告并明确确认后，才开始修改。
2. **完整部署与验收。** 项目外备份、部署 Core 和基础文件、按 JSON 创建 UI 表、创建并挂载玩家属性组件、同步实际 GameMode / GameState / PlayerController / Pawn 入口、运行 GenKit 生成注册清单，最后新启动 PIE 验证并清理临时探针。

只提供完整接入流程。**初次调用不代替看过预检报告后的确认**；同一确认范围内不逐步重复询问。仅想查看方案时，在请求中注明“仅计划”。JSON 建表无需 CSV。

以下内容包独立选装，未指定时不安装：

| 可选包 | 提供的能力 | 默认内容 |
| --- | --- | --- |
| [GM](Templates/framework-gm/README.md) | 开发面板、诊断指令、自动测试入口和控制器 RPC 适配 | 通用开发工具 |
| [AttributeSystem](Templates/framework-attribute/README.md) | 可配置属性持久化与 Pawn 同步 | 空属性配置，保留编辑器数值，不强制满血 |
| [SkillSystem](Templates/framework-skill/README.md) | 技能注册、状态存档、实例管理和重生恢复 | 空技能注册表，不携带默认技能或业务资源 |

部署使用本次明确指定的目标工程，不修改工具的 `setting.json`。模板范围、运行契约与验证状态见 [framework-base 说明](Templates/framework-base/README.md)。

## 让 Skill 在其他项目中可用

Skill 源文件统一维护在本仓库 `.agents/skills/`。在本仓库及其子目录中工作时使用仓库级技能；在其他工程中使用时，将需要的技能目录链接到用户级 `~/.agents/skills/`，让链接仍指向本仓库源目录。

Windows 可使用目录联接。例如，在 PowerShell 中为对话初始化 Skill 建立链接（按实际位置修改 `$repoRoot`；已存在同名目录时先检查其目标）：

```powershell
$repoRoot = 'E:\Project\AgentHelper\WithDrawCache\TestHelper'
$userSkills = Join-Path $env:USERPROFILE '.agents\skills'
New-Item -ItemType Directory -Path $userSkills -Force | Out-Null
New-Item -ItemType Junction `
    -Path (Join-Path $userSkills 'oasis-project-init') `
    -Target (Join-Path $repoRoot '.agents\skills\oasis-project-init')
```

其他三个 Skill 同样按各自名称建立链接。移动仓库后需更新链接目标；技能通过真实路径定位工具仓库。Codex 会自动检测技能变化，未出现时先检查目录、SKILL.md 和链接目标，再尝试重启。发现路径与调用方式参考 [OpenAI 官方 Skill 文档](https://learn.chatgpt.com/docs/build-skills)。

## 工具配置与手动运行

以下入口用于手动操作工具，不是每次对话初始化的前置步骤。

[setting.json](setting.json) 保存本机目标项目、Lua 和可选 CSV 路径，其余字段为默认相对路径。工具根目录由 `ExternalConfig/config.lua` 自动定位，无需手动设置 `testHelperRoot`。

从本机 `TestHelper` 的父目录运行以下命令；`lua54` 需已加入 PATH，也可以替换为 `luaPath` 指向的可执行文件（PowerShell 使用 `& '解释器完整路径'` 调用）。仓库目录名不同时相应调整命令。

| 用途 | 命令 |
| --- | --- |
| 打开 GenKit 生成控制台 | `lua54 TestHelper\GenKit\Run_Console.lua` |
| 打开 PackageKit 规范检查控制台 | `lua54 TestHelper\PackageKit\Run_Console.lua` |
| 检查 CSV 与表常量生成 | `lua54 TestHelper\GenKit\Tests\Test_TableConsts.lua` |
| 检查常量名称大小写规则 | `lua54 TestHelper\GenKit\Tests\Test_TableConstNameCase.lua` |

GenKit 测试不写入生成文件；`Test_TableConsts.lua` 需要配置中的目标项目及已登记的 CSV 可读；无表声明时验证空预览，大小写测试使用内存数据。详细生成能力见 [GenKit 说明](GenKit/README.md)。业务回归在目标项目的 AutoTestKit 中执行，见 [开发、测试与调试指导](Docs/framework/Development_Test_Debug_Guide.md)。

## 目录与文档入口

| 目录 | 内容 |
| --- | --- |
| [.agents/skills/](.agents/skills/) | 四个 Skill 的指令与配套参考 |
| [Templates/](Templates/) | 必需框架模板、独立可选包、资产定义及模板自身测试 |
| [GenKit/](GenKit/) | 注册表、索引、数据常量与事件等代码生成工具 |
| [PackageKit/](PackageKit/) | Package 规范检查及编辑器资产操作辅助脚本 |
| [ExternalConfig/](ExternalConfig/) | 共享路径配置加载 |
| [Docs/framework/](Docs/framework/README.md) | 通用框架架构、Package 规范和开发指南 |
| [Docs/](Docs/OasisGuide.md) | 绿洲编辑器教程、API 与 LuaHelper 资料导航 |

框架规范从 [项目架构思想](Docs/framework/Project_Architecture.md) 开始；编写业务包时参阅 [Package 目录规范](Docs/framework/Package_Structure.md)、[Meta 契约](Docs/framework/Package_Meta.md) 和 [DataCore 指导](Docs/framework/DataCore_Guide.md)。
