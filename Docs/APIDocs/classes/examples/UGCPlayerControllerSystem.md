UGCPlayerControllerSystem
玩家控制器系统
函数
DisableJoyStickSprint(PlayerControllerPlayerController)
禁用摇杆触发疾跑
生效范围：服务器&客户端
params PlayerController 
-玩家控制器
EnableJoyStickSprint(PlayerControllerPlayerController)
启用摇杆触发疾跑
生效范围：服务器&客户端
params PlayerController 
-玩家控制器
numberGetTeamID(PlayerControllerPlayerController)
通过 PlayerController 获取 TeamID
生效范围：服务器&客户端
return  
-玩家队伍 ID
params PlayerController 
-玩家控制器
ASTExtraBaseCharacterGetPlayerCharacter(PlayerControllerPlayerController)
获取玩家角色
生效范围：服务器&客户端
return  
-玩家角色
params PlayerController 
-玩家控制器
TeleportTo(PlayerControllerPlayerController, numberX, numberY, numberZ)
瞬移至坐标
生效范围：服务器
params PlayerController 
-玩家控制器
params X 
-X坐标
params Y 
-Y坐标
params Z 
-Z坐标
SetControlRotation(PlayerControllerPlayerController, RotatorNewRotation)
设置控制旋转
生效范围：服务器&客户端
params PlayerController 
-玩家控制器
params NewRotation 
-新旋转量 可使用Rotator.New(Roll,Pitch,Yaw)创建,结构{Roll=Roll, Pitch=Pitch, Yaw=Yaw}
EnableBulletTrackEffect(PlayerControllerPlayerController)
启用子弹尾迹特效
生效范围：客户端
params PlayerController 
-玩家控制器
NotifyBattleBeginPlay(PlayerControllerPlayerController)
使玩家立刻进入游戏。首先设置PlayerController蓝图上的DelayNotifyBattleBeginPlay，设置之后在切换DS，或者进入游戏的两种情况下的loading图会延长，接着调用本接口，即可立刻跳过loading图进入游戏
生效范围：服务器
params PlayerController 
-玩家控制器
booleanIsLocalController(AControllerInController)
判断是否为主控端
生效范围：客户端&服务器
return  
-当前端是否为主控端
params InController 
-Pawn