# 通用框架文档

这里维护绿洲启元 Lua 通用框架的架构规范和开发指南，与 TestHelper 工具一起管理，供采用本框架的多个项目查阅。

文中的 `Script/` 路径均相对于目标项目根目录；Withdraw 等项目名称和业务模块仅用于示例，具体实现以目标项目代码为准。各项目的业务设计、迁移计划及实现差异由各自项目文档维护。

## 阅读顺序

1. [项目架构思想](Project_Architecture.md)：Core、Package、Const、Config、Event、Setting 的职责与依赖关系。
2. [Package 目录结构规范](Package_Structure.md)：包内目录、命名和公共入口。
3. [Package_Meta 规范](Package_Meta.md)：包身份、依赖与数据声明契约。
4. [DataCore 数据核心指导](DataCore_Guide.md)：玩家数据与全局游戏数据的注册、读写和通知。
5. [开发、测试与调试指导](Development_Test_Debug_Guide.md)：DebugKit、AutoTestKit 和 CommandSystem 的使用流程。

编辑器教程、引擎 API 和 LuaHelper 资料见 [绿洲开发资料导航](../OasisGuide.md)。工具使用方式见 [TestHelper 说明](../../README.md)。
