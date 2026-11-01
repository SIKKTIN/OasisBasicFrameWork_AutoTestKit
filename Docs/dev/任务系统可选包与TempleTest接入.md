# 任务系统可选包与 TempleTest 接入

状态：已完成。目标：`Templates/framework-task`，实际验收工程 TempleTest。

## 目标与边界

提供可独立选装的 TaskSystem：空任务配置、接取、前置任务、多累计目标、完成、手动领奖、存档同步、基础任务面板。仅依赖 framework-base；奖励通过项目注册的接口执行，不硬编码金币、经验、物品系统。正式包不含测试奖励或默认业务任务。UI 可不安装，安装时默认提供入口和列表/详情/目标/奖励/操作面板。

使用用户已认可的蓝色面板概念：左列表、右详情，白字、金色操作。图内任务与奖励仅用于示例。首版不含每日/重复/分支/共享任务、历史事实追溯、自动领奖。累计事实由权威业务提交，客户端 RPC 仅允许接取和领奖，不开放增进度接口。

参考：[架构](../framework/Project_Architecture.md)、[包结构](../framework/Package_Structure.md)、[数据契约](../framework/Package_Meta.md)、[既有技能模板](../../Templates/framework-skill/README.md)。

## 实施顺序

1. 模板内实现 Define、配置、数据、System、Query、Registry 和控制器薄适配。稳定任务/目标 ID，服务端状态机，重复请求处理。
2. 奖励协议：Validate / Grant / Query；稳定 provider ID 与领取编号。先持久化领取快照再发放，结果未知时不盲目重发；无 provider 保留未领取，空奖励无需 provider。记录保存失败、允许显式恢复。接口调用方负责持久化去重及部分发放恢复，不宣称通用事务保证。
3. 基础 UMG：通过 JSON 定义和编辑器 builder 在目标内生成，Lua 与逻辑分离。复用 UISystem，只调用 Registry；监听事件和复制通知，不靠 Tick 扫描刷新。列表支持滚动，明确空/等待/锁定/请求中/失败状态。
4. 完善 manifest、接口与奖励接入文档、独立示例、离线 Lua/编辑器辅助测试；核对真实 GenKit 输出与 PackageKit。
5. 更新部署 skill、引用文档和导航。完整预检 TempleTest 后展示报告，按 skill 要求取得目标部署确认；之后项目外备份，复制/生成/绑定，合并 UI 表，保留现有 GM。
6. 新启动 PIE，读取 session 对应 client/DS 日志，验证空配置及示例交互、RPC、复制、奖励去重和恢复。完成后停止 PIE、移除临时探针；示例独立标注。

## 计划涉及文件

- `Templates/framework-task/Project/Script/Package/TaskSystem/**`：正式任务包、公共 API、数据声明、控制器 RPC 适配。
- `Templates/framework-task/Project/Script/Config/Package/TaskSystem/Config_Task.lua`：默认空配置与基础 UI 设置。
- `Templates/framework-task/Project/Script/UI/TaskSystem/**`：基础界面行为。
- `Templates/framework-task/Definitions/**`、`PackageKit/editor/task_template.py`：UI 表登记与可重复检查的单资产创建。
- `Templates/framework-task/Tests/**`、`Examples/**`、`manifest.json`、`README.md`：验证、独立示例与部署契约。
- `.agents/skills/oasis-project-deploy/**`、`README.md`、`Docs/framework/README.md`：部署路由与资料导航。
- TempleTest：新增任务脚本/UI，更新实际 PC 薄适配、生成索引和 UI 表；不替换基础框架和 GM，不修改地图内容。

## 验证标准

真实基础 DataCore 与事件总线参与隔离测试：空配置、配置非法与重复 ID、前置任务、多目标、事件去重、只读副本、服务端限制、保存失败、奖励 provider 缺失/异常/结果不明/重试、重入、恢复、退出和再次初始化。UI 辅助检查工程边界、现有资产冲突、控件结构与登记行保留。生成器读取真实模板，不以固定字符串匹配代替运行行为验证。

只有真实 TempleTest PIE 通过后才记录运行验收成功；新玩家、同局恢复探针与跨会话存档分别说明，后者未实际覆盖不声称通过。

## 预检记录

- MCP `UGCEditor-PIE 2.0.0` 实际握手成功；`ctx:` 指向 `/TempleTest`，地图 `/TempleTest/UGCmap`，非 PIE，地图未修改。
- 工程位于 `E:/WeGameApps/rail_apps/OasisEraEditor(2001776)/ShadowTrackerExtra/UGCProjects/TempleTest`，已有基础框架、属性组件和 GM；未发现任务包。
- 预检阶段尚未改写目标工程。仓库既有 MCP 指导改动与未跟踪的 DevelopmentTools 保留。

## 实施与验证结果

- 已实现正式逻辑、控制器薄适配、默认空配置、三个基础 UI 的 Lua/JSON 定义、单资产创建辅助器及独立示例。正式清单为 12 个文件、4 个 UI 定义；示例不进入正式 files。
- Lua 5.4.8 隔离检查：28 项通过。真实模板 DataCore 与事件总线参与，覆盖配置、累计、幂等、前置、复制通知适配、奖励回执/保存失败/恢复、UI 行复用与请求反馈，以及示例模拟余额去重。
- Python 编辑器辅助检查：6 项通过，覆盖目标边界、表结构与行冲突保留、已有控件保留。
- 真实 GenKit 六类输出通过（含独立示例的命令索引/清单），PackageKit 结构与模块引用两项通过；写出在内存中截获，不改写目标工程。尚未以这些检查代替真实运行。
- 已更新部署 skill 和导航；用户确认预检方案后完成 TempleTest 脚本、UI、PC、表及目标生成索引接入，备份位于 E:/Project/ProjectCache/TempleTest-TaskSystem-20261031。

- 实际编辑器兼容修正：新建控件时 AllWidgets 是编译缓存，改为从本 WidgetTree 精确路径取控件；FMargin 使用具名导入格式；仅显式恢复本次未保存资产，结构匹配的旧资产默认保留。新增显式 update_existing 仅用于确认范围内的本包 UI 更新。
- 正式 UI 保留默认空任务，TempleTest 显式使用五条 Examples 配置。完成矮横屏目标区及奖励数量显示修正。无框架 Core 或 GM 源代码替换。
- 空配置 PIE（_dkfy0sqlfsba77）：两端 phase=ready、version=1、任务数 0、生命周期无等待；空态显示正常。用户确认手动关闭按钮有效；桌面自动输入无响应不作为产品错误。
- 示例 PIE（_dkfy0sqlfsbz93）：UI 回调经真实客户端 RPC 接取；GM 示例指令经服务端推进；OnRep 进度自动刷新、行实例复用；完成后领取模拟 500/100/2、解锁前置；重复领取余额不变。服务端实测目标筛选、事件去重、进度上限、空奖励领取、已发奖回执恢复，余额不变且回执数 1。临时监听已移除，调试已停止。
- 最后 PIE（_dkfy0sqlfscapx）：奖励 500/100/2 完整显示；实际原生存档保存、分离运行字段后 RestoreArchiveData 恢复 active/kill=1、复制回客户端。选择、无奖励、滚动、开关及销毁重建均通过；事件总线 changed/result 各 1 个监听，主按钮绑定 3 个、任务行 5 个。调试结束已停止。
- 引擎本地 UGCPlayerStateSystem 文档明确 PIE 无法跨对局保存和读取，因此跨 PIE 重启未恢复属于已知环境限制，未宣称发布环境跨局验证通过。初版恢复探针误用 ModifyPackage 修改了 PIE 存档的共享引用；旧控件销毁后访问其 userdata 也无效。已修正探针并取得最终通过标记，未因此修改 Core。
- 最终截图、三轮 session 的日志证据及边界见 [实际验收记录](../framework/TaskSystem_Integration_Verification.md)。未上传项目。
