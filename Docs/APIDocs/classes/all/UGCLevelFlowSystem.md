# UGCLevelFlowSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCLevelFlowSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9C%BA%E6%99%AF%E4%B8%8E%E7%8E%AF%E5%A2%83%2FUGCLevelFlowSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCLevelFlowSystem](https://developer.gp.qq.com/api/#/searchContent/UGCLevelFlowSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9C%BA%E6%99%AF%E4%B8%8E%E7%8E%AF%E5%A2%83%2FUGCLevelFlowSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCLevelFlowSystem)

类

全文搜索

关卡流程系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Enable | **LevelFlow** | stringInMgrPath | 启用关卡流程 生效范围：服务器 params InMgrPath -需要注册的 GameModeActorMgr 的路径 |
| boolean | **GoToNextLevelForAllPlayers** |  | 当前关卡所有玩家直接跳转到下个关卡，需所有玩家都已达到通关条件 生效范围：服务器 return -所有玩家跳转到下个关卡是否成功 |
| boolean | **GoToNextLevelForOnePlayer** | ASTExtraPlayerControllerPlayerController | 单个玩家直接跳转到下个关卡，需当前玩家已达到通关条件，当前队伍其他玩家仍停留在当前关卡 生效范围：服务器 return -当前玩家跳转到下个关卡是否成功 params PlayerController -玩家 |
| Level | **AddScore** | numberTeamID, numberScore | 给指定队伍关卡加分 生效范围：服务器 params TeamID -队伍 ID params Score -加分的分数 |
| Level | **Settle** | numberTeamID, booleanIsFinish | 队伍所在关卡立即结算 生效范围：服务器 params TeamID -结算的队伍 params IsFinish -是否通关 |
| number | **GetCurrentLevelStage** | ASTExtraPlayerControllerPlayerController | 获取当前玩家处于第几关 生效范围：服务器&客户端 return -当前玩家处于第几关 params PlayerController -玩家 |
| number | **GetTotalLevelCount** |  | 获取总关卡数，随机切换关卡暂时不支持获取总关卡数，需要自定义逻辑 生效范围：服务器 return -总关卡数 |
| Game | **AddScore** | numberTeamID, numberScore | 给指定队伍游戏加分 生效范围：服务器 params TeamID -队伍 ID params Score -加分的分数 |
| Game | **Settle** | booleanIsFinish | 游戏立即结算 生效范围：服务器 params IsFinish -是否通关 |
| APlayerController[] | **GetAllPlayerControllerInCurrentLevel** |  | 获取关卡里的所有玩家 生效范围：服务器 return -玩家列表 |
| U | **GCLevelActorGetCurrentLevelActor** |  | 获取当前副本 生效范围：服务器 return -关卡Actor EnableLevelFlow GoToNextLevelForAllPlayers GoToNextLevelForOnePlayer LevelAddScore LevelSettle GetCurrentLevelStage GetTotalLevelCount GameAddScore GameSettle GetAllPlayerControllerInCurrentLevel GetCurrentLevelActor |

