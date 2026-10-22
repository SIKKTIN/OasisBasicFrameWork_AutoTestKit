# AGameMode

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AGameMode?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameMode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameMode](https://developer.gp.qq.com/api/#/searchContent/AGameMode?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameMode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameMode)

类

全文搜索

GameMode is a subclass of GameModeBase that behaves like a multiplayer match-based game. It has default behavior for picking spawn points and match state. If you want a simpler base, inherit from GameModeBase instead.

---


## 函数

- **NameGetMatchState**(Returns the current match state, this is an accessor to protect the state machine flow)
- **IsMatchInProgress**(Returns true if the match state is InProgress or other gameplay state)
- **HasMatchEnded**(Returns true if the match state is WaitingPostMatch or later)
- **StartMatch**(Transition from WaitingToStart to InProgress. You can call this manually, will also get called if ReadyToStartMatch returns true)
- **EndMatch**(Transition from InProgress to WaitingPostMatch. You can call this manually, will also get called if ReadyToEndMatch returns true)
- **RestartGame**(Restart the game, by default travel to the current map)
- **AbortMatch**(Report that a match has failed due to unrecoverable error)
- **K2_OnSetMatchState**(FNameNewState) — Implementable event to respond to match state changes
- **ReadyToStartMatch**(return -True if ready to Start Match. Games should override this)
- **ReadyToEndMatch**(return -true if ready to End Match. Games should override this)
- **Say**(FString &Msg) — Exec command to broadcast a string to all players
- **SetBandwidthLimit**(floatAsyncIOBandwidthLimit) — Alters the synthetic bandwidth limit for a running game. GetMatchState IsMatchInProgress HasMatchEnded StartMatch EndMatch RestartGame AbortMatch K2_OnSetMatchState ReadyToStartMatch ReadyToEndMatch Say SetBandwidthLimit

## 属性

- **match** — state we are currently in Whether the game should immediately start when the first player logs in. Affects the default behavior of ReadyToStartMatch Current number of spectators. Current number of human players. number of non-human players (AI controlled but participating as a player). Minimum time