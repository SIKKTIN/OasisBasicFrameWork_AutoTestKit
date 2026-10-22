# UGameViewportClient

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameViewportClient?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameViewportClient.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameViewportClient](https://developer.gp.qq.com/api/#/searchContent/UGameViewportClient?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameViewportClient.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameViewportClient)

类

全文搜索

A game viewport (FViewport) is a high-level abstract interface for the platform specific rendering, audio, and input subsystems. GameViewportClient is the engine's interface to a game viewport. Exactly one GameViewportClient is created for each instance of the game. The only case (so far) where you might have a single instance of Engine, but multiple instances of the game (and thus multiple GameViewportClients) is when you have more than one PIE window running. Responsibilities: propagating input events to the global interactions list @see UGameViewportClient

---


## 函数

- **SSSwapControllers**(Rotates controller ids among gameplayers, useful for testing splitscreen with only one controller.)
- **ShowTitleSafeArea**(Exec for toggling the display of the title safe area)
- **SetConsoleTarget**(int32PlayerIndex) — Sets the player which console commands will be executed in the context of. SSSwapControllers ShowTitleSafeArea SetConsoleTarget

## 属性

- **viewport** — 's console. Might be null on consoles @todo document UWorld *World The relative world context for this viewport UGameInstance *GameInstance ViewportConsole DebugProperties World GameInstance