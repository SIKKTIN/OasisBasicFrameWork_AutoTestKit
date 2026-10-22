# UGCPlayerControllerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPlayerControllerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPlayerControllerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPlayerControllerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPlayerControllerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPlayerControllerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPlayerControllerSystem)

类

全文搜索

玩家控制器系统

---


## 函数

- **JoyStickSprint**(PlayerControllerPlayerController) — 禁用摇杆触发疾跑 生效范围：服务器&客户端 params PlayerController -玩家控制器
- **JoyStickSprint**(PlayerControllerPlayerController) — 启用摇杆触发疾跑 生效范围：服务器&客户端 params PlayerController -玩家控制器
- **GetTeamID**(PlayerControllerPlayerController) — 通过 PlayerController 获取 TeamID 生效范围：服务器&客户端 return -玩家队伍 ID params PlayerController -玩家控制器
- **STExtraBaseCharacterGetPlayerCharacter**(PlayerControllerPlayerController) — 获取玩家角色 生效范围：服务器&客户端 return -玩家角色 params PlayerController -玩家控制器
- **To**(PlayerControllerPlayerController, numberX, numberY, numberZ) — 瞬移至坐标 生效范围：服务器 params PlayerController -玩家控制器 params X -X坐标 params Y -Y坐标 params Z -Z坐标
- **ControlRotation**(PlayerControllerPlayerController, RotatorNewRotation) — 设置控制旋转 生效范围：服务器&客户端 params PlayerController -玩家控制器 params NewRotation -新旋转量 可使用Rotator.New(Roll,Pitch,Yaw)创建,结构{Roll=Roll, Pitch=Pitch, Yaw=Yaw}
- **BulletTrackEffect**(PlayerControllerPlayerController) — 启用子弹尾迹特效 生效范围：客户端 params PlayerController -玩家控制器
- **BattleBeginPlay**(PlayerControllerPlayerController) — 使玩家立刻进入游戏。首先设置PlayerController蓝图上的DelayNotifyBattleBeginPlay，设置之后在切换DS，或者进入游戏的两种情况下的loading图会延长，接着调用本接口，即可立刻跳过loading图进入游戏 生效范围：服务器 params PlayerController -玩家控制器
- **IsLocalController**(AControllerInController) — 判断是否为主控端 生效范围：客户端&服务器 return -当前端是否为主控端 params InController -Pawn DisableJoyStickSprint EnableJoyStickSprint GetTeamID GetPlayerCharacter TeleportTo SetControlRotation EnableBulletTrackEffect NotifyBattleBeginPlay IsLocalController