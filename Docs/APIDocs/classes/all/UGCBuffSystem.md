# UGCBuffSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCBuffSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCBuffSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCBuffSystem](https://developer.gp.qq.com/api/#/searchContent/UGCBuffSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCBuffSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCBuffSystem)

类

全文搜索

【废弃】Buff 系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Buff | **SystemComponentGetBuffSystemComponent** | PlayerPawnPlayerPawn | 【废弃】请使用 UGCPersistEffectSystem 获取 Buff 组件 生效范围：服务器&客户端 return -USTBaseBuffSystemComponent params PlayerPawn -玩家角色。所有的接口里的 PlayerPawn 都可以扩展成任意的 Actor，只要这个 Actor 有一个名字叫 BuffSystemComponent 的 Buff 组件即可。 |
| number | **AddBuff** | PlayerPawnPlayerPawn, stringBuffName, numberLayerCount, ControllerBuffCauser, ActorCauserActor | 【废弃】请使用 UGCPersistEffectSystem 为玩家添加 Buff 生效范围：服务器 return -Buff 唯一 ID params PlayerPawn -玩家角色。所有的接口里的 PlayerPawn 都可以扩展成任意的 Actor，只要这个 Actor 有一个名字叫 BuffSystemComponent 的 Buff 组件即可。 params BuffName -Buff 名 params LayerCount -层数 params BuffCauser -施加 Buff 的玩家或 AI 的控制器 params CauserActor -施加 Buff 的 Acto |
| Remove | **Buff** | PlayerPawnPlayerPawn, stringBuffName, numberLayerCount | 【废弃】请使用 UGCPersistEffectSystem 为玩家移除 Buff,本帧内不即时移除 生效范围：服务器 params PlayerPawn -玩家角色 params BuffName -Buff 名 params LayerCount -层数 |
| Remove | **BuffByInstanceID** | PlayerPawnPlayerPawn, numberInstanceID, numberLayerCount | 【废弃】请使用 UGCPersistEffectSystem 使用唯一 ID 移除 Buff，本帧内不即时移除 生效范围：服务器 params PlayerPawn -玩家角色 params InstanceID -Buff 唯一 ID params LayerCount -层数 |
| boolean | **HasBuff** | PlayerPawnPlayerPawn, stringBuffName | 【废弃】请使用 UGCPersistEffectSystem 是否存在该 Buff 生效范围：服务器 return -是否存在 Buff params PlayerPawn -玩家角色 params BuffName -Buff 名 |
| number | **GetCurLayer** | PlayerPawnPlayerPawn, stringBuffName | 【废弃】请使用 UGCPersistEffectSystem 获取 Buff 当前层数 生效范围：服务器&客户端 return -层数 params PlayerPawn -玩家角色 params BuffName -Buff 名 |
| number | **GetMaxLayer** | PlayerPawnPlayerPawn, stringBuffName | 【废弃】请使用 UGCPersistEffectSystem 获取 Buff 最大层数 生效范围：服务器&客户端 return -最大层数 params PlayerPawn -玩家角色 params BuffName -Buff 名 |
| number | **GetLeftTime** | PlayerPawnPlayerPawn, stringBuffName | 【废弃】请使用 UGCPersistEffectSystem 获取 Buff 剩余持续时间 生效范围：服务器&客户端 return -剩余持续时间 params PlayerPawn -玩家角色 params BuffName -Buff 名 |
| Actor | **GetBuffCauserActor** | PlayerPawnPlayerPawn, numberInstanceID | 【废弃】请使用 UGCPersistEffectSystem 获取 Buff 的施加者 生效范围：服务器&客户端 return -Buff 施加者（弱引用，需使用 Actor:Get() 获取实际对象） params PlayerPawn -Buff params InstanceID -Buff 唯一 ID GetBuffSystemComponent AddBuff RemoveBuff RemoveBuffByInstanceID HasBuff GetCurLayer GetMaxLayer GetLeftTime GetBuffCauserActor |

