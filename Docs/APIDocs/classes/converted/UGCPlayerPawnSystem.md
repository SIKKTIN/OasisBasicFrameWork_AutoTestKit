# UGCPlayerPawnSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPlayerPawnSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCPlayerPawnSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPlayerPawnSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPlayerPawnSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCPlayerPawnSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPlayerPawnSystem)

类

全文搜索

角色系统接口库

---


## 函数

- **HasPawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 是否在指定状态下 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **AllowPawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 是否允许进入指定状态 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **SwitchPoseState**(PlayerPawnPlayerPawn, ESTEPoseStatePoseState) — 切换 Pose 状态 生效范围：客户端 params PlayerPawn -玩家角色 params PoseState -角色状态
- **EnterPawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 进入指定状态 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **LeavePawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 离开指定状态 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **PawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState, booleanIsDisabled) — 禁用指定状态 生效范围：服务器 params PlayerPawn -玩家角色 params PawnState -角色状态 params IsDisabled -是否禁用
- **GetIsFPP**(PlayerPawnPlayerPawn) — 获取是否第一人称视角 生效范围：服务器&客户端 return -是不是 FPP 模式
- **SetIsFPP**(PlayerPawnPlayerPawn, booleanIsFPP, booleanbForce) — 设置是否第一人称视角 生效范围：服务器 return -设置是否成功 params PlayerPawn -玩家角色 params IsFPP -是否第一人称 params bForce -强制设置人称
- **GetIsTPP**(PlayerPawnPlayerPawn) — 获取是否第三人称视角 生效范围：服务器&客户端 return -是否第三人称
- **SetIsTPP**(PlayerPawnPlayerPawn, booleanIsTPP, booleanbForce) — 设置是否第三人称视角 生效范围：服务器 return -设置是否成功 params PlayerPawn -玩家角色 params IsTPP -是否第三人称 params bForce -强制设置 TPP 模式
- **GetIsInvincible**(PlayerPawnPlayerPawn) — 获取是否无敌 生效范围：服务器&客户端 return -是否无敌 params PlayerPawn -玩家角色
- **IsInvincible**(PlayerPawnPlayerPawn, booleanIsInvincible) — 设置是否无敌 生效范围：服务器 params PlayerPawn -玩家角色 params IsInvincible -是否无敌
- **EnterParachuteState**(PlayerPawnPlayerPawn, EPawnState[]CheckPawnState, numberCanOpenParachuteHeight, numberForceOpenParachuteHeight, numberCloseParachuteHeight, booleanbParachuteAvatarNotShown) — 尝试进入跳伞状态 生效范围：服务器 params PlayerPawn -玩家角色 params CheckPawnState -不允许进入跳伞的角色状态 params CanOpenParachuteHeight -允许开伞高度 params ForceOpenParachuteHeight -强制开伞高度 params CloseParachuteHeight -关伞高度 params bParachuteAvatarNotShown -是否不显示伞包
- **ParachuteState**(PlayerPawnPlayerPawn) — 退出跳伞状态 生效范围：服务器 params PlayerPawn -玩家角色
- **BoneByBoneName**(PlayerPawnPlayerPawn, stringBoneName, booleanbHide) — 根据玩家角色的骨骼名称修改骨骼的显隐性 生效范围：客户端 params PlayerPawn -玩家角色 params BoneName -骨骼名称 params bHide -true隐藏，false显示
- **AvatarVisibility**(PlayerPawnPlayerPawn, booleanbHide, EAvatarSlotType[]ExcludingAvatarSlot) — 设置角色Avatar的显隐 生效范围：客户端 params PlayerPawn -玩家角色 params bHide -true显示，false隐藏 params ExcludingAvatarSlot -排除的AvatarSlot类型
- **AvatarMesh**(PlayerPawnPlayerPawn, UClass) — stringSkeletalMesh
- **AvatarMesh**(PlayerPawnPlayerPawn) — 恢复玩家角色使用的全身骨骼体 生效范围：服务器 params PlayerPawn -玩家角色
- **SpawnDeadTombBox**(PlayerPawnPlayerPawn, booleanbIsSkip) — 玩家死亡取消生成盒子 生效范围：服务器 params PlayerPawn -玩家角色 params bIsSkip -玩家是否取消生成死亡盒子
- **GetPartTypeSockets**(ACharacterCharacter) — 获取角色骨骼里所有的PartTypeSocket 生效范围：服务器&客户端 return -PartTypeSocket列表 params Character -角色
- **DefaultPlayerRespawnPointSelectionMethod**(EUGCPlayerRespawnPointSelectionMethodMethod, FVectorRespawnMethodInfo) — 设置玩家的默认复活方式 生效范围：服务器 params Method -复活方式 params RespawnMethodInfo -指定复活位置（仅选择复活方式为指定复活点生效）
- **DefaultPlayerSpawnPointSelectionMethod**(EUGCPlayerSpawnPointSelectionMethodMethod, FVector) — uint8SpawnMethodInfo, booleanPlayerStartInfo
- **Player**(numberPlayerKey, numberRespawnDelayTime, booleanIsDestoryAlivePawn, numberDestroyDelayTime) — 复活单个角色 生效范围：服务器 params PlayerKey -PlayerKey params RespawnDelayTime -复活延时时间，默认为0 params IsDestoryAlivePawn -是否销毁当前未死亡的角色 params DestroyDelayTime -销毁未死亡角色的延时时间，默认为0.01，销毁时间不能设为零，否则角色不销毁
- **AllPlayers**(numberRespawnDelayTime, booleanIsDestroyAlivePawn, numberDestroyDelayTime) — 复活所有角色 生效范围：服务器 params RespawnDelayTime -复活延时时间，默认为0 params IsDestroyAlivePawn -是否销毁当前未死亡的角色 params DestroyDelayTime -销毁未死亡角色的延时时间，默认为0
- **RescueInterruptable**(PlayerPawnInPawn, booleanbCanBeInterrupt, numberCanBeInterruptWhenOverRadius) — 设置救援队友是否能被打断 生效范围：服务器 params InPawn -角色 params bCanBeInterrupt -是否能被打断 params CanBeInterruptWhenOverRadius -施救者可以移动的范围半径(传入的bCanBeInterrupt为true时这个变量才生效)
- **RescueOtherDuration**(PlayerPawnInPawn, numberRescueOtherDuration) — 设置救援队友的时长 生效范围：服务器 params InPawn -角色 params RescueOtherDuration -救援队友的时长
- **RescuingSelfCDTime**(PlayerPawnInPawn, numberRescuingSelfCDTime) — 设置自救的冷却时间 生效范围：服务器 params InPawn -角色 params RescuingSelfCDTime -救援队友的冷却时间
- **RescueOther**(PlayerPawnInPawn, PlayerPawnInTargetPawn) — 确认救援队友 生效范围：服务器 params InPawn -角色 params InTargetPawn -救援对象
- **RescueOtherImmediately**(PlayerPawnInPawn, PlayerPawnInTargetPawn) — 确认救援队友并将队友立即救起 生效范围：服务器 params InPawn -角色 params InTargetPawn -救援对象
- **IsDirectlyDie**(PlayerPawnInPawn, booleanbIsDirectlyDie) — 设置玩家倒地后立即死亡 生效范围：服务器 params InPawn -角色 params bIsDirectlyDie -是否倒地后立即死亡
- **Outline**(PlayerPawnInPawn, booleanbIsDrawOutline, numberOutlineThickness, FLinearColorOutlineColor) — 设置玩家描边 生效范围：客户端 params InPawn -角色 params bIsDrawOutline -是否描边 params OutlineThickness -描边粗细 params OutlineColor -描边颜色
- **AddOcclusionHighlight**(ACharacterTargetCharacter, AActorCauser, EPEBuffOcclusionHighlightTypeType, FLinearColorColor) — 添加透视效果 生效范围：客户端 return -透视ID，用于移除透视效果,<=0为无效值 params TargetCharacter -被透视的角色或怪 params Causer -透视的发起方 params Type -透视类型(仅Causer透视/Causer及其队友透视/所有人) params Color -透视颜色
- **OcclusionHighlight**(UObjectWorldContextObject, numberOcclusionID) — 移除透视效果 生效范围：客户端 params WorldContextObject -世界上下文对象 params OcclusionID -透视ID，AddOcclusionHighlight函数的返回值, <=0为无效值
- **OutputBusVolume**(PlayerPawnInPawn, numberVolume) — 修改角色发出的声音音量 生效范围：客户端 params InPawn -角色 params Volume -音量大小
- **EightWayUniformSpeedEnabled**(PlayerPawnInPawn, booleanEnable) — 设置八向移动相同速度 生效范围：客户端 params InPawn -角色 params Enable -是否启用
- **UpSubViewTargetServer**(PlayerPawnInPawn, booleanbSetUp, AActorTargetActor, numberBlendTime) — 设置ViewTarget 生效范围：服务端 params InPawn -角色 params bSetUp -是否启用 params TargetActor -是否启用 params BlendTime -缓动时间 HasPawnState AllowPawnState SwitchPoseState EnterPawnState LeavePawnState DisabledPawnState GetIsFPP SetIsFPP GetIsTPP SetIsTPP GetIsInvincible SetIsInvincible TryEnterParachuteState ExitParac