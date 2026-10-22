UGCVehicleSystem
载具系统接口库
函数
ASTExtraVehicleBaseSpawnVehicle(numberVehicleID, VectorLocation, RotatorRotation, booleanIsForce)
【废弃】请使用 UGCVehicleSystem.SpawnVehicleNew
生成载具
生效范围：服务器
return  
-载具
params VehicleID 
-载具表ID
params Location 
-生成位置
params Rotation 
-旋转
params IsForce 
-是否无视碰撞强行生成
EnterVehicle(ASTExtraBaseCharacterPawn, ASTExtraVehicleBaseVehicle, ESTExtraVehicleSeatTypeSeatType, booleanIsForce)
进入载具
仅限普通玩家控制的角色（Character）可以用
生效范围：服务器&客户端
params Pawn 
-普通玩家
params Vehicle 
-载具
params SeatType 
-座位类型
params IsForce 
-是否无视距离和阻挡
ExitVehicle(ASTExtraBaseCharacterPawn)
离开载具
仅限普通玩家控制的角色可以用
生效范围：服务器&客户端
params Pawn 
-普通玩家
numberGetVehicleSeatCount(ASTExtraVehicleBaseVehicle)
获取载具的座位数量
生效范围：服务器&客户端
return  
-载具的座位数量
params Vehicle 
-载具
ASTExtraBaseCharacter[]GetVehicleSeatOccupiers(ASTExtraVehicleBaseVehicle)
获取载具座位上的乘客列表（包括司机）
生效范围：服务器&客户端
return  
-载具上的乘客们（包括司机）
params Vehicle 
-对应的载具
ESTExtraVehicleSeatTypeGetVehicleSeatType(ASTExtraVehicleBaseVehicle, numberSeatIndex)
获取载具对应 SeatIndex 编号的座位类型
生效范围：服务器&客户端
return  
-载具座位类型
params Vehicle 
-载具
params SeatIndex 
-座位编号(从1开始)
ASTExtraBaseCharacterGetOccupierBySeatIndex(ASTExtraVehicleBaseVehicle, numberSeatIndex)
获取 SeatIndex 编号获取对应座位上的乘客 Pawn
生效范围：服务器&客户端
return  
-对应乘客，如果没有则返回 nil
params Vehicle 
-载具
params SeatIndex 
-座位编号（从 1 开始）
ASTExtraVehicleBaseSpawnVehicleNew(stringVehicleBlueprintPath, VectorLocation, RotatorRotation, booleanSnapFloor, booleanIsForce)
使用蓝图路径生成载具
不要在 Spawn 之后立马修改载具位置，等载具落地停稳后再修改，不然位置修改会失败（如果有类似需求，建议直接创建在对应点）
生效范围：服务器
return  
-载具
params VehicleBlueprintPath 
-载具蓝图路径，格式类似 /Game/Arts_PlayerBluePrints/Vehicle/VH_Buggy/BP_VH_Buggy.BP_VH_Buggy_C
params Location 
-生成位置
params Rotation 
-旋转
params SnapFloor 
-是否贴地
params IsForce 
-是否无视碰撞强行生成
booleanCharacterEnterVehicle(ASTExtraBaseCharacterCharacter, ASTExtraVehicleBaseVehicle, ESTExtraVehicleSeatTypeSeatType, booleanIsForce)
乘客进入载具
仅限普通玩家控制的角色可以用
生效范围：服务器
return  
-是否成功
params Character 
-乘客
params Vehicle 
-载具
params SeatType 
-座位类型
params IsForce 
-是否无视距离和阻挡
CharacterLeaveVehicle(ASTExtraBaseCharacterCharacter)
乘客离开当前所在载具
仅限普通玩家控制的角色可以用
生效范围：服务器
params Character 
-乘客
TeleportVehicleTo(ASTExtraVehicleBaseVehicle, VectorLocation, RotatorRotator)
传送载具
不要在 Spawn 之后立马传送载具，等载具落地停稳后再传送，不然传送会失败（如果有类似需求，建议直接创建在对应点）
生效范围：服务器
params Vehicle 
-载具
params Location 
-位置
params Rotator 
-旋转
numberGetForwardSpeed(ASTExtraVehicleBaseVehicle)
获得载具当前速度(单位是cm/s)
生效范围：服务器&客户端
return  
-载具当前速度
params Vehicle 
-载具
booleanIsStoped(ASTExtraVehicleBaseVehicle)
载具是否静止
生效范围：服务器&客户端
return  
-载具是否静止
params Vehicle 
-载具
booleanIsEngineStarted(ASTExtraVehicleBaseVehicle)
载具引擎是否启动
生效范围：服务器&客户端
return  
-载具引擎是否启动
params Vehicle 
-载具
ESTExtraVehicleHealthStateGetVehicleHealthState(ASTExtraVehicleBaseVehicle)
获得当前载具健康状态
生效范围：服务器&客户端
return  
-载具当前健康状态
params Vehicle 
-载具
DestroySelf(ASTExtraVehicleBaseVehicle)
摧毁载具
生效范围：服务器
params Vehicle 
-载具
Respawn(ASTExtraVehicleBaseVehicle)
重生载具
生效范围：服务器
params Vehicle 
-载具
booleanGetSeatState(ASTExtraVehicleBaseVehicle, numberSeatIndex)
指定座位上是否有人
生效范围：服务器&客户端
return  
-指定座位上是否有人
params Vehicle 
-载具
params SeatIndex 
-座位 ID
numberGetSeatNum(ASTExtraVehicleBaseVehicle)
获得载具座位个数
生效范围：服务器&客户端
return  
-载具座位个数
params Vehicle 
-载具
numberGetWheelNum(ASTExtraVehicleBaseVehicle)
获得轮胎数量
生效范围：服务器&客户端
return  
-载具轮子数量
params Vehicle 
-载具
booleanIsWheelDamageable(ASTExtraVehicleBaseVehicle, numberWheelIndex)
获得轮胎是否可以被摧毁
生效范围：服务器
return  
-轮胎是否可以被摧毁
params Vehicle 
-载具
params WheelIndex 
-轮胎 ID（从 1 开始）
SetWheelDamageable(ASTExtraVehicleBaseVehicle, numberWheelIndex, booleanDamageable)
设置轮胎是否可以被摧毁
生效范围：服务器
params Vehicle 
-载具
params WheelIndex 
-轮胎ID（从1开始）
params Damageable 
-是否可以被摧毁
StopFireVehicleWeapon(ASTExtraVehicleBaseVehicle, AVehicleShootWeaponVehicleWeapon)
车载武器停止攻击
仅限驾驶位车载武器生效
生效范围：客户端
params Vehicle 
-载具
params VehicleWeapon 
-车载武器
StartFireVehicleWeapon(ASTExtraVehicleBaseVehicle, AVehicleShootWeaponVehicleWeapon, ASTExtraBaseCharacterCharacter)
车载武器开始攻击
仅限驾驶位车载武器生效
生效范围：客户端
params Vehicle 
-载具
params VehicleWeapon 
-车载武器
params Character 
-攻击者(传入 nil 视为 Driver)
AVehicleShootWeaponGetVehicleWeapon(ASTExtraVehicleBaseVehicle, numberSeatIndex, numberWeaponID)
获得指定座位上指定 ID 的武器实例
武器 ID 指载具蓝图中，座位上配置的武器序号
生效范围：服务器&客户端
return  
-武器实例
params Vehicle 
-载具
params SeatIndex 
-座位ID（从 1 开始）
params WeaponID 
-武器ID（从 1 开始）
AVehicleShootWeapon[]GetAllVehicleWeaponList(ASTExtraVehicleBaseVehicle)
获得所有车载武器的列表
生效范围：服务器&客户端
return  
-武器列表
params Vehicle 
-载具
StopMusic(ASTExtraVehicleBaseVehicle)
暂停播放车载音乐
生效范围：服务器
params Vehicle 
-载具
ESTExtraVehicleTypeGetVehicleType(ASTExtraVehicleBaseVehicle)
获得载具类型
生效范围：服务器&客户端
return  
-载具类型
params Vehicle 
-载具
StartBrake(ASTExtraVehicleBaseVehicle)
载具拉起手刹
仅在主控端（驾驶员端）调用有效
生效范围：客户端
params Vehicle 
-载具
StopBrake(ASTExtraVehicleBaseVehicle)
载具放下手刹
仅在主控端（驾驶员端）调用有效
生效范围：客户端
params Vehicle 
-载具
booleanCanDriverBoosting(ASTExtraVehicleBaseVehicle)
获得载具是否能够加速
生效范围：服务器&客户端
return  
-载具是否能够加速
params Vehicle 
-载具
StartBoosting(ASTExtraVehicleBaseVehicle)
载具加速
生效范围：客户端
params Vehicle 
-载具
StopBoosting(ASTExtraVehicleBaseVehicle)
载具取消加速
生效范围：客户端
params Vehicle 
-载具
booleanCanDriverUsingHorn(ASTExtraVehicleBaseVehicle)
是否能按喇叭
生效范围：服务器
return  
-是否能按喇叭
params Vehicle 
-载具
StartHorn(ASTExtraVehicleBaseVehicle)
载具长按喇叭（按下）
生效范围：客户端
params Vehicle 
-载具
StopHorn(ASTExtraVehicleBaseVehicle)
载具长按喇叭（抬起）
生效范围：客户端
params Vehicle 
-载具
MoveForward(ASTExtraVehicleBaseVehicle, numberThrottle)
载具前进/后退
需要在驾驶员所在客户端每帧调用
生效范围：客户端
params Vehicle 
-载具
params Throttle 
-取值范围[-1,1]，负值代表后退，正值代表前进
booleanCanDrive(ASTExtraVehicleBaseVehicle)
驾驶员是否可以操控载具
生效范围：服务器&客户端
return  
-是否可以操控载具
params Vehicle 
-载具
PlayMusic(ASTExtraVehicleBaseVehicle, numberMusicIndex)
播放车载音乐
注意，武装载具不支持车载音乐功能
生效范围：服务器&客户端
params Vehicle 
-载具
params MusicIndex 
-曲目ID（取值范围[1,8]）
ESTExtraVehicleBaseTypeGetVehicleBaseType(ASTExtraVehicleBaseVehicle)
获取载具的基础类型
生效范围：服务器&客户端
return  
-载具基础类型
params Vehicle 
-载具
ModifyWheeledVehicleDragCoefficientScale(ASTExtraVehicleBaseVehicle, numberScale)
修改空气阻力的倍率
生效范围：服务器
params Vehicle 
-载具
params Scale 
-空气阻力的修改倍率
ModifyWheeledVehicleMaxRPMScale(ASTExtraVehicleBaseVehicle, numberScale)
修改引擎最大转速的倍率
生效范围：服务器
params Vehicle 
-载具
params Scale 
-引擎最大转速的修改倍率
ModifyWheeledVehicleTorqueScale(ASTExtraVehicleBaseVehicle, numberScale)
修改引擎扭矩的倍率
生效范围：服务器
params Vehicle 
-载具
params Scale 
-引擎扭矩的修改倍率
BrakeInCustomizeScale(ASTExtraVehicleBaseVehicle, numberScale)
用自定义倍率刹车
生效范围：服务器
params Vehicle 
-载具
params Scale 
-自定义刹车倍率
ASTExtraVehicleBaseGetVehicleByPlayerController(APlayerControllerPlayerController)
通过 PlayerController 获取 Vehicle
生效范围：服务器&客户端
return  
-对应的载具
params PlayerController 
-对应的玩家控制器