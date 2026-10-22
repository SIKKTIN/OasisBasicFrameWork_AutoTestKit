# framework-base 启动验收

目标：TempleTest，编辑器 1.38.12.15924。日期：2026-10-21。

## 部署

- 已部署 manifest 的全部 38 个普通 Lua 文件，并根据实际 GameMode 的类绑定同步四个入口脚本。
- 仅针对 TempleTest 调用 GenKit 的 Core 清单扫描与写入，登记 8 个 Global 模块；EventSystem 与 LifeCycle 显式加载。未修改工具 setting.json 的目标。
- Package、Meta、数据常量和指令均为空，未迁入来源业务包。
- 既有正式 DT_UI_Config 缺少 RowStruct，备份后通过编辑器移除坏表及无引用旧结构体，根据 JSON 创建、配置和保存六字段零行新表。未给 RowStruct 强行赋值，其他探针资产保留。
- 通用 PropertyComponent 已挂载实际 UGCPlayerController，使用组件蓝图的 GeneratedClass。
- 原文件备份及部署记录：`E:/Project/ProjectCache/TempleTest-startup-20261021/`。

## 真实引擎发现并修复的问题

1. 客户端沙箱不暴露 package.loaded。AutoTestKit 无条件清理缓存导致 Core 初始化失败。现只在可用时清缓存，回归新增沙箱环境检查。
2. LifeCycle 使用弱键保存 Pawn 去重记录。服务端 userdata 包装被 GC 后，底层 Actor 仍存活，但记录消失，手工重复入口会重发事件。现由玩家记录保留当前已通知 Pawn，重生时替换、退出时清理；新增模拟包装对象 GC 的回归检查。

3. 客户端新 Pawn 的 BeginPlay 可以早于 PC.Pawn 网络关联更新。以前按旧对象丢弃新 Pawn，造成重生漏事件。现对尚未确认的新客户端 Pawn 有界等待，关联更新后处理。
4. 真实 PIE 空存档读取返回 nil，而引擎 GetPlayerDataSize(uid) 成功返回数字 0。现仅对这个组合判断为 missing；其他 nil、未知或非零大小保持错误，读取异常不能降级成新玩家。

编辑器热更将 AutoTestSuiteIndex 从空数组扩为非空数组时触发 lua_panic_error: invalid key to 'next'，客户端退出。最终验收在启动前固定临时索引，不再热更数组结构。热更显示 Success 也不保证局部闭包全部替换；启动修复必须重新执行首次启动验证。

## 验证记录

- 第一轮 `_dkfy0shtqkb6cr`：服务端启动成功，客户端暴露 package.loaded 问题。
- 第二轮 `_dkfy0shtqkbk6j`：修复后两端自动完成 GS/PC/Pawn 启动，功能探针暴露服务端 Pawn 弱键问题；后续索引热更触发上述编辑器错误。
- 第三轮 `_dkfy0shtqkc3i5`：两端启动、Tick 与队列通过，发现客户端重生关联时序及真实空存档语义。
- 最终轮 `_dkfy0shtqkcqjj`：两端自动完成 GS/PC/Pawn 初始化，49 项实际引擎检查通过，0 失败。客户端 25 项、服务端 24 项；两端各运行两个真实 AutoTestKit Case，报告 allPassed=true。
- 已验证真实 Tick 对 LifeCycle、Tip 和 AutoTestKit 的调用数一致，提示队列真实消费，两端重生各只发一次事件且不重复加载玩家数据。
- 退出验收是在实际 PC 和组件实例上显式调用 OnPCEnd / ReceiveEndPlay，验证 readiness 清理、迟到通知拒绝和监听移除；不把它表述为真实断线/重连验收。
- GameState 公共枚举调用统一为编辑器默认单引号格式，避免编辑器额外补入同义加载行。此项为等价格式调整。
- 最终 PIE 已停止，地图未修改。临时测试 Suite 已移除，AutoTestSuiteIndex 已恢复模板空索引，所有普通脚本及四个实际入口哈希均核对通过；Core_Registry 保留目标生成的八项清单。

隔离回归共 115 项：LifeCycle 31、AutoTestKit 24、PlayerPropertyComponent 15、PlayerDataCore 20、GameDataCore 8、GenKit 注册表 17。

真实探针源码：`Templates/framework-base/Tests/Engine_Smoke.lua` 与 `Engine_SmokeSuite.lua`。前者通过 PIE doluastring 分别运行于 client/ds，后者仅用于测试项目临时套件索引；测试结束恢复空索引，探针不属于普通部署清单。

## 验收范围

空白基础框架的启动闭环与已收录模块的空配置行为。非空业务包的数据初始化、字段复制、真实存档写入/恢复和跨对局持久化，以及未接入的指令 RPC、GM Package、业务 UI 与地图加载包，需要对应内容后另测。

## 最终日志

- 客户端：`E:/WeGameApps/rail_apps/OasisEraEditor(2001776)/ShadowTrackerExtra/Saved/Logs/TempleTest/Clientlog/FullLog/2026.10.21-14.22.45_client__dkfy0shtqkcqjj_1.log`
- 服务端：`E:/WeGameApps/rail_apps/OasisEraEditor(2001776)/ShadowTrackerExtra/Saved/Logs/TempleTest/DSlog/TagLog/2026.10.21-14.22.58_ds__dkfy0shtqkcqjj_taglog.log`
- 结构化结果与逐项日志：`E:/Project/ProjectCache/TempleTest-startup-20261021/engine-results.json`

日志仍有编辑器/引擎自带的资源和 RAF 空入口告警；本轮基础框架没有启动失败、等待超时或探针失败。未声称整个引擎日志零告警。
