# AGameStateBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AGameStateBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameStateBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameStateBase](https://developer.gp.qq.com/api/#/searchContent/AGameStateBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameStateBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameStateBase)

类

全文搜索

GameStateBase is a class that manages the game's global state, and is spawned by GameModeBase. It exists on both the client and the server and is fully replicated.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| float | **GetServerWorldTimeSeconds** |  | Returns the simulated TimeSeconds on the server, will be synchronized on client and server |
| float | **GetServerWorldTimeSecondsForReplay** |  | Returns the simulated TimeSeconds on the server while playing replay, with fastforward skipped time considered |
| bool | **HasBegunPlay** |  | Returns true if the world has started play (called BeginPlay on actors) |
| bool | **HasMatchStarted** |  | Returns true if the world has started match (called MatchStarted callbacks) |
| float | **GetPlayerStartTime** | AController *Controller | Returns the time that should be used as when a player started |
| float | **GetPlayerRespawnDelay** | AController *Controller | Returns how much time needs to be spent before a player can respawn |
| void | **OnRep_GameModeClass** |  | GameModeBase class notification callback. |
| void | **OnRep_SpectatorClass** |  | Callback when we receive the spectator class |
| void | **OnRep_ReplicatedHasBegunPlay** |  | By default calls BeginPlay and StartMatch |
| void | **OnRep_ReplicatedWorldTimeSeconds** | float &OldValue | Allows clients to calculate ServerWorldTimeSecondsDelta |
| void | **OnRep_RecordControllerReplay** |  |  |
| void | **OnRep_PauseInfo** |  | GetServerWorldTimeSeconds GetServerWorldTimeSecondsForReplay HasBegunPlay HasMatchStarted GetPlayerStartTime GetPlayerRespawnDelay OnRep_GameModeClass OnRep_SpectatorClass OnRep_ReplicatedHasBegunPlay OnRep_ReplicatedWorldTimeSeconds OnRep_RecordControllerReplay OnRep_PauseInfo |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Class | **of** | the server's game mode, assigned by GameModeBase. AGameModeBase *AuthorityGameMode Instance of the current game mode, exists only on the server. For non-authority clients, this will be NULL. Class used by spectators, assigned by GameModeBase. Array of all PlayerStates, maintained on both server and  |

## 委托

- voidOnPauseState(boolbIsPause)
- OnPauseState

