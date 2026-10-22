# UGameInstance

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameInstance](https://developer.gp.qq.com/api/#/searchContent/UGameInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameInstance)

类

全文搜索

GameInstance: high-level manager object for an instance of the running game. Spawned at game creation and not destroyed until game instance is shut down. Running as a standalone game, there will be one of these. Running in PIE (play-in-editor) will generate one of these per PIE instance.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **ReceiveInit** |  | Opportunity for blueprints to handle the game instance being initialized. |
| void | **ReceiveShutdown** |  | Opportunity for blueprints to handle the game instance being shutdown. |
| void | **HandleNetworkError** | ENetworkFailure :: Type FailureType, boolbIsServer | Opportunity for blueprints to handle network errors. |
| void | **HandleTravelError** | ETravelFailure :: TypeFailureType | Opportunity for blueprints to handle travel errors. |
| void | **DebugCreatePlayer** | int32ControllerId | Local player access Debug console command to create a player. params ControllerId -- The controller ID the player should accept input from. |
| void | **DebugRemovePlayer** | int32ControllerId | Debug console command to remove the player with a given controller ID. params ControllerId -- The controller ID to search for. |
| void | **ResetDynaConfigAndDynaCVar** |  |  |
| void | **ResetDynaConfig** |  |  |
| void | **SendConsoleVariableBunch** | ECVarType CVarType, UNetConnection *Connection |  |
| void | **ReceiveConsoleVariableBunch_BigWorld** | TArray < uint8 >InConsoleVariablesBunch |  |
| void | **ReceiveConsoleVariableBunch_Permanent** | TArray < uint8 >InConsoleVariablesBunch |  |
| void | **EnableConsoleVariableBunch** | ECVarType CVarType, boolbMapIsBigWorld |  |
| void | **ClearConsoleVariableBunch** | ECVarTypeCVarType |  |
| void | **ResetConsoleVariable** | ECVarTypeCVarType |  |
| void | **SetPakResState** | ESpecialPakID InPakID, EPakResStateInPakState |  |
| E | **PakResStateGetPakResState** | ESpecialPakIDInPakID |  |
| E | **PakSplitStateIsPlatformSplitPakRes** | ESpecialPakIDInPakID |  |
| void | **InitPakResState** |  | ReceiveInit ReceiveShutdown HandleNetworkError HandleTravelError DebugCreatePlayer DebugRemovePlayer ResetDynaConfigAndDynaCVar ResetDynaConfig SendConsoleVariableBunch ReceiveConsoleVariableBunch_BigWorld ReceiveConsoleVariableBunch_Permanent EnableConsoleVariableBunch ClearConsoleVariableBunch Res |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Class | **to** | manage online services EncryptedLocalPlayers LocalPlayers OnlineSession bUseEncryptLocalPlayerPtr DSHUD CachedConsoleVariableBunch_Groups CachedConsoleVariableBunch_BigWorld CachedConsoleVariableBunch_Permanent SpecialPakResStates |

## 委托

- voidOnPakResStateChanged(ESpecialPakIDInPakID, EPakResStateInPakOldState, EPakResStateInPakNewState)
- OnPakResStateChanged

