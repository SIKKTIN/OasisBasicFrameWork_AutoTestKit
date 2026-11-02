# 通用框架文档

这里维护绿洲启元 Lua 通用框架的架构规范和开发指南，与 TestHelper 工具一起管理，供采用本框架的多个项目查阅。

文中的 `Script/` 路径均相对于目标项目根目录；Withdraw 等项目名称和业务模块仅用于示例，具体实现以目标项目代码为准。各项目的业务设计、迁移计划及实现差异由各自项目文档维护。

## 阅读顺序

1. [项目架构思想](Project_Architecture.md)：Core、Package、Const、Config、Event、Setting 的职责与依赖关系。
2. [Package 目录结构规范](Package_Structure.md)：包内目录、命名和公共入口。
3. [Package_Meta 规范](Package_Meta.md)：包身份、依赖与数据声明契约。
4. [DataCore 数据核心指导](DataCore_Guide.md)：玩家数据与全局游戏数据的注册、读写和通知。
5. [开发、测试与调试指导](Development_Test_Debug_Guide.md)：DebugKit、AutoTestKit 和 CommandSystem 的使用流程。
6. [Oasis 项目文档规范](Project_Documentation_Guide.md)：目标项目的设计、具体内容、开发计划、进度与验证记录的路径和维护规则。

编辑器教程、引擎 API 和 LuaHelper 资料见 [绿洲开发资料导航](../OasisGuide.md)。工具使用方式见 [TestHelper 说明](../../README.md)。

## 项目文档与开发记录

[Oasis 项目文档规范](Project_Documentation_Guide.md) 由本仓库独立维护，不依赖外部文档 Skill。目标项目默认通过 `Docs/目录.md` 导航设计与内容，通过 `Docs/dev/目录.md` 查阅开发进度；已有项目可沿用其实际路径并声明对应职责。

本仓库自身的事项见 [框架开发事项](../dev/目录.md)。文档规范已接入上下文初始化、基础部署和可选包增装三个 Skill，具体变更与验证边界见 [接入记录](../dev/文档规范接入现有Skill.md)。

日常开发的计划、设计/内容同步、实施结果和进度维护由 [oasis-document](../../.agents/skills/oasis-document/SKILL.md) 提供执行入口，支持任务匹配时主动选用；仅阅读与各部署流程的原有写入边界保持不变。

## 部署入口

- [基础框架初装](../../.agents/skills/oasis-project-deploy/SKILL.md)：空白工程的完整接入，可同时选择内容包。
- [可选包增装](../../.agents/skills/oasis-package-deploy/SKILL.md)：已有框架工程添加 GM、AttributeSystem、SkillSystem 或 TaskSystem，保留现有业务配置与数据。
- [增装 Skill 开发记录](../dev/可选包增装Skill.md)：范围、实现及验证结果。

## 可选任务包

- [TaskSystem 部署与接口](../../Templates/framework-task/README.md)：默认空配置、基础 UI、独立示例与奖励接入契约。
- [任务包开发与 TempleTest 接入记录](../dev/任务系统可选包与TempleTest接入.md)：本次实施进度、离线检查和实际验收边界。

- [TaskSystem 实际接入验收](TaskSystem_Integration_Verification.md)：TempleTest 的实机流程、截图、原生存档与发布环境边界。
