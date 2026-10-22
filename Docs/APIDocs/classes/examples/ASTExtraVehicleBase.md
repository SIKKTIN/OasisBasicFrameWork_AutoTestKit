ASTExtraVehicleBase
载具基类
事件
voidUGC_OnVehicleEnterEvent(bool IsSucc, ASTExtraPlayerCharacter * Character, ESTExtraVehicleSeatTypeSeatType)
玩家进入载具事件
生效范围CS
params IsSucc 
-上车是否成功
params Character 
-乘客
params SeatType 
-座位类型
voidUGC_OnVehicleExitEvent(ASTExtraPlayerCharacter *Character)
玩家离开载具事件
生效范围CS
params Character 
-乘客
委托
voidUGC_OnVehicleHealthStateChangedDelegate(ESTExtraVehicleHealthStateInVehicleHealthState)
载具健康状态变化
生效范围 CS
params InVehicleHealthState 
-变化后的健康状态
voidUGC_OnVehicleExplosionDelegate()
生效范围S
载具爆炸事件