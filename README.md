# OasisBasicFrameWork_AutoTestKit

面向绿洲启元编辑器 UGC 项目的通用 Lua 框架与开发辅助工具。通过 Skill 完成项目理解、文档维护、环境检测、框架初装和可选包增装；GenKit、PackageKit、模板和统一规范为这些流程提供支持。

## 先选择需要的 Skill

| 你的需求 | Skill | 执行结果 |
| --- | --- | --- |
| 新对话开始前，让 AI 了解项目，再接续开发 | [oasis-project-init](.agents/skills/oasis-project-init/SKILL.md) | 阅读文档、约定和进度，核对相关实现，说明当前理解 |
| Oasis 项目日常开发时维护文档，或建立、整理项目资料 | [oasis-document](.agents/skills/oasis-document/SKILL.md) | 主动匹配开发事项，维护计划、设计与内容、实施结果和进度索引 |
| 初次了解这套框架，或查询工具用途 | [oasis-introduce](.agents/skills/oasis-introduce/SKILL.md) | 介绍架构、模块职责、工具和文档入口 |
| 检查项目目录、Lua 解释器等配置 | [oasis-environment](.agents/skills/oasis-environment/SKILL.md) | 按必需与可选分类报告配置状态，引导补全必需项 |
| 向空白工程首次部署框架 | [oasis-project-deploy](.agents/skills/oasis-project-deploy/SKILL.md) | 先预检，用户确认后完整部署，可同时选装内容包 |
| 为已有基础框架的工程增装可选包 | [oasis-package-deploy](.agents/skills/oasis-package-deploy/SKILL.md) | 检查依赖与冲突，保留业务配置，增量接入并完成实际启动验收 |

**初始化负责理解项目，文档维护跟随日常开发，部署负责接入框架或可选包。** 新对话开始开发前使用初始化；开发中由 `oasis-document` 按任务匹配维护记录，也可显式调用。首次接入使用 `oasis-project-deploy`，已有基础框架后增装使用 `oasis-package-deploy`。介绍和环境检测按需调用，无需每次执行全部 Skill。

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

### 日常开发：维护项目文档

`oasis-document` 支持在已确定的 Oasis 功能开发、修复、优化和重构任务中主动选用，不必每次手动点名；也可以显式调用：

```text
$oasis-document
目标项目：E:\UGCProjects\MyGame
为本次任务整理开发计划，完成修改后同步相关设计、验证结果和进度。
```

规则读取仓库的 [Oasis 项目文档规范](Docs/framework/Project_Documentation_Guide.md)，不依赖外部文档 Skill。仅问答、只读检查和仅初始化不自动写文档；部署预检阶段仍须保持只读。主动选用不是后台文件监听，实际效果需在开发请求中观察。

维护顺序为：先查导航、相关设计和已有事项；实施前新增或接续计划；实施中记录实际调整；结束后补充验证结果、未完成项并更新进度。设计或具体内容发生变化时同步负责的文档，同一事项不重复建计划。小改动简写，不为套结构生成整套空文档。

### 项目文档放在哪里

以下默认路径相对于**目标 UGC 工程**，不是 TestHelper 工具仓库：

| 路径 | 内容 |
| --- | --- |
| `Docs/目录.md` | 项目文档导航、各分类的实际路径与阅读顺序 |
| `Docs/design/` | 项目设计、系统规则和玩法流程 |
| `Docs/content/` | 任务、物品、敌人、关卡等具体内容 |
| `Docs/dev/目录.md` | 开发事项、状态与记录链接，即项目进度入口 |
| `Docs/dev/` | 一件事项一份文档，合并计划、实施过程和验证结果 |
| `Docs/concepts/` | 按需保存概念图、草图与参考方案 |

已有 `docs`、`Docs/module`、`Docs/plan` 或等价导航时优先复用，在项目入口明确职责和路径；缺少资料时报告缺失，不把包 README 或模板说明当成完整项目设计。初始化保持只读，部署在预检确认后才建立必要导航并记录接入过程。实际实现、待实施计划和未验证范围分别说明。

TestHelper 自身的通用规范保存在 [Docs/framework/](Docs/framework/README.md)，框架开发进度保存在 [Docs/dev/目录.md](Docs/dev/目录.md)。目标项目的业务资料和部署记录仍写在目标工程，避免两处维护相同正文。

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

先在编辑器创建并打开目标空白 UGC 工程，准备 Lua 5.4，再调用下面的 Skill。编辑器 MCP 是完整部署的必需前提；尚未安装或配置时，Skill 会先检查状态，并按 [MCP 安装、配置与连接指导](.agents/skills/oasis-project-deploy/references/mcp-setup.md) 引导准备。只有验证实际连接目标工程后，才进入框架部署：

```text
$oasis-project-deploy
目标项目：E:\UGCProjects\MyGame
请先预检并展示结果。选装 GM，不安装 AttributeSystem、SkillSystem 和 TaskSystem。
```

部署先准备 MCP，再分为两阶段：

0. **MCP 环境检查与准备。** 区分未安装、未配置、服务未启动和编辑器连接问题，按已核实来源指导安装与配置，并实际读取工程上下文。需要修改环境时先展示具体改动并核对授权；MCP 准备完成不代表框架已部署。

1. **只读预检并等待确认。** 展示目标工程、MCP 实际连接与当前工程、Lua 验证结果、模板及入口检查、冲突和完整部署计划。用户查看报告并明确确认后，才开始修改。
2. **完整部署与验收。** 项目外备份、部署 Core 和基础文件、按 JSON 创建 UI 表、创建并挂载玩家属性组件、同步实际 GameMode / GameState / PlayerController / Pawn 入口、运行 GenKit 生成注册清单，最后新启动 PIE 验证并清理临时探针。

只提供完整接入流程。**初次调用不代替看过预检报告后的确认**；同一确认范围内不逐步重复询问。仅想查看方案时，在请求中注明“仅计划”。JSON 建表无需 CSV。

以下内容包独立选装，未指定时不安装：

| 可选包 | 提供的能力 | 默认内容 |
| --- | --- | --- |
| [GM](Templates/framework-gm/README.md) | 开发面板、诊断指令、自动测试入口和控制器 RPC 适配 | 通用开发工具 |
| [AttributeSystem](Templates/framework-attribute/README.md) | 可配置属性持久化与 Pawn 同步 | 空属性配置，保留编辑器数值，不强制满血 |
| [SkillSystem](Templates/framework-skill/README.md) | 技能注册、状态存档、实例管理和重生恢复 | 空技能注册表，不携带默认技能或业务资源 |
| [TaskSystem](Templates/framework-task/README.md) | 接取、累计目标、存档、领奖接口和基础任务面板 | 空任务配置；默认带 UI，可仅装逻辑；示例单独选择 |

部署使用本次明确指定的目标工程，不修改工具的 `setting.json`。模板范围、运行契约与验证状态见 [framework-base 说明](Templates/framework-base/README.md)。

### 已有框架：增装可选包

后续只添加选中的包时使用独立增装 Skill：

```text
$oasis-package-deploy
目标项目：E:\UGCProjects\MyGame
增装 TaskSystem，带基础 UI，不安装示例。先检查依赖、现有配置和冲突，展示增装方案。
```

支持上表四个可选包。Skill 核对实际入口、已有存档和生成清单，展示具体变更并核对授权后执行，保留现有业务配置。MCP 未就绪时先指导准备；基础框架不完整时列出差异，不静默重新安装。任务奖励接口需按项目接入，示例独立选择。流程和验收边界见 [可选包增装 Skill](.agents/skills/oasis-package-deploy/SKILL.md)。

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

其他 Skill 同样按各自名称建立链接。移动仓库后需更新链接目标；技能通过真实路径定位工具仓库。Codex 会自动检测技能变化，未出现时先检查目录、SKILL.md 和链接目标，再尝试重启。发现路径与调用方式参考 [OpenAI 官方 Skill 文档](https://learn.chatgpt.com/docs/build-skills)。

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
| [.agents/skills/](.agents/skills/) | 项目初始化、文档维护、介绍、环境检查、框架初装与可选包增装 Skill |
| [Templates/](Templates/) | 必需框架模板、独立可选包、资产定义及模板自身测试 |
| [GenKit/](GenKit/) | 注册表、索引、数据常量与事件等代码生成工具 |
| [PackageKit/](PackageKit/) | Package 规范检查及编辑器资产操作辅助脚本 |
| [ExternalConfig/](ExternalConfig/) | 共享路径配置加载 |
| [Docs/framework/](Docs/framework/README.md) | 通用框架架构、Package 规范和开发指南 |
| [Docs/dev/目录.md](Docs/dev/目录.md) | TestHelper 开发事项及进度、实施与验证记录 |
| [Docs/](Docs/OasisGuide.md) | 绿洲编辑器教程、API 与 LuaHelper 资料导航 |

框架规范从 [项目架构思想](Docs/framework/Project_Architecture.md) 开始；编写业务包时参阅 [Package 目录规范](Docs/framework/Package_Structure.md)、[Meta 契约](Docs/framework/Package_Meta.md) 和 [DataCore 指导](Docs/framework/DataCore_Guide.md)。

目标项目的设计、具体内容、开发计划、进度与验证记录按 [Oasis 项目文档规范](Docs/framework/Project_Documentation_Guide.md) 组织。规范由本仓库维护，不要求安装外部文档 Skill；已有项目优先复用现有导航与目录。TestHelper 自身的开发进度见 [框架开发事项](Docs/dev/目录.md)。
