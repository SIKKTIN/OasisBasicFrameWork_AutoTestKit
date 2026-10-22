-- 框架通用事件定义；业务事件由目标项目按功能扩展。
-- 编号沿用来源项目，避免迁移调用方时改变事件含义。
-- 此文件只声明事件，不注册监听或触发事件。
EventType = EventType or {}

-- 服务端生命周期。参数均为 playerKey，Server_OnGameInit 除外。
EventType.Server_OnPlayerControllerInit = 1002
EventType.Server_OnPlayerDataLoaded = 1003
EventType.Server_OnPlayerPawnInit = 1004
EventType.Server_OnGameInit = 1005 -- 兼容服务端框架就绪通知，无参数；不表示地图加载完成。
EventType.Server_OnPlayerEnd = 1006

-- 客户端本地控制器/Pawn 就绪通知，参数为对应对象。
EventType.Client_OnPlayerControllerInit = 3002
EventType.Client_OnPlayerPawnInit = 3003

-- 无存档玩家初始化，参数为 playerKey；保留 Plaer 历史拼写以兼容调用方。
EventType.Server_Delegate_PlaerDataLoad = 2001

-- 引擎对象初始化入口，参数分别为 GameState、PlayerController、Pawn。
EventType.Lifecycle_GameState_Init = 4001
EventType.Lifecycle_PC_Init = 4002
EventType.Lifecycle_Pawn_Init = 4003
EventType.Lifecycle_FrameworkReady = 4004 -- 每端全部 Core/Package 启动成功，参数 GameState。
EventType.Lifecycle_PC_End = 4005 -- 控制器退出入口，参数 PlayerController。

-- 5000–5999 由 Event_DataChange 的生成流程使用，手工事件避开该范围。
return EventType
