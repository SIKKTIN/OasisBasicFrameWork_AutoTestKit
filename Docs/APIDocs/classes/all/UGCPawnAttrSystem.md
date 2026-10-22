# UGCPawnAttrSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPawnAttrSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPawnAttrSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPawnAttrSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPawnAttrSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPawnAttrSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPawnAttrSystem)

类

全文搜索

【废弃】角色属性系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Set | **Health** | PlayerPawnPlayerPawn, numberHealth | 【废弃】请使用 UGCAttributeSystem 设置血量(不会超过最大血量) 生效范围：服务器 params PlayerPawn -玩家角色 params Health -血量 |
| number | **GetHealth** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取当前血量 生效范围：服务器&客户端 return -血量 params PlayerPawn -玩家角色 |
| Set | **HealthMax** | PlayerPawnPlayerPawn, numberHealthMax | 【废弃】请使用 UGCAttributeSystem 设置血量上限（当前血量不会变化） 生效范围：服务器 params PlayerPawn -玩家角色 params HealthMax -最大血量 |
| number | **GetHealthMax** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取血量上限 生效范围：服务器&客户端 return -最大血量 params PlayerPawn -玩家角色 |
| Set | **Signal** | PlayerPawnPlayerPawn, numberSignal | 【废弃】请使用 UGCAttributeSystem 设置信号值（不会超过最大值） 生效范围：服务器 params PlayerPawn -玩家角色 params Signal -信号值 |
| number | **GetSignal** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取信号值 生效范围：服务器&客户端 return -信号值 params PlayerPawn -玩家角色 |
| number | **GetSignalMax** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取信号值上限 生效范围：服务器&客户端 return -最大信号值 params PlayerPawn -玩家角色 |
| Set | **Energy** | PlayerPawnPlayerPawn, numberEnergy | 【废弃】请使用 UGCAttributeSystem 设置能量值（设置的值不能超过能量值上限[默认100]） 生效范围：服务器 params PlayerPawn -玩家角色 params Energy -能量值 |
| number | **GetEnergy** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取能量值 生效范围：服务器&客户端 return -能量值 params PlayerPawn -玩家角色 |
| number | **GetEnergyMax** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取能量值上限 生效范围：服务器&客户端 return -最大能量值 params PlayerPawn -玩家角色 |
| Set | **SpeedScale** | PlayerPawnPlayerPawn, numberSpeedScale | 【废弃】请使用 UGCAttributeSystem 设置移动速度总系数，影响走路、冲刺、蹲下、趴下与游泳速度 注：该接口已废弃，请改用其他各移动状态的速度修改接口 生效范围：服务器 params PlayerPawn -玩家角色 params SpeedScale -移动速度总系数 |
| number | **GetSpeedScale** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取移动速度总系数 生效范围：服务器&客户端 return -移动速度总系数 params PlayerPawn -玩家角色 |
| number | **GetWalkSpeedScale** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取走路移动速度系数 生效范围：服务器&客户端 return -走路移动速度系数 params PlayerPawn -玩家角色 |
| Set | **WalkSpeedScale** | PlayerPawnPlayerPawn, numberWalkSpeedScale | 【废弃】请使用 UGCAttributeSystem 设置走路移动速度系数 生效范围：服务器 params PlayerPawn -玩家角色 params WalkSpeedScale -走路移动速度系数 |
| number | **GetSprintSpeedScale** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取疾跑移动速度系数 生效范围：服务器&客户端 return -疾跑移动速度系数 params PlayerPawn -玩家角色 |
| Set | **SprintSpeedScale** | PlayerPawnPlayerPawn, numberSprintSpeedScale | 【废弃】请使用 UGCAttributeSystem 设置疾跑移动速度系数 生效范围：服务器 params PlayerPawn -玩家角色 params SprintSpeedScale -疾跑移动速度系数 |
| number | **GetCrouchSpeedScale** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取蹲下移动速度系数 生效范围：服务器&客户端 return -蹲下移动速度系数 params PlayerPawn -玩家角色 |
| Set | **CrouchSpeedScale** | PlayerPawnPlayerPawn, numberCrouchSpeedScale | 【废弃】请使用 UGCAttributeSystem 设置蹲下移动速度系数 生效范围：服务器 params PlayerPawn -玩家角色 params CrouchSpeedScale -蹲下移动速度系数 |
| number | **GetProneSpeedScale** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取趴下移动速度系数 生效范围：服务器&客户端 return -趴下移动速度系数 params PlayerPawn -玩家角色 |
| Set | **ProneSpeedScale** | PlayerPawnPlayerPawn, numberProneSpeedScale | 【废弃】请使用 UGCAttributeSystem 设置趴下移动速度系数 生效范围：服务器 params PlayerPawn -玩家角色 params ProneSpeedScale -趴下移动速度系数 |
| number | **GetSwimSpeedScale** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取游泳移动速度系数 生效范围：服务器&客户端 return -游泳移动速度系数 params PlayerPawn -玩家角色 |
| Set | **SwimSpeedScale** | PlayerPawnPlayerPawn, numberSwimSpeedScale | 【废弃】请使用 UGCAttributeSystem 设置游泳移动速度系数 生效范围：服务器 params PlayerPawn -玩家角色 params SwimSpeedScale -游泳移动速度系数 |
| number | **GetCurrentFOVTPP** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取当前第三人称视角FOV 生效范围：客户端 return -当前FOV params PlayerPawn -玩家角色 |
| Set | **CurrentFOVTPP** | PlayerPawnPlayerPawn, numberCurrentFOV | 【废弃】请使用 UGCAttributeSystem 设置当前第三人称视角FOV 生效范围：客户端 params PlayerPawn -玩家角色 params CurrentFOV -FOV |
| boolean | **GetCanSwitchFPP** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取是否可以切换至第一人称视角 生效范围：客户端 return -是否可切换至第一人称 params PlayerPawn -玩家角色 |
| Set | **CanSwitchFPP** | PlayerPawnPlayerPawn, booleanCanSwitchFPP | 【废弃】请使用 UGCAttributeSystem 设置是否可以切换至第一人称视角 生效范围：客户端 params PlayerPawn -玩家角色 params CanSwitchFPP -是否可切换至第一人称 |
| number | **GetCurrentFOVFPP** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取当前第一人称视角FOV 生效范围：客户端 return -当前第一人称FOV params PlayerPawn -玩家角色 |
| Set | **CurrentFOVFPP** | PlayerPawnPlayerPawn, numberCurrentFOV_FPP | 【废弃】请使用 UGCAttributeSystem 设置当前第一人称视角FOV 生效范围：客户端 params PlayerPawn -玩家角色 params CurrentFOV_FPP -FOV |
| number | **GetHearRadius** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取听觉半径 生效范围：服务器&客户端 return -半径 params PlayerPawn -玩家角色 |
| number | **GetPickUpRadius** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取拾取半径 生效范围：服务器&客户端 return -半径 params PlayerPawn -玩家角色 |
| boolean | **GetShowPlayerName** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取是否显示玩家名称 生效范围：客户端 return -显示玩家名称 params PlayerPawn -玩家角色 |
| Set | **ShowPlayerName** | PlayerPawnPlayerPawn, booleanShowPlayerName | 【废弃】请使用 UGCAttributeSystem 设置是否显示玩家名称 生效范围：客户端 params PlayerPawn -玩家角色 params ShowPlayerName -显示玩家名称 |
| boolean | **GetIsAI** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取是否AI 生效范围：服务器&客户端 return -是否AI params PlayerPawn -玩家角色 |
| string | **GetPlayerName** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取玩家名称 生效范围：服务器&客户端 return -玩家名称 params PlayerPawn -玩家角色 |
| string | **GetPlayerKey** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取字符串玩家PlayerKey 生效范围：服务器&客户端 return -玩家PlayerKey params PlayerPawn -玩家角色 |
| number | **GetPlayerKeyInt64** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取64位玩家Key 生效范围：服务器&客户端 return -玩家Key params PlayerPawn -玩家角色 |
| string | **GetPlayerUID** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取玩家UID 生效范围：服务器&客户端 return -玩家 UID params PlayerPawn -玩家角色 |
| number | **GetPlayerTeamIndex** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取玩家队伍中序号（非TeamID，而是玩家在队伍中的序号） 生效范围：服务器&客户端 return -玩家UID params PlayerPawn -玩家角色 |
| E | **CharacterJumpTypeGetJumpType** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取跳跃类型 生效范围：服务器&客户端 return -跳跃类型 params PlayerPawn -玩家角色 |
| number | **GetJumpHeight** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取跳跃高度 生效范围：服务器&客户端 return -跳跃高度 params PlayerPawn -玩家角色 |
| number | **GetJumpZVelocity** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取跳跃时的初速度 生效范围：服务器&客户端 return -跳跃时的初速度 params PlayerPawn -玩家角色 |
| Set | **JumpZVelocity** | PlayerPawnPlayerPawn, numberJumpZVelocity | 【废弃】请使用 UGCAttributeSystem 设置跳跃时的初速度 生效范围：服务器 params PlayerPawn -玩家角色 params JumpZVelocity -跳跃时的初速度 |
| number | **GetStandHalfHeight** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取站立半高 生效范围：服务器&客户端 return -站立半高 params PlayerPawn -玩家角色 |
| number | **GetStandRadius** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取站立半径 生效范围：服务器&客户端 return -站立半径 params PlayerPawn -玩家角色 |
| number | **GetCrouchHalfHeight** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取蹲伏半高 生效范围：服务器&客户端 return -蹲伏半高 params PlayerPawn -玩家角色 |
| number | **GetProneHalfHeight** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取匍匐半高 生效范围：服务器&客户端 return -匍匐半高 params PlayerPawn -玩家角色 |
| number | **GetTeamID** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCAttributeSystem 获取TeamID 生效范围：服务器&客户端 return -队伍ID params PlayerPawn -玩家角色 SetHealth GetHealth SetHealthMax GetHealthMax SetSignal GetSignal GetSignalMax SetEnergy GetEnergy GetEnergyMax SetSpeedScale GetSpeedScale GetWalkSpeedScale SetWalkSpeedScale GetSprintSpeedScale SetSprintSpeedScal |

