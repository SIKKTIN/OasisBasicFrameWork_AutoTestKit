# framework-base 模板草稿

本模板是完整部署的必需内容包，提供通用 Lua Core、四个引擎入口、数据表和属性组件定义。清单、版本和 SHA-256 见 [manifest.json](manifest.json)。部署先只读检查目标工程、Lua 环境与 MCP 实际连接，展示结果及计划，等待用户二次确认后，统一执行文件部署、编辑器资产创建、实际入口同步、GenKit 生成与本次 PIE 验收；GM、AttributeSystem 与 SkillSystem 独立可选。“仅计划”列出相同完整流程而不执行，不再提供其他部署范围。

## 部署内容

| 模块 | 内容与接入 |
| --- | --- |
| ClientCache | 两个 Lua 文件，使用引擎 API，加载后通过 Global_ClientCache 全局表调用。历史 Type.EVACUATE_SETTLE 标签暂时保留。 |
| EventSystem | UGCEventSystem.lua，事件键由调用方传入；不以 Global_ 命名，由实际启动入口显式加载。 |
| DebugKit | 两个 Lua 文件和 Const/Core/Const_DebugKit.lua，包含 Lifecycle、PlayerLifecycle 检测线；附带空预测配置，具体预测由目标项目的 GenKit 生成。 |
| UISystem | 两个 Lua 文件和 JSON 空表定义；有效空表初始化成功，缺失或无法读取的表仍失败，Global_UI.BeginPlay() 透传结果。 |
| TipSystem | Global_Tip.lua、Sys_TipQueueSystem.lua 与 Const/Core/Const_Tip.lua，提供优先级提示队列，调用引擎 ShowTipsUI；需客户端持续 Tick。 |
| CommandSystem | 四个核心脚本和 Setting/CommandConfigIndex.lua 空索引，支持指令解析、声明注册与执行路由；空索引可初始化，跨端 RPC 由可选 GM 适配提供。 |
| AutoTestKit | 五个核心脚本和 Setting/AutoTestSuiteIndex.lua 空索引，提供断言、套件队列、生命周期清理与测试报告；需测试执行端持续 Tick。 |
| GameDataCore | 两个 Lua 文件，通过 Package Meta 注册 GameState 共享数据，提供初始化、读写和变更通知；本次修复 DataInit 返回 false 的失败判定。 |
| PlayerDataCore | 两个 Lua 文件，注册玩家数据包，提供初始化、读写、变更通知及存档；存档使用独立框架标记，不依赖 ConditionData。 |
| LifeCycle | 通用启动、玩家及 Pawn 生命周期；通过事件扩展，无 GameMode 或 GM UI 依赖。 |
| 事件定义 | Event/EventType.lua 提供框架通用事件；Event/Event_DataChange.lua 提供两个通用数据变更事件，具体数据事件后续由 GenKit 生成。 |
| Setting 初始文件 | 九个 Setting 文件和 Const/Data/Const_Data.lua；生成产物保持 GenKit 的空输出结构，GenKit_Config.lua 提供手工配置入口。 |

Project/ 当前包含十个 Core 模块、基础事件定义和生成初始文件，普通部署清单共三十八个 Lua 文件，另有四个必须按实际绑定同步的入口脚本。Setting/ 和 Const/Data/ 的空结构只用于生成前部署；完整流程必须生成目标实际清单。Core 保留已有接口，并包含已收录的模板修复。源项目不受模板编辑影响。当前模板版本为 0.4.2-draft。

CommandSystem 不携带来源项目业务指令。完整部署根据目标 Script/Config/Command 声明生成索引和指令清单；已有内容按冲突规则保留并合并。核心配置维持 Enabled=true、CanExecute 默认放行。客户端本地执行可独立使用；跨端执行及结果回传由可选 GM 的控制器适配提供。SERVER_DISPATCHED 只表示已发起转发。

TipSystem 无需 UISystem、数据表或自定义资产；owner 只用于队列分组与有效性检查，不会自动把提示发送到指定玩家。客户端由 GameState 的 LifeCycle.Tick 持续驱动 Global_Tip.Tick；服务端通知转发可由可选 GM 的控制器适配提供。

TipSystem 暂时保留来源行为：首次等待 30 帧、后续间隔 90 帧，Tick 忽略 DeltaTime；Clear(nil) 无法清空全局队列。这两项已在隔离检查中复现，本次仅原样收录。

## Setting 与生成初始文件

Setting 文件名与参考工程一致。八个生成文件以空输入调用本仓库 GenKit 的现有写出函数生成，保留表结构和运行接口；GenKit_Config.lua 是手工维护的输入配置。

| Setting 文件 | 初始内容 |
| --- | --- |
| Core_Registry.lua | 空模块列表，保留 BeginPlay、Tick。 |
| Package_Registry.lua | 空包列表，保留 BeginPlay、GameStateTick、PlayerTick。 |
| Package_Meta_Index.lua | paths 为空，Load() 返回空 Meta 列表。 |
| Project_Globals.lua | 空全局变量白名单。 |
| CommandConfigIndex.lua | 空指令配置索引。 |
| CommandList.lua | text 为空数组，保留指令清单结构。 |
| DebugKitPrediction.lua | 空预测配置，不携带来源项目的节点、路径或行号。 |
| AutoTestSuiteIndex.lua | 空测试套件索引。 |
| GenKit_Config.lua | additionalPlayerDataKeys、tableConsts 均为空数组；后续按项目需要手工配置。 |

同时提供 Const/Data/Const_Data.lua，包含空 PLAYER_DATA_TYPE、PLAYER_DATA_TYPE_ORDER、GAME_DATA_TYPE、GAME_DATA_TYPE_ORDER，与当前 GenKit 输出结构一致。显式空 additionalPlayerDataKeys 可避免配置缺失时回退到历史 condition_data、backitem_data；tableConsts 为空，不声明来源项目的 Item CSV。

这些文件是生成前的初始结构。完整部署必须以目标工程运行 GenKit，生成 Core、Package、Meta、指令与测试索引和数据常量；Core_Registry 应包含八个 Global Core，不能保留种子空列表作为完成状态。无声明时对应业务索引可为空，Project_Globals 和 DebugKitPrediction 按目标需要生成。已有非空索引不得被空种子覆盖；GenKit_Config.lua 继续作为手工输入维护。

两个注册表与 GenKit 当前输出一致：明确返回 false、加载或调用异常均反馈失败；已成功项不重复初始化，显式重试只执行失败项。失败模块不参与 Tick，Tick 异常仅停用对应模块/方法。无返回值保持兼容，模块内部的部分副作用仍需自身幂等处理。Meta.Load 第二返回值提供错误列表，两个 DataCore 据此拒绝不完整启动。空清单仍不代表模板各 Core 已登记。

## 基础事件定义

EventType.lua 保留原九项并新增四项框架/客户端事件，共十三项；保留原编号及 Server_Delegate_PlaerDataLoad 的历史拼写。该文件同时提供全局 EventType 与 return EventType，调用方可以显式 require；加载时保留已有全局表中的扩展字段。

必需内容包不携带地图进入、昼夜、对局状态、UI 刷新或虚拟物品通知事件，这些事件由目标项目按功能接入。Server_OnGameInit 为服务端框架启动成功后的兼容通知，无参数；Server_OnPlayerEnd 在 OnPCEnd 中发送。Lifecycle_FrameworkReady(gameState) 两端各自发送，Client_OnPlayerControllerInit(pc)、Client_OnPlayerPawnInit(pawn) 只通知本地玩家，Lifecycle_PC_End(pc) 是退出入口。完整部署必须同步实际入口并验证这些流程，复制事件定义只是其中一步。

Event_DataChange.lua 初始仅包含 ON_PLAYER_DATA_CHANGE=5000、ON_GAME_DATA_CHANGE=5001。存在 Package 数据声明时，以目标 GenKit 生成分类变更事件；5000–5999 留给该生成流程。保留已有业务扩展和事件定义，冲突时先核对并合并，不能用初始定义覆盖已有项目事件。

Event/ 只存事件定义，不包含监听注册、业务逻辑或广播。完整部署的入口显式加载 EventType 与 Core/EventSystem/UGCEventSystem，再由 LifeCycle 初始化依赖它们的 Core 和 Package。

## GameDataCore 当前接入

Global_GameDataCore.lua 与 System_GameDataCore.lua 随模板复制，使用已提供的空 Package_Meta_Index 与通用 Event_DataChange；不携带来源项目的 gameData 业务声明。调用 BeginPlay 前加载事件总线；空 Meta 索引允许零数据包初始化。

InitAllData 对 DataInit 返回值的判定：抛异常或明确返回 false 时整批初始化返回 false，并保留日志；返回 true 或无返回值保持成功兼容。其他数据初始化函数继续执行，失败会汇总到 BeginPlay 结果。Global 入口保持来源实现；新增 Meta 错误反馈与启动失败后重试，重试会重新构建声明，包内 DataInit 自身须幂等。其他已审查问题留待逐项处理。

Core_Registry 种子为空，完整部署须生成实际 Core 清单，并同步 GameState 的 LifeCycle 启动及按数据常量生成的复制声明。文件收录、清单生成、入口接线与实际启动验收均为必需步骤。

## PlayerDataCore 当前接入

Global_PlayerDataCore.lua 原样复制；System_PlayerDataCore.lua 使用已有 Meta 索引、数据常量、事件定义与事件总线。调用 BeginPlay 前加载 EventType 与事件总线；BeginPlay 只注册声明和初始化事件，实际初始化通过 InitAllData(playerKey) 执行。DataInit 抛异常或明确返回 false 时汇总失败并记录原因，其他包继续执行；true 或无返回值保持兼容。

存档由 BuildArchiveData 自动附加 `__oasisArchive = { version = 1 }`，业务数据包仍平铺在同一张表中。该字段保留给框架，不加入 Const_Data、PlayerController 或复制声明。SaveArchiveData 只在声明了玩家数据包且各包类型合法时提交引擎；无声明返回 false,no-data-packages，调用方应跳过保存。引擎保存失败或抛异常返回 false,save-failed。

CheckArchiveData 的第一个返回值有三种，第二个返回值说明原因：

| 返回值 | 含义 | 后续处理 |
| --- | --- | --- |
| true, exists | 框架标记及版本受支持 | 调用 RestoreArchiveData。 |
| false, missing | 引擎返回空表，或 nil 且大小接口确认零字节 | 初始化全部玩家数据，汇总成功后首次保存。 |
| nil, 错误原因 | 读取异常、非表结果、UID 不可用、非服务端、无标记非空存档或版本不支持 | 报告失败，不初始化或覆盖旧存档。 |

真实 PIE 空白玩家读档返回 nil，GetPlayerDataSize(uid) 同时返回 0。读取 nil 时，仅在大小接口成功且返回数字 0 才判断为无存档；缺少接口、异常、非零或非法大小仍返回 invalid-archive。读取本身抛出异常始终为 read-failed，不调用大小接口将其降级为无存档。接口没有独立加载完成状态；跨对局持久化仍需正式环境验收。

模板的 BP_PlayerPropertyComponent 已按下面的调用契约实现；组件通过 MCP 创建并挂载，不复制来源资产：

```lua
local exists, reason = Global_PlayerDataCore.CheckArchiveData(pc)
if exists == nil then return false, reason end
local success
if exists == false then
    if not Global_PlayerDataCore.InitAllData(playerKey) then
        return false, "initialization-failed"
    end
    success, reason = Global_PlayerDataCore.SaveArchiveData(pc)
else
    success, reason = Global_PlayerDataCore.RestoreArchiveData(pc)
end
if not success then return false, reason end
return LifeCycle.NotifyPlayerDataLoaded(pc)
```

来源组件的 `if not CheckArchiveData(pc)` 会混淆无存档和错误，不能直接沿用；移除 Registry_ConditionData.IsInitialized，改用 InitAllData 的直接返回值。直接初始化时不再发送旧初始化事件，避免重复执行；事件入口为兼容保留，但事件总线不会向发送者传回初始化结果。

RestoreArchiveData 在写入玩家字段前检查所有待恢复包的 table 类型；缺失包沿用来源的空表回退，不自动调用 DataInit。无标记旧存档返回 unrecognized-archive，需要单独迁移，不把旧 ConditionData 特例留在通用核心里。本次不加入逐包补全、业务字段校验或迁移机制。

Meta 加载错误已反馈，启动失败可显式重试；事件总线隔离监听异常。其他已审查问题仍保留：DataFormat 的 false 返回、嵌套查询路径边界、同包多数据键反查。完整部署必须生成 Core 清单并同步 PlayerController 的生命周期和复制入口，再通过属性组件验证玩家加载流程。

## 四个必需引擎入口

编辑器创建工程时已有蓝图及脚本绑定。四个标准入口是完整部署的必需输入：从目标 .ugcproj 的 GameModePath 及 GameMode CDO 解析实际 GameState、PlayerController、Pawn，核对各自 Lua 绑定后更新。默认脚本备份后同步，已有业务代码保留并合并；缺失脚本通过编辑器关联创建，不另造入口蓝图。具体流程见 skill 的 [启动接入说明](../../.agents/skills/oasis-project-deploy/references/startup.md)。

| 文件 | 初始结构 |
| --- | --- |
| [UGCGameMode.lua](Project/Script/Blueprint/UGCGameMode.lua) | 保留类与返回表，不启动地图或框架；业务 GameMode Package 后续自行订阅事件。 |
| [UGCGameState.lua](Project/Script/Blueprint/UGCGameState.lua) | 保留引擎公共枚举加载，BeginPlay 启动 LifeCycle，Tick 统一驱动框架；复制键按 GenKit ORDER，再将未列出的键排序追加。 |
| [UGCPlayerController.lua](Project/Script/Blueprint/UGCPlayerController.lua) | BeginPlay 通知控制器初始化，Tick 驱动 PlayerTick，EndPlay 先通知退出再调用父类；玩家复制键同样固定顺序，不在原型表中建立共享数据包。 |
| [UGCPlayerPawn.lua](Project/Script/Blueprint/UGCPlayerPawn.lua) | 两端 BeginPlay 通知 Pawn，交给 LifeCycle 等待关联与数据、过滤本地玩家并去重；保留已观察到的编辑器子对象复制声明，不加入自动复活。 |

这四项由 manifest.entryScriptDefinitions 单独记录，deployment=editor-binding、required=true；不加入 manifest.files 普通复制清单，是为了按实际绑定定位目标，仍然必须执行。保留实际类名、父类、公共枚举和 Pawn 子对象复制约定。不能因目标 Lua 缺失就在猜测的默认路径新建同名文件，也不能覆盖未经处理的业务代码。

GameState 的 Script.Common.ue_enum_custom 由目标编辑器初始工程提供；父类与 Pawn 子对象复制声明按目标编辑器版本核对。完成实际清单、入口同步和资源绑定后，还须通过本次 PIE 验收才能报告初始化成功。

## LifeCycle 接口与装配

模板包含六项修复：启动阶段与失败反馈、业务事件解耦、接口兼容与幂等、玩家数据完成通知、对象等待/重生/退出清理、生成器与模板一致性。业务 GameMode 由项目独立接入；GM 使用可选 framework-gm 模板，二者均不是 LifeCycle 的强制依赖。

`require("Script.Core.LifeCycle.Life_Cycle")` 返回 LifeCycle，同时保留同名全局。它先加载 EventType 和事件总线，再加载 DebugKit 与两张注册表，不依赖任何业务 Package、Const_Editor、UI 或存档接口。文件名不是 Global_，不加入 Core_Registry；由启动入口显式加载，避免递归启动。

| 接口 | 返回与行为 |
| --- | --- |
| BeginPlay() | true / false,reason。注册 GameState、PC、Pawn、PC 退出四个监听；重复不重绑，失败回滚本次监听，可显式重试。 |
| OnGameStateInit(gameState) | 启动 Core，再启动 Package；均成功后置 ready，再发送 Lifecycle_FrameworkReady(gameState)。同一个 GameState 重复调用不重复广播；失败返回 false,reason。 |
| OnPCInit(pc) | 对象有效、框架就绪、玩家键可用后通知；服务端发 Server_OnPlayerControllerInit(playerKey)，客户端仅向本地 PC 发 Client_OnPlayerControllerInit(pc)。等待时返回 false,reason 并排队。 |
| OnPawnInit(pawn) | 等框架、PC、有效角色关联；服务端再等数据就绪，发 Server_OnPlayerPawnInit(playerKey)；客户端仅对本地角色发 Client_OnPlayerPawnInit(pawn)。同实例去重，新 Pawn 可再次触发。 |
| NotifyPlayerDataLoaded(pc) | 仅服务端数据加载方在实际成功后调用，置玩家数据就绪并发送 Server_OnPlayerDataLoaded(playerKey)，再推进等待的 Pawn。重复不重发。 |
| OnPCEnd(pc) | 清理玩家状态和待处理任务，服务端发送 Server_OnPlayerEnd(playerKey)；晚到的旧 PC 回调不重新初始化，同键的新 PC 可以重新进入。 |
| Tick(deltaTime) | 推进条件等待、清理无效对象及超时，再统一调用 Core.Tick 和 Package.GameStateTick。非 ready 阶段不驱动模块 Tick。 |
| GetPlayerStatus(pc) | 只读快照：controllerReady、dataReady、playerKey、ended、frameworkPhase；组件晚于 PC 事件开始时用于补接，修改快照不影响内部状态。 |
| GetStatus() | 返回 phase、reason、listenersReady、pendingControllers、pendingPawns 的新表。phase 为 idle / initializing / ready / failed。 |

PC_Init_Handle、Pawn_Client_Init_Handle、Pawn_Server_Init_Handle 保留为新接口的兼容别名，不再设置固定延时或打开 GM。WAIT_TIMEOUT_SECONDS 默认 30 秒，可在接线前设置；超时日志说明最后等待条件，不把超时当成功。任务依赖 Tick 推进。已完成的模块不重新启动；失败模块自身须支持幂等重试，框架不回滚其任意业务副作用。

ready 只表示通用 Core 和 Package.BeginPlay 完成，不代表地图资产加载完成、业务场景准备完成或玩家数据完成。就绪监听按事件通知运行，监听异常逐项记录，不阻断其他监听；监听 return false 不作为业务结果收集。业务包必须自行记录加载结果并按需提供查询/重试。不会因某个就绪监听失败重播整批启动事件。

### GameMode 后续迁移

GameMode.BeginPlay 中先注册公共就绪监听，再处理原来的服务端玩家监听；客户端不能在公共监听注册前返回。以下为来源项目后续修改位置，不是新增模板业务包：

```lua
function System_GameMode.OnFrameworkReady(gameState)
    if not System_GameMode.LoadCurrentMode(gameState) then
        ugcprint("[GameMode] 当前模式加载失败")
    end
end

-- 放在 GameMode.BeginPlay 的 initialized 检查之后、客户端提前返回之前。
if not UGCEventSystem:AddListener(
    EventType.Lifecycle_FrameworkReady,
    System_GameMode.OnFrameworkReady,
    nil
) then
    return false
end
```

全部 Package.BeginPlay 先注册监听，再通知 GameMode 加载模式/流关卡。模式配置的 require 缓存、地图事件与匹配逻辑仍归 GameMode。来源 LifeCycle 旧的 require 和直接 LoadCurrentMode 调用在采用此方案时删除；模板已无这两项。

### 可选 GM Package

GM 独立作为可选 Package，通过 Package_Registry 自动执行 BeginPlay，订阅 Client_OnPlayerControllerInit(pc)，并在自己的配置中决定是否启用和打开 UI。LifeCycle 不知道 GM_UI 标识、不持有 GM 资源，也不修改光标或调用调试 RPC。未选择时完整流程继续；选择 [framework-gm](../framework-gm/README.md) 时同步部署独立包、UI 资产、JSON 登记行和控制器薄 RPC 适配器。

### 蓝图与 PropertyComponent 接线顺序

1. 按目标项目生成实际 Core、Package、Meta、全局白名单、数据常量和分类事件；空种子不自动登记已有 Core。EventType 和事件总线先加载，LifeCycle 显式加载。
2. GameState.BeginPlay 调用 LifeCycle.BeginPlay 后，调用 OnGameStateInit(self)，或发送 Lifecycle_GameState_Init。需要启动返回值时直接调用；事件广播只反馈监听是否抛异常，不收集业务返回值。
3. GameState.Tick 改为 LifeCycle.Tick(DeltaTime)，不要再同时手动调用 Core_Registry.Tick 和 Package_Registry.GameStateTick，避免重复 Tick。PlayerController.Tick 仍调用 Package_Registry.PlayerTick。
4. PC/Pawn 创建时分别调用 OnPCInit / OnPawnInit，或发送已有入口事件；客户端首次与重生 Pawn 均须有输入入口。PC 退出时调用 OnPCEnd 或发送 Lifecycle_PC_End。接线前校验引擎对象/回调时序。
5. PropertyComponent 在玩家初始化事件中使用 PlayerDataCore 的三态存档检查，真实初始化及首次保存或恢复成功后调用 NotifyPlayerDataLoaded。失败不调用；数据加载重试由组件负责，重复 OnPCInit 不重启已通知的玩家。
6. 若没有任何玩家数据声明且无持久化数据键，加载方可明确跳过存档并通知数据就绪；不能因为没挂加载组件就由 LifeCycle 猜测成功。数据声明和常量不一致应先生成修正。

四个实际入口与模板组件均须接入；组件通过 MCP 创建并挂载实际控制器，控制器 Lua 同步生命周期和复制入口。旧来源 PropertyComponent 不理解三态检查，也不会调用新数据完成接口，不能直接沿用。模块只支持同一 Lua 世界内的同一 GameState；不提供同一 VM 跨 GameState 的通用卸载重启。

## AutoTestKit 接入与结果

AutoTestKit 不携带来源项目业务 Suite。完整部署扫描目标 Script/Config/AutoTestSuite 并生成索引；空目录合法。保留用户现有套件；启动验收使用的临时探针和套件在结束后清理，业务测试结果单独报告。没有套件是 no-tests，不能记为测试通过。

先调用 Global_AutoTestKit.BeginPlay() 注册 Suite，再按需要调用 RunAll、RunSuite 或 RunSingleCase；执行端持续调用 Tick(DeltaTime)。空索引允许初始化；索引或套件加载失败时 BeginPlay 返回 false，修复后可重试。开始执行时会重新加载索引，正在运行或清理时拒绝新请求。

RunAll(nil) 可仅通过日志与 GetReport() 使用。传入 PlayerController 时使用 Client_TipContent，由可选 GM 的适配器提供；未接该通道时传 nil。通知失败会记录日志，不改变 Case 执行结果。

模板副本修复以下行为：

- Case 的第一个失败断言被锁定，后续断言或显式成功返回不能覆盖；return false 记为失败。Case 必须调用断言或返回明确结果：true/false 或包含 boolean passed 的表；没有结果或结果格式无效记为失败。
- setup 抛异常或返回失败时记录生命周期错误、跳过本套件 Case，仍执行 teardown；后续套件继续执行。teardown 错误会导致整轮失败。
- RunSingleCase 现在也执行 teardown；Stop 立即为已启动且未清理的套件执行一次 teardown，未启动套件不清理。setup 可能部分完成，teardown 应能处理这种情况。
- GetReport() 返回 status、allPassed、totalCases、passedCases、failedCases、skippedCases、results 和 errors。status 可为 idle、running、passed、failed、no-tests、load-failed、selection-failed、stopped；只有完成执行且所有 Case 通过、没有生命周期错误时 allPassed 才为 true。

failedCases 包含因 setup 失败而跳过的 Case，skippedCases 单独计数；加载、setup、teardown 错误记录在 errors，不混入 Case 数量。判断整轮是否通过应读取 allPassed，不能只看 passedCases/totalCases。空套件不会单独运行 hook 或被算作通过。Case 和 hook 仍为同步函数，等待间隔默认 setup/teardown 后 1 秒、Case 后 3 秒。

## JSON 创建空表

[DT_UI_Config.schema.json](Definitions/DataTables/DT_UI_Config.schema.json) 是创建 DT_UI_Config 的唯一必需输入，定义表名、相对目录、空表模板与六个字段。mode: empty 表示初始化不登记具体 UI。

部署分为三个编辑器操作，每阶段使用对应资产的 MCP PRV 计划：

1. 从“自定义表格 → 空表格”创建表，编辑器同时生成本项目的行结构体。
2. 根据 JSON 编辑新生成结构体的字段，移除默认占位字段并保存结构体。
3. 检查字段名称、顺序和类型及零行状态，再保存表。

辅助实现为 [data_table_schema.py](../../PackageKit/editor/data_table_schema.py)，在编辑器 ue_py 中执行，由 oasis-project-deploy 调用。PackageKit 原有 Lua 控制台仍提供诊断功能。

初始化不需要 CSV、CSV 根目录或来源项目的 .uasset。原来的 CSV 和两份二进制快照已从模板移除。以后迁移已登记的 UI 数据时，可另外使用 CSV。

字段类型保持与现有框架一致：Name、AssetPath、Zorder、Slot 为 string，IsSingleton、IsPreLoad 为 bool。修改类型属于单独的框架兼容性调整。

已有表先检查本项目结构体引用及字段定义，匹配则保留表和已有行；不匹配或 RowStruct 无效时报告冲突。初始化不覆盖已有表，不直接重绑 RowStruct。

## 目录与使用

- Project/Script/Core/：ClientCache、DebugKit、EventSystem、UISystem、TipSystem、CommandSystem、AutoTestKit、GameDataCore、PlayerDataCore、LifeCycle。
- Project/Script/Const/Core/：Const_DebugKit.lua 通用检测线定义、Const_Tip.lua 优先级常量。
- Project/Script/Setting/CommandConfigIndex.lua：新项目空指令索引；Project/Script/Config/Command/：目标项目指令声明目录。
- Project/Script/Setting/AutoTestSuiteIndex.lua：新项目空套件索引；Project/Script/Config/AutoTestSuite/：目标项目测试套件目录。
- Project/Script/Setting/：其余空注册表、Meta 索引、全局白名单、指令清单、预测配置及 GenKit_Config 输入配置。
- Project/Script/Const/Data/Const_Data.lua：玩家与游戏数据类型及复制顺序的空定义。
- Project/Script/Event/：通用事件类型和初始数据变更事件定义。
- Project/Script/Blueprint/：四个必须按实际绑定同步的引擎入口；Project/Script/Config/ 和 Project/Asset/ 预留扩展。
- Definitions/DataTables/DT_UI_Config.schema.json：编辑器创建空表的输入。

Project/ 中清单列出的文件按相对路径复制到目标工程；跳过 .gitkeep。Definitions/ 是编辑器生成输入，不复制进工程。Asset/ 预留给后续需要随包复制的通用资源。

使用 [oasis-project-deploy](../../.agents/skills/oasis-project-deploy/SKILL.md) 执行完整部署：只读预检并展示结果、等待用户确认、项目外备份、复制必需文件、JSON 建表、创建挂载组件、同步实际四个入口、按目标运行 GenKit、新启动 PIE 验收并清理临时探针。GM 按用户选择安装；缺少必需步骤应报告部署未完成。

## 验证范围与后续接入

TempleTest 已使用本仓库辅助脚本，直接从 JSON 完成创建、配置、保存三个阶段，全程未使用 CSV。验证表为 JsonDeployProbe/DT_UI_Config_JSONProbe：六字段、零行，表和结构体均已保存。重复配置返回 unchanged，重建已有资产和工程不匹配时均在写入前停止。CSV 试验进一步证明数据导入不会自动生成结构；当前空表部署已省去 CSV。

跨项目直接复制旧数据表会丢失 RowStruct；此前重绑请求期间曾发生编辑器崩溃，这条方案已停用。已有的 TempleTest 测试表和原 UI 表不由本次模板整理自动替换。

TipSystem 的模板副本已用最小引擎替身验证优先级、同优先级 FIFO、内容转换与过滤、指定 owner 清理，以及上述两项现有行为；尚未进行真实引擎显示验证。

CommandSystem 的模板副本已在隔离环境验证实际空索引初始化及重载、缺失索引报错、本地参数解析、服务端与双端转发、禁用与鉴权拒绝、服务端执行端限制。基础隔离测试中的 RPC 使用引擎替身；可选 GM 的真实跨端执行结果见 [GM 验收](../../Docs/framework/GM_Integration_Verification.md)。

AutoTestKit 的 [回归检查](Tests/Test_AutoTestKit.lua) 包含 24 项隔离检查，覆盖空索引、加载失败与重试、Case 结果、生命周期错误、单 Case/Stop 清理、重复启动、多套件及通知。仅从模板加载模块，RPC 使用替身；真实 PIE 已验证两端各两项 Case 通过实际 Tick 完成。正式测试文件不属于普通部署清单。在工具仓库运行：

```text
lua Templates/framework-base/Tests/Test_AutoTestKit.lua
```

GameDataCore 的 [针对性回归检查](Tests/Test_GameDataCore.lua) 包含 8 项隔离检查，覆盖空 Meta、true/false/无返回值、异常、失败日志、公共 InitAllData 和多项初始化汇总。模块仅从模板加载，GameState 使用替身；尚未进行真实引擎验证。

PlayerDataCore 的 [针对性回归检查](Tests/Test_PlayerDataCore.lua) 包含 20 项隔离检查，覆盖空 Meta、初始化结果、独立存档往返、三态检查、旧格式与版本错误、无声明跳过保存、保存异常、恢复前校验和组件调用契约。引擎存档均为替身；没有修改真实玩家存档，尚未进行真实引擎或跨对局持久化验证。

LifeCycle 的 [回归检查](Tests/Test_LifeCycle.lua) 包含 31 项，覆盖两端启动、注册回滚、失败重试、包订阅时序、监听隔离、PC/Pawn 乱序、数据就绪、重生、退出、超时和真实模板 DataCore 的存档衔接。GenKit 的 [生成器回归](../../GenKit/Tests/Test_LifecycleRegistries.lua) 包含 17 项，检查内存生成输出、模板种子一致性、失败反馈、重试及 Tick 隔离。引擎均为替身。

TempleTest 历史上已完成实际入口同步、目标 Core 清单生成和 PIE 回归；每次新项目都须重复实际验收。entryScriptDefinitions 独立于普通复制清单，但属于必需流程，不能以尚无独立同步工具为由跳过。GameMode 业务包由项目处理；GM 是独立可选模板，见 framework-gm。


## 玩家属性组件部署

组件定义位于 `Definitions/Components/BP_PlayerPropertyComponent.json`，Lua 位于 `Project/Script/Blueprint/Component/BP_PlayerPropertyComponent.lua`，编辑器辅助代码位于 `PackageKit/editor/blueprint_components.py`。按目标 .ugcproj 的 GameModePath 加载 GameMode，再从 CDO.PlayerControllerClass 定位实际控制器。

辅助代码分为只读 inspect_component、组件资产 create_component、控制器资产 attach_component 三阶段，两个写阶段分别提交 PRV。创建 ActorComponent 蓝图并编译保存，用编辑器 Lua API 关联脚本；挂载时传组件蓝图 GeneratedClass，枚举含继承组件检查重复和同名冲突，随后编译保存并复查。已有不同脚本和类保持原样；匹配时返回 matched。不复制来源 .uasset，也不猜目标控制器文件名。

组件仅服务端读写自己的 Owner 存档，注册监听后查询 GetPlayerStatus 补接已发出的 PC 事件；客户端不加载存档依赖。没有任何声明数据键时跳过读写存档并通知就绪；运行时登记的键缺少生成常量则失败。错误不初始化或覆盖旧存档，也不释放服务端 Pawn；显式 RetryLoad 重试，loading/loaded 状态防止重入，EndPlay 移除监听并阻止后续保存和通知。成功完成数据但通知失败时，重试只补通知。组件不负责周期保存或退出保存。

15 项 [组件回归](Tests/Test_PlayerPropertyComponent.lua) 使用实际组件与 LifeCycle，存档核心和引擎替身覆盖所有者过滤、补接、三态、新建、恢复、失败重试、重入与退出。TempleTest 已完成全部文件部署、实际入口同步与 Core 清单生成；组件在真实 PIE 完成空数据就绪、两端重生及显式退出清理验证。

真实启动部署与已发现修复记录见 [启动验收](../../Docs/framework/Template_Startup_Verification.md)。AutoTestKit 已兼容不暴露 package.loaded 的客户端沙箱；LifeCycle 由每个玩家记录保留当前 Pawn，防止弱键随 Lua 包装对象 GC 丢失去重状态。

## 可选 AttributeSystem

[framework-attribute](../framework-attribute/README.md) 提供默认空配置的属性包，与 GM 独立选装。不覆盖血量、移动倍率或出生/重生生命值；仍声明 attribute_data 空数据容器，由现有 DataCore、PropertyComponent 和控制器复制流程处理。安装前纳入部署预检报告并等待确认，安装后生成包索引、数据常量和分类变更事件。

## 可选 SkillSystem

[framework-skill](../framework-skill/README.md) 提供默认空注册表的技能包，不携带技能 ID 或资源，与 GM、AttributeSystem 独立选装。skill_data 空容器由现有存档和复制流程处理；安装后生成包、Meta、数据常量和分类变更事件，预检确认及本次 PIE 验收按部署 skill 执行。
