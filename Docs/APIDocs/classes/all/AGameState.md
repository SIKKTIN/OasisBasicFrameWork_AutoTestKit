# AGameState

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AGameState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameState](https://developer.gp.qq.com/api/#/searchContent/AGameState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameState)

类

全文搜索

GameState is a subclass of GameStateBase that behaves like a multiplayer match-based game. It is tied to functionality in GameMode.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **OnRep_MatchState** |  | Match state has changed |
| void | **OnRep_ElapsedTime** |  | Gives clients the chance to do something when time gets updates |
| F | **StringGetGeneralCampNameByCampID** | int32CampID |  |
| E | **CampRelationGetGeneralCampRelation** | int32 CampAID, int32CampBID |  |
| UGameModeGeneralDataAsset * | **GetGameModeGeneralDataAsset** |  | OnRep_MatchState OnRep_ElapsedTime GetGeneralCampNameByCampID GetGeneralCampRelation GetGameModeGeneralDataAsset |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| What | **match** | state we are currently in Previous map state, used to handle if multiple transitions happen per frame Elapsed game time since match has started. MatchState PreviousMatchState ElapsedTime |

