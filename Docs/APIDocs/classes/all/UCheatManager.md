# UCheatManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCheatManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCheatManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCheatManager](https://developer.gp.qq.com/api/#/searchContent/UCheatManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCheatManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCheatManager)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **FreezeFrame** | floatDelay | Pause the game for Delay seconds. |
| void | **Teleport** |  | Teleport to surface player is looking at. |
| void | **ChangeSize** | floatF | Scale the player's size to be F default size. |
| void | **ChangeTickGroup** | int32 NewTickGroup, int32Num | Change the tickgroup of aipawns near character |
| void | **Fly** |  | Pawn can fly. |
| void | **Walk** |  | Return to walking movement mode from Fly or Ghost cheat. |
| void | **Ghost** |  | Pawn no longer collides with the world, and can fly |
| void | **God** |  | Invulnerability cheat. |
| void | **Slomo** | floatNewTimeDilation | Modify time dilation to change apparent speed of passage of time. e.g. "Slomo 0.1" makes everything move very slowly, while "Slomo 10" makes everything move very fast. |
| void | **DamageTarget** | floatDamageAmount | Damage the actor you're looking at (sourced from the player). |
| void | **DestroyTarget** |  | Destroy the actor you're looking at. |
| void | **DestroyAll** | TSubclassOf < AActor >aClass | Destroy all actors of class aClass |
| void | **DestroyAllPawnsExceptTarget** |  | Destroy all pawns except for the (pawn) target. If no (pawn) target is found we don't destroy anything. |
| void | **DestroyPawns** | TSubclassOf < APawn >aClass | Destroys (by calling destroy directly) all non-player pawns of class aClass in the level |
| void | **Summon** | FString &ClassName | Load Classname and spawn an actor of that class |
| void | **PlayersOnly** |  | Freeze everything in the level except for players. |
| void | **ViewSelf** |  | Make controlled pawn the viewtarget again. |
| void | **ViewPlayer** | FString &S | View from the point of view of player with PlayerName S. |
| void | **ViewActor** | FNameActorName | View from the point of view of AActor with Name ActorName. |
| void | **ViewClass** | TSubclassOf < AActor >DesiredClass | View from the point of view of an AActor of class DesiredClass. Each subsequent ViewClass cycles through the list of actors of that class. |
| void | **StreamLevelIn** | FNamePackageName | Stream in the given level. |
| void | **OnlyLoadLevel** | FNamePackageName | Load the given level. |
| void | **StreamLevelOut** | FNamePackageName | Stream out the given level. |
| void | **ToggleDebugCamera** |  | Toggle between debug cameraplayer camera without locking gameplay and with locking local player controller input. |
| void | **ToggleAILogging** |  | toggles AI logging |
| void | **ServerToggleAILogging** |  |  |
| void | **DebugCapsuleSweep** |  | Toggle capsule trace debugging. Will trace a capsule from current view point and show where it hits the world |
| void | **DebugCapsuleSweepSize** | float HalfHeight, floatRadius | Change Trace capsule size |
| void | **DebugCapsuleSweepChannel** | ECollisionChannelChannel | Change Trace Channel |
| void | **DebugCapsuleSweepComplex** | boolbTraceComplex | Change Trace Complex setting |
| void | **DebugCapsuleSweepCapture** |  | Capture current trace and add to persistent list |
| void | **DebugCapsuleSweepPawn** |  | Capture current local PC's pawn's location and add to persistent list |
| void | **DebugCapsuleSweepClear** |  | Clear persistent list for trace capture |
| void | **TestCollisionDistance** |  | Test all volumes in the world to the player controller's view location |
| void | **RebuildNavigation** |  | Builds the navigation mesh (or rebuilds it). |
| void | **SetNavDrawDistance** | floatDrawDistance | Sets navigation drawing distance. Relevant only in non-editor modes. |
| void | **DumpOnlineSessionState** |  | Dump online session information |
| void | **DumpPartyState** |  | Dump known party information |
| void | **DumpChatState** |  | Dump known chat information |
| void | **DumpVoiceMutingState** |  | Dump current state of voice chat |
| void | **BugItGo** | float X, float Y, float Z, float Pitch, float Yaw, floatRoll | This will move the player and set their rotation to the passed in values. We have this version of the BugIt family as it is easier to type in just raw numbers in the console. |
| void | **BugIt** | FString &ScreenShotDescription | This function is used to print out the BugIt location. It prints out copy and paste versions for both IMing someone to type in and also a gameinfo ?options version so that you can append it to your launching url and be taken to the correct place. Additionally, it will take a screen shot so reporting |
| void | **BugItStringCreator** | FVector ViewLocation, FRotator ViewRotation, FString & GoString, FString &LocString | This will create a BugItGo string for us. Nice for calling form c++ where you just want the string and no Screenshots |
| void | **FlushLog** |  | This will force a flush of the output log to file |
| void | **LogLoc** |  | Logs the current location in bugit format without taking screenshot and further routing. |
| void | **SetWorldOrigin** |  | Translate world origin to this player position |
| void | **SetMouseSensitivityToDefault** |  | Exec function to return the mouse sensitivity to its default value |
| void | **InvertMouse** |  | Backwards compatibility exec function for people used to it instead of using InvertAxisKey |
| void | **CheatScript** | FStringScriptName | Executes commands listed in CheatScript.ScriptName ini section of DefaultGame.ini |
| void | **ReceiveInitCheatManager** |  | BP implementable event for when CheatManager is created to allow any needed initialization. |
| void | **ReceiveEndPlay** |  | This is the End Play event for the CheatManager |
| void | **EnableDebugCamera** |  | Switch controller to debug camera without locking gameplay and with locking local player controller input |
| void | **DisableDebugCamera** |  | Switch controller from debug camera back to normal controller FreezeFrame Teleport ChangeSize ChangeTickGroup Fly Walk Ghost God Slomo DamageTarget DestroyTarget DestroyAll DestroyAllPawnsExceptTarget DestroyPawns Summon PlayersOnly ViewSelf ViewPlayer ViewActor ViewClass StreamLevelIn OnlyLoadLevel |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Debug | **camera** | - used to have independent camera without stopping gameplay Debug camera - used to have independent camera without stopping gameplay DebugCameraControllerRef DebugCameraControllerClass |

