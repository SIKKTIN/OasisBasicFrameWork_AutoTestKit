ASTExtraPlayerController
主角控制器
函数
ASTExtraBaseCharacter *GetPlayerCharacterSafety()
获得主角Pawn,如果正在观战,取出来是nullptr
return  
-主角Pawn
事件
voidUGCMoveEvent(FVector2DAxis)
角色移动控制事件，需要通过接口GameSystem.SetMoveInputEventEnable开启，每次触发会执行两次该事件，分别返回X和Y值
params Axis 
-向量单位，取值范围（-1~1）
voidUGCLookEvent(FVector2DRot)
玩家转向控制事件，需要通过接口GameSystem.SetLookInputEventEnable开启，每次触发会执行两次该事件，分别返回X和Y值
params Rot 
-向量单位，取值范围（-1~1）
voidUGC_PlayerLostConnectionEvent()
玩家断线事件。
voidUGC_PlayerReconnectedEvent(boolIsRecovered)
玩家重连事件。
params IsRecovered 
-是否为静默重连，为false则为杀进程重连
voidUGC_InitializationCompleteEvent()
初始化完毕
生效范围S
boolUGC_PickupItemEvent(int32 ItemID, int32Count)
获取道具事件，可控制当前道具是否允许获取
生效范围S
return  
-是否允许拾取
params ItemID 
-物品ID
params Count 
-拾取数量 (-1表示此时数量未知)
boolUGC_SwitchWeaponControlEvent(ESurviveWeaponPropSlotSwitchSlot)
切换武器控制事件，可控制当前武器是否允许切换，返回false则无法切换
生效范围C
return  
-是否允许切换
params SwitchSlot 
-武器槽位
boolUGC_StartFireControlEvent()
开火控制事件，可控制是否允许开火，返回false则无法开火
生效范围C
return  
-是否允许开火
boolUGC_ReloadControlEvent()
换弹控制事件，可控制是否允许换弹，返回false则无法换弹
生效范围C
return  
-是否允许开火
boolUGC_OpenScopeControlEvent()
开镜控制事件，可控制是否允许开镜，返回false则无法开镜
生效范围C
return  
-是否允许开镜
boolUGC_ThrowGrenadeEvent()
投掷控制事件，可控制是否允许投掷，返回false则无法投掷
生效范围C
return  
-是否允许投掷
voidUGC_IsSpectatingEvent(boolbIsSpec)
是否在观战事件
生效范围SC
return  
-是否在观战
voidUGC_FingerMoveEvent(ETouchIndex :: Type FingerIndex, FVectorLoc)
手指移动事件
生效范围SC
voidUGC_ReleaseScreenEvent(ETouchIndex :: TypeFingerIndex)
松开屏幕事件
生效范围SC
voidUGC_TouchScreenEvent(ETouchIndex :: Type FingerIndex, FVectorLoc)
触摸屏幕事件
生效范围SC
属性
UBackpackComponent *BackpackComponent
背包组件