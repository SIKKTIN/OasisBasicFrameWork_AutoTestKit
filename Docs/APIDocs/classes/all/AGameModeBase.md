# AGameModeBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AGameModeBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameModeBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameModeBase](https://developer.gp.qq.com/api/#/searchContent/AGameModeBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameModeBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameModeBase)

类

全文搜索

The GameModeBase defines the game being played. It governs the game rules, scoring, what actors are allowed to exist in this game type, and who may enter the game. It is only instanced on the server and will never exist on the client. A GameModeBase actor is instantiated when the level is initialized for gameplay in C++ UGameEngine::LoadMap(). The class of this GameMode actor is determined by (in order) either the URL ?game=xxx, the GameMode Override value set in the World Settings, or the DefaultGameMode entry set in the game's Project Settings.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| UClass * | **GetDefaultPawnClassForController** | AController *InController | Returns default pawn class for given controller |
| int32 | **GetNumPlayers** |  | Returns number of active human players, excluding spectators |
| int32 | **GetNumSpectators** |  | Returns number of human players currently spectating |
| void | **StartPlay** |  | Transitions to calls BeginPlay on actors. |
| bool | **HasMatchStarted** |  | Returns true if the match start callbacks have been called |
| bool | **ShouldReset** | AActor *ActorToReset | Overridable function to determine whether an Actor should have Reset called when the game has Reset called on it. Default implementation returns true return |
| -true if ActorToReset should have | **Reset** |  | params ActorToReset -The actor to make a determination for |
| void | **ResetLevel** |  | Overridable function called when resetting level. This is used to reset the game state while staying in the same map |
| Default implementation calls | **Reset** |  |  |
| void | **ReturnToMainMenuHost** |  | Return to main menu, and disconnect any players |
| void | **K2_PostLogin** | APlayerController *NewPlayer | Notification that a player has successfully logged in, and has been given a player controller |
| void | **K2_OnLogout** | AController *ExitingController | Implementable event when a Controller with a PlayerState leaves the game. |
| void | **HandleStartingNewPlayer** | APlayerController *NewPlayer | Signals that a player is ready to enter the game, which may start it up |
| bool | **MustSpectate** | APlayerController *NewPlayerController | Returns true if NewPlayerController may only join the server as a spectator. |
| bool | **CanSpectate** | APlayerController * Viewer, APlayerState *ViewTarget | Return whether Viewer is allowed to spectate from the point of view of ViewTarget. |
| void | **ChangeName** | AController * Controller, FString & NewName, boolbNameChange | Sets the name for a controller params Controller -The controller of the player to change the name of params NewName -The name to set the player to params bNameChange -Whether the name is changing or if this is the first time it has been set |
| void | **K2_OnChangeName** | AController * Other, FString & NewName, boolbNameChange | Overridable event for GameMode blueprint to respond to a change name call params NewName -The name to set the player to params bNameChange -Whether the name is changing or if this is the first time it has been set |
| AActor * | **ChoosePlayerStart** | AController *Player | Return the 'best' player start for this player to spawn from Default implementation looks for a random unoccupied spot return - AActor chosen as player start (usually a PlayerStart) params Player -is the controller for whom we are choosing a playerstart |
| AActor * | **FindPlayerStart** | AController * Player, FString &IncomingName | Return the specific player start actor that should be used for the next spawn This will either use a previously saved startactor, or calls ChoosePlayerStart return - Actor chosen as player start (usually a PlayerStart) params Player -The AController for whom we are choosing a Player Start params Inc |
| AActor * | **K2_FindPlayerStart** | AController * Player, FString &IncomingName | Return the specific player start actor that should be used for the next spawn This will either use a previously saved startactor, or calls ChoosePlayerStart return - Actor chosen as player start (usually a PlayerStart) params Player -The AController for whom we are choosing a Player Start params Inc |
| bool | **PlayerCanRestart** | APlayerController *Player | Returns true if it's valid to call RestartPlayer. By default will call Player->CanRestartPlayer |
| void | **RestartPlayer** | AController *NewPlayer | Tries to spawn the player's pawn, at the location returned by FindPlayerStart |
| void | **RestartPlayerAtPlayerStart** | AController * NewPlayer, AActor *StartSpot | Tries to spawn the player's pawn at the specified actor's location |
| void | **RestartPlayerAtTransform** | AController * NewPlayer, FTransform &SpawnTransform | Tries to spawn the player's pawn at a specific location |
| APawn * | **SpawnDefaultPawnFor** | AController * NewPlayer, AActor *StartSpot | Called during RestartPlayer to actually spawn the player's pawn, when using a start spot return -a pawn of the default pawn class params NewPlayer -- Controller for whom this pawn is spawned params StartSpot -- Actor at which to spawn pawn |
| APawn * | **SpawnDefaultPawnAtTransform** | AController * NewPlayer, FTransform &SpawnTransform | Called during RestartPlayer to actually spawn the player's pawn, when using a transform return -a pawn of the default pawn class params NewPlayer -- Controller for whom this pawn is spawned |
| void | **InitStartSpot** | AActor * StartSpot, AController *NewPlayer | Called from RestartPlayerAtPlayerStart, can be used to initialize the start spawn actor |
| void | **K2_OnRestartPlayer** | AController *NewPlayer | Implementable event called at the end of RestartPlayer |
| void | **InitializeHUDForPlayer** | APlayerController *NewPlayer | Initialize the AHUD object for a player. Games can override this to do something different |
| void | **K2_OnSwapPlayerControllers** | APlayerController * OldPC, APlayerController *NewPC | Called when a PlayerController is swapped to a new one during seamless travel GetDefaultPawnClassForController GetNumPlayers GetNumSpectators StartPlay HasMatchStarted ShouldReset ResetLevel ReturnToMainMenuHost K2_PostLogin K2_OnLogout HandleStartingNewPlayer MustSpectate CanSpectate ChangeName K2_ |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Save | **options** | string and parse it when needed Class of GameSession, which handles login approval and online game interface Class of GameState associated with this GameMode. The class of PlayerController to spawn for players logging in. A PlayerState of this class will be associated with every player to replicate  |

