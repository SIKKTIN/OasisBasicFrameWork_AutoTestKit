---
name: oasis-introduce
description: 介绍 OasisBasicFrameWork_AutoTestKit 的通用 Lua 框架、GenKit 与 PackageKit 工具、文档入口和开发流程。用于初次了解框架或询问工具用途；新对话建立目标项目上下文使用 oasis-project-init，环境配置检查使用 oasis-environment。
---

# Oasis 框架与工具介绍

帮助用户理解框架如何组织业务，以及配套工具如何参与开发。介绍以仓库现有文档和实现为依据，按用户关心的范围展开；概览请求不需要先补齐环境配置。

## 定位与阅读

源文件位于工具仓库的 `.agents/skills/oasis-introduce/`，向上三级是工具根目录。通过用户级目录链接加载时，先解析链接的真实目标，再定位源目录；不要把用户技能安装目录当成工具根目录。如果 skill 被单独复制且工具位置不明，先使用用户明确提供的位置，仍无法定位时再询问。

先阅读工具根目录的 `README.md`、`Docs/framework/README.md` 和 `Docs/framework/Project_Architecture.md`。其他资料按问题选读，不一次加载全部 API、教程或业务项目代码：

| 用户关注 | 仓库内资料 |
| --- | --- |
| Package 目录、公共入口与内部职责 | `Docs/framework/Package_Structure.md` |
| 包声明、依赖和数据契约 | `Docs/framework/Package_Meta.md` |
| 玩家数据、全局数据与变更通知 | `Docs/framework/DataCore_Guide.md` |
| 调试、测试与指令配合 | `Docs/framework/Development_Test_Debug_Guide.md` |
| 生成器能力、模式和启动方式 | `GenKit/README.md`；必要时核对 `GenKit/init.lua` 的工具与预设注册表 |
| Package 检查范围 | `PackageKit/Run_Console.lua` 与对应 `PackageKit/tools/*.lua` |
| 编辑器教程、引擎 API 和 LuaHelper | `Docs/OasisGuide.md`；再按导航查具体资料 |

文档与代码不一致时，说明差异，实际工具能力以实现为准。Withdraw、DayBreak 等是采用框架的项目或示例，不代表这套通用工具绑定其中一个项目。工具在本机的目录名可能是 TestHelper，正式名称以仓库说明为准。

## 介绍重点

概览时先用一段话交代：这是一套绿洲启元 Lua 通用框架规范及配套开发工具，围绕明确的业务边界、数据契约与离线代码生成组织开发。框架运行时模块位于采用框架的目标项目中，本仓库提供规范、工具和资料。

结合用户问题说明六类职责，适合用简短表格：Core 提供公共机制；Package 承载业务能力；Const 提供稳定标识；Config 保存可变配置；Event 表达通知契约；Setting 保存运行时装配与索引。补充两项关键约定：Package 通过 Registry 暴露公共入口，内部 Query、System、Data 按职责协作；Package_Meta 声明身份、依赖及数据入口。

工具介绍应覆盖它们分别解决什么问题、在哪运行，以及何时使用：

- GenKit：本地扫描源码、Meta、配置和登记的 CSV，生成注册表、索引、数据常量、事件及表常量。具体生成项和预设以当前注册表为准，避免将生成器数量写成永久事实。
- PackageKit：本地检查 Package 核心文件、dependsOn 依赖名称和内部隐式全局定义。说明实际覆盖范围，不把检查结果说成完整架构验证。
- AutoTestKit：目标项目中的运行时自动测试；DebugKit：运行链路观察；CommandSystem：构造状态、触发行为与诊断。它们的运行代码属于目标项目，GenKit 可生成相关索引和配置。
- `GenKit/Tests/`：本地生成器测试，验证 CSV 和常量生成规则；具体脚本以目录现状为准。
- `Docs/framework/`：框架规范；`Docs/OasisDocs/`：编辑器教程；`Docs/APIDocs/`：API 参考；LuaHelper 资料入口见 `Docs/OasisGuide.md`。
- `setting.json`：目标项目、Lua 解释器和 CSV 根目录等本机配置。工具根目录自动定位；`dataTableCsvRoot` 指向用于生成 Lua 常量的 CSV 公共根目录。

用一条常见开发流程串起这些内容：修改手写模块和声明 → 使用对应 GenKit 生成器预览并更新产物 → 审查差异 → PackageKit 检查 → 在目标项目运行 AutoTestKit 并完成必要的交互回归。说明生成和静态检查的结果各自能证明什么，不宣称能够替代运行时验收。

## 输出与范围

根据用户已有知识控制篇幅：初次介绍给出框架职责、工具用途、推荐流程和少量文档入口；只问某个工具时集中解释它，不重复整个框架。涉及实现关系时可以使用简短示例或小图，避免完整复述规范。

给出已核实存在的本地文档链接，优先链接框架总纲、相关指南和工具说明。需要启动命令时核对 README、当前路径和入口文件，不引用已删除的 PS1、TestKit 或 UnitTests 入口。

介绍本身只读取资料。环境缺项不阻断概览；用户进一步要求检查或补全环境时再使用 oasis-environment 的流程。只有用户明确要求结合某个业务项目解释时，才读取其相关实现；将通用约定、项目现状与未核实内容区分清楚。
