# UGCPawnSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPawnSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPawnSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPawnSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPawnSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPawnSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPawnSystem)

类

全文搜索

角色系统接口库（废弃，已迁移到 UGCPlayerPawnSystem）

---


## 函数

- **HasPawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 【废弃】已迁移到 UGCPlayerPawnSystem 是否在指定状态下 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **AllowPawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 【废弃】已迁移到 UGCPlayerPawnSystem 是否允许进入指定状态 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **SwitchPoseState**(PlayerPawnPlayerPawn, ESTEPoseStatePoseState) — 【废弃】已迁移到 UGCPlayerPawnSystem 切换 Pose 状态 生效范围：客户端 params PlayerPawn -玩家角色 params PoseState -角色状态
- **EnterPawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 【废弃】已迁移到 UGCPlayerPawnSystem 进入指定状态 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **LeavePawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 【废弃】已迁移到 UGCPlayerPawnSystem 离开指定状态 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **PawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState, boolIsDisabled) — 【废弃】已迁移到 UGCPlayerPawnSystem 禁用指定状态 生效范围：服务器 params PlayerPawn -玩家角色 params PawnState -角色状态 params IsDisabled -是否禁用
- **GetIsFPP**(PlayerPawnPlayerPawn) — 【废弃】已迁移到 UGCPlayerPawnSystem 获取是否第一人称视角 生效范围：服务器&客户端 return -是不是 FPP 模式
- **SetIsFPP**(PlayerPawnPlayerPawn, boolIsFPP, boolbForce) — 【废弃】已迁移到 UGCPlayerPawnSystem 设置是否第一人称视角 生效范围：服务器 return -设置是否成功 params PlayerPawn -玩家角色 params IsFPP -是否第一人称 params bForce -强制设置人称
- **GetIsTPP**(PlayerPawnPlayerPawn) — 【废弃】已迁移到 UGCPlayerPawnSystem 获取是否第三人称视角 生效范围：服务器&客户端 return -是否第三人称
- **SetIsTPP**(PlayerPawnPlayerPawn, boolIsTPP, boolbForce) — 【废弃】已迁移到 UGCPlayerPawnSystem 设置是否第三人称视角 生效范围：服务器 return -设置是否成功 params PlayerPawn -玩家角色 params IsTPP -是否第三人称 params bForce -强制设置 TPP 模式
- **GetIsInvincible**(PlayerPawnPlayerPawn) — 【废弃】已迁移到 UGCPlayerPawnSystem 获取是否无敌 生效范围：服务器&客户端 return -是否无敌 params PlayerPawn -玩家角色
- **IsInvincible**(PlayerPawnPlayerPawn, boolIsInvincible) — 【废弃】已迁移到 UGCPlayerPawnSystem 设置是否无敌 生效范围：服务器 params PlayerPawn -玩家角色 params IsInvincible -是否无敌
- **EnterParachuteState**(PlayerPawnPlayerPawn, EPawnState[]CheckPawnState, floatCanOpenParachuteHeight, floatForceOpenParachuteHeight, floatCloseParachuteHeight, boolbParachuteAvatarNotShown) — 【废弃】已迁移到 UGCPlayerPawnSystem 尝试进入跳伞状态 生效范围：服务器 params PlayerPawn -玩家角色 params CheckPawnState -不允许进入跳伞的角色状态 params CanOpenParachuteHeight -允许开伞高度 params ForceOpenParachuteHeight -强制开伞高度 params CloseParachuteHeight -关伞高度 params bParachuteAvatarNotShown -是否不显示伞包
- **ParachuteState**(PlayerPawnPlayerPawn) — 【废弃】已迁移到 UGCPlayerPawnSystem 退出跳伞状态 生效范围：服务器 params PlayerPawn -玩家角色
- **BoneByBoneName**(PlayerPawnPlayerPawn, FNameBoneName, boolbHide) — 【废弃】已迁移到 UGCPlayerPawnSystem 根据玩家角色的骨骼名称修改骨骼的显隐性 生效范围：客户端 params PlayerPawn -玩家角色 params BoneName -骨骼名称 params bHide -true隐藏，false显示
- **AvatarMesh**(PlayerPawnPlayerPawn, stringSkeletalMeshPath) — 【废弃】已迁移到 UGCPlayerPawnSystem 切换玩家角色使用的全身骨骼体 生效范围：服务器 params PlayerPawn -玩家角色 params SkeletalMeshPath -全身骨骼体路径
- **AvatarMesh**(PlayerPawnPlayerPawn) — 【废弃】已迁移到 UGCPlayerPawnSystem 恢复玩家角色使用的全身骨骼体 生效范围：服务器 params PlayerPawn -玩家角色
- **SpawnDeadTombBox**(PlayerPawnPlayerPawn, boolbIsSkip) — 【废弃】已迁移到 UGCPlayerPawnSystem 玩家死亡取消生成盒子 生效范围：服务器 params PlayerPawn -玩家角色 params bIsSkip -玩家是否取消生成死亡盒子 HasPawnState AllowPawnState SwitchPoseState EnterPawnState LeavePawnState DisabledPawnState GetIsFPP SetIsFPP GetIsTPP SetIsTPP GetIsInvincible SetIsInvincible TryEnterParachuteState ExitParachuteSt