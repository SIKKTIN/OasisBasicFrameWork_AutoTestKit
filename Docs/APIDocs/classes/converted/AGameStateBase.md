# AGameStateBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AGameStateBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameStateBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameStateBase](https://developer.gp.qq.com/api/#/searchContent/AGameStateBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameStateBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameStateBase)

类

全文搜索

GameStateBase is a class that manages the game's global state, and is spawned by GameModeBase. It exists on both the client and the server and is fully replicated.

---


## 函数

- **GetServerWorldTimeSeconds**(Returns the simulated TimeSeconds on the server, will be synchronized on client and server)
- **GetServerWorldTimeSecondsForReplay**(Returns the simulated TimeSeconds on the server while playing replay, with fastforward skipped time considered)
- **HasBegunPlay**(Returns true if the world has started play (called BeginPlay on actors))
- **HasMatchStarted**(Returns true if the world has started match (called MatchStarted callbacks))
- **GetPlayerStartTime**(AController *Controller) — Returns the time that should be used as when a player started
- **GetPlayerRespawnDelay**(AController *Controller) — Returns how much time needs to be spent before a player can respawn
- **OnRep_GameModeClass**(GameModeBase class notification callback.)
- **OnRep_SpectatorClass**(Callback when we receive the spectator class)
- **OnRep_ReplicatedHasBegunPlay**(By default calls BeginPlay and StartMatch)
- **OnRep_ReplicatedWorldTimeSeconds**(float &OldValue) — Allows clients to calculate ServerWorldTimeSecondsDelta
- **OnRep_RecordControllerReplay**()
- **OnRep_PauseInfo**(GetServerWorldTimeSeconds GetServerWorldTimeSecondsForReplay HasBegunPlay HasMatchStarted GetPlayerStartTime GetPlayerRespawnDelay OnRep_GameModeClass OnRep_SpectatorClass OnRep_ReplicatedHasBegunPlay OnRep_ReplicatedWorldTimeSeconds OnRep_RecordControllerReplay OnRep_PauseInfo)

## 属性

- **of** — the server's game mode, assigned by GameModeBase. AGameModeBase *AuthorityGameMode Instance of the current game mode, exists only on the server. For non-authority clients, this will be NULL. Class used by spectators, assigned by GameModeBase. Array of all PlayerStates, maintained on both server and

## 委托

- voidOnPauseState(boolbIsPause)
- OnPauseState