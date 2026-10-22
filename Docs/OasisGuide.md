# OasisGuide：绿洲启元开发资料导航

本文是绿洲启元开发资料的统一入口，串联编辑器教程、Lua 辅助源码和引擎 API 参考。遇到一个具体问题时，先按“要完成的任务”选择入口；需要确认接口细节时，再进入对应的 API 文档。

## 三套资料怎么分工

| 资料 | 位置 | 适合解决的问题 | 首选入口 |
| --- | --- | --- | --- |
| OasisDocs | [`Docs/OasisDocs`](./OasisDocs/) | 编辑器操作、玩法流程、系统配置、实战案例、性能和发布 | [OasisDocs 导航](./OasisDocs/docs/README.md) · [完整编号索引](./OasisDocs/docs/000_索引.md) |
| APIDocs | [`Docs/APIDocs`](./APIDocs/) | 引擎类、全局函数、数据类型、枚举及成员 API | [类索引](./APIDocs/classes/index.md) · [全局函数](./APIDocs/global-functions/index.md) |
| LuaHelper | 编辑器安装目录中的 `Content/LuaHelper` | Lua 侧源码、辅助模块、蓝图示例和可参考的接口用法 | 见下方 [LuaHelper 使用说明](#luahelper-使用说明) |

推荐的查阅顺序是：

```text
OasisDocs 了解功能和操作流程
    ↓
LuaHelper 查找 Lua 侧辅助模块、示例和实际调用方式
    ↓
APIDocs 核对引擎 API 的类型、参数、枚举和继承关系
```

## 快速入口

| 想完成的事情 | 推荐阅读 |
| --- | --- |
| 第一次安装和使用编辑器 | [编辑器介绍与安装](./OasisDocs/docs/新手入门/009_绿洲启元编辑器介绍与安装.md)、[创建工程及工程结构](./OasisDocs/docs/新手入门/011_创建工程及工程结构介绍.md) |
| 制作第一个可运行工程 | [制作 HelloWorld 工程](./OasisDocs/docs/新手入门/034_制作HellowWorld工程.md)、[上传工程与真机测试](./OasisDocs/docs/新手入门/030_上传工程与真机测试.md) |
| 用 Lua 编写玩法逻辑 | [使用 Lua 编写玩法功能](./OasisDocs/docs/新手入门/014_使用Lua编写玩法功能.md)、[Lua 脚本开发指南](./OasisDocs/docs/新手入门/015_绿洲启元Lua脚本开发指南.md) |
| 创建或修改游戏规则 | [玩法开发框架](./OasisDocs/docs/进阶内容/058_绿洲启元玩法开发框架介绍.md)、[模式编辑器创建游戏规则](./OasisDocs/docs/进阶内容/060_通过模式编辑器创建游戏规则.md) |
| 制作 PVE 打怪玩法 | [怪物快速配置](./OasisDocs/docs/进阶内容/103_怪物快速配置指南.md)、[行为树](./OasisDocs/docs/进阶内容/109_行为树.md)、[单人 PVE 模式](./OasisDocs/docs/玩法案例及模板/214_模式配置（单人PVE模式）.md) |
| 配置技能和 Buff | [技能编辑器](./OasisDocs/docs/进阶内容/073_技能编辑器.md)、[技能节点查询](./OasisDocs/docs/进阶内容/072_技能编辑器节点查询.md)、[Buff 编辑器](./OasisDocs/docs/进阶内容/083_Buff编辑器.md) |
| 制作物品、枪械和背包 | [物品编辑器](./OasisDocs/docs/进阶内容/095_物品编辑器.md)、[背包系统](./OasisDocs/docs/进阶内容/097_背包系统.md)、[自定义枪械](./OasisDocs/docs/进阶内容/098_自定义枪械.md) |
| 制作 UI 或适配屏幕 | [UI 快速入门](./OasisDocs/docs/进阶内容/152_快速入门.md)、[UMG Lua 结构](./OasisDocs/docs/进阶内容/153_UMG%20Lua的结构.md)、[UI 自适应屏幕](./OasisDocs/docs/进阶内容/161_UI自适应屏幕.md) |
| 查询引擎类和对象接口 | [APIDocs 类索引](./APIDocs/classes/index.md) |
| 查询全局函数 | [APIDocs 全局函数索引](./APIDocs/global-functions/index.md) |
| 查询枚举、结构体和数据类型 | [枚举索引](./APIDocs/enums/index.md)、[数据类型索引](./APIDocs/data-types/index.md) |
| 查找 Lua 示例或辅助实现 | [LuaHelper 使用说明](#luahelper-使用说明) |
| 排查性能、流量和弱网问题 | [性能优化总览](./OasisDocs/docs/性能优化及异常处理/238_性能优化总览.md)、[性能检测工具](./OasisDocs/docs/性能优化及异常处理/249_性能检测工具.md) |
| 接入商业化功能 | [商业化系统](./OasisDocs/docs/商业化及功能模板/200_商业化系统.md)、[商城模板](./OasisDocs/docs/商业化及功能模板/203_商城模板.md) |
| 查找上传、调试和流程问题 | [常见问题](./OasisDocs/docs/常见问题/253_编辑器安装.md) |

## OasisDocs：先理解功能和流程

OasisDocs 适合从“编辑器里怎么操作”和“一个玩法功能如何接入”开始学习。文档按编号和主题目录组织，主要入口如下：

- [OasisDocs 导航 README](./OasisDocs/docs/README.md)：按学习阶段和开发目标查找。
- [000_索引](./OasisDocs/docs/000_索引.md)：按 `001`–`259` 编号查看完整文章列表。
- [新手入门](./OasisDocs/docs/新手入门/)：安装、工程结构、脚本、调试、上传和发布。
- [绿洲编辑器基础内容](./OasisDocs/docs/绿洲编辑器基础内容/)：资源、场景、关卡、地形、植被和天气。
- [进阶内容](./OasisDocs/docs/进阶内容/)：玩法框架、技能、Buff、物资、怪物、UI、战场和社交。
- [通用功能](./OasisDocs/docs/通用功能/)：GamePart、消息、掉落、运动、表格等可复用系统。
- [玩法案例及模板](./OasisDocs/docs/玩法案例及模板/)：大厅、PVE、刷新、商店、关卡和团竞模板。
- [性能优化及异常处理](./OasisDocs/docs/性能优化及异常处理/)：渲染、加载、网络、流量、弱网和检测。

版本差异或功能行为不一致时，先查看 [版本日志](./OasisDocs/docs/版本日志/) 和 [常见问题](./OasisDocs/docs/常见问题/)，再回到具体功能文章。

## APIDocs：核对引擎 API

APIDocs 是按符号类型生成的参考文档，适合在已经知道类名、函数名或类型名时快速定位：

- [类索引](./APIDocs/classes/index.md)：Actor、Component、Controller、GameMode 等引擎类。
- [全局函数索引](./APIDocs/global-functions/index.md)：Lua 全局可调用函数。
- [数据类型索引](./APIDocs/data-types/index.md)：结构体、参数对象和返回值类型。
- [枚举索引](./APIDocs/enums/index.md)：状态、配置项和行为选项等枚举。
- [缺失文档说明](./APIDocs/classes/missing-docs.md)：索引中存在但暂未生成完整说明的类。

查 API 时建议先确认三件事：

1. 当前对象的实际类型和继承关系。
2. 调用发生在客户端、服务器还是双方都可执行的上下文。
3. 参数使用的枚举、数据类型和生命周期约束。

## LuaHelper：查找 Lua 侧实现和示例

LuaHelper 随绿洲启元编辑器安装，默认位于编辑器安装目录下：

```text
<绿洲启元编辑器安装目录>\ShadowTrackerExtra\Content\LuaHelper
```

当前机器的常见路径为：

```text
E:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\Content\LuaHelper
```

如果你的安装目录不同，以本机实际路径为准。该目录不是仓库的一部分，因此 README 只记录定位方式，不创建指向某一台机器的固定文件链接。

当前目录主要包含以下几类内容：

| 子目录 | 用途 |
| --- | --- |
| `Content/` | 蓝图、玩法资源和可参考的 Lua 示例 |
| `Engine/` | 引擎侧 Lua 类、公共定义和辅助库 |
| `Source/` | Gameplay、UI、技能、载具及其他业务侧实现 |

在 PowerShell 中搜索 LuaHelper 的类名、函数名或注解：

```powershell
$LuaHelperRoot = 'E:\WeGameApps\rail_apps\OasisEraEditor(2001776)\ShadowTrackerExtra\Content\LuaHelper'
rg -n "function|---@class|---@param|---@return" $LuaHelperRoot -g "*.lua"
```

建议的 LuaHelper 检索方式：

- 已知类名或模块名：先按名称搜索，再查看同目录下的相关实现和调用方。
- 已知功能但不知道 API 名称：先在 OasisDocs 找功能文章，再用文章中的关键词回搜 LuaHelper。
- 需要确认引擎类型定义：以 APIDocs 为准，LuaHelper 用来补充实际 Lua 调用方式和示例。

## 全文搜索

搜索仓库内的教程和 API 索引：

```powershell
rg -n "关键词" Docs -g "*.md" -g "*.json"
```

搜索某个文档源时，可以缩小范围：

```powershell
rg -n "关键词" Docs/OasisDocs -g "*.md"
rg -n "关键词" Docs/APIDocs -g "*.md" -g "*.json"
```

搜索 LuaHelper 时，使用编辑器的实际安装路径：

```powershell
rg -n "关键词" $LuaHelperRoot -g "*.lua"
```

## 维护约定

- 新增教程或功能说明时，优先补充 OasisDocs 的分类索引和 `000_索引.md`。
- 新增或更新 API 生成结果时，确认 APIDocs 对应的类型索引仍然可用。
- 编辑器升级后，重新确认 LuaHelper 的安装路径和源码版本；不要把本机绝对路径改成仓库内链接。
- 发现教程、LuaHelper 实现和 APIDocs 描述不一致时，记录编辑器版本，再以实际运行结果和版本日志共同核对。
