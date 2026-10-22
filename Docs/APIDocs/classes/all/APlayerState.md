# APlayerState

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APlayerState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPlayerState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APlayerState](https://developer.gp.qq.com/api/#/searchContent/APlayerState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPlayerState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APlayerState)

类

全文搜索

A PlayerState is created for every player on a server (or in a standalone game). PlayerStates are replicated to all clients, and contain network game relevant information about the player, such as playername, score, etc.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **OnRep_Score** |  | Replication Notification Callbacks |
| void | **OnRep_PlayerName** |  |  |
| void | **OnRep_bIsInactive** |  |  |
| void | **OnRep_UniqueId** |  |  |
| void | **ReceiveOverrideWith** | APlayerState *OldPlayerState | Can be implemented in Blueprint Child to move more properties from old to new PlayerState when reconnecting params OldPlayerState -Old PlayerState, which we use to fill the new one with |
| void | **ReceiveCopyProperties** | APlayerState *NewPlayerState | Can be implemented in Blueprint Child to move more properties from old to new PlayerState when traveling to a new level params NewPlayerState -New PlayerState, which we fill with the current properties OnRep_Score OnRep_PlayerName OnRep_bIsInactive OnRep_UniqueId ReceiveOverrideWith ReceiveCopyPrope |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Player's | **current** | score. Replicated compressed ping for this player (holds ping in msec divided by 4) Player name, or blank if none. Unique net id number. Actual value varies based on current online subsystem, use it only as a guaranteed unique number per player. Whether this player is currently a spectator Whether t |

