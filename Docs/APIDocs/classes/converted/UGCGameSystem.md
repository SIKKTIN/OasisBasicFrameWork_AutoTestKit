# UGCGameSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGameSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCGameSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGameSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCGameSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameSystem)

类

全文搜索

游戏通用接口库

---


## 函数

- **GetAllPlayerController**(booleanNotIgnorePureSpectator) — 获取所有的 PlayerController，客户端仅能拿到自己的PlayerController 生效范围：服务器&客户端 params NotIgnorePureSpectator -是否包含非玩家观战者（全局观战）
- **GetAllPlayerPawn**(获取所有的 PlayerPawn 生效范围：服务器&客户端)
- **GetAllPlayerState**(booleanNotIgnorePureSpectator?) — 获取所有的 PlayerState，客户端仅能拿到所有队友的PlayerState 生效范围：服务器&客户端 params NotIgnorePureSpectator? -是否包含非玩家观战者(全局观战)，客户端不生效
- **GetAllPlayerKey**(booleanNotIgnorePureSpectator?) — 获取所有的 PlayerKey，包括敌人的，该接口通过Pawn获取敌人的PlayerKey，如果敌人没有Pawn，则获取的UID不全 生效范围：服务器&客户端 return -PlayerKey列表 params NotIgnorePureSpectator? -是否包含非玩家观战者(全局观战)，客户端不生效
- **GetAllUID**(booleanNotIgnorePureSpectator) — 获取所有的 UID，包括敌人的，该接口通过Pawn获取敌人的UID，如果敌人没有Pawn，则获取的UID不全 生效范围：服务器&客户端 return -玩家UID列表 params NotIgnorePureSpectator -是否包含非玩家观战者(全局观战)
- **GetPlayerKeyByPlayerController**(ASTExtraPlayerControllerPlayerController) — 通过PlayerController获取PlayerKey 生效范围：服务器&客户端 return -PlayerKey，无效时返回-1
- **GetPlayerKeyByPlayerPawn**(ASTExtraPlayerCharacterPlayerPawn) — 通过PlayerPawn获取PlayerKey 生效范围：服务器&客户端 return -PlayerKey，无效时返回-1
- **GetPlayerKeyByPlayerState**(ASTExtraPlayerStatePlayerState) — 通过PlayerState获取PlayerKey 生效范围：服务器&客户端 return -PlayerKey，无效时返回-1
- **GetPlayerKeyByUID**(numberUID) — 通过 UID 获取 PlayerKey，客户端也可以获取敌人的UID 生效范围：服务器&客户端 return -PlayerKey，无效时返回-1
- **PlayerControllerGetPlayerControllerByPlayerKey**(numberPlayerKey) — 根据 PlayerKey 获取 PlayerController 生效范围：服务器&客户端 return -玩家 Controller params PlayerKey -玩家唯一 Key
- **STExtraPlayerControllerGetPlayerControllerByUID**(numberUID) — 通过UID获取PlayerController 生效范围：服务器 return -玩家 Controller params UID -玩家UID
- **STExtraPlayerControllerGetPlayerControllerByPlayerState**(ASTExtraPlayerStatePlayerState) — 通过PlayerState获取PlayerController，客户端只能通过PlayerState获取当前客户端的PlayerController 生效范围：服务器&客户端 return -玩家 Controller
- **STExtraPlayerControllerGetPlayerControllerByPlayerPawn**(ASTExtraPlayerCharacterPlayerPawn) — 通过PlayerPawn获取PlayerController，客户端只能通过PlayerPawn获取当前客户端的PlayerController 生效范围：服务器&客户端 return -玩家 Controller
- **FakePlayerAIControllerGetAIControllerByPlayerKey**(numberAIPlayerKey) — 根据 AIPlayerKey 获取 AIController 生效范围：服务器 return -假玩家 AIController params AIPlayerKey -假玩家唯一 Key
- **PawnGetPlayerPawnByPlayerKey**(numberPlayerKey) — 根据 PlayerKey 获取 PlayerPawn（不会获取到尸体） 生效范围：服务器&客户端 return -玩家 Pawn params PlayerKey -玩家唯一 Key
- **STExtraPlayerCharacterGetPlayerPawnByUID**(numberUID) — 通过UID获取PlayerPawn，客户端也可以获取敌人的Pawn 生效范围：服务器&客户端 return -玩家 Pawn params UID -玩家UID
- **STExtraPlayerCharacterGetPlayerPawnByPlayerState**(ASTExtraPlayerStatePlayerState) — 通过PlayerState获取PlayerPawn 生效范围：服务器&客户端 return -玩家 Pawn
- **STExtraPlayerCharacterGetPlayerPawnByPlayerController**(ASTExtraPlayerControllerPlayerController) — 通过PlayerController获取PlayerPawn 生效范围：服务器&客户端 return -玩家 Pawn
- **PlayerStateGetPlayerStateByPlayerKey**(numberPlayerKey) — 根据 PlayerKey 获取 PlayerState，客户端只能拿到队友的PlayerState 生效范围：服务器&客户端 return -玩家 PlayerState params PlayerKey -玩家唯一 Key
- **STExtraPlayerStateGetPlayerStateByPlayerPawn**(ASTExtraPlayerCharacterPlayerPawn) — 通过 PlayerPawn 获取 PlayerState，客户端仅能拿到所有队友的PlayerState 生效范围：服务器&客户端 return -玩家 PlayerState
- **GetPlayerStateByUID**(numberUID) — 根据 UID 获取 PlayerState，客户端仅能拿到所有队友的PlayerState 生效范围：服务器&客户端 return -玩家 PlayerState params UID -玩家 UID
- **GetPlayerStateByPlayerController**(ASTExtraPlayerControllerPlayerController) — 根据 PlayerController 获取 PlayerState 生效范围：服务器&客户端 return -玩家 PlayerState params PlayerController -玩家 Controller
- **GetUIDByPlayerController**(ASTExtraPlayerControllerPlayerController) — 根据 PlayerController 获取 UID 生效范围：服务器&客户端 return -玩家 UID params PlayerController -玩家 Controller
- **GetUIDByPlayerState**(PlayerStatePlayerState) — 根据 PlayerState 获取 UID 生效范围：服务器&客户端 return -玩家 UID params PlayerState -玩家 PlayerState
- **GetUIDByPlayerPawn**(ASTExtraPlayerCharacterPlayerPawn) — 根据 PlayerPawn 获取 UID 生效范围：服务器&客户端 return -玩家 UID params PlayerPawn -玩家 PlayerPawn
- **GetUIDByPlayerKey**(numberPlayerKey) — 根据 PlayerKey 获取 UID，通过Pawn获取敌人的UID，如果敌人Pawn死亡则获取的结果不全 生效范围：服务器&客户端 return -玩家 UID params PlayerKey -玩家 PlayerKey
- **ObjectNewObject**(UObjectOuter, UClassClass, stringName) — 创建 Object 生效范围：服务器&客户端 return -创建的对象
- **SpawnActor**(UObjectWorldContextObject, UClassActorClass, VectorLocation, RotatorRotation, VectorScale3D, ActorOwner) — 【废弃】请使用 UGCActorComponentUtility.SpawnActor 创建 Actor 生效范围：服务器&客户端 return -创建的Actor params WorldContextObject -世界上下文对象 params ActorClass -需要使用 UE.LoadClass 加载对应 Class 再作为参数传入 params Location -可使用 Vector.New(x,y,z) 创建,结构 {X=x,Y=y,Z=z} params Rotation -可使用 Rotator.New(Roll,Pitch,Yaw) 创建,结构 {Roll=Roll,
- **PlayerRespawnComponentGetRespawnComponent**(【废弃】请使用 UGCPlayerPawnSystem 获取复活组件 生效范围：服务器 return -复活组件)
- **PlayerRespawnInfo**(numberPlayerKey, booleanIsUseRespawnLocation, FTransformRespawnLocation) — 【废弃】请使用 UGCPlayerPawnSystem 设置复活信息 生效范围：服务器 params PlayerKey -PlayerKey params IsUseRespawnLocation -是否使用复活点 是：复活点复活 否：出生点复活 params RespawnLocation -复活点位置
- **Player**(numberPlayerKey) — 【废弃】复活单个角色 生效范围：服务器 params PlayerKey -PlayerKey
- **AllPlayers**(【废弃】请使用 UGCPlayerPawnSystem 复活所有角色 生效范围：服务器)
- **GetPlayerNum**(booleanIsIgnoreAI) — 获取玩家数量 生效范围：服务器&客户端 return -玩家数量 params IsIgnoreAI -是否忽略 AI
- **ControllerGetControllerByPawn**(APawnPlayerPawn) — 获取角色 Controller，包括 AI 生效范围：服务器
- **ApplyRadialDamageWhiteList**(numberBaseDamage, numberMinimumDamage, VectorOrigin, numberDamageInnerRadius, numberDamageOuterRadius, numberDamageFalloff, FGameplayTag[]DamageTypeTags, Actor[]GivenActors, ActorDamageCauser, Control) — 造成爆炸类伤害，指定列表内 Actor 接受伤害 生效范围：服务器 return -是否造成伤害 params BaseDamage -伤害值（最大） params MinimumDamage -最小伤害 params Origin -伤害中心 params DamageInnerRadius -伤害内圈范围（受到最大伤害) params DamageOuterRadius -伤害外圈范围（伤害持续衰减） params DamageFalloff -内圈至外圈伤害衰减指数 params DamageTypeTags -造成伤害的自定义类型列表 params GivenActors -指定受伤害
- **ApplyRadialDamage**(numberBaseDamage, numberMinimumDamage, VectorOrigin, numberDamageInnerRadius, numberDamageOuterRadius, numberDamageFalloff, FGameplayTag[]DamageTypeTags, Actor[]IgnoreActors, ActorDamageCauser, Contro) — 造成爆炸伤害 生效范围：服务器 return -是否造成伤害 params BaseDamage -伤害值（最大） params MinimumDamage -最小伤害 params Origin -伤害中心 params DamageInnerRadius -伤害内圈范围（受到最大伤害) params DamageOuterRadius -伤害外圈范围（伤害持续衰减） params DamageFalloff -内圈至外圈伤害衰减指数 params DamageTypeTags -造成伤害的自定义类型列表 params IgnoreActors -伤害忽略 Actor 列表 params D
- **ApplyPointDamage**(ActorDamagedActor, numberBaseDamage, VectorHitFromDirection, FHitResultHitInfo, ControllerEventInstigator, ActorDamageCauser, FGameplayTag[]DamageTypeTags, numberItemID) — 造成点伤害 生效范围：服务器 return -实际伤害 params DamagedActor -伤害目标 params BaseDamage -伤害值 params HitFromDirection -伤害来源方向（如子弹射击方向） params HitInfo -命中信息 params EventInstigator -事件煽动者的玩家控制器 params DamageCauser -造成伤害的人/物体 params DamageTypeTags -造成伤害的自定义类型列表 params ItemID -造成伤害的物品 ID
- **ApplyAvatarPositionDamage**(ActorDamagedActor, numberBaseDamage, ControllerEventInstigator, ActorDamageCauser, EAvatarDamagePositionAvatarDamagePosition, FGameplayTag[]DamageTypeTags) — 造成部位伤害 生效范围：服务器 return -实际伤害 params DamagedActor -伤害目标 params BaseDamage -伤害值 params EventInstigator -事件煽动者的玩家控制器 params DamageCauser -造成伤害的人/物体 params AvatarDamagePosition -造成伤害的部位 params DamageTypeTags -造成伤害的自定义类型列表
- **ApplyDamage**(ActorDamagedActor, numberBaseDamage, ControllerEventInstigator, ActorDamageCauser, FGameplayTag[]DamageTypeTags) — 造成伤害 生效范围：服务器 return -实际伤害 params DamagedActor -伤害目标 params BaseDamage -伤害值 params EventInstigator -事件煽动者的玩家控制器 params DamageCauser -造成伤害的人/物体 params DamageTypeTags -造成伤害的自定义类型列表
- **SendPlayerSettlement**(numberPlayerKey) — 【废弃】发送玩家结算（代表玩家已经完成了游戏，后台进行完成率统计，每个玩家正常结束游戏都需要发送） 最新：现已废弃，调用无效果，可以无需再调用，会在玩家退出游戏和触发 UGC请求退出DS Action 时自动发送 生效范围：服务器 return -是否发送成功。现在总是返回 true params PlayerKey -玩家 Key
- **Client**(断开客户端连接。DS关闭后，需要同步关闭客户端对服务器的长链接检测，否则玩家客户端会弹出无法连接到服务器的报错信息。 生效范围：客户端)
- **PlayerJoin**(开启补充玩家（需要先开启补充玩家，发送补充玩家申请才会有效） 例：成局人数最小为 10 人，最大 20 人，匹配设置中设置 10 人，然后开启补充玩家，申请 10 人的补充名额 生效范围：服务器)
- **PlayerJoin**(停止补充玩家（清空补充玩家申请记录） 生效范围：服务器)
- **PlayerJoin**(numberCount, numberTeamID) — 申请补充玩家（申请数量会累加,需先调用 UGCGameSystem.OpenPlayerJoin 开启补充玩家） 例：成局人数最小为10人，最大20人，匹配设置中设置10人，然后开启补充玩家，申请10人的补充名额 生效范围：服务器 params Count -需要补充的玩家数量 params TeamID -队伍ID
- **PlayerJoinLimitCount**(table<int, int>TeamPlayerCounts) — 申请补充玩家（申请数量会累加,需先调用 UGCGameSystem.OpenPlayerJoin 开启补充玩家） 例：成局人数最小为10人，最大20人，匹配设置中设置10人，然后开启补充玩家，申请10人的补充名额。但不会使得对局玩家的数量超过项目设置中 “小队玩家数量（TeamPlayers） * 队伍数量（NumberOfTeams）”设置的数量 生效范围：服务器 params TeamPlayerCounts -需要补充的玩家数量，形式如同：TeamPlayerCounts = { [TeamID1] = PlayerCount1, [TeamID2] = PlayerCount2, ..
- **EnterSpectating**(PlayerControllerPlayerController) — 进入观战，默认观战任意队友 可以通过 UGCGameSystem.ChangeAllowOBPlayerKeys 自定义可观战玩家列表 生效范围：服务器 return -被观战的玩家的 PlayerKey params PlayerController -进入观战的玩家 Controller
- **Spectating**(PlayerControllerPlayerController) — 退出观战 生效范围：服务器 params PlayerController -退出观战的玩家 Controller
- **AllowOBPlayerKeys**(PlayerControllerPlayerController, int32[]PlayerKeyList) — 设置可被观战玩家列表 生效范围：服务器 params PlayerController -可被观战玩家列表的 Controller params PlayerKeyList -可观战玩家列表数组
- **ObserversChangeTarget**(PlayerControllerPlayerController) — 让观战我的人切换别的观战目标，只有当观战对象的Pawn死亡时才生效 生效范围：服务器 params PlayerController -不再被观战的玩家 Controller
- **IsEnableGM**(PlayerControllerPlayerController) — 是否开启 GM，自定义 GM 逻辑和界面可接入此开关，正式服中此开关为 false 生效范围：服务器&客户端 return -是否开启 GM params PlayerController -玩家 Controller
- **IsServer**(是否为服务端 逻辑依赖 UGCGameSystem.GameState，在 GameState 初始化前的逻辑不建议调用此函数判断 生效范围：服务器&客户端 return -是否为服务端)
- **IsDebug**(是否在 Debug（编辑器 Debug 调试） 生效范围：服务器&客户端 return -是否为 Debug 环境)
- **GetPlatformInfo**(获取平台类型 生效范围：服务器&客户端 return -共有三种平台类型："PIE", "WINRELEASE", "CLIENT")
- **GetAllAIController**(获取所有的 AIController 生效范围：服务器 return -获取所有的 AIController,获取失败时将返回 nil)
- **ToLobby**(主动返回大厅（使用此接口返回大厅的玩家不会弹出重进战斗对话框） 生效范围：客户端)
- **OBPlayer**(PlayerControllerPlayerController, numberPlayerKey) — 改变当前观战目标（仅限观战中使用） 例：被观战的玩家被淘汰后，需要使用此接口，切换至其他玩家进行观战 生效范围：服务器 params PlayerController -自己的 PlayerController params PlayerKey -观战目标玩家 PlayerKey
- **ModeCustomEvent**(stringEventName, any...) — 向模式编辑器发送自定义事件 根据自定义事件参数顺序传入,如 SendModeCustomEvent(EventName,param1,param2) 生效范围：服务器 params EventName -事件名 params ... -自定义事件参数
- **GetServerTimeSec**(获取当前服务器时间 生效范围：服务器&客户端 return -当前服务器时间（UTC）:单位秒)
- **LuaSingleDelegateSetTimer**(UObjectObject, LuaFunctionCallbackFunction, numberTime, booleanIsLooping) — 设置定时器 生效范围：服务器&客户端 return FTimerHandle, -定时器句柄，定时器回调 params Object -对象 params CallbackFunction -Lua 回调函数 params Time -定时时长 params IsLooping -是否循环
- **Timer**(UObjectObject, ULuaSingleDelegateTimerHandle) — 移除定时器 生效范围：服务器&客户端 params Object -上下文对象 params TimerHandle -定时器句柄，定时器回调
- **TLog**(stringKey, stringValue) — 记录埋点日志 value 中多个字段建议使用_（下划线）分割 例: ItemName_NormalItem_Count_1 生效范围：服务器 params Key -日志索引 params Value -日志内容
- **GreyTLog**(numberID, numberPlayerKey) — 记录灰度埋点日志 生效范围：服务器 params ID -灰度 ID params PlayerKey -玩家 ID
- **PgcGameTlog**(numberIndex, numberUID, tableCustomData) — 发送游戏日志 生效范围：服务器 注意：函数会先做本地参数校验和频率限制；命中拦截时会直接 return，不会真正发包。 params Index -日志索引，必填，范围是[800800, 801800]；传 nil、非 number 或越界值会在本地校验阶段被拦截，日志不会发出去 params UID -玩家UID，必填；当前实现不支持传空，传 nil 或非 number 会在本地校验阶段被拦截，日志不会发出去；UID无效/错误仍可能导致上报失败 params CustomData -自定义数据，必填 table；传 nil 或非 table 会在本地校验阶段被拦截，日志不会发出去；序列化后超
- **LiveStreamingTLog**(numberLogType, numberId, tableValue) — 发送直播日志 生效范围：服务器 params LogType -类型 1-赛事，2-人生 params Id -事件ID(自定义) params Value -事件内容(自定义)
- **TournamentInfo**(numberPlayerKey, booleanbEscaped, numberPersonRank, numberTeamRank, ETournamentMatchResultMatchResult) — 设置赛事信息 生效范围：服务器 params PlayerKey -玩家Key params bEscaped -是否逃跑 params PersonRank -个人排名 params TeamRank -队伍排名 params MatchResult -胜利失败信息
- **MoveInputEventEnable**(PlayerControllerPlayerController, booleanIsEnable, booleanIsOverride) — 是否关闭移动输入事件 IsOverride 开启后需要在 PlayerController 重载 UGCMoveEvent(Vector2D) 事件 生效范围：客户端 params PlayerController -玩家控制器 params IsEnable -是否关闭 params IsOverride -是否重载（原移动输入会被覆盖）
- **LookInputEventEnable**(PlayerControllerPlayerController, booleanIsEnable, booleanIsOverride) — 开启/关闭旋转输入事件 IsOverride 开启后需要在 PlayerController 重载 UGCLookEvent(Vector2D) 事件 生效范围：客户端 params PlayerController -玩家控制器 params IsEnable -是否开启 params IsOverride -是否重载（原旋转输入会被覆盖）
- **PlayCameraShake**(ASTExtraPlayerControllerPlayerController, EPESkillCameraShakeTypeCameraShakeType, numberShakeScale, numberDuration) — 在PlayerController对应的客户端震屏 生效范围：服务器 params PlayerController -震屏玩家的 PlayerController params CameraShakeType -震屏类型(随机方向/X方向/Y方向) params ShakeScale -震屏强度 params Duration -震屏时间(单位:秒，<=0 表示一直持续)
- **StopCameraShake**(ASTExtraPlayerControllerPlayerController, EPESkillCameraShakeTypeCameraShakeType) — 在PlayerController对应的客户端停止某类型的震屏 生效范围：服务器 params PlayerController -震屏玩家的 PlayerController params CameraShakeType -震屏类型(随机方向/X方向/Y方向)
- **GetTableData**(stringTablePath) — 根据表格路径获取表格内容 TablePath支持以下格式(...表示相对Asset目录的路径, 如Data/Table)： .../TableName
- **GetUGCResourcesFullPath**('Asset/.../TableName.TableName') — /Game/.../TableName.TableName 生效范围：服务器&客户端 return -表格全部内容 params TablePath -表格路径
- **GetTableCount**(stringTablePath) — 根据表格路径获取表格行数 生效范围：服务器&客户端 return -表格行数 params TablePath -表格路径，支持格式见UGCGameSystem.GetTableData
- **GetTableDataByRowName**(stringTablePath, numberRowName) — 根据表格路径，以及key获取表格内容 生效范围：服务器&客户端 return -表格某行内容 params TablePath -表格路径，支持格式见UGCGameSystem.GetTableData params RowName -key值 string型或者int型都可以
- **GetDataTableData**(UDataTableDataTable) — 获取指定DataTable的表格内容 生效范围：服务器&客户端 return -表格全部内容 params DataTable -要读取的表格
- **GetDataTableDataByRowName**(UDataTableDataTable, stringRowName) — 获取指定DataTable的指定行的表格内容 生效范围：服务器&客户端 return -指定行的全部内容 params DataTable -要读取的表格 params RowName -行名
- **GetDataTableRowCount**(UDataTableDataTable) — 获取指定DataTable的行数 生效范围：服务器&客户端 return -行数 params DataTable -要读取的表格
- **GetTableData**(stringTablePath, functionCallBack, UObjectCallBack_self) — 异步根据表格路径获取表格内容 生效范围：服务器&客户端 params TablePath -表格路径，支持格式见UGCGameSystem.GetTableData params CallBack -lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) params CallBack_self -这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
- **GetTableCount**(stringTablePath, functionCallBack, UObjectCallBack_self) — 异步根据表格路径获取表格行数 生效范围：服务器&客户端 params TablePath -表格路径，支持格式见UGCGameSystem.GetTableData params CallBack -lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) params CallBack_self -这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
- **GetTableDataByRowName**(stringTablePath, stringRowName, functionCallBack, UObjectCallBack_self) — 异步根据表格路径获取表格内容 生效范围：服务器&客户端 params TablePath -表格路径，支持格式见UGCGameSystem.GetTableData params RowName -查询关键字 params CallBack -lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) params CallBack_self -这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传
- **Friend**(numberUID) — 添加好友 生效范围：客户端 params UID -玩家 UID
- **GetUGCResourcesFullPath**(stringRelativePath) — 获取资源的完整加载路径 仅自己工程下资源需要使用此函数获取路径，和平精英目录资源不需要使用此函数拼接路径 例：自己工程资源 local ClassPath = "Asset/MyBlueprint.MyBlueprint_C"
- **LoadClass**(UGCGameSystem.GetUGCResourcesFullPath(ClassPath) — 例：和平精英目录资源 local ClassPath = "/Game/Arts_PlayerBluePrints/Vehicle/VH_Buggy/BP_VH_Buggy.BP_VH_Buggy_C"
- **LoadClass**(ClassPath) — 生效范围：服务器&客户端 return -完整资源路径 params RelativePath -工程资源路径
- **UGCRequire**(stringRelativePath) — 用于替代原生require，如果需要将功能发布至资源商店，需要使用此函数 require lua 文件 例：require("Script.MyLua"); 生效范围：服务器&客户端 return -加载的 lua 文件 params RelativePath -Lua 文件路径
- **UGCRankAndAchievementUI**(显示绿洲段位，徽章结算界面 会自动显示段位变化以及新增徽章 详细内容参考：https://developer.gp.qq.com/wikieditor/#/catalog/375 生效范围：客户端)
- **ObjectGetSTExtraGMDelegatesMgr**(获取 DS 全局事件代理 生效范围：服务器 return -全局代理类)
- **STExtraPlayerControllerGetLocalPlayerController**(获取客户端当前的 PlayerController 生效范围：客户端 return -当前正在控制的玩家)
- **PawnGetLocalPlayerPawn**(获取客户端当前的 PlayerPawn 生效范围：客户端 return -当前的PlayerPawn)
- **STExtraPlayerStateGetLocalPlayerState**(获取客户端当前的 PlayerState 生效范围：客户端 return -当前的PlayerState)
- **GetLocalPlayerKey**(获取客户端当前的 PlayerKey 生效范围：客户端 return -当前的PlayerKey)
- **UGCGameModeBaseGetGameMode**(获取当前的 GameMode 生效范围：服务器 return -当前的 GameMode)
- **UGCGameStateBaseGetGameState**(获取当前的 GameState 生效范围：服务器&客户端 return -当前的 GameState)
- **IsRoomMode**(判断是否是房间模式 生效范围：服务器 return -true表示是房间模式，false表示不是房间模式)
- **PlayerAntiAFKData**(numberUID, stringDataKey, stringDataValue) — 反挂机数据收集 在结算数据里上报 1.击杀数-Kill 2.伤害量-DamageAmount 3.移动距离-TravelDistance 4.达到存档数-ReachedArchives 生效范围：服务器 params UID -上报玩家的UID params DataKey -上报数据的字段名字 params DataValue -上报数据
- **GetCurrentLevel**(UObjectWorldContextObject, booleanbRemovePrefixString) — 获取当前关卡 生效范围：服务器 return -当前关卡的名字 params WorldContextObject -关卡上下文对象 params bRemovePrefixString -是否移除前缀字符串
- **StreamLevel**(stringLevelName, booleanbMakeVisibleAfterLoad, booleanbShouldBlockOnLoad, LatentInfoLatentInfo) — 加载关卡 生效范围：服务器 & 客户端 params LevelName -关卡名字 params bMakeVisibleAfterLoad -是否在加载完成后显示关卡 params bShouldBlockOnLoad -是否延迟加载 params LatentInfo -延迟信息
- **StreamLevel**(stringLevelName, LatentInfoLatentInfo) — 卸载关卡 生效范围：服务器 & 客户端 params LevelName -关卡名字 params LatentInfo -延迟信息
- **LevelStreaming**(强制刷新关卡流加载 生效范围：服务器)
- **ObjectPtrMakeWeakObjectPtr**(UObjectInObject) — 【废弃】创建弱对象指针 生效范围：服务器 & 客户端 return -弱对象指针 params InObject -对象
- **ObjectGetObjectFromWeakObjectPtr**(WeakObjectPtrInWeakObjectPtr) — 【废弃】从弱对象指针获取对象 生效范围：服务器 & 客户端 return -对象 params InWeakObjectPtr -弱对象指针
- **IsWeakObjectPtrValid**(WeakObjectPtrInWeakObjectPtr) — 【废弃】判断弱对象指针是否有效 生效范围：服务器 & 客户端 return -是否有效 params InWeakObjectPtr -弱对象指针
- **MouseCursorShowState**(切换鼠标显示 生效范围：客户端)
- **GetShowMouseCursor**(获取鼠标显示状态 生效范围：客户端 return -是否显示鼠标)
- **MouseCursorShowState**(booleanbShow) — 设置鼠标显示 生效范围：客户端 params bShow -是否显示鼠标
- **Outline**(AActorInActor, booleanbIsDrawOutline, numberOutlineThickness, FLinearColorOutlineColor) — 设置Actor描边 生效范围：客户端 params InActor -Actor params bIsDrawOutline -是否描边 params OutlineThickness -描边粗细 params OutlineColor -描边颜色
- **IsUGCPIE**(是否为PIE环境 生效范围：服务器& 客户端 return -是否为PIE环境)
- **ParticleSystemComponentSpawnEmitterAtLocation**(UObjectWorldContext, UParticleSystemEmitterTemplate, FVectorLocation, FRotatorRotation, FVectorScale, booleanbAutoDestroy) — 在指定位置生成粒子效果，粒子系统播放完成后会自动销毁，不会进行网络复制 生效范围：客户端 return -粒子系统组件 params WorldContext -世界上下文对象 params EmitterTemplate -要创建的粒子系统 params Location -位置 params Rotation -旋转 params Scale -缩放 params bAutoDestroy -是否自动销毁
- **ParticleSystemComponentSpawnEmitterAttached**(UParticleSystemEmitterTemplate, USceneComponentAttachComponent, stringAttachPointName, FVectorLocation, FRotatorRotation, FVectorScale, EAttachLocationLocationType, booleanbAutoDestroy) — 播放指定效果，该效果会附加到指定组件并跟随其移动。效果播放完成后系统将消失。此效果不进行网络复制 生效范围：客户端 return -创建的粒子系统组件 params EmitterTemplate -要创建的粒子系统 params AttachComponent -要附加到的组件 params AttachPointName -附加组件中用于生成发射器的可选命名点（若不指定则在附加组件原点生成） params Location -根据 LocationType 的值，此参数可为相对于附加组件/点的偏移量；或为绝对世界位置（若 LocationType 为 KeepWorldPosition，则
- **DecalComponentSpawnDecalAtLocation**(UObjectWorldContext, UMaterialInterfaceDecalMaterial, FVectorDecalSize, FVectorLocation, FRotatorRotation, numberLifeSpan) — 在指定位置和旋转角度生成一个贴花，生成后无需管理。此效果不进行网络复制 return -创建的贴花组件 params WorldContext -世界上下文对象 params DecalMaterial -贴花的材质 params DecalSize -贴花的尺寸 params Location -贴花在世界空间中的放置位置 params Rotation -贴花在世界空间中的放置旋转 params LifeSpan -贴花组件在时间结束后销毁（0表示永久存在）
- **DecalComponentSpawnDecalAtAttached**(UMaterialInterfaceDecalMaterial, FVectorDecalSize, USceneComponentAttachComponent, stringAttachPointName, FVectorLocation, FRotatorRotation, EAttachLocationLocationType, numberLifeSpan) — 在指定组件上生成一个附加并跟随的贴花。此效果不进行网络复制 return -创建的贴花组件 params DecalMaterial -贴花的材质 params DecalSize -贴花的尺寸 params AttachComponent -要附加到的组件 params AttachPointName -附加组件中用于生成发射器的可选命名点（若不指定则在附加组件原点生成） params Location -根据 LocationType 的值，此参数可为相对于附加组件/点的偏移量；或为绝对世界位置（若 LocationType 指定为 KeepWorldPosition，则会将该位置转换为相
- **GetTimeSeconds**(UObjectWorldContext) — 获得当前游戏开始之后的时间，单位秒，受时间膨胀影响，但不受游戏暂停影响 生效范围：服务器 & 客户端 return -当前游戏开始之后的时间，单位秒 params WorldContext -世界上下文对象
- **DateTimeToTimeStamp**(FDateTimeDateTime) — 将日期时间转换为时间戳 生效范围：服务器 & 客户端 return -时间戳 params DateTime -日期时间
- **DateTimeGetCurrentDateTime**(获取当前日期时间 生效范围：服务器& 客户端 return -当前日期时间)
- **GetDSRemainingTime**(获取DS剩余时间，单位秒 生效范围：服务器 return -DS剩余时间)
- **DSCloseNotify**(int[]NotifyTimes) — 设置DS关闭通知时间，监听UGCGenericMessageSystem.UserDefinedMessages.UGC.UGCDSShutDownManager.DSCloseNotify，会在到达时间时发送通知，附带参数为DS剩余时间 假设已经到了设置的时间比DS长，例如DS剩余关闭时间是30s，设置的时间组是{50，40，20}，那么会在游戏开始时，50和40两个时间点合并仅发送一次通知，目前仅支持整数时间点 生效范围：服务器 params NotifyTimes -通知时间组
- **Over**(游戏结束，一键执行发送所有玩家结算，玩家退出和玩家销毁的动作，并关闭DS，这个接口会有一定延时，如果玩家还在游戏内执行，会将玩家强行踢出ds，返回大厅 生效范围：服务器)
- **IsObserver**(APlayerControllerPlayerController) — 判断玩家是否为观战玩家 生效范围：服务器 & 客户端 return -是否为观战玩家 params PlayerController -玩家控制器
- **UGCDamageNumberParamsMakeCustomDamageNumberParams**(生成自定义伤害数字默认参数 生效范围：服务器& 客户端 return -自定义伤害数字参数)
- **AddUGCCustomDamageNumber**(UObjectWorldContext, ActorTargetActor, FUGCDamageNumberParamsParams) — 显示自定义伤害数字 生效范围：客户端 return -是否为观战玩家 params WorldContext -世界上下文对象 params TargetActor -伤害数字显示目标 params Params -自定义伤害数字参数
- **IsOuterlineDEV**(判断是否为外研线 生效范围：服务器& 客户端 return -是否为外研线 GetAllPlayerController GetAllPlayerPawn GetAllPlayerState GetAllPlayerKey GetAllUID GetPlayerKeyByPlayerController GetPlayerKeyByPlayerPawn GetPlayerKeyByPlayerState GetPlayerKeyByUID GetPlayerControllerByPlayerKey GetPlayerControllerByUID GetPlayerControllerBy)

## 属性

- **ApplyPlayerJoinStoppedReason** — EApplyPlayerJoinStoppedReason @停止补充玩家的原因 UGCGameSystem.ApplyPlayerJoinSucceededDelegate 通过补充玩家接口（UGCGameSystem.ApplyPlayerJoin、UGCGameSystem.ApplyPlayerJoinLimitCount），使得每一名玩家加入成功时触发 生效范围：服务器 @param UID number @玩家 UID @param RemainingPlayerCountToJoin number @剩余需要加入的玩家数量 UGCGameSystemImplementation.