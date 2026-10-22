# UCheatManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCheatManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCheatManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCheatManager](https://developer.gp.qq.com/api/#/searchContent/UCheatManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCheatManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCheatManager)

类

全文搜索

---


## 函数

- **FreezeFrame**(floatDelay) — Pause the game for Delay seconds.
- **Teleport**(Teleport to surface player is looking at.)
- **ChangeSize**(floatF) — Scale the player's size to be F default size.
- **ChangeTickGroup**(int32 NewTickGroup, int32Num) — Change the tickgroup of aipawns near character
- **Fly**(Pawn can fly.)
- **Walk**(Return to walking movement mode from Fly or Ghost cheat.)
- **Ghost**(Pawn no longer collides with the world, and can fly)
- **God**(Invulnerability cheat.)
- **Slomo**(floatNewTimeDilation) — Modify time dilation to change apparent speed of passage of time. e.g. "Slomo 0.1" makes everything move very slowly, while "Slomo 10" makes everything move very fast.
- **DamageTarget**(floatDamageAmount) — Damage the actor you're looking at (sourced from the player).
- **DestroyTarget**(Destroy the actor you're looking at.)
- **DestroyAll**(TSubclassOf < AActor >aClass) — Destroy all actors of class aClass
- **DestroyAllPawnsExceptTarget**(Destroy all pawns except for the (pawn) target. If no (pawn) target is found we don't destroy anything.)
- **DestroyPawns**(TSubclassOf < APawn >aClass) — Destroys (by calling destroy directly) all non-player pawns of class aClass in the level
- **Summon**(FString &ClassName) — Load Classname and spawn an actor of that class
- **PlayersOnly**(Freeze everything in the level except for players.)
- **ViewSelf**(Make controlled pawn the viewtarget again.)
- **ViewPlayer**(FString &S) — View from the point of view of player with PlayerName S.
- **ViewActor**(FNameActorName) — View from the point of view of AActor with Name ActorName.
- **ViewClass**(TSubclassOf < AActor >DesiredClass) — View from the point of view of an AActor of class DesiredClass. Each subsequent ViewClass cycles through the list of actors of that class.
- **StreamLevelIn**(FNamePackageName) — Stream in the given level.
- **OnlyLoadLevel**(FNamePackageName) — Load the given level.
- **StreamLevelOut**(FNamePackageName) — Stream out the given level.
- **ToggleDebugCamera**(Toggle between debug cameraplayer camera without locking gameplay and with locking local player controller input.)
- **ToggleAILogging**(toggles AI logging)
- **ServerToggleAILogging**()
- **DebugCapsuleSweep**(Toggle capsule trace debugging. Will trace a capsule from current view point and show where it hits the world)
- **DebugCapsuleSweepSize**(float HalfHeight, floatRadius) — Change Trace capsule size
- **DebugCapsuleSweepChannel**(ECollisionChannelChannel) — Change Trace Channel
- **DebugCapsuleSweepComplex**(boolbTraceComplex) — Change Trace Complex setting
- **DebugCapsuleSweepCapture**(Capture current trace and add to persistent list)
- **DebugCapsuleSweepPawn**(Capture current local PC's pawn's location and add to persistent list)
- **DebugCapsuleSweepClear**(Clear persistent list for trace capture)
- **TestCollisionDistance**(Test all volumes in the world to the player controller's view location)
- **RebuildNavigation**(Builds the navigation mesh (or rebuilds it).)
- **SetNavDrawDistance**(floatDrawDistance) — Sets navigation drawing distance. Relevant only in non-editor modes.
- **DumpOnlineSessionState**(Dump online session information)
- **DumpPartyState**(Dump known party information)
- **DumpChatState**(Dump known chat information)
- **DumpVoiceMutingState**(Dump current state of voice chat)
- **BugItGo**(float X, float Y, float Z, float Pitch, float Yaw, floatRoll) — This will move the player and set their rotation to the passed in values. We have this version of the BugIt family as it is easier to type in just raw numbers in the console.
- **BugIt**(FString &ScreenShotDescription) — This function is used to print out the BugIt location. It prints out copy and paste versions for both IMing someone to type in and also a gameinfo ?options version so that you can append it to your launching url and be taken to the correct place. Additionally, it will take a screen shot so reporting
- **BugItStringCreator**(FVector ViewLocation, FRotator ViewRotation, FString& GoString, FString &LocString) — This will create a BugItGo string for us. Nice for calling form c++ where you just want the string and no Screenshots
- **FlushLog**(This will force a flush of the output log to file)
- **LogLoc**(Logs the current location in bugit format without taking screenshot and further routing.)
- **SetWorldOrigin**(Translate world origin to this player position)
- **SetMouseSensitivityToDefault**(Exec function to return the mouse sensitivity to its default value)
- **InvertMouse**(Backwards compatibility exec function for people used to it instead of using InvertAxisKey)
- **CheatScript**(FStringScriptName) — Executes commands listed in CheatScript.ScriptName ini section of DefaultGame.ini
- **ReceiveInitCheatManager**(BP implementable event for when CheatManager is created to allow any needed initialization.)
- **ReceiveEndPlay**(This is the End Play event for the CheatManager)
- **EnableDebugCamera**(Switch controller to debug camera without locking gameplay and with locking local player controller input)
- **DisableDebugCamera**(Switch controller from debug camera back to normal controller FreezeFrame Teleport ChangeSize ChangeTickGroup Fly Walk Ghost God Slomo DamageTarget DestroyTarget DestroyAll DestroyAllPawnsExceptTarget DestroyPawns Summon PlayersOnly ViewSelf ViewPlayer ViewActor ViewClass StreamLevelIn OnlyLoadLevel)

## 属性

- **camera** — - used to have independent camera without stopping gameplay Debug camera - used to have independent camera without stopping gameplay DebugCameraControllerRef DebugCameraControllerClass