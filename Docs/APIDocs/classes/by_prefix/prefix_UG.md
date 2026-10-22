# Game 引擎 / 游戏核心  (前缀: UG)
_共 100 个类_
---
## UGameEngine

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameEngine?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameEngine.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameEngine](https://developer.gp.qq.com/api/#/searchContent/UGameEngine?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameEngine.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameEngine)

类

全文搜索

Engine that manages core systems that enable a game.

---


## 属性

- **delta** — time the engine uses to populate FApp::DeltaTime. If 0, unbound. Maximium time (in seconds) between the flushes of the logs on the server (best effort). If 0, this will happen every tick. UGameInstance *GameInstance MaxDeltaTime ServerFlushLogInterval GameInstance

## UGameInstance

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameInstance](https://developer.gp.qq.com/api/#/searchContent/UGameInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameInstance)

类

全文搜索

GameInstance: high-level manager object for an instance of the running game. Spawned at game creation and not destroyed until game instance is shut down. Running as a standalone game, there will be one of these. Running in PIE (play-in-editor) will generate one of these per PIE instance.

---


## 函数

- **ReceiveInit**(Opportunity for blueprints to handle the game instance being initialized.)
- **ReceiveShutdown**(Opportunity for blueprints to handle the game instance being shutdown.)
- **HandleNetworkError**(ENetworkFailure :: Type FailureType, boolbIsServer) — Opportunity for blueprints to handle network errors.
- **HandleTravelError**(ETravelFailure :: TypeFailureType) — Opportunity for blueprints to handle travel errors.
- **DebugCreatePlayer**(int32ControllerId) — Local player access Debug console command to create a player. params ControllerId -- The controller ID the player should accept input from.
- **DebugRemovePlayer**(int32ControllerId) — Debug console command to remove the player with a given controller ID. params ControllerId -- The controller ID to search for.
- **ResetDynaConfigAndDynaCVar**()
- **ResetDynaConfig**()
- **SendConsoleVariableBunch**(ECVarType CVarType, UNetConnection *Connection)
- **ReceiveConsoleVariableBunch_BigWorld**(TArray < uint8 >InConsoleVariablesBunch)
- **ReceiveConsoleVariableBunch_Permanent**(TArray < uint8 >InConsoleVariablesBunch)
- **EnableConsoleVariableBunch**(ECVarType CVarType, boolbMapIsBigWorld)
- **ClearConsoleVariableBunch**(ECVarTypeCVarType)
- **ResetConsoleVariable**(ECVarTypeCVarType)
- **SetPakResState**(ESpecialPakID InPakID, EPakResStateInPakState)
- **PakResStateGetPakResState**(ESpecialPakIDInPakID)
- **PakSplitStateIsPlatformSplitPakRes**(ESpecialPakIDInPakID)
- **InitPakResState**(ReceiveInit ReceiveShutdown HandleNetworkError HandleTravelError DebugCreatePlayer DebugRemovePlayer ResetDynaConfigAndDynaCVar ResetDynaConfig SendConsoleVariableBunch ReceiveConsoleVariableBunch_BigWorld ReceiveConsoleVariableBunch_Permanent EnableConsoleVariableBunch ClearConsoleVariableBunch Res)

## 属性

- **to** — manage online services EncryptedLocalPlayers LocalPlayers OnlineSession bUseEncryptLocalPlayerPtr DSHUD CachedConsoleVariableBunch_Groups CachedConsoleVariableBunch_BigWorld CachedConsoleVariableBunch_Permanent SpecialPakResStates

## 委托

- voidOnPakResStateChanged(ESpecialPakIDInPakID, EPakResStateInPakOldState, EPakResStateInPakNewState)
- OnPakResStateChanged

## UGameMapsSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameMapsSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameMapsSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameMapsSettings](https://developer.gp.qq.com/api/#/searchContent/UGameMapsSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameMapsSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameMapsSettings)

类

全文搜索

---


## 属性

- **set** — , this map will be loaded when the Editor starts up. The default options that will be appended to a map being loaded. The map loaded when transition from one map to another. Whether the screen should be split or not when multiple local players are present The viewport layout to use if the screen sho

## UGameNetworkManagerSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameNetworkManagerSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameNetworkManagerSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameNetworkManagerSettings](https://developer.gp.qq.com/api/#/searchContent/UGameNetworkManagerSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameNetworkManagerSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameNetworkManagerSettings)

类

全文搜索

Holds the settings for the AGameNetworkManager class.

---


## 属性

- **bandwidth** — dynamically set per connection. Maximum bandwidth dynamically set per connection. Total available bandwidth for listen server, split dynamically across net connections. The point we determine the server is either delaying packets or has bad upstream. Used to determine if checking for standby cheats

## UGameplayDataCollectHelperBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayDataCollectHelperBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayDataCollectHelperBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayDataCollectHelperBase](https://developer.gp.qq.com/api/#/searchContent/UGameplayDataCollectHelperBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayDataCollectHelperBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayDataCollectHelperBase)

类

全文搜索

---


## 函数

- **GMPEvent_SkillUseDelay**(int32 SkillUID, boolbRealUsed) — 老技能释放延迟时间（客户端点击到实际释放的时间差）
- **GMPEvent_SkillUseFaildRate**(int32 SkillUID, boolbUseFailed) — 老技能释放失败率 GMPEvent_SkillUseDelay GMPEvent_SkillUseFaildRate

## UGameplayStatics

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayStatics?classDetailShow=true&path=class%2Fdetail%2F%E5%BC%95%E6%93%8E%2F%E5%B8%B8%E7%94%A8%E5%85%A8%E5%B1%80%E7%B1%BB%2FUGameplayStatics.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayStatics](https://developer.gp.qq.com/api/#/searchContent/UGameplayStatics?classDetailShow=true&path=class%2Fdetail%2F%E5%BC%95%E6%93%8E%2F%E5%B8%B8%E7%94%A8%E5%85%A8%E5%B1%80%E7%B1%BB%2FUGameplayStatics.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayStatics)

类

全文搜索

---


## 函数

- **SpawnObject**(TSubclassOf < UObject > ObjectClass, UObject *Outer)
- **BeginSpawningActorFromBlueprint**(UObject* WorldContextObject, UBlueprint* Blueprint, FTransform& SpawnTransform, boolbNoCollisionFail) — 生成指定蓝图类的实例，但不自动执行构造函数 return -Actor实例 params WorldContextObject -world上下文对象 params Blueprint -蓝图类 params SpawnTransform -生成Actor的Transform
- **BeginSpawningActorFromClass**(UObject* WorldContextObject, TSubclassOf < AActor > ActorClass, FTransform& SpawnTransform, bool bNoCollisionFail, AActor *Owner)
- **BeginDeferredActorSpawnFromClass**(UObject* WorldContextObject, TSubclassOf < AActor > ActorClass, FTransform& SpawnTransform, ESpawnActorCollisionHandlingMethod CollisionHandlingOverride, AActor *Owner) — Spawns an instance of an actor class, but does not automatically run its construction script.
- **FinishSpawningActor**(AActor* Actor, FTransform &SpawnTransform) — 结束生成Actor，执行Actor的构造函数 return -Actor实例 params Actor -Actor实例 params SpawnTransform -生成Actor的Transform
- **VectorGetActorArrayAverageLocation**(TArray < AActor* > &Actors) — Find the average location (centroid) of an array of Actors
- **GetActorArrayBounds**(TArray < AActor* >& Actors, bool bOnlyCollidingComponents, FVector& Center, FVector &BoxExtent) — Bind the bounds of an array of Actors
- **GetAllActorsOfClass**(UObject* WorldContextObject, TSubclassOf < AActor > ActorClass, TArray < AActor* > &OutActors) — Find all Actors in the world of the specified class. This is a slow operation, use with caution e.g. do not use every frame. params ActorClass -Class of Actor to find. Must be specified or result array will be empty. params OutActors -Output array of Actors of the specified class.
- **GetFirstActorOfClass**(UObject* WorldContextObject, TSubclassOf < AActor >ActorClass) — Find one Actor in the world of the specified class. This is a slow operation, use with caution e.g. do not use every frame. params ActorClass -Class of Actor to find. Must be specified or result array will be empty.
- **GetAllActorsWithInterface**(UObject* WorldContextObject, TSubclassOf < UInterface > Interface, TArray < AActor* > &OutActors) — Find all Actors in the world with the specified interface. This is a slow operation, use with caution e.g. do not use every frame. params Interface -Interface to find. Must be specified or result array will be empty. params OutActors -Output array of Actors of the specified interface.
- **GetAllActorsWithTag**(UObject* WorldContextObject, FName Tag, TArray < AActor* > &OutActors) — 获取拥有指定Tag的所有Actor params WorldContextObject -world上下文对象 params Tag -Tag名称 params OutActors -输出的Actor列表
- **GetGameInstance**(UObject *WorldContextObject) — 获取GameInstance return -GameInstance params WorldContextObject -world上下文对象
- **GetCurrentGameInstance**()
- **GetPlayerController**(UObject* WorldContextObject, int32PlayerIndex) — 获取PlayerController return -PlayerController params WorldContextObject -world上下文对象
- **GetPlayerPawn**(UObject* WorldContextObject, int32PlayerIndex) — 获取PlayerPawn return -PlayerPawn params WorldContextObject -world上下文对象
- **GetPlayerCharacter**(UObject* WorldContextObject, int32PlayerIndex) — 获取PlayerCharacter return -PlayerCharacter params WorldContextObject -world上下文对象
- **GetPlayerCameraManager**(UObject* WorldContextObject, int32PlayerIndex) — 获取PlayerCameraManager return -PlayerCameraManager params WorldContextObject -world上下文对象
- **CreatePlayer**(UObject* WorldContextObject, int32 ControllerId, boolbSpawnPawn) — Create a new player for this game. params ControllerId -The ID of the controller that the should control the newly created player. A value of -1 specifies to use the next available ID params bSpawnPawn -Whether a pawn should be spawned immediately. If false a pawn will not be created until transitio
- **RemovePlayer**(APlayerController* Player, boolbDestroyPawn) — Removes a player from this game. params Player - The player controller of the player to be removed params bDestroyPawn -Whether the controlled pawn should be deleted as well
- **GetPlayerControllerID**(APlayerController *Player) — Gets what controller ID a Player is using return - The ID of the passed in player. -1 if there is no controller for the passed in player params Player -The player controller of the player to get the ID of
- **SetPlayerControllerID**(APlayerController* Player, int32ControllerId) — Sets what controller ID a Player should be using params Player - The player controller of the player to change the controller ID of params ControllerId -The controller ID to assign to this player
- **LoadStreamLevel**(UObject* WorldContextObject, FName LevelName, bool bMakeVisibleAfterLoad, bool bShouldBlockOnLoad, FLatentActionInfoLatentInfo) — 加载子关卡 params WorldContextObject -world上下文对象 params LevelName -子关卡名称 params bMakeVisibleAfterLoad -加载后是否显示 params bShouldBlockOnLoad -加载时是否阻塞 params LatentInfo -回调信息结构
- **UnloadStreamLevel**(UObject* WorldContextObject, FName LevelName, FLatentActionInfoLatentInfo) — 加载子关卡 params WorldContextObject -world上下文对象 params LevelName -子关卡名称 params LatentInfo -回调信息结构
- **GetStreamingLevel**(UObject* WorldContextObject, FNamePackageName) — Returns level streaming object with specified level package name
- **FlushLevelStreaming**(UObject *WorldContextObject) — 刷新关卡流，直到所有子关卡加载完毕时返回 params WorldContextObject -world上下文对象
- **FlushLevelStreamingBasedOnCharacterLocation**(UObject* WorldContextObject, FVectorCharacterLocation) — 更新玩家的位置，触发LevelBounds，然后加载所有关卡 params WorldContextObject -world上下文对象
- **FlushAllStreamingResource**(UObject *WorldContextObject) — 触发TextureStreaming， 将贴图全部加载完毕 params WorldContextObject -world上下文对象
- **CancelAsyncLoading**(Cancels all currently queued streaming packages)
- **OpenLevel**(UObject* WorldContextObject, FName LevelName, bool bAbsolute, FStringOptions) — Travel to another level params LevelName - the level to open params bAbsolute - if true options are reset, if false options are carried over from current level params Options - a string of options to use for the travel URL
- **OpenShaderLibrary**(FString& Name, FString &VersionNum)
- **CloseShaderLibrary**(FString &Name)
- **EnableShaderGroup**(FString& GroupName, int32ShaderPlatform) — Enable a new ShaderGroup for all opened ShaderCodeLibrary
- **EnableShaderLevel**(FString &ShaderLevelName)
- **EnableShaderPak**(FString &ShaderPakName)
- **DisableShaderLevel**(FString &ShaderLevelName)
- **DisableShaderPak**(FString &ShaderPakName)
- **RestartShaderPrecompile**()
- **OpenShaderCodeLibrary**(FString &Version) — OpenShaderCodeLibrary in Saved Folder
- **StringGetCurrentLevelName**(UObject* WorldContextObject, boolbRemovePrefixString) — 获得当前关卡名称 return -关卡名称 params WorldContextObject -world上下文对象 params bRemovePrefixString -是否移除prefix的字符串
- **GetGameMode**(UObject *WorldContextObject) — 获得当前GameMode return -当前GameMode params WorldContextObject -world上下文对象
- **GetGameState**(UObject *WorldContextObject) — 获得当前GameState return -当前GameState params WorldContextObject -world上下文对象
- **GetGameStateByWorldContext**(UObject *WorldContextObject)
- **GetObjectClass**(UObject *Object) — 获得对象的类型 return -对象的类型 params Object -指定对象
- **GetGlobalTimeDilation**(UObject *WorldContextObject) — 获得当前时间膨胀 return -Current time dilation. params WorldContextObject -world上下文对象
- **SetGlobalTimeDilation**(UObject* WorldContextObject, floatTimeDilation) — 设置时间膨胀 params WorldContextObject -world上下文对象 params TimeDilation -世界的时间膨胀
- **SetGamePaused**(UObject* WorldContextObject, boolbPaused) — 设置游戏是否暂停 return -Whether the game was successfully pausedunpaused params WorldContextObject -world上下文对象 params bPaused -是否暂停
- **IsGamePaused**(UObject *WorldContextObject) — 判断游戏是否暂停 return -Whether the game is currently paused or not params WorldContextObject -world上下文对象
- **ApplyRadialDamage**(UObject* WorldContextObject, float BaseDamage, FVector& Origin, float DamageRadius, TSubclassOf < UDamageType > DamageTypeClass, TArray < AActor* >& IgnoreActors, AActor* DamageCauser, AControlle) — Hurt locally authoritative actors within the radius. Will only hit components that block the Visibility channel. return -true if damage was applied to at least one actor. params BaseDamage -- The base damage to apply, i.e. the damage at the origin. params Origin -- Epicenter of the damage area. para
- **ApplyRadialDamageWithFalloff**(UObject* WorldContextObject, float BaseDamage, float MinimumDamage, FVector& Origin, float DamageInnerRadius, float DamageOuterRadius, float DamageFalloff, TSubclassOf < UDamageType > DamageTypeClas) — Hurt locally authoritative actors within the radius. Will only hit components that block the Visibility channel. return -true if damage was applied to at least one actor. params BaseDamage -- The base damage to apply, i.e. the damage at the origin. params Origin -- Epicenter of the damage area. para
- **ApplyPointDamage**(AActor* DamagedActor, float BaseDamage, FVector& HitFromDirection, FHitResult& HitInfo, AController* EventInstigator, AActor* DamageCauser, TSubclassOf < UDamageType > DamageTypeClass, int32Damag) — Hurts the specified actor with the specified impact. return -Actual damage the ended up being applied to the actor. params DamagedActor -- Actor that will be damaged. params BaseDamage -- The base damage to apply. params HitFromDirection -- Direction the hit came FROM params HitInfo -- Collision or
- **ApplyDamage**(AActor* DamagedActor, float BaseDamage, AController* EventInstigator, AActor* DamageCauser, TSubclassOf < UDamageType > DamageTypeClass, int32DamageTag) — Hurts the specified actor with generic damage. return -Actual damage the ended up being applied to the actor. params DamagedActor -- Actor that will be damaged. params BaseDamage -- The base damage to apply. params EventInstigator -- Controller that was responsible for causing this damage (e.g. play
- **PlayWorldCameraShake**(UObject* WorldContextObject, TSubclassOf < UCameraShake > Shake, FVector Epicenter, float InnerRadius, float OuterRadius, float Falloff, boolbOrientShakeTowardsEpicenter) — Plays an in-world camera shake that affects all nearby local players, with distance-based attenuation. Does not replicate. params WorldContextObject -- Object that we can obtain a world context from params Shake -- Camera shake asset to use params Epicenter -- location to place the effect in world s
- **SpawnEmitterAtLocation**(UObject* WorldContextObject, UParticleSystem* EmitterTemplate, FVector Location, FRotator Rotation, FVector Scale, boolbAutoDestroy) — Plays the specified effect at the given location and rotation, fire and forget. The system will go away when the effect is complete. Does not replicate. params WorldContextObject -- Object that we can obtain a world context from params EmitterTemplate -- particle system to create params Location --
- **SpawnEmitterAttached**(UParticleSystem* EmitterTemplate, USceneComponent* AttachToComponent, FName AttachPointName, FVector Location, FRotator Rotation, FVector Scale, EAttachLocation :: Type LocationType, boolbAutoDestro) — Plays the specified effect attached to and following the specified component. The system will go away when the effect is complete. Does not replicate. params EmitterTemplate -- particle system to create params AttachPointName -- Optional named point within the AttachComponent to spawn the emitter at
- **SpawnEmitterAttachedToActor**(UParticleSystem* EmitterTemplate, USceneComponent* AttachToComponent, FName AttachPointName, FVector Location, FRotator Rotation, FVector Scale, EAttachLocation :: Type LocationType, boolbAutoDestro)
- **AreAnyListenersWithinRange**(UObject* WorldContextObject, FVector Location, floatMaximumRange) — Determines if any audio listeners are within range of the specified location params Location -The location to potentially play a sound at params MaximumRange -The maximum distance away from Location that a listener can be
- **SetGlobalPitchModulation**(UObject* WorldContextObject, float PitchModulation, floatTimeSec) — Sets a global pitch modulation scalar that will apply to all non-UI sounds Fire and Forget. Not Replicated. params PitchModulation -- A pitch modulation value to globally set. params TimeSec -- A time value to linearly interpolate the global modulation pitch over from it's current value.
- **SetGlobalListenerFocusParameters**(UObject* WorldContextObject, float FocusAzimuthScale, float NonFocusAzimuthScale, float FocusDistanceScale, float NonFocusDistanceScale, float FocusVolumeScale, float NonFocusVolumeScale, float Focus) — Sets the global listener focus parameters which will scale focus behavior of sounds based on their focus azimuth settings in their attenuation settings. Fire and Forget. Not Replicated. params FocusAzimuthScale -- An angle scale value used to scale the azimuth angle that defines where sounds are in-
- **PlaySound2D**(UObject* WorldContextObject, USoundBase* Sound, float VolumeMultiplier, float PitchMultiplier, float StartTime, USoundConcurrency* ConcurrencySettings, AActor *OwningActor) — Plays a sound directly with no attenuation, perfect for UI sounds. Fire and Forget. Not Replicated. params Sound -- Sound to play. params VolumeMultiplier -- Multiplied with the volume to make the sound louder or softer. params PitchMultiplier -- Multiplies the pitch. params StartTime -- How far in
- **SpawnSound2D**(UObject* WorldContextObject, USoundBase* Sound, float VolumeMultiplier, float PitchMultiplier, float StartTime, USoundConcurrency* ConcurrencySettings, bool bPersistAcrossLevelTransition, boolbAuto) — Spawns a sound with no attenuation, perfect for UI sounds. Not Replicated. return -An audio component to manipulate the spawned sound params Sound -- Sound to play. params VolumeMultiplier -- Multiplied with the volume to make the sound louder or softer. params PitchMultiplier -- Multiplies the pitc
- **CreateSound2D**(UObject* WorldContextObject, USoundBase* Sound, float VolumeMultiplier, float PitchMultiplier, float StartTime, USoundConcurrency* ConcurrencySettings, bool bPersistAcrossLevelTransition, boolbAuto) — Creates a sound with no attenuation, perfect for UI sounds. This does NOT play the sound Not Replicated. return -An audio component to manipulate the created sound params Sound -- Sound to create. params VolumeMultiplier -- Multiplied with the volume to make the sound louder or softer. params PitchM
- **PlaySoundAtLocation**(UObject* WorldContextObject, USoundBase* Sound, FVector Location, FRotator Rotation, float VolumeMultiplier, float PitchMultiplier, float StartTime, USoundAttenuation* AttenuationSettings, USoundCo) — Plays a sound at the given location. This is a fire and forget sound and does not travel with any actor. Replication is also not handled at this point. params Sound -- sound to play params Location -- World position to play sound at params Rotation -- World rotation to play sound at params VolumeMul
- **SpawnSoundAtLocation**(UObject* WorldContextObject, USoundBase* Sound, FVector Location, FRotator Rotation, float VolumeMultiplier, float PitchMultiplier, float StartTime, USoundAttenuation* AttenuationSettings, USoundCo) — Spawns a sound at the given location. This does not travel with any actor. Replication is also not handled at this point. return -An audio component to manipulate the spawned sound params Sound -- sound to play params Location -- World position to play sound at params Rotation -- World rotation to p
- **SpawnSoundAttached**(USoundBase* Sound, USceneComponent* AttachToComponent, FName AttachPointName, FVector Location, FRotator Rotation, EAttachLocation :: Type LocationType, bool bStopWhenAttachedToDestroyed, float Volu) — Plays a sound attached to and following the specified component. This is a fire and forget sound. Replication is also not handled at this point. return -An audio component to manipulate the spawned sound params Sound -- sound to play params AttachPointName -- Optional named point within the AttachCo
- **PlayDialogue2D**(UObject* WorldContextObject, UDialogueWave* Dialogue, FDialogueContext& Context, float VolumeMultiplier, float PitchMultiplier, floatStartTime) — Plays a dialogue directly with no attenuation, perfect for UI. Fire and Forget. Not Replicated. params Dialogue -- dialogue to play params Context -- context the dialogue is to play in params VolumeMultiplier -- Multiplied with the volume to make the sound louder or softer. params PitchMultiplier --
- **SpawnDialogue2D**(UObject* WorldContextObject, UDialogueWave* Dialogue, FDialogueContext& Context, float VolumeMultiplier, float PitchMultiplier, float StartTime, boolbAutoDestroy) — Spawns a dialogue with no attenuation, perfect for UI. Not Replicated. return -An audio component to manipulate the spawned sound params Dialogue -- dialogue to play params Context -- context the dialogue is to play in params VolumeMultiplier -- Multiplied with the volume to make the sound louder or
- **PlayDialogueAtLocation**(UObject* WorldContextObject, UDialogueWave* Dialogue, FDialogueContext& Context, FVector Location, FRotator Rotation, float VolumeMultiplier, float PitchMultiplier, float StartTime, USoundAttenuati) — Plays a dialogue at the given location. This is a fire and forget sound and does not travel with any actor. Replication is also not handled at this point. params Dialogue -- dialogue to play params Context -- context the dialogue is to play in params Location -- World position to play dialogue at pa
- **SpawnDialogueAtLocation**(UObject* WorldContextObject, UDialogueWave* Dialogue, FDialogueContext& Context, FVector Location, FRotator Rotation, float VolumeMultiplier, float PitchMultiplier, float StartTime, USoundAttenuati) — Plays a dialogue at the given location. This is a fire and forget sound and does not travel with any actor. Replication is also not handled at this point. return -Audio Component to manipulate the playing dialogue with params Dialogue -- dialogue to play params Context -- context the dialogue is to
- **SpawnDialogueAttached**(UDialogueWave* Dialogue, FDialogueContext& Context, USceneComponent* AttachToComponent, FName AttachPointName, FVector Location, FRotator Rotation, EAttachLocation :: Type LocationType, bool bStopW) — Spawns a dialogue attached to and following the specified component. This is a fire and forget sound. Replication is also not handled at this point. return -Audio Component to manipulate the playing dialogue with params Dialogue -- dialogue to play params Context -- context the dialogue is to play i
- **SpawnForceFeedbackAtLocation**(UObject* WorldContextObject, UForceFeedbackEffect* ForceFeedbackEffect, FVector Location, FRotator Rotation, bool bLooping, float IntensityMultiplier, float StartTime, UForceFeedbackAttenuation* At) — Plays a force feedback effect at the given location. This is a fire and forget effect and does not travel with any actor. Replication is also not handled at this point. return -Force Feedback Component to manipulate the playing feedback effect with params ForceFeedbackEffect -- effect to play params
- **SpawnForceFeedbackAttached**(UForceFeedbackEffect* ForceFeedbackEffect, USceneComponent* AttachToComponent, FName AttachPointName, FVector Location, FRotator Rotation, EAttachLocation :: Type LocationType, bool bStopWhenAttache) — Plays a force feedback effect attached to and following the specified component. This is a fire and forget effect. Replication is also not handled at this point. return -Force Feedback Component to manipulate the playing feedback effect with params ForceFeedbackEffect -- effect to play params Attach
- **SetSubtitlesEnabled**(boolbEnabled) — Will set subtitles to be enabled or disabled. params bEnabled -will enable subtitle drawing if true, disable if false.
- **AreSubtitlesEnabled**(Returns whether or not subtitles are currently enabled. return -true if subtitles are enabled.)
- **SetBaseSoundMix**(UObject* WorldContextObject, USoundMix *InSoundMix) — Set the sound mix of the audio system for special EQing
- **SetSoundMixClassOverride**(UObject* WorldContextObject, USoundMix* InSoundMixModifier, USoundClass* InSoundClass, float Volume, float Pitch, float FadeInTime, boolbApplyToChildren) — Overrides the sound class adjuster in the given sound mix. If the sound class does not exist in the input sound mix, the sound class adjustment will be added to the sound mix. params InSoundMixModifier -The sound mix to modify. params InSoundClass -The sound class to override (or add) in the sound m
- **ClearSoundMixClassOverride**(UObject* WorldContextObject, USoundMix* InSoundMixModifier, USoundClass* InSoundClass, floatFadeOutTime) — Clears the override of the sound class adjuster in the given sound mix. If the override did not exist in the sound mix, this will do nothing. params InSoundMixModifier -The sound mix to modify. params InSoundClass -The sound class to override (or add) in the sound mix. params FadeOutTime -The interp
- **PushSoundMixModifier**(UObject* WorldContextObject, USoundMix *InSoundMixModifier) — Push a sound mix modifier onto the audio system
- **PopSoundMixModifier**(UObject* WorldContextObject, USoundMix *InSoundMixModifier) — Pop a sound mix modifier from the audio system
- **ClearSoundMixModifiers**(UObject *WorldContextObject) — Clear all sound mix modifiers from the audio system
- **ActivateReverbEffect**(UObject* WorldContextObject, UReverbEffect* ReverbEffect, FName TagName, float Priority, float Volume, floatFadeTime) — Activates a Reverb Effect without the need for a volume params ReverbEffect -Reverb Effect to use params TagName -Tag to associate with Reverb Effect params Priority -Priority of the Reverb Effect params Volume -Volume level of Reverb Effect params FadeTime -Time before Reverb Effect is fully active
- **DeactivateReverbEffect**(UObject* WorldContextObject, FNameTagName) — Deactivates a Reverb Effect not applied by a volume params TagName -Tag associated with Reverb Effect to remove
- **GetCurrentReverbEffect**(UObject *WorldContextObject) — Returns the highest priority reverb settings currently active from any source (volumes or manual setting).
- **SpawnDecalAtLocation**(UObject* WorldContextObject, UMaterialInterface* DecalMaterial, FVector DecalSize, FVector Location, FRotator Rotation, floatLifeSpan) — Spawns a decal at the given location and rotation, fire and forget. Does not replicate. params DecalMaterial -- decal's material params DecalSize -- size of decal params Location -- location to place the decal in world space params Rotation -- rotation to place the decal in world space params LifeSp
- **SpawnDecalAttached**(UMaterialInterface* DecalMaterial, FVector DecalSize, USceneComponent* AttachToComponent, FName AttachPointName, FVector Location, FRotator Rotation, EAttachLocation :: Type LocationType, floatLifeS) — Spawns a decal attached to and following the specified component. Does not replicate. params DecalMaterial -- decal's material params DecalSize -- size of decal params AttachPointName -- Optional named point within the AttachComponent to spawn the emitter at params Location -- Depending on the value
- **BreakHitResult**(FHitResult& Hit, bool& bBlockingHit, bool& bInitialOverlap, float& Time, float& Distance, FVector& Location, FVector& ImpactPoint, FVector& Normal, FVector& ImpactNormal, UPhysicalMaterial *) — Extracts data from a HitResult. params Hit - The source HitResult. params bBlockingHit -True if there was a blocking hit, false otherwise. params bInitialOverlap -True if the hit started in an initial overlap. In this case some other values should be interpreted differently. Time will be 0, ImpactPo
- **HitResultMakeHitResult**(bool bBlockingHit, bool bInitialOverlap, float Time, float Distance, FVector Location, FVector ImpactPoint, FVector Normal, FVector ImpactNormal, UPhysicalMaterial* PhysMat, AActor* HitActor, UPrimi) — Create a HitResult struct params bBlockingHit -True if there was a blocking hit, false otherwise. params bInitialOverlap -True if the hit started in an initial overlap. In this case some other values should be interpreted differently. Time will be 0, ImpactPoint will equal Location, and normals will
- **PhysicalSurfaceGetSurfaceType**(FHitResult &Hit) — Returns the EPhysicalSurface type of the given Hit. To edit surface type for your project, use ProjectSettingsPhysicsPhysicalSurface section
- **FindCollisionUV**(FHitResult& Hit, int32 UVChannel, FVector2D &UV) — Try and find the UV for a collision impact. Note this ONLY works if 'Support UV From Hit Results' is enabled in Physics Settings.
- **CreateSaveGameObject**(TSubclassOf < USaveGame >SaveGameClass) — Create a new, empty SaveGame object to set data on and then pass to SaveGameToSlot. return - New SaveGame object to write data to params SaveGameClass -Class of SaveGame to create
- **CreateSaveGameObjectFromBlueprint**(UBlueprint *SaveGameBlueprint) — Create a new, empty SaveGame object to set data on and then pass to SaveGameToSlot. return - New SaveGame object to write data to params SaveGameBlueprint -Blueprint of SaveGame to create
- **SaveGameToSlot**(USaveGame* SaveGameObject, FString& SlotName, int32UserIndex) — Save the contents of the SaveGameObject to a slot. return - Whether we successfully saved this information params SaveGameObject -Object that contains data about the save game that we want to write out params SlotName - Name of save game slot to save to. params UserIndex -For some platforms, master
- **DoesSaveGameExist**(FString& SlotName, int32UserIndex) — See if a save game exists with the specified name. params SlotName - Name of save game slot. params UserIndex -For some platforms, master user index to identify the user doing the saving.
- **BindLoadGameGuardEntranceCheckDelegate**(UObject* Obj, FString &FuncName)
- **BindLoadGameGuardExitCheckDelegate**(UObject* Obj, FString &FuncName)
- **LoadGameFromSlot**(FString& SlotName, int32UserIndex) — Load the contents from a given slot. return -SaveGameObject Object containing loaded game state (NULL if load fails) params SlotName - Name of the save game slot to load from. params UserIndex -For some platforms, master user index to identify the user doing the loading.
- **LoadGameFromSlotWithSizeLimit**(FString& SlotName, int32 UserIndex, int32MaxSerSize) — Load the contents from a given slot. return -SaveGameObject Object containing loaded game state (NULL if load fails) params SlotName - Name of the save game slot to load from. params UserIndex -For some platforms, master user index to identify the user doing the loading. params MaxSerSize -Specify t
- **LoadGameFromMemory**(TArray < uint8 >& ObjectBytes, int32MaxSerSize)
- **LoadGameFromMemoryWithSizeLimit**(TArray < uint8 >& ObjectBytes, int32MaxSerSize)
- **DeleteGameInSlot**(FString& SlotName, int32UserIndex) — Delete a save game in a particular slot. return -True if a file was actually able to be deleted. use DoesSaveGameExist to distinguish between delete failures and failure due to file not existing. params SlotName - Name of save game slot to delete. params UserIndex -For some platforms, master user in
- **GetWorldDeltaSeconds**(UObject *WorldContextObject) — 获得当前每帧的delta time，单位秒 return -每帧的delta time params WorldContextObject -world上下文对象
- **GetTimeSeconds**(UObject *WorldContextObject) — 获得当前游戏开始之后的时间，单位秒，受时间膨胀和游戏暂停影响 return -游戏时间 params WorldContextObject -world上下文对象
- **GetUnpausedTimeSeconds**(UObject *WorldContextObject) — 获得当前游戏开始之后的时间，单位秒，受时间膨胀影响，但不受游戏暂停影响 return -游戏时间 params WorldContextObject -world上下文对象
- **GetRealTimeSeconds**(UObject *WorldContextObject) — 获得当前游戏开始之后的真实时间，单位秒，不受时间膨胀和游戏暂停影响 return -游戏时间 params WorldContextObject -world上下文对象
- **GetAudioTimeSeconds**(UObject *WorldContextObject) — 获得当前游戏开始之后的时间，单位秒，不受时间膨胀影响，但受时间暂停影响 return -游戏时间 params WorldContextObject -world上下文对象
- **GetAccurateRealTime**(UObject* WorldContextObject, int32& Seconds, float &PartialSeconds)
- **EnableLiveStreaming**(boolEnable) — ~ DVRStreaming API Toggle live DVR streaming. params Enable - If true enable streaming, otherwise disable.
- **StringGetPlatformName**(Returns the string name of the current platform, to perform different behavior based on platform. (Platform names include Windows, Mac, IOS, Android, PS4, XboxOne, HTML5, Linux))
- **BlueprintSuggestProjectileVelocity**(UObject* WorldContextObject, FVector& TossVelocity, FVector StartLocation, FVector EndLocation, float LaunchSpeed, float OverrideGravityZ, ESuggestProjVelocityTraceOption :: Type TraceOption, float) — Calculates an launch velocity for a projectile to hit a specified point. return - Returns false if there is no valid solution or the valid solutions are blocked. Returns true otherwise. params TossVelocity -(output) Result launch velocity. params StartLocation -Intended launch location params EndLoc
- **Blueprint_PredictProjectilePath_ByObjectType**(UObject* WorldContextObject, FHitResult& OutHit, TArray < FVector >& OutPathPositions, FVector& OutLastTraceDestination, FVector StartPos, FVector LaunchVelocity, bool bTracePath, float Projectile) — Predict the arc of a virtual projectile affected by gravity with collision checks along the arc. Returns a list of positions of the simulated arc and the destination reached by the simulation. Returns true if it hit something. return - True if hit something along the path if tracing for collision. p
- **Blueprint_PredictProjectilePath_ByTraceChannel**(UObject* WorldContextObject, FHitResult& OutHit, TArray < FVector >& OutPathPositions, FVector& OutLastTraceDestination, FVector StartPos, FVector LaunchVelocity, bool bTracePath, float Projectile) — Predict the arc of a virtual projectile affected by gravity with collision checks along the arc. Returns a list of positions of the simulated arc and the destination reached by the simulation. Returns true if it hit something (if tracing with collision). return - True if hit something along the path
- **Blueprint_PredictProjectilePath_Advanced**(UObject* WorldContextObject, FPredictProjectilePathParams& PredictParams, FPredictProjectilePathResult &PredictResult) — Predict the arc of a virtual projectile affected by gravity with collision checks along the arc. Returns true if it hit something. return - True if hit something along the path (if tracing with collision). params PredictParams - Input params to the trace (start location, velocity, time to simulate,
- **SuggestProjectileVelocity_CustomArc**(UObject* WorldContextObject, FVector& OutLaunchVelocity, FVector StartPos, FVector EndPos, float OverrideGravityZ, floatArcParam) — Returns the launch velocity needed for a projectile at rest at StartPos to land on EndPos. Assumes a medium arc (e.g. 45 deg on level ground). Projectile velocity is variable and unconstrained. Does no tracing. params OutLaunchVelocity - Returns the launch velocity required to reach the EndPos param
- **IntVectorGetWorldOriginLocation**(UObject *WorldContextObject) — 获取世界原点位置 return -世界原点 params WorldContextObject -world上下文对象
- **SetWorldOriginLocation**(UObject* WorldContextObject, FIntVectorNewLocation) — 设置世界原点位置 params WorldContextObject -world上下文对象 params NewLocation -世界原点
- **SetWorldOriginLocationByLua**(UObject* WorldContextObject, int32 X, int32 Y, int32Z) — 设置世界原点位置 params WorldContextObject -world上下文对象
- **SyncSetNewWorldOrigin**(UObject* WorldContextObject, int32 X, int32 Y, int32Z) — 同步设置世界原点位置 params WorldContextObject -world上下文对象
- **VectorRebaseLocalOriginOntoZero**(UObject* WorldContextObject, FVectorWorldLocation) — 返回基于原点坐标的local坐标 return -origin based position params WorldContextObject -world上下文对象
- **VectorRebaseZeroOriginOntoLocal**(UObject* WorldContextObject, FVectorWorldLocation) — 返回local坐标基于原点的坐标 return -local location params WorldContextObject -world上下文对象
- **GrassOverlappingSphereCount**(UObject* WorldContextObject, UStaticMesh* StaticMesh, FVector CenterPosition, floatRadius) — Counts how many grass foliage instances overlap a given sphere. return -Number of foliage instances with their mesh set to Mesh that overlap the sphere. params CenterPosition -The center position of the sphere. params Radius - The radius of the sphere.
- **DeprojectScreenToWorld**(APlayerController* Player, FVector2D& ScreenPosition, FVector& WorldPosition, FVector &WorldDirection) — 获取给定2D屏幕空间中的坐标投影到3D世界空间中的坐标 return -是否转换成功 params Player -玩家的PlayerController params ScreenPosition -屏幕空间中的坐标 params WorldPosition -输出的世界空间坐标 params WorldDirection -输出的方向向量，世界空间中，给定点远离相机方向的方向向量
- **ProjectWorldToScreen**(APlayerController* Player, FVector& WorldPosition, FVector2D& ScreenPosition, boolbPlayerViewportRelative) — 获取给定3D世界空间中的坐标投影到2D屏幕空间中的坐标 return -是否转换成功 params Player -玩家的PlayerController params WorldPosition -世界空间中的坐标 params ScreenPosition -输出的屏幕空间坐标 params bPlayerViewportRelative -是否与玩家视口相关
- **MarkNetPropertyDirtyFromName**(UObject* Object, FName PropertyName, ELifetimeConditionLifetimeCondition) — Mark a particular net property of an UObject as dirty (for networking), thus it will be take into consideration in next replication params Object - UObject to be marked dirty params PropertyName -Name of the particular net property to be marked dirty
- **GetKeyValue**(FString& Pair, FString& Key, FString &Value) — Break up a key=value pair into its key and value. params Pair - The string containing a pair to split apart. params Key - (out) Key portion of Pair. If no = in string will be the same as Pair. params Value - (out) Value portion of Pair. If no = in string will be empty.
- **StringParseOption**(FString Options, FString &Key) — Find an option in the options string and return it. return - The value associated with Key if Key found in Options string. params Options -The string containing the options. params Key - The key to find the value of in Options.
- **HasOption**(FString Options, FString &InKey) — Returns whether a key exists in an options string. return - Whether Key was found in Options. params Options -The string containing the options.
- **GetIntOption**(FString& Options, FString& Key, int32DefaultValue) — Find an option in the options string and return it as an integer. return - The value associated with Key as an integer if Key found in Options string, otherwise DefaultValue. params Options -The string containing the options. params Key - The key to find the value of in Options.
- **HasLaunchOption**(FString &OptionToCheck) — Checks the commandline to see if the desired option was specified on the commandline (e.g. -demobuild) return - True if the launch option was specified on the commandline, false otherwise
- **GetDeviceQualityLevel**()
- **GetDeviceTCQualityGrade**()
- **GetDeviceMemoryLevel**()
- **GetDeviceMemorySize**()
- **EnableObjArrayAutoResize**(boolbEnabled)
- **SetConsoleIntVariable**(FString& Name, int32Value)
- **UpdateComponentToWorld**(UActorComponent *ActorComponent)
- **IsLongScreen**(UObject *WorldContextObject)
- **IsWinReleaseBuild**()
- **RecordDSLaunchState**(int32state) — record ds launch state, collect for ds shutdown error report, add by czcheng params state -launch state, see details in EDSLaunchState
- **RecordDSShutdownErrorInfo**(int32 ErrorCode, FString &ErrMsg) — record ds shutdown error info, collect for ds shutdown error report, add by czcheng params ErrorCode -shutdown error code, see details in EDSShutdownErrorCode params ErrMsg -error message SpawnObject BeginSpawningActorFromBlueprint BeginSpawningActorFromClass BeginDeferredActorSpawnFromClass FinishS

## UGameplayTagsDeveloperSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTagsDeveloperSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTagsDeveloperSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTagsDeveloperSettings](https://developer.gp.qq.com/api/#/searchContent/UGameplayTagsDeveloperSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTagsDeveloperSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTagsDeveloperSettings)

类

全文搜索

---


## 属性

- **new** — tags to be saved into their own INI file. This is make merging easier for non technical developers by setting up their own ini file. DeveloperConfigName

## UGameplayTagsList

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTagsList?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTagsList.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTagsList](https://developer.gp.qq.com/api/#/searchContent/UGameplayTagsList?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTagsList.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTagsList)

类

全文搜索

Base class for storing a list of gameplay tags as an ini list. This is used for both the central list and additional lists

---


## 属性

- **path** — to the ini file that is backing this list List of tags saved to this file ConfigFileName GameplayTagList

## UGameplayTagsManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTagsManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTagsManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTagsManager](https://developer.gp.qq.com/api/#/searchContent/UGameplayTagsManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTagsManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTagsManager)

类

全文搜索

Holds data about the tag dictionary, is in a singleton UObject

---


## 属性

- **of** — gameplay tag sources Holds all of the valid gameplay-related tags that can be applied to assets TagSources GameplayTagTables

## UGameplayTagsSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTagsSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTagsSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTagsSettings](https://developer.gp.qq.com/api/#/searchContent/UGameplayTagsSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTagsSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTagsSettings)

类

全文搜索

Class for importing GameplayTags directly from a config file. FGameplayTagsEditorModule::StartupModule adds this class to the Project Settings menu to be edited. Editing this in Project Settings will output changes to ConfigDefaultGameplayTags.ini. Primary advantages of this approach are: -Adding new tags doesn't require checking out external and editing file (CSV or xls) then reimporting. -New tags are mergeable since .ini are text and non exclusive checkout. To do: -Better support could be added for adding new tags. We could match existing tags and autocomplete subtags as the user types (e.g, autocomplete 'Damage.Physical' as the user is adding a 'Damage.Physical.Slash' tag).

---


## 属性

- **true** — , will import tags from ini files in the configtags folder If true, will give load warnings when reading invalid tags off disk These characters cannot be used in gameplay tags, in addition to special ones like newline If true, will replicate gameplay tags by index instead of name. For this to work,

## UGameplayTask

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTask?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTask.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTask](https://developer.gp.qq.com/api/#/searchContent/UGameplayTask?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTask.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTask)

类

全文搜索

---


## 函数

- **ReadyForActivation**(Called to trigger the actual task once the delegates have been set up)
- **EndTask**(Called explicitly to end the task (usually by the task itself). Calls OnDestroy. ReadyForActivation EndTask)

## 属性

- **name** — allows us to find the task later so that we can end it. ETaskResourceOverlapPolicyResourceOverlapPolicy UGameplayTask *ChildTask child task instance InstanceName ResourceOverlapPolicy ChildTask

## UGameplayTask_ClaimResource

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTask_ClaimResource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTask_ClaimResource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTask_ClaimResource](https://developer.gp.qq.com/api/#/searchContent/UGameplayTask_ClaimResource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTask_ClaimResource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTask_ClaimResource)

类

全文搜索

---


## 函数

- **ClaimResource**(TScriptInterface < IGameplayTaskOwnerInterface > InTaskOwner, TSubclassOf < UGameplayTaskResource > ResourceClass, uint8 Priority, FNameTaskInstanceName)
- **ClaimResources**(TScriptInterface < IGameplayTaskOwnerInterface > InTaskOwner, TArray < TSubclassOf < UGameplayTaskResource > > ResourceClasses, uint8 Priority, FNameTaskInstanceName) — ClaimResource ClaimResources

## UGameplayTask_SpawnActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTask_SpawnActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTask_SpawnActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTask_SpawnActor](https://developer.gp.qq.com/api/#/searchContent/UGameplayTask_SpawnActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTask_SpawnActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTask_SpawnActor)

类

全文搜索

Convenience task for spawning actors (optionally limiting the spawning to the network authority). If not the net authority, we will not spawn and Success will not be called. The nice thing this adds is the ability to modify expose on spawn properties while also implicitly checking network role before spawning. Though this task doesn't do much - games can implement similar tasks that carry out game specific rules. For example a 'SpawnProjectile' task that limits the available classes to the games projectile class, and that does game specific stuff on spawn (for example, determining firing position from a weapon attachment). Long term we can also use this task as a sync point. If the executing client could wait execution until the server creates and replicates the actor down to him. We could potentially also use this to do predictive actor spawning reconciliation.

---


## 函数

- **SpawnActor**(TScriptInterface < IGameplayTaskOwnerInterface > TaskOwner, FVector SpawnLocation, FRotator SpawnRotation, TSubclassOf < AActor > Class, boolbSpawnOnlyOnAuthority) — Spawn new Actor on the network authority (server)
- **BeginSpawningActor**(UObject* WorldContextObject, AActor* &SpawnedActor)
- **FinishSpawningActor**(UObject* WorldContextObject, AActor *SpawnedActor) — SpawnActor BeginSpawningActor FinishSpawningActor

## 委托

- voidSuccess(AActor*SpawnedActor)
- voidDidNotSpawn(AActor*SpawnedActor)
- Called when we can't spawn: on clients or potentially on server if they fail to spawn (rare)
- Success
- DidNotSpawn

## UGameplayTask_TimeLimitedExecution

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTask_TimeLimitedExecution?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTask_TimeLimitedExecution.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTask_TimeLimitedExecution](https://developer.gp.qq.com/api/#/searchContent/UGameplayTask_TimeLimitedExecution?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTask_TimeLimitedExecution.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTask_TimeLimitedExecution)

类

全文搜索

Adds time limit for running a child task - child task needs to be created with UGameplayTask_TimeLimitedExecution passed as TaskOwner - activations are tied together and when either UGameplayTask_TimeLimitedExecution or child task is activated, other one starts as well - OnFinished and OnTimeExpired are mutually exclusive

---


## 委托

- voidOnFinished()
- called when child task finishes execution before time runs out
- voidOnTimeExpired()
- called when time runs out
- OnFinished
- OnTimeExpired

## UGameplayTask_WaitDelay

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTask_WaitDelay?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTask_WaitDelay.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTask_WaitDelay](https://developer.gp.qq.com/api/#/searchContent/UGameplayTask_WaitDelay?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTask_WaitDelay.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTask_WaitDelay)

类

全文搜索

---


## 函数

- **TaskWaitDelay**(TScriptInterface < IGameplayTaskOwnerInterface > TaskOwner, float Time, uint8Priority) — Wait specified time. This is functionally the same as a standard Delay node. TaskWaitDelay

## 委托

- voidOnFinish()
- OnFinish

## UGameplayTaskResource

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTaskResource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTaskResource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTaskResource](https://developer.gp.qq.com/api/#/searchContent/UGameplayTaskResource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTaskResource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTaskResource)

类

全文搜索

---


## 属性

- **AutoResourceID** — . -1 means auto ID will be applied ManualResourceID AutoResourceID bManuallySetID

## UGameplayTasksComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTasksComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTasksComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTasksComponent](https://developer.gp.qq.com/api/#/searchContent/UGameplayTasksComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTasksComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTasksComponent)

类

全文搜索

The core ActorComponent for interfacing with the GameplayAbilities System

---


## 函数

- **OnRep_SimulatedTasks**()
- **OnRep_AutonomousTasks**()
- **GameplayTaskRunResultK2_RunGameplayTask**(TScriptInterface < IGameplayTaskOwnerInterface > TaskOwner, UGameplayTask* Task, uint8 Priority, TArray < TSubclassOf < UGameplayTaskResource > > AdditionalRequiredResources, TArray < TSubclassOf < U) — OnRep_SimulatedTasks OnRep_AutonomousTasks K2_RunGameplayTask

## 属性

- **that** — run on simulated proxies Array of currently active UGameplayTask that require ticking All known tasks (processed by this component) referenced for GC SimulatedTasks AutonomousTasks TaskPriorityQueue TickingTasks KnownTasks

## 委托

- voidOnClaimedResourcesChange(FGameplayResourceSetNewlyClaimed, FGameplayResourceSetFreshlyReleased)
- OnClaimedResourcesChange

## UGameSessionSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameSessionSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameSessionSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameSessionSettings](https://developer.gp.qq.com/api/#/searchContent/UGameSessionSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameSessionSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameSessionSettings)

类

全文搜索

---


## 属性

- **number** — of spectators allowed by this server. Maximum number of players allowed by this server. Is voice enabled always or via a push to talk key binding. MaxSpectators MaxPlayers bRequiresPushToTalk

## UGameUserSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameUserSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameUserSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameUserSettings](https://developer.gp.qq.com/api/#/searchContent/UGameUserSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameUserSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameUserSettings)

类

全文搜索

Stores user settings for a game (for example graphics and sound settings), with the ability to save and load to and from a file.

---


## 函数

- **ApplySettings**(boolbCheckForCommandLineOverrides) — Applies all current user settings to the game and saves to permanent storage (e.g. file), optionally checking for command line overrides.
- **ApplyNonResolutionSettings**()
- **ApplyResolutionSettings**(boolbCheckForCommandLineOverrides)
- **IntPointGetScreenResolution**(Returns the user setting for game screen resolution, in pixels.)
- **IntPointGetLastConfirmedScreenResolution**(Returns the last confirmed user setting for game screen resolution, in pixels.)
- **IntPointGetDesktopResolution**(Returns user's desktop resolution, in pixels.)
- **SetScreenResolution**(FIntPointResolution) — Sets the user setting for game screen resolution, in pixels.
- **GetIsBorderless**(IsBorderless getter and setter added by windzjliu)
- **SetIsBorderless**(boolInIsBorderless)
- **GetBorderlessMode**()
- **SetBorderlessMode**(int32InBorderlessMode)
- **TypeGetFullscreenMode**(Returns the user setting for game window fullscreen mode.)
- **TypeGetLastConfirmedFullscreenMode**(Returns the last confirmed user setting for game window fullscreen mode.)
- **SetFullscreenMode**(EWindowMode :: TypeInFullscreenMode) — Sets the user setting for the game window fullscreen mode. See UGameUserSettings::FullscreenMode.
- **TypeGetPreferredFullscreenMode**(Returns the user setting for game window fullscreen mode.)
- **SetVSyncEnabled**(boolbEnable) — Sets the user setting for vsync. See UGameUserSettings::bUseVSync.
- **IsVSyncEnabled**(Returns the user setting for vsync.)
- **IsScreenResolutionDirty**(Checks if the Screen Resolution user setting is different from current)
- **IsFullscreenModeDirty**(Checks if the FullscreenMode user setting is different from current)
- **IsVSyncDirty**(Checks if the vsync user setting is different from current system setting)
- **ConfirmVideoMode**(Mark current video mode settings (fullscreenmoderesolution) as being confirmed by the user)
- **RevertVideoMode**(Revert video mode (fullscreenmoderesolution) back to the last user confirmed values)
- **SetBenchmarkFallbackValues**(Set scalability settings to sensible fallback values, for use when the benchmark fails or potentially causes a crash)
- **SetAudioQualityLevel**(int32QualityLevel) — Sets the user's audio quality level setting
- **GetAudioQualityLevel**(Returns the user's audio quality level setting)
- **SetFrameRateLimit**(floatNewLimit) — Sets the user's frame rate limit (0 will disable frame rate limiting)
- **GetFrameRateLimit**(Gets the user's frame rate limit (0 indiciates the frame rate limit is disabled))
- **SetOverallScalabilityLevel**(int32Value)
- **GetOverallScalabilityLevel**()
- **GetResolutionScaleInformation**(float& CurrentScaleNormalized, int32& CurrentScaleValue, int32& MinScaleValue, int32 &MaxScaleValue)
- **GetResolutionScaleInformationEx**(float& CurrentScaleNormalized, float& CurrentScaleValue, float& MinScaleValue, float &MaxScaleValue)
- **SetResolutionScaleValue**(int32NewScaleValue)
- **SetResolutionScaleValueEx**(floatNewScaleValue)
- **SetResolutionScaleNormalized**(floatNewScaleNormalized)
- **SetViewDistanceQuality**(int32Value)
- **GetViewDistanceQuality**()
- **SetShadowQuality**(int32Value)
- **GetShadowQuality**()
- **SetAntiAliasingQuality**(int32Value)
- **GetAntiAliasingQuality**()
- **SetTextureQuality**(int32Value)
- **GetTextureQuality**()
- **SetVisualEffectQuality**(int32Value)
- **GetVisualEffectQuality**()
- **SetPostProcessingQuality**(int32Value)
- **GetPostProcessingQuality**()
- **SetFoliageQuality**(int32Value)
- **GetFoliageQuality**()
- **IsDirty**(Checks if any user settings is different from current)
- **ValidateSettings**(Validates and resets bad user settings to default. Deletes stale user settings file if necessary.)
- **LoadSettings**(boolbForceReload) — Loads the user settings from persistent storage
- **SaveSettings**(Save the user settings to persistent storage (automatically happens as part of ApplySettings))
- **ResetToCurrentSettings**(This function resets all settings to the current system settings)
- **SetToDefaults**()
- **GetDefaultResolutionScale**(Gets the desired resolution quality based on DesiredScreenWidthHeight and the current screen resolution)
- **GetRecommendedResolutionScale**(Gets the recommended resolution quality based on LastRecommendedScreenWidthHeight and the current screen resolution)
- **IntPointGetDefaultResolution**(return -The default resolution when no resolution is set)
- **IntPointGetDefaultWindowPosition**(return -The default window position when no position is set)
- **TypeGetDefaultWindowMode**(return -The default window mode when no mode is set)
- **GetGameUserSettings**(Returns the game local machine settings (resolution, windowing mode, scalability settings, etc...))
- **RunHardwareBenchmark**(int32 WorkScale, float CPUMultiplier, floatGPUMultiplier) — Runs the hardware benchmark and populates ScalabilityQuality as well as the last benchmark results config members, but does not apply the settings it determines. Designed to be called in conjunction with ApplyHardwareBenchmarkResults
- **ApplyHardwareBenchmarkResults**(Applies the settings stored in ScalabilityQuality and saves settings)
- **SupportsHDRDisplayOutput**(Whether the curently running system supports HDR display output)
- **EnableHDRDisplayOutput**(bool bEnable, int32DisplayNits) — Enables or disables HDR display output. Can be called again to change the desired nit level
- **GetCurrentHDRDisplayNits**(Returns 0 if HDR isn't supported or is turned off)
- **IsHDREnabled**(ApplySettings ApplyNonResolutionSettings ApplyResolutionSettings GetScreenResolution GetLastConfirmedScreenResolution GetDesktopResolution SetScreenResolution GetIsBorderless SetIsBorderless GetBorderlessMode SetBorderlessMode GetFullscreenMode GetLastConfirmedFullscreenMode SetFullscreenMode GetPre)

## 属性

- **to** — use VSync or not. (public to allow UI to connect to it) Game screen resolution width, in pixels. Game screen resolution height, in pixels. Game screen resolution width, in pixels. Game screen resolution height, in pixels. Is game window borderless added by windzjliu Window PosX Window PosY Game wind

## 委托

- voidOnGameUserSettingsUINeedsUpdate()
- OnGameUserSettingsUINeedsUpdate

## UGameViewportClient

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

## UGarbageCollectionSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGarbageCollectionSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGarbageCollectionSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGarbageCollectionSettings](https://developer.gp.qq.com/api/#/searchContent/UGarbageCollectionSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGarbageCollectionSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGarbageCollectionSettings)

类

全文搜索

Implements the settings for garbage collection.

---

## UGC_Backpack_Item_UIBP

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGC_Backpack_Item_UIBP?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGC_Backpack_Item_UIBP.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGC_Backpack_Item_UIBP](https://developer.gp.qq.com/api/#/searchContent/UGC_Backpack_Item_UIBP?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGC_Backpack_Item_UIBP.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGC_Backpack_Item_UIBP)

类

全文搜索

背包格子控件 @class UGC_Backpack_Item_UIBP_C:UUserWidget @field CanvasPanel_Lock UCanvasPanel @field CanvasPanel_Replace UCanvasPanel @field UGC_Common_Item_UIBP UUGC_Common_Item_UIBP_C @field CanvasPanel_New UCanvasPanel @field UGCCommonDragDropItem UUGCCommonDragDropItem_C @field HorizontalBox_Unlock UHorizontalBox @field Text_UnlockCurrencyNum UTextBlock @field TextBlock_Num UTextBlock @field Image_Currency UImage

---


## 函数

- **Selected**(booleanbSelect) — 格子显示选中状态 params bSelect -是否选中
- **ItemData**(ItemDefineIDItemDefineID, numberCount, tableAdditionData) — 更新格子数据(!!!) params ItemDefineID -物品DefineID params Count -数量 params AdditionData -控件额外数据, 选中数据/拖拽数据都会包含
- **DragData**(stringDragType, EDragDropDirectionModeDragDirectionMode, functionDragClickCallback, functionDragStartCallback, functionDragCancelCallback) — 更新格子拖拽数据(!!!) params DragType -拖拽类型，用于区分不同的拖拽处理 params DragDirectionMode -默认自由拖拽，若处于滚动列表中，需与滚动方向相反设置 params DragClickCallback -拖拽点击回调 params DragStartCallback -拖拽开始回调 params DragCancelCallback -拖拽取消回调
- **ItemState**(EBackpackItemStateState) — 更新格子解锁状态 params State -格子状态, 默认为Unlock
- **CustomUIList**(FSoftClassPath[]SoftWidgetPaths, functionPostCallback) — 设置格子叠加UI params SoftWidgetPaths -叠加UI路径列表 params PostCallback -叠加UI加载完成回调 {UISlot:挂点Slot, CustomUI:叠加控件}
- **UnlockInfo**(booleanbShow, numberCoinID, numberCostNum) — 显示解锁信息 params bShow -是否显示解锁信息 params CoinID -代币物品ID params CostNum -解锁所需代币数量
- **GetUIData**(控件的UI数据 return -UI数据)
- **IsNewItem**(booleanbNew) — 显示 新 标记 params bNew -是否显示 新 标记 ShowSelected UpdateItemData UpdateDragData UpdateItemState SetCustomUIList SetUnlockInfo GetUIData SetIsNewItem

## UGC_SecondaryConfirmation_UIBP

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGC_SecondaryConfirmation_UIBP?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGC_SecondaryConfirmation_UIBP.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGC_SecondaryConfirmation_UIBP](https://developer.gp.qq.com/api/#/searchContent/UGC_SecondaryConfirmation_UIBP?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGC_SecondaryConfirmation_UIBP.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGC_SecondaryConfirmation_UIBP)

类

全文搜索

二次确认面板

---


## 属性

- **Value** — boolean @true为确认，false为取消 UGC_SecondaryConfirmation_UIBP.ConfirmationOperationDelegate

## UGCAchievementSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCAchievementSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCAchievementSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAchievementSystem](https://developer.gp.qq.com/api/#/searchContent/UGCAchievementSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCAchievementSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAchievementSystem)

类

全文搜索

徽章专用接口库

---


## 函数

- **AchievementProgress**(numberPlayerKey, numberAchievementID, numberCount) — 累积徽章进度 计数为覆盖累计，单场内多次调用不会累加计数，需自行计算累计总数单次调用 详细使用流程参考wiki (https://developer.gp.qq.com/wiki/#/lvzhou_huizhang.html) 生效范围：服务器 params PlayerKey -玩家PlayerKey params AchievementID -徽章ID params Count -徽章计数 AddAchievementProgress

## UGCActivitySystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCActivitySystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCActivitySystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCActivitySystem](https://developer.gp.qq.com/api/#/searchContent/UGCActivitySystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCActivitySystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCActivitySystem)

类

全文搜索

活动系统库（需要启用活动GamePart）

---


## 函数

- **IsActivityInfoReady**(活动信息是否已准备好 生效范围：客户端&&服务器 return -活动信息是否已准备好)
- **GetAllActivityInfos**(获取所有活动的信息 生效范围：客户端&&服务器 return -所有活动信息)
- **GCActivityInfoGetActivityInfo**(intActivityID) — 获取指定活动ID的活动信息 生效范围：客户端&&服务器 return -活动信息 params ActivityID -活动ID
- **GetValidActivityIDs**(获取所有有效的活动ID 生效范围：客户端&&服务器)
- **GetNearestPeriodIndex**(intActivityID) — 获取指定活动距当前时间最近的生效周期序号， 如果已经没有符合条件的开启周期，则返回最后一个生效周期的序号 生效范围：服务器&客户端 return -活动开启周期序号, 0表示永久时间，-1表示活动不存在或未开启 params ActivityID -活动ID IsActivityInfoReady GetAllActivityInfos GetActivityInfo GetValidActivityIDs GetNearestPeriodIndex

## UGCActorComponentUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCActorComponentUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCActorComponentUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCActorComponentUtility](https://developer.gp.qq.com/api/#/searchContent/UGCActorComponentUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCActorComponentUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCActorComponentUtility)

类

全文搜索

Actor接口库

---


## 函数

- **SpawnActor**(UObjectWorldContextObject, UClassActorClass, VectorLocation, RotatorRotation, VectorScale3D, ActorOwner) — 在游戏世界中生成指定类型的 Actor 生效范围：服务器&客户端 return -新生成的 Actor 实例 params WorldContextObject -世界上下文对象 params ActorClass -要生成的 Actor 类型，需通过 UGCObjectUtility.LoadClass 加载类引用 params Location -生成位置坐标，推荐使用 {X=1,Y=1,Z=1} 构造 params Rotation -生成旋转角度，推荐使用 {X=0,Y=0,Z=0} 构造 params Scale3D -可生成缩放比例，推荐使用 {X=1,Y=1,Z=1} 构造，默认
- **Actor**(AActorInActor) — 销毁Actor 生效范围：服务器&客户端 params InActor -Actor
- **ToString**(AActorInActor) — 获取Actor的ToString 生效范围：客户端&服务器 return -ToString params InActor -Actor
- **ActorGetOwner**(AActorInActor) — 获取Actor的Owner 生效范围：客户端&服务器 return -Owner params InActor -Actor
- **Owner**(AActorInActor, AActorInOwner) — 设置Actor的Owner 生效范围：服务器 params InActor -Actor params InOwner -Owner
- **ActorGetUltimateOwnerActor**(AActorInActor) — 获取技能，武器，Buff等持有者acotr 生效范围：客户端&服务器 return -Owner params InActor -Actor
- **ActorGetUltimateController**(AActorInActor) — 获取技能，武器，Buff等持有者的Controller 生效范围：客户端&服务器 return -Owner params InActor -Actor
- **ToActor**(AActorInActor, AActorInAttachTo, EAttachmentRuleLocationRule, EAttachmentRuleRotationRule, EAttachmentRuleScaleRule, stringInSocketName) — 附着到Actor上 生效范围：服务器 params InActor -Actor params InAttachTo -需要附着到的Actor params LocationRule -附着位置规则 params RotationRule -附着旋转规则 params ScaleRule -附着缩放规则 params InSocketName -需要附着到的SocketName
- **ToComponent**(AActorInActor, USceneComponentInAttachTo, EAttachmentRuleLocationRule, EAttachmentRuleRotationRule, EAttachmentRuleScaleRule, stringInSocketName, booleanbWeldSimulatedBodies) — 附着到Component上 生效范围：服务器 params InActor -Actor params InAttachTo -需要附着到的Actor params LocationRule -附着位置规则 params RotationRule -附着旋转规则 params ScaleRule -附着缩放规则 params InSocketName -需要附着到的SocketName params bWeldSimulatedBodies -是否保持相对位置不变/是否焊接为模拟刚体
- **FromParent**(USceneComponentInComponent, booleanbMaintainWorldPosition, booleanbCallModify) — 将Component从父Actor上拆离 生效范围：服务器 params InComponent -Actor params bMaintainWorldPosition -是否保持位置不变 params bCallModify -是否调用Modify
- **SceneComponentGetRootComponent**(AActorInActor) — 获取根组件 生效范围：客户端&服务器 return -根组件 params InActor -Actor
- **GetComponentsByOwner**(AActorInActor) — 获取Actor上的所有Component 生效范围：客户端&服务器 return -Actor上的所有Component params InActor -Actor
- **GetComponentsByClass**(AActorInActor, UClassInComonentClass) — 获取Actor上指定类的Component 生效范围：客户端&服务器 return -Actor上特定类型的Components params InActor -Actor params InComonentClass -指定Component的Class
- **GetComponentsByTag**(AActorInActor, UClassInComonentClass, stringTag) — 获取Actor上指定Tag的Component 生效范围：客户端&服务器 return -Components params InActor -Actor params InComonentClass -ComponentClass params Tag -Tag
- **GetAllActorsOfClass**(UObjectWorldContextObject, UClassActorClass) — 获取指定Class在场景里的所有Actor 生效范围：客户端&服务器 return -Actor列表 params WorldContextObject -WorldContextObject params ActorClass -ActorClass
- **GetAllActorsWithTag**(UObjectWorldContextObject, stringTag) — 获取指定Tag在场景里的所有Actor 生效范围：客户端&服务器 return -Actor列表 params WorldContextObject -WorldContextObject params Tag -Tag
- **TransformGetActorTransform**(AActorInActor) — 获取Actor的Transform 生效范围：客户端&服务器 return -Transform params InActor -Actor
- **TransformGetSceneComponentWorldTransform**(USceneComponentInSceneComponent) — 获取场景组件的世界Transform 生效范围：客户端&服务器 return -Transform params InSceneComponent -场景组件
- **ActorTransform**(AActorInActor, FTransformInTransform) — 设置Actor的Transform 生效范围：服务器 params InActor -Actor params InTransform -Transform
- **HasAuthority**(AActorInActor) — 判断是否为权威端 生效范围：客户端&服务器 return -当前端是否为权威端 params InActor -Actor
- **AndRegisterComponent**(UClassInComponentClass, UObjectInOuter, stringInComponentName) — 创建并注册组件 生效范围：服务器 params InComponentClass -要创建组件对应的Class params InOuter -Outer params InComponentName -要创建组件对应的Class对应的ObjectName
- **Component**(AActorInActor, UActorComponentInComponent) — 销毁组件 生效范围：服务器 params InActor -Actor params InComponent -要销毁的组件
- **GetOverlappingActorsWithPrimitiveComponent**(UPrimitiveComponentInPrimitiveComponent, FTransformTransform, ESceneQueryType[]ObjectTypes, UClassActorClassFilter, AActor[]ActorsToIgnore) — 获取与PrimitiveComponent重叠的Actor 生效范围：客户端&服务器 return -与目标Actor重叠的Actor列表 params InPrimitiveComponent -组件 params Transform -组件的Transform params ObjectTypes -对象类型列表 params ActorClassFilter -要检测的Actor类型（默认值：nil为全部类型的Actor） params ActorsToIgnore -需要忽略的Actor列表
- **ActorGetActorByActorInstancePath**(stringInstancePath) — 在运行时通过Actor实例路径获取Actor，对关卡编辑器实例列表里任意Actor右键，选择GetActorInstancePath即可获取路径 生效范围：客户端&服务器 路径格式：PackageName.ObjectPath，例如：UGCmap.test_8 return -Actor实例 params InstancePath -实例路径 SpawnActor DestroyActor ToString GetOwner SetOwner GetUltimateOwnerActor GetUltimateController AttachToActor AttachToComponent

## UGCAirAttachSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCAirAttachSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCAirAttachSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAirAttachSystem](https://developer.gp.qq.com/api/#/searchContent/UGCAirAttachSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCAirAttachSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAirAttachSystem)

类

全文搜索

轰炸区接口库

---


## 函数

- **GenerateBombingArea**(numberConfigID, FVectorLocation) — 生成轰炸区 生效范围：服务器 return bool, -是否成功生成轰炸区, 实例ID params ConfigID -轰炸配置 ID params Location -轰炸中心坐标（系统会自动通过射线检测将炸弹位置修正到地面高度）
- **StopBombingArea**(numberInstanceID) — 停止轰炸区 生效范围：服务器 return -是否成功停止轰炸区 params InstanceID -轰炸实例 ID
- **ModifyBombingAreaConfig**(numberConfigID, stringParameterType, numberNewValue) — 修改轰炸区参数 生效范围：服务器 return -是否成功修改轰炸配置 params ConfigID -轰炸配置 ID params ParameterType -参数类型（如："AttackAreaRadius", "EscapeTime", "AttackLastingTime"等） params NewValue -新的参数值
- **GetAllConfigBombingArea**(查看当前全部轰炸区 生效范围：服务器 return table<number, -所有轰炸实例ID和对应的轰炸参数)
- **GCAirAttackConfigGetSpecifyBombingAreaList**(numberInstanceID) — 查看指定轰炸区参数 生效范围：服务器 return -指定实例的轰炸参数 params InstanceID -轰炸实例 ID
- **GCAirAttackManagerGetAirAttackManager**(获取轰炸区管理器 生效范围：服务器&客户端 return -轰炸区管理器实例，失败时返回nil GenerateBombingArea StopBombingArea ModifyBombingAreaConfig GetAllConfigBombingArea GetSpecifyBombingAreaList GetAirAttackManager)

## UGCAirAttackManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCAirAttackManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCAirAttackManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAirAttackManager](https://developer.gp.qq.com/api/#/searchContent/UGCAirAttackManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCAirAttackManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAirAttackManager)

类

全文搜索

UGC轰炸区全局管理器

---


## 函数

- **ExecuteAirAttack**(number) — UGCAirAttackConfigConfigInput, FVector
- **AirAttack**(numberInstanceID) — params InstanceID -要终止的空袭实例ID，nil时终止所有空袭
- **ExecuteAirAttack**(tableBroadcastData) — params BroadcastData -广播数据 {InstanceID, Seed, CenterLocation, GeneratedBy}
- **AbortAirAttack**(numberInstanceID) — params InstanceID -要终止的空袭实例ID，nil时终止所有空袭 ExecuteAirAttack AbortAirAttack Multicast_ExecuteAirAttack Multicast_AbortAirAttack

## 属性

- **InstanceID** — number @轰炸实例唯一标识符 @param CenterLocation FVector @轰炸中心位置坐标 UGCAirAttackManager.SuccessfullyStopBombing 轰炸区停止成功事件 当轰炸区域被成功停止（主动停止或异常结束）时触发 生效范围：服务器&客户端 @param InstanceID number @被停止的轰炸实例唯一标识符 UGCAirAttackManager.NormalEndBombing 轰炸正常结束事件 当轰炸区域按计划完成所有炸弹投放后正常结束时触发 生效范围：服务器&客户端 @param InstanceID number @

## UGCAirDropManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCAirDropManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCAirDropManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAirDropManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCAirDropManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCAirDropManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAirDropManagerSystem)

类

全文搜索

空投系统接口库

---


## 函数

- **GenerateAirDrop**(numberID, FVectorDroppingLocation, numberDroppingSpeed) — 生成指定ID空投 生效范围：服务器 return bool, -是否生成成功, 实例ID params ID -空投配置ID params DroppingLocation -掉落位置 结构Vector={X=0,Y=0,Z=0} params DroppingSpeed -掉落速度
- **GetAllAirDropConfigs**(numberID) — 获得所有空投配置 生效范围：服务器 return -空投配置 params ID -空投配置ID
- **DestroyAirDrop**(numberInsID) — 销毁指定实例ID空投 生效范围：服务器 return -是否销毁成功 params InsID -指定实例ID的空投 0.1s 后销毁
- **GetAirDropItemList**(numberInsID) — 获取指定实例ID空投的物品列表 生效范围：服务器 return -空投的物品列表 params InsID -空投实例InsID
- **GetAllAirDropInstanceIDs**(获取当前场景内所有的实例ID 生效范围：服务器 return -空投实例ID列表 GenerateAirDrop GetAllAirDropConfigs DestroyAirDrop GetAirDropItemList GetAllAirDropInstanceIDs)

## UGCAsyncUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCAsyncUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCAsyncUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAsyncUtility](https://developer.gp.qq.com/api/#/searchContent/UGCAsyncUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCAsyncUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAsyncUtility)

类

全文搜索

异步工具类

---


## 函数

- **GCPromiseFutureCreatePromiseFuture**(UGCPromiseFuturePrerequisite, any...) — 创建一个新的 PromiseFuture 实例 - 创建实例: 使用 PromiseFuture.New() 创建新的 PromiseFuture 实例。 - 设置回调: 使用 Then 和 Else 方法设置成功和失败的回调函数。 - 执行逻辑: 使用 Set 方法定义 PromiseFuture 的执行逻辑，可以在其中使用 Yield 暂停执行。 - 前置条件: 可以将其他 PromiseFuture 实例作为前置条件，确保在执行当前 PromiseFuture 之前，所有前置条件都已完成。 - 自动恢复: 可以设置自动恢复功能，监控对象的状态并在需要时自动恢复执行。 return -新创
- **GCAsyncSequenceHandleNewSequenceList**(新建一个保序列表，并返回ListHandle用于操作 return -返回的ListHandle)
- **ItemIntoSequenceList**(UGCAsyncSequenceHandleListHandle, numberParamIndex, anyInConditionFunction, tableInConditionTable, function@InFunction, tableInFunctionTable, any...) — 往List里添加变量和函数。激活后时序逻辑为：轮询变量是否为空或者函数是否返回true，当变量不为空的时候，执行对应的函数，所以每次Insert一组变量和函数，就相当于添加一个时序逻辑。 params ListHandle -保序列表的索引 params ParamIndex -参数插入保序列表的位置，如果是0，则是插入到列表的尾部 params InConditionFunction -可执行的Function或变量 params InConditionTable -轮询变量或函数所在的Table params InFunction -当条件为true时执行的函数 params InFunc
- **SequenceList**(UGCAsyncSequenceHandleListHandle, numberInterval, numberTimeout) — 激活保序列表 params ListHandle -保序列表的索引 params Interval -自动恢复的间隔，单位为秒 params Timeout -自动恢复的超时时间，单位为秒
- **AsyncLoadSomething**(functionAsyncFun, UGCAsyncSequenceParamTable[]ParamTables, functionOnCompleteCallback) — 支持并行初始化的通用有序异步加载器 return -loadedObjects params AsyncFun -需要调用的异步函数（格式：func(LoadPath, CallBack, CallBack_Self)） params ParamTables -参数表数组 params OnCompleteCallback -最终回调(loadedObjects) CreatePromiseFuture NewSequenceList InsertItemIntoSequenceList ActivateSequenceList AsyncLoadSomething

## UGCAttributeSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCAttributeSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCAttributeSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAttributeSystem](https://developer.gp.qq.com/api/#/searchContent/UGCAttributeSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCAttributeSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAttributeSystem)

类

全文搜索

属性系统接口库

---


## 函数

- **GetGameAttributeValue**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType
- **GameAttributeValue**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType, numberValue
- **GetGameAttributeValueMax**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType
- **GetGameAttributeValueMin**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType
- **GameAttributeValue**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType, numberValue
- **AddGameAttributeOperation**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType, EAttrOperatorOperateType, numberValue
- **GameAttributeOperation**(AActorAttributeOwner, stringOperateUniqueID) — 对指定属性移除特定的数值修改操作 生效范围：服务器 params AttributeOwner -操作属性的对象 （如玩家，枪械等，暂不支持带属性组件的普通Actor） params OperateUniqueID -操作属性时返回的唯一ID
- **AddGameAttributeChangedDelegate**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType, functionCallbackFunction
- **GameAttributeChangedDelegate**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType, DelegateChangedDelegate
- **ObjectGetSourceObjectFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的原对象 生效范围：服务器 return -原对象 params Context -伤害事件上下文
- **ActorGetVictimFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的受害者 生效范围：服务器 return -受害者 params Context -伤害事件上下文
- **ActorGetCauserFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的攻击者 生效范围：服务器 return -攻击者(如玩家，怪物, 枪械等) params Context -伤害事件上下文
- **ControllerGetInstigatorFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的攻击者Controller 生效范围：服务器 return -攻击者Controller(如玩家PlayerController，怪物AIController, 枪械所属角色的Controller等) params Context -伤害事件上下文
- **GetSourceMagnitudeFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的原伤害数值 生效范围：服务器 return -伤害数值 params Context -伤害事件上下文
- **RestrictedDamageTypeGetDamageTypeFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的伤害类型 生效范围：服务器 return -伤害类型 params Context -伤害事件上下文
- **GetDamageTagsFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的伤害Tags 生效范围：服务器 return -伤害Tags params Context -伤害事件上下文
- **GetRecoverTagsFromContext**(FGameMagnitudeContextContext) — 获取治疗事件上下文中的治疗Tags 生效范围：服务器 return -伤害Tags params Context -治疗事件上下文
- **ActorGetRecoveredActorFromContext**(FGameMagnitudeContextContext) — 获取治疗上下文中的被治疗者 生效范围：服务器 return -被治疗者 params Context -治疗事件上下文
- **AvatarDamagePositionGetDamagePositionTypeFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的伤害部位类型 生效范围：服务器 return -伤害部位类型 params Context -伤害事件上下文 GetGameAttributeValue SetGameAttributeValue GetGameAttributeValueMax GetGameAttributeValueMin AddGameAttributeValue AddGameAttributeOperation RemoveGameAttributeOperation AddGameAttributeChangedDelegate RemoveGameAttributeChangedDeleg

## UGCBackPackSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCBackPackSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCBackPackSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCBackPackSystem](https://developer.gp.qq.com/api/#/searchContent/UGCBackPackSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCBackPackSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCBackPackSystem)

类

全文搜索

背包系统接口库

---


## 函数

- **BackpackComponentGetBackpackComponent**(PlayerPawnPlayerPawn) — 获取背包组件(客户端仅能获取到自己的） 生效范围：服务器&客户端 return -背包组件 params PlayerPawn -玩家角色
- **AddItem**(PlayerPawnPlayerPawn, numberItemID, numberCount) — 添加道具 生效范围：服务器 params PlayerPawn -玩家角色 params ItemID -物品ID params Count -数量
- **DropItem**(PlayerPawnPlayerPawn, numberItemID, numberCount, booleanIsDestroy) — 掉落道具（入参为ItemID，不关心具体哪个道具） 生效范围：服务器 params PlayerPawn -玩家角色 params ItemID -物品ID params Count -数量 params IsDestroy -是否直接销毁，不掉落地面
- **UseItem**(PlayerPawnPlayerPawn, numberItemID) — 使用道具（入参为ItemID，不关心具体哪个道具） 生效范围：服务器 params PlayerPawn -玩家角色 params ItemID -物品ID
- **DisuseItem**(PlayerPawnPlayerPawn, numberItemID) — 停止使用物品（入参为ItemID，默认选择同ID第一个，仅对物资编辑器生成的绷带，饮料类物资生效） 生效范围：服务器 params PlayerPawn -玩家角色 params ItemID -物品ID
- **DropItemByInstanceID**(PlayerPawnPlayerPawn, numberInstanceID, numberCount, booleanIsDestroy) — 根据InstanceID（物品实例ID）掉落道具 生效范围：服务器 params PlayerPawn -玩家角色 params InstanceID -物品实例ID（唯一） params Count -数量 params IsDestroy -是否直接销毁，不掉落地面
- **UseItemByInstanceID**(PlayerPawnPlayerPawn, numberInstanceID) — 根据InstanceID（物品实例ID）使用道具 生效范围：服务器 params PlayerPawn -玩家角色 params InstanceID -物品实例ID（唯一）
- **DisuseItemByInstanceID**(PlayerPawnPlayerPawn, numberInstanceID) — 根据InstanceID（物品实例ID）停止使用道具（仅对物资编辑器生成的绷带，饮料类物资生效） 生效范围：服务器 params PlayerPawn -玩家角色 params InstanceID -物品实例ID（唯一）
- **GetItemCount**(PlayerPawnPlayerPawn, numberItemID) — 获取道具数量 生效范围：服务器&客户端 return -背包内物品数量 params PlayerPawn -玩家角色 params ItemID -物品ID
- **GetAllItemData**(PlayerPawnPlayerPawn) — 获取背包里所有道具数据 生效范围：服务器&客户端 return table -ItemData结构：ItemID,InstanceID,Count,Type,SubType,IsAvatar params PlayerPawn -玩家角色
- **GetAllItemDataByItemID**(PlayerPawnPlayerPawn, numberItemID) — 获取ItemData列表 生效范围：服务器&客户端 return -LuaTable<FBattleItemData> params PlayerPawn -玩家角色 params ItemID -物品ID
- **BattleItemDataGetItemDataByInstanceID**(PlayerPawnPlayerPawn, numberInstanceID) — 根据InstanceID（物品实例ID）获取ItemData 生效范围：服务器 return -战斗物品数据 params PlayerPawn -玩家角色 params InstanceID -物品实例ID（唯一）
- **GetCapacity**(PlayerPawnPlayerPawn) — 获取背包剩余容量 生效范围：服务器&客户端 return -剩余容量 params PlayerPawn -玩家角色
- **GetMaxCapacity**(PlayerPawnPlayerPawn) — 获取背包最大剩余容量 生效范围：服务器&客户端 return -最大剩余容量 params PlayerPawn -玩家角色
- **HasItemBySubType**(PlayerPawnPlayerPawn, numberItemSubType) — 是否拥有某类物品 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params ItemSubType -道具字类型
- **GetWeaponsInBackpack**(PlayerPawnPlayerPawn) — 获取背包中的武器 生效范围：服务器&客户端 return -FBattleItemData params PlayerPawn -玩家角色
- **GetWeaponAttachmentsInBackpack**(PlayerPawnPlayerPawn) — 获取背包中的武器配件 生效范围：服务器&客户端 return -FBattleItemData params PlayerPawn -玩家角色
- **BattleItemDataGetArmorInBackpack**(PlayerPawnPlayerPawn) — 获取当前防弹衣 生效范围：服务器&客户端 return -物品数据 params PlayerPawn -玩家角色
- **BattleItemDataGetHelmetInBackpack**(PlayerPawnPlayerPawn) — 获取当前头盔 生效范围：服务器&客户端 return -物品数据 params PlayerPawn -玩家角色
- **GetConsumablesInBackpack**(PlayerPawnPlayerPawn) — 获取背包中的所有消耗品 生效范围：服务器&客户端 return -FBattleItemData params PlayerPawn -玩家角色
- **IsAttachItemType**(numberItemID) — 通过传入物品ID判断是否拥有某类物品，例：可传入AKM的物品ID，判断是否拥有枪械 生效范围：服务器&客户端 params ItemID -物品ID
- **IsGunItemType**(numberItemID) — 传入物品ID判断是否为枪械 生效范围：服务器&客户端 params ItemID -物品ID
- **GetPickupWrapperClassPath**(numberItemID) — 获取PickupWrapperClass路径 生效范围：服务器&客户端 params ItemID -物品ID
- **GetAllAttachmentDefineIDInBackpack**(PlayerPawnPlayerPawn) — 获取背包内所有枪械配件DefineID 生效范围：服务端 return -AttachmentDefineID列表 LuaTable<ItemDefineID> params PlayerPawn -玩家角色
- **GetAllUnEquipedAttachmentDefineIDInBackpack**(PlayerPawnPlayerPawn) — 获取背包内所有未装备的枪械配件DefineID 生效范围：服务端 return -AttachmentDefineID列表 LuaTable<ItemDefineID> params PlayerPawn -玩家角色 GetBackpackComponent AddItem DropItem UseItem DisuseItem DropItemByInstanceID UseItemByInstanceID DisuseItemByInstanceID GetItemCount GetAllItemData GetAllItemDataByItemID GetItemDataByInstan

## UGCBackpackSystemV2

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCBackpackSystemV2?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCBackpackSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCBackpackSystemV2](https://developer.gp.qq.com/api/#/searchContent/UGCBackpackSystemV2?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCBackpackSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCBackpackSystemV2)

类

全文搜索

UGC V2背包系统接口库 需启用及配合新背包系统使用，具体参见 https://developer.gp.qq.com/wikieditor/#/catalog/20104

---


## 函数

- **UGCGetBackpackComponentV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **UGCGetBackpackUIComponentV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **VerifyItemDefineIDInBackpack**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID
- **AddItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID, numberCount
- **CheckInitPersistCompleted**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **AddItemByDefineIDV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDDefineID, numberCount, booleanAllowMerge
- **RemoveItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID, numberCount
- **RemoveItemByDefineIDV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID, numberCount
- **DropItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID, numberCount
- **DropItemByDefineIDV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID, numberCount
- **SortOutItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **CanUseItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID
- **CanRemoveItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID, numberCount
- **CanDropItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID, numberCount
- **UseItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID
- **ItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID
- **GetItemCountV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID
- **GetItemCountByDefineIDV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID
- **GetItemDefineIDsByIDV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID
- **GetItemDefineIDsByTagV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringItemTag
- **GetAllItemDefineIDsV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetEquipSlots**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetSlotDisplayName**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotName
- **ItemCanEquipToSlot**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID, stringSlotName
- **DefineIDGetEquippedItemBySlotName**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotName
- **GetItemEquippingSlot**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDDefineID
- **EquipItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotName, ItemDefineIDDefineID
- **UnEquipItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotName
- **EquipItemToAnySlotV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDDefineID
- **SwapEquipSlotV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotNameA, stringSlotNameB
- **AttachEquipmentToTargetItem**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDEquipment, ItemDefineIDTargetItem, stringSlotName
- **DetachEquipmentToTargetItem**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDTargetItem, stringSlotName
- **GetWarehouseItemCountByDefineID**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID
- **GetWarehouseItemCount**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID
- **GetAllWarehouseItemDefineIDs**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **UGCItemTransferResultPutInWarehouse**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID, numberPutOnCount
- **UGCItemTransferResultTakeOutWarehouse**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID, numberTakeOutCount
- **SortOutWarehouseItem**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetCellItemCount**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetMaxCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **AddCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberAddCount
- **AddMaxCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberAddCount
- **RemoveMaxCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberRemoveCount
- **GetWarehouseCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetWarehouseMaxCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **AddWarehouseCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberAddCount
- **GetAllCellItemDefineIDsV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetAllCellWarehouseItemDefineIDsV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **IsCellCapacityFull**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetCurrencyIDList**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **IsCurrency**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID
- **BackpackPanelStyle**(numberStyle, numberMode) — 打开背包主界面 生效范围：客户端 params Style -[0:全屏背包, 1:半屏背包, nil:读默认配置] params Mode -[1:背包 + 装备 2:背包 + 仓库 3:背包 + 仓库 + 装备 nil:读默认配置]
- **BackpackPanel**(numberMode) — 打开背包主界面 生效范围：客户端 params Mode -1:背包 + 装备 2:背包 + 仓库 3:背包 + 仓库 + 装备 [4-6]同1-3，形式为半屏背包
- **BackpackPanel**(关闭背包主界面 生效范围：客户端)
- **ItemNewLabel**(booleanbOnce) — 清除物品新标记(不会刷新背包UI，需重新打开) 生效范围：客户端 调用时机: 任意时机(不依赖背包UI) params bOnce -true:仅清除一次 false:始终清除，包含后续新进物品
- **EquipSlotEnable**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotName
- **GetEquipSlotEnable**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotName
- **WidgetGetCustomUIWidget**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ECustomUITypeType, ItemDefineIDDefineID
- **GetCustomItemUIWidgetPathsByItemID**(numberItemID) — 获取指定物品的自定义格子UI蓝图路径列表 生效范围：客户端 return -自定义UI蓝图路径列表 params ItemID -物品ID
- **BackpackButtonVisible**(booleanVisible) — 显隐背包按钮 生效范围：客户端 params Visible -是否可见
- **GetUISelectItemChangeDelegate**(获取背包UI选中态变化委托 生效范围：客户端 背包控件的选中数据 SelectData: 背包格子：table {ItemDefineID:物品DefineID, DataType:string, ItemIdx:格子位置索引, WeakWidget:控件弱引用,通过WeakWidget:Get()获取控件} 其他控件(装备、武器、槽位): table {ItemDefineID:物品DefineID, DataType:string, WeakWidget:控件弱引用} 可以通过DataType判断点击了哪个区域的UI控件，背包内核UI对应的DataType定义在EItemDataTypeS)

## UGCBuffSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCBuffSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCBuffSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCBuffSystem](https://developer.gp.qq.com/api/#/searchContent/UGCBuffSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCBuffSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCBuffSystem)

类

全文搜索

【废弃】Buff 系统接口库

---


## 函数

- **SystemComponentGetBuffSystemComponent**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCPersistEffectSystem 获取 Buff 组件 生效范围：服务器&客户端 return -USTBaseBuffSystemComponent params PlayerPawn -玩家角色。所有的接口里的 PlayerPawn 都可以扩展成任意的 Actor，只要这个 Actor 有一个名字叫 BuffSystemComponent 的 Buff 组件即可。
- **AddBuff**(PlayerPawnPlayerPawn, stringBuffName, numberLayerCount, ControllerBuffCauser, ActorCauserActor) — 【废弃】请使用 UGCPersistEffectSystem 为玩家添加 Buff 生效范围：服务器 return -Buff 唯一 ID params PlayerPawn -玩家角色。所有的接口里的 PlayerPawn 都可以扩展成任意的 Actor，只要这个 Actor 有一个名字叫 BuffSystemComponent 的 Buff 组件即可。 params BuffName -Buff 名 params LayerCount -层数 params BuffCauser -施加 Buff 的玩家或 AI 的控制器 params CauserActor -施加 Buff 的 Acto
- **Buff**(PlayerPawnPlayerPawn, stringBuffName, numberLayerCount) — 【废弃】请使用 UGCPersistEffectSystem 为玩家移除 Buff,本帧内不即时移除 生效范围：服务器 params PlayerPawn -玩家角色 params BuffName -Buff 名 params LayerCount -层数
- **BuffByInstanceID**(PlayerPawnPlayerPawn, numberInstanceID, numberLayerCount) — 【废弃】请使用 UGCPersistEffectSystem 使用唯一 ID 移除 Buff，本帧内不即时移除 生效范围：服务器 params PlayerPawn -玩家角色 params InstanceID -Buff 唯一 ID params LayerCount -层数
- **HasBuff**(PlayerPawnPlayerPawn, stringBuffName) — 【废弃】请使用 UGCPersistEffectSystem 是否存在该 Buff 生效范围：服务器 return -是否存在 Buff params PlayerPawn -玩家角色 params BuffName -Buff 名
- **GetCurLayer**(PlayerPawnPlayerPawn, stringBuffName) — 【废弃】请使用 UGCPersistEffectSystem 获取 Buff 当前层数 生效范围：服务器&客户端 return -层数 params PlayerPawn -玩家角色 params BuffName -Buff 名
- **GetMaxLayer**(PlayerPawnPlayerPawn, stringBuffName) — 【废弃】请使用 UGCPersistEffectSystem 获取 Buff 最大层数 生效范围：服务器&客户端 return -最大层数 params PlayerPawn -玩家角色 params BuffName -Buff 名
- **GetLeftTime**(PlayerPawnPlayerPawn, stringBuffName) — 【废弃】请使用 UGCPersistEffectSystem 获取 Buff 剩余持续时间 生效范围：服务器&客户端 return -剩余持续时间 params PlayerPawn -玩家角色 params BuffName -Buff 名
- **GetBuffCauserActor**(PlayerPawnPlayerPawn, numberInstanceID) — 【废弃】请使用 UGCPersistEffectSystem 获取 Buff 的施加者 生效范围：服务器&客户端 return -Buff 施加者（弱引用，需使用 Actor:Get() 获取实际对象） params PlayerPawn -Buff params InstanceID -Buff 唯一 ID GetBuffSystemComponent AddBuff RemoveBuff RemoveBuffByInstanceID HasBuff GetCurLayer GetMaxLayer GetLeftTime GetBuffCauserActor

## UGCCameraManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCCameraManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCCameraManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCameraManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCCameraManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCCameraManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCameraManagerSystem)

类

全文搜索

相机管理器系统接口库

---


## 函数

- **PitchGetInVehicleFPPViewPitchLimitMin**(获得第一人称视角下在载具内的 Pitch 视角限制（最小值） 生效范围：客户端 return number -视角限制（最小值）)
- **InVehicleFPPViewPitchLimitMin**(numberPitchLimit) — 设置第一人称视角下在载具内的 Pitch 视角限制（最小值） 生效范围：客户端 params PitchLimit -Pitch 视角限制（最小值）
- **YawGetInVehicleFPPViewYawLimit**(获得第一人称视角下在载具内的 Yaw 视角限制 生效范围：客户端 return number -视角限制)
- **InVehicleFPPViewYawLimit**(numberYawLimit) — 设置第一人称视角下在载具内的 Yaw 视角限制 生效范围：客户端 params YawLimit -Yaw 视角限制
- **YawGetInVehicleNarrowSeatGrenadesYawLimit**(获得在载具内的狭窄座位手雷投掷 Yaw 视角限制 生效范围：客户端 return number -视角限制)
- **InVehicleNarrowSeatGrenadesYawLimit**(numberYawLimit) — 设置在载具内的狭窄座位手雷投掷 Yaw 视角限制 生效范围：客户端 params YawLimit -Yaw 视角限制 GetInVehicleFPPViewPitchLimitMin SetInVehicleFPPViewPitchLimitMin GetInVehicleFPPViewYawLimit SetInVehicleFPPViewYawLimit GetInVehicleNarrowSeatGrenadesYawLimit SetInVehicleNarrowSeatGrenadesYawLimit

## UGCCampSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCCampSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCCampSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCampSystem](https://developer.gp.qq.com/api/#/searchContent/UGCCampSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCCampSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCampSystem)

类

全文搜索

阵营接口库

---


## 函数

- **AddCamp**(stringInCampName) — 增加阵营 生效范围：服务器 return -通过CampName创建的阵营ID，CampName与CampID都是阵营唯一标识符 params InCampName -阵营名称
- **CampForActor**(AActorInActor, numberInCampID) — 设置非玩家Actor所属阵营，例如设置怪物的阵营 生效范围：服务器 params InActor -AActor params InCampID -阵营ID
- **SetCampForTeam**(numberInTeamID, numberInCampID) — 设置队伍所属阵营 生效范围：服务器 return -设置队伍所属阵营是否成功 params InTeamID -队伍ID params InCampID -阵营ID
- **GetCampIDByActor**(AActorInActor) — 通过非玩家Actor获取阵营ID，获取失败的时候返回-1 生效范围：客户端&服务器 return -阵营ID params InActor -AActor
- **GetCampNameByActor**(AActorInActor) — 通过非玩家Actor获取阵营名称，获取失败的时候返回空字符串 生效范围：客户端&服务器 return -阵营名称 params InActor -AActor
- **GetCampIDByTeamID**(numberInTeamID) — 通过队伍ID获取阵营ID，获取失败的时候返回-1 生效范围：客户端&服务器 return -阵营ID params InTeamID -队伍ID
- **GetCampNameByTeamID**(numberInTeamID) — 通过队伍ID获取阵营名称，获取失败的时候返回空字符串 生效范围：客户端&服务器 return -阵营名称 params InTeamID -队伍ID
- **DefaultCampRelation**(ECampRelationInCampRelation) — 设置默认阵营关系 生效范围：服务器 params InCampRelation -阵营关系,1:友好,2:中立,3:敌对
- **CampRelation**(numberInCampA_ID, numberInCampB_ID, ECampRelationInCampRelation) — 设置两个阵营之间的阵营关系 生效范围：服务器 params InCampA_ID -阵营A ID params InCampB_ID -阵营B ID params InCampRelation -阵营关系,0:友好,1:中立,2:敌对
- **CampRelationGetCampRelation**(numberInCampA_ID, numberInCampB_ID) — 获取两个阵营之间的阵营关系，获取失败默认返回中立 生效范围：服务器 return -阵营关系,1:友好,2:中立,3:敌对 params InCampA_ID -阵营A ID params InCampB_ID -阵营B ID
- **CampRelationGetCampRelationWithActor**(AActorInActorA, AActorInActorB) — 获取两个Actor之间的阵营关系，获取失败默认返回中立 生效范围：服务器&客户端 return -阵营关系,1:友好,2:中立,3:敌对 params InActorA -AActor params InActorB -AActor
- **CampDefaultSpawnMethod**(numberInCampID, EUGCCampSpawnPointSelectionMethodSpawnPointSelectionMethod, FVector) — uint8SpawnMethodInfo, booleanPlayerStartInfo

## UGCCharAvatarShowcaseActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCCharAvatarShowcaseActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCCharAvatarShowcaseActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCharAvatarShowcaseActor](https://developer.gp.qq.com/api/#/searchContent/UGCCharAvatarShowcaseActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCCharAvatarShowcaseActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCharAvatarShowcaseActor)

类

全文搜索

复制玩家角色Avatar的Actor

---


## 函数

- **ShowAvatar**(numberPlayerUID) — 显示PlayerUID的Avatar 生效范围：客户端 params PlayerUID -玩家的 PlayerUID
- **ShowAvatar**(numberPlayerUID) — 显示PlayerUID的Avatar 生效范围：服务端 params PlayerUID -玩家的 PlayerUID
- **Anim**(UAnimationAssetNewAnimToPlay, booleanbLooping) — 播放动画 生效范围：客户端 params NewAnimToPlay -动画资源 params bLooping -是否循环播放 ClientShowAvatar ServerShowAvatar PlayAnim

## UGCCircleManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCCircleManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCCircleManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCircleManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCCircleManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCCircleManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCircleManagerSystem)

类

全文搜索

信号圈系统接口库

---


## 函数

- **DGetBlueCircleCenter**(获取当前蓝圈中心 生效范围：服务器&客户端 return -蓝圈中心 {X，Y})
- **DGetWhiteCircleCenter**(获取当前白圈中心 生效范围：服务器&客户端 return -白圈中心 {X，Y})
- **GetBlueCircleRadius**(获取当前蓝圈半径 生效范围：服务器&客户端 return -半径)
- **GetWhiteCircleRadius**(获取当前白圈半径 生效范围：服务器&客户端 return -半径)
- **GetCurrentCircleIndex**(获得当前运行到的信号圈序号 生效范围：服务器 return -信号圈序号 缩圈结束时，返回最后一个信号圈序号)
- **GetAllCircleConfig**(获得所有信号圈配置 生效范围：服务器 return -所有信号圈配置)
- **CirCleCfgGetCurrentConfigCircle**(获取当前信号圈配置 生效范围：服务器 return -当前信号圈配置)
- **CirCleCfgGetNextConfigCircle**(获取下一信号圈配置 生效范围：服务器 return -下一信号圈配置)
- **TogglePoisonCircle**(开启或者关闭信号圈（关闭状态则开启，开启状态则关闭） 生效范围：服务器 return -调用后状态为开启或者关闭)
- **Circle**(启用信号圈 生效范围：服务器)
- **Circle**(关闭信号圈 生效范围：服务器)
- **Circle**(暂停信号圈 生效范围：服务器)
- **Circle**(恢复暂停信号圈 生效范围：服务器 GetBlueCircleCenter GetWhiteCircleCenter GetBlueCircleRadius GetWhiteCircleRadius GetCurrentCircleIndex GetAllCircleConfig GetCurrentConfigCircle GetNextConfigCircle TogglePoisonCircle StartCircle StopCircle PauseCircle ResumeCircle)

## UGCCommoditySystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCCommoditySystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGCCommoditySystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCommoditySystem](https://developer.gp.qq.com/api/#/searchContent/UGCCommoditySystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGCCommoditySystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCommoditySystem)

类

全文搜索

商业化库

---


## 函数

- **GetTicket**(numberPlayerKey) — 获取玩家货币(绿洲币/灰度币) 生效范围：服务器&客户端 return -玩家货币 params PlayerKey -玩家PlayerKey，服务器调用必传
- **GetActiveCoin**(numberPlayerKey) — 获取启元币 生效范围：服务器&客户端 return -启元币 params PlayerKey -玩家PlayerKey，服务器调用必传
- **FutureBuyUGCCommodity**(stringBuyCommodityCMD, stringName, stringIcon, stringDesc, numberCount, numberCost) — 购买绿洲商品 生效范围：客户端 return -二次确认弹窗界面对象实例的 PromiseFuture 对象 params BuyCommodityCMD -购买协议，参考：EUGCCommodityCommandType params Name -物品的名称 params Icon -物品图标 params Desc -物品的描述 params Count -单次购买的数量 params Cost -单个物品的价格 Cost 必须传入 UGCCommoditySystem.GetSellingPriceAfterDiscount 的返回值
- **FutureBuyUGCPrivilegeCommodity**(stringBuyCommodityCMD, stringName, stringIcon, stringDesc, numberCount, numberCost) — 购买绿洲特权商品 生效范围：客户端 return -二次确认弹窗界面对象实例的 PromiseFuture 对象 params BuyCommodityCMD -购买协议，参考：EUGCCommodityCommandType params Name -物品的名称 params Icon -物品图标 params Desc -物品的描述 params Count -单次购买的数量 params Cost -单个物品的价格 Cost 必须传入 UGCCommoditySystem.GetSellingPriceAfterDiscount 的返回值
- **FutureBuyUGCCommodity2**(numberProductID, stringIcon, stringDesc, numberCount) — 购买绿洲商品 生效范围：客户端 return -二次确认弹窗界面对象实例的 PromiseFuture 对象 params ProductID -商品 ID params Icon -物品图标 params Desc -物品的描述 params Count -单次购买的数量
- **FutureBuyUGCPrivilegeCommodity2**(numberProductID, stringIcon, stringDesc, numberCount) — 购买绿洲特权商品 生效范围：客户端 return -二次确认弹窗界面对象实例的 PromiseFuture 对象 params ProductID -商品 ID params Icon -物品图标 params Desc -物品的描述 params Count -单次购买的数量
- **FutureUseUGCCommodity**(stringUseCommodityCMD, numberCommodityID, stringName, stringIcon, stringDesc, numberCount, booleanbShowDialog) — 使用绿洲物品 生效范围：客户端 return -bShowDialog 为 true 的情况下，返回二次确认弹窗界面对象实例的 PromiseFuture 对象 params UseCommodityCMD -使用协议，参考：EUGCCommodityCommandType params CommodityID -物品ID params Name -物品的名称 params Icon -物品图标 params Desc -物品的描述 params Count -单次消耗的数量 params bShowDialog -是否二次确认
- **FutureUseUGCCommodity2**(PlayerControllerPlayerController, numberObjectID, stringIcon, stringDesc, numberCount, booleanbShowDialog) — 使用绿洲物品 生效范围：服务器&客户端 return - bShowDialog 为 true 的情况下，返回二次确认弹窗界面对象实例的 PromiseFuture 对象(仅客户端调用) params PlayerController -玩家控制器 在 DS 端调用的话 PlayerController 必须传，客户端可传 nil，否则调用无效 params ObjectID -物品ID params Icon -物品图标，填 nil 则使用 UGCObject.ItemSmallIcon（UGCObject 表格中的 ItemSmallIcon（小icon） 字段） params Desc
- **BuyCMD**(stringBuyCommodityCMD, numberProductID, numberCount) — 注册商品购买协议 生效范围：服务器 params BuyCommodityCMD -购买协议，参考：EUGCCommodityCommandType params ProductID -商品的ID params Count -单次购买的数量
- **UseCMD**(stringUseCommodityCMD, numberCommodityID, numberCount) — 注册使用物品协议 生效范围：服务器 params UseCommodityCMD -使用商品协议，参考：EUGCCommodityCommandType params CommodityID -物品的ID params Count -单次消耗的数量
- **RedemptionCode**(numberUID, stringRedemptionCode) — 使用兑换码 PIE下调用该接口默认兑换成功，触发兑换结果 {ItemID=1001, Count=1, ProductID=900001} 生效范围：服务器 params UID -玩家的UID params RedemptionCode -兑换码
- **GetAllPlayerUGCCommodityList**(获取所有玩家的物品数据 生效范围：服务器 return -战斗服务器中所有玩家的物品数据列表)
- **GetUGCCommodityList**(numberPlayerKey) — 获取主控端物品数据 生效范围：服务器&客户端 return -客户端所属玩家的物品数据列表 params PlayerKey -玩家PlayerKey，服务器调用必传
- **GetAllPlayerUGCProductList**(获取所有玩家的绿洲商品限购数据 生效范围：服务器 return -战斗服务器中所有玩家的商品限购数据列表)
- **GetUGCProductList**(获取所有玩家的绿洲商品限购数据 生效范围：客户端 return -主控端玩家的商品限购数据列表)
- **Commodity**(清空所有已购买物品 生效范围：客户端)
- **GetSellingPriceAfterDiscount**(string) — intBuyCommodityCMDOrProductID
- **FutureShowRechargeEntryUI**(显示绿洲币充值界面 生效范围：客户端 return -绿洲币充值界面对象实例的PromiseFuture对象 GetTicket GetActiveCoin BuyUGCCommodity BuyUGCPrivilegeCommodity BuyUGCCommodity2 BuyUGCPrivilegeCommodity2 UseUGCCommodity UseUGCCommodity2 RegBuyCMD RegUseCMD UseRedemptionCode GetAllPlayerUGCCommodityList GetUGCCommodityList GetAllPlayerUGCPr)

## 属性

- **PlayerKey** — number @玩家PlayerKey @param UID number @玩家UID @param CommodityID number @物品ID @param Count number @物品数量 @param ProductID number @商品ID UGCCommoditySystem.CompensateUGCCommodityBatchDelegate 补偿玩家商品后批量广播 生效范围：服务器 @param PlayerKey number @玩家PlayerKey @param UID number @玩家UID @param CommodityList table @补

## UGCCommonDragDropItem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCCommonDragDropItem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCCommonDragDropItem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCommonDragDropItem](https://developer.gp.qq.com/api/#/searchContent/UGCCommonDragDropItem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCCommonDragDropItem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCommonDragDropItem)

类

全文搜索

拖拽控件

---


## 函数

- **DragWidget**(UUserWidget) — ClassWidget, booleanbCreate
- **DragDirectionMode**(EDragDirectionModeDirectionMode) — 设置拖拽方向模式 params DirectionMode -拖拽方向模式
- **DragDropMode**(EDragDropModeDragDropMode) — 设置拖拽模式 params DragDropMode -拖拽模式
- **DragDropData**(tableDragDropData, EDragDropModeDragDropMode) — 注册拖拽(入口) params DragDropData -拖拽数据 params DragDropMode -拖拽模式
- **Data**(tableData) — 设置拖拽数据 params Data -拖拽数据 SetDragWidget SetDragDirectionMode SetDragDropMode RegisterDragDropData SetData

## UGCCommonUISystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCCommonUISystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCCommonUISystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCommonUISystem](https://developer.gp.qq.com/api/#/searchContent/UGCCommonUISystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCCommonUISystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCommonUISystem)

类

全文搜索

UI通用响应库

---


## 函数

- **DragSuccess**(functionInFunc, tableContext) — 拖拽成功添加监听 生效范围：客户端 params InFunc -回调函数 params Context -函数上下文
- **DragSuccess**(functionInFunc, tableContext) — 拖拽成功移除监听 生效范围：客户端 params InFunc -回调函数 params Context -函数上下文 AddDragSuccess RemoveDragSuccess

## UGCDebugSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCDebugSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCDebugSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCDebugSystem](https://developer.gp.qq.com/api/#/searchContent/UGCDebugSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCDebugSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCDebugSystem)

类

全文搜索

调试系统接口库

---


## 函数

- **ToScreen**(stringInString, FLinearColorColor, numberDuration) — 屏幕左上角逐行打印字符串 生效范围：客户端 params InString -要打印的字符串 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **OnScreenDebugMessages**(清除屏幕上持续时间未过的字符串 生效范围：客户端)
- **DebugLine**(FVectorLineStart, FVectorLineEnd, FLinearColorColor, numberDuration) — 绘制直线 生效范围：客户端 params LineStart -结构Vector={X=0,Y=0,Z=0} params LineEnd -结构Vector={X=0,Y=0,Z=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugPoint**(FVectorPosition, numberSize, FLinearColorColor, numberDuration) — 绘制点 生效范围：客户端 params Position -结构Vector={X=0,Y=0,Z=0} params Size -点的大小 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugArrow**(FVectorLineStart, FVectorLineEnd, FLinearColorColor, numberDuration) — 绘制箭头 生效范围：客户端 params LineStart -结构Vector={X=0,Y=0,Z=0} params LineEnd -结构Vector={X=0,Y=0,Z=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugCircle**(FVectorCenter, numberRadius, FLinearColorColor, numberDuration, FVectorYAxis, FVectorZAxis, booleanbDrawAxis) — 绘制圆 生效范围：客户端 params Center -结构Vector={X=0,Y=0,Z=0} params Radius -圆的半径 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间 params YAxis -椭圆半长轴方向向量，模长影响缩放; 缺省为{X=0,Y=1,Z=0}; 结构Vector={X=0,Y=0,Z=0} params ZAxis -椭圆半短轴方向向量，模长影响缩放; 缺省为{X=0,Y=0,Z=1}; 结构Vector={X=0,Y=0,Z=0}
- **DebugCoordinateSystem**(FVectorAxisLoc, FRotatorAxisRot, numberScale, numberDuration) — 绘制坐标系 生效范围：客户端 params AxisLoc -结构Vector={X=0,Y=0,Z=0} params AxisRot -结构Rot={Pitch=0,Yaw=0,Roll=0} params Scale -坐标轴长度; 缺省为100 params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugBox**(FVectorCenter, FVectorExtent, FRotatorRotation, FLinearColorColor, numberDuration) — 绘制盒子 生效范围：客户端 params Center -结构Vector={X=0,Y=0,Z=0} params Extent -表示盒子中心到各面的距离; 结构Vector={X=0,Y=0,Z=0} params Rotation -结构Rot={Pitch=0,Yaw=0,Roll=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugSphere**(FVectorCenter, numberRadius, FLinearColorColor, numberDuration) — 绘制球体 生效范围：客户端 params Center -结构Vector={X=0,Y=0,Z=0} params Radius -球的半径 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugCylinder**(FVectorStart, FVectorEnd, numberRadius, FLinearColorColor, numberDuration) — 绘制圆柱体 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Radius -底面半径 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugCapsule**(FVectorCenter, numberHalfHeight, numberRadius, FRotatorRotation, FLinearColorColor, numberDuration) — 绘制胶囊 生效范围：客户端 params Center -结构Vector={X=0,Y=0,Z=0} params HalfHeight -胶囊半高 params Radius -截面圆半径 params Rotation -结构Rot={Pitch=0,Yaw=0,Roll=0}; params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugString**(FVectorTextLocation, stringText, AActorTestBaseActor, FLinearColorColor, numberDuration) — 绘制文本 生效范围：客户端 params TextLocation -未绑定Actor时为世界坐标，绑定Actor时为相对Actor的坐标; 结构Vector={X=0,Y=0,Z=0} params Text -显示的文本 params TestBaseActor -绑定在哪个Actor上 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugStrings**(清空场景中持续时间未过的调试文本（不包括UI） 生效范围：客户端)
- **DebugLines**(清空场景中持续时间未过的调试图形 生效范围：客户端)
- **DebugActorName**(AActorActor, FVectorOffset, FLinearColorColor, numberDuration) — 绘制Actor名称 生效范围：客户端 params Actor -目标Actor params Offset -结构Vector={X=0,Y=0,Z=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugActorMoveTrack**(AActorActor, FLinearColorColor, numberDuration) — 绘制Actor运动轨迹 生效范围：客户端 params Actor -目标Actor params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，此时运动轨迹将持续保留
- **DebugDistance**(FVectorSelf, FVectorTarget, FLinearColorColor, numberDuration) — 绘制Self到Target的连线和距离数值 生效范围：客户端 params Self -结构Vector={X=0,Y=0,Z=0} params Target -结构Vector={X=0,Y=0,Z=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugTargetAimedAt**(numberLength, numberDuration) — 绘制准心瞄准物体名称 生效范围：客户端 params Length -生效距离，缺省为10000 params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugLineTraceSingle**(FVectorStart, FVectorEnd, FLinearColorColor, numberDuration) — 绘制射线与第一处命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugLineTraceMulti**(FVectorStart, FVectorEnd, FLinearColorColor, numberDuration) — 绘制射线与全部命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugSphereTraceSingle**(FVectorStart, FVectorEnd, numberRadius, FLinearColorColor, numberDuration) — 绘制沿射线运动的球体轨迹与第一处命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Radius -球体半径 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugSphereTraceMulti**(FVectorStart, FVectorEnd, numberRadius, FLinearColorColor, numberDuration) — 绘制沿射线运动的球体轨迹与全部命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Radius -球体半径 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugBoxTraceSingle**(FVectorStart, FVectorEnd, FVectorHalfSize, FRotatorOrientation, numberDuration) — 绘制沿射线运动的方盒轨迹与第一处命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params HalfSize -结构Vector={X=0,Y=0,Z=0} params Orientation -结构Rot={Pitch=0,Yaw=0,Roll=0} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugBoxTraceMulti**(FVectorStart, FVectorEnd, FVectorHalfSize, FRotatorOrientation, numberDuration) — 绘制沿射线运动的方盒轨迹与全部命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params HalfSize -结构Vector={X=0,Y=0,Z=0} params Orientation -结构Rot={Pitch=0,Yaw=0,Roll=0} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugCapsuleTraceSingle**(FVectorStart, FVectorEnd, numberRadius, FVectorHalfSize, numberDuration) — 绘制沿射线运动的胶囊轨迹与第一处命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Radius -胶囊截面圆半径 params HalfSize -结构Vector={X=0,Y=0,Z=0} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugCapsuleTraceMulti**(FVectorStart, FVectorEnd, numberRadius, FVectorHalfSize, numberDuration) — 绘制沿射线运动的胶囊轨迹与全部命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Radius -胶囊截面圆半径 params HalfSize -结构Vector={X=0,Y=0,Z=0} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugActorCollision**(AActorActor, FLinearColorColor, numberDuration) — 绘制碰撞盒 生效范围：客户端 params Actor -目标Actor params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugActorBounds**(AActorActor, FLinearColorColor, numberDuration) — 绘制包围盒 生效范围：客户端 params Actor -目标Actor params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间 PrintToScreen FlushOnScreenDebugMessages DrawDebugLine DrawDebugPoint DrawDebugArrow DrawDebugCircle DrawDebugCoordinateSystem DrawDebugBox DrawDebugSphere DrawDebugCylinder DrawD

## UGCDelegateUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCDelegateUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCDelegateUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCDelegateUtility](https://developer.gp.qq.com/api/#/searchContent/UGCDelegateUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCDelegateUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCDelegateUtility)

类

全文搜索

UGC 委托工具库 Lua 委托工具 - 使用 New() 创建委托 - 使用 Add(callable, obj) 绑定可调用对象 - 使用 Remove(callable, obj) 解绑可调用对象 - 使用 Broadcast(...) 触发委托

---


## 函数

- **LuaCreateLuaDelegate**(创建 Lua 委托（纯 Lua 实现） return UGCLuaDelegate -委托)
- **GCLuaDelegateCopyLuaDelegate**(UGCLuaDelegateDelegate) — 复制 Lua 委托 return -复制出来的新 Lua 委托 params Delegate -被复制的 Lua 委托
- **LuaSingleDelegateCreateUEDelegate**(UObjectOuter) — 创建虚幻兼容单播委托 return -虚幻兼容单播委托 params Outer -Outer 对象（GC 相关）
- **UEDelegate**(ULuaSingleDelegateUEDelegate) — 销毁虚幻兼容单播委托 params UEDelegate -虚幻兼容单播委托 CreateLuaDelegate CopyLuaDelegate CreateUEDelegate DestroyUEDelegate

## UGCDropSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCDropSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCDropSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCDropSystem](https://developer.gp.qq.com/api/#/searchContent/UGCDropSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCDropSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCDropSystem)

类

全文搜索

掉落系统接口库

---


## 函数

- **DropItems**(numberDropID) — 根据掉落信息进行物品掉落 根据权重掉落：每次掉落一个物品 根据概率掉落：每次根据物品表的物品数量掉落物品 生效范围：服务器&客户端 return -掉落结果 {key-物品ID : value-物品数量} params DropID -掉落ID
- **DropItemsByGroup**(numberDropGroupID) — 根据掉落组信息进行物品掉落 掉落组配置参考掉落表格配置（DropGroup Table） 生效范围：服务器&客户端 return -掉落结果 {key-物品ID : value-物品数量} params DropGroupID -掉落组ID DropItems DropItemsByGroup

## UGCEMPZoneManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCEMPZoneManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEMPZoneManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEMPZoneManager](https://developer.gp.qq.com/api/#/searchContent/UGCEMPZoneManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEMPZoneManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEMPZoneManager)

类

全文搜索

电磁干扰区管理器

---


## 函数

- **GCEMPZoneConfig_ValidateAndClampConfig**(UGCEMPZoneConfigConfig) — table
- **ModifyConfigByIndex**(numberIndex, tableNewConfig) — table
- **ConvertToLuaConfigs**(tableElectromagneticInstances)
- **GenerateNextInstanceID**()
- **EMPZoneCfg_MapLuaConfigToComponent**(UGCEMPZoneConfigLuaConfig)
- **SyncCapsuleRadius**(AEMPZoneActorEMPZoneActor, tableInstanceData)
- **WriteConfigToComponent**(UEMPZoneControlComponentComp, FEMPZoneCfgComponentConfig)
- **EMPZone**(stringConfigID, FVectorCenterLocation)
- **CreateEMPZoneActor**(numberInstanceID)
- **DestroyElectromagneticArea**(numberInstanceID)
- **DestroyAllElectromagneticAreas**()
- **ModifyConfigElectromagneticArea**(numberConfigIndex, stringParameterName, anyNewValue)
- **GetAllConfigElectromagneticArea**()
- **GetSpecifyElectromagneticAreaList**(numberInstanceID)
- **NotifyClientHideMapMark**(numberInstanceID) — 当 EMPZone 销毁时隐藏小地图标记
- **OnEMPZoneMapMarkShow**(numberInstanceID, numberLocX, numberLocY, numberLocZ, numberEffectRadius, numberZoneState) — [Client RPC] 显示 EMPZone 小地图标记 params InstanceID -实例ID params LocX -位置X坐标 params LocY -位置Y坐标 params LocZ -位置Z坐标 params EffectRadius -影响半径 params ZoneState -区域状态
- **OnEMPZoneMapMarkHide**(numberInstanceID) — [Client RPC] 隐藏 EMPZone 小地图标记 params InstanceID -实例ID _ValidateAndClampConfig _GetInstanceDetailData _GetConfigByIndex _ModifyConfigByIndex _GetElectromagneticAreaConfigs _ConvertToLuaConfigs _GenerateNextInstanceID _MapLuaConfigToComponent _SyncCapsuleRadius _WriteConfigToComponent CreateEMPZone _C

## 属性

- **InstanceID** — number @param CenterLocation FVector UGCEMPZoneManager.SuccessfullyStopElectromagnetic param InstanceID number UGCEMPZoneManager.NormalEndElectromagnetic param InstanceID number UGCEMPZoneManager.SuccessfullyStartElectromagnetic param InstanceID number UGCEMPZoneManager.AffectedElectromagneticPlayer

## UGCEMPZoneSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCEMPZoneSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEMPZoneSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEMPZoneSystem](https://developer.gp.qq.com/api/#/searchContent/UGCEMPZoneSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEMPZoneSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEMPZoneSystem)

类

全文搜索

电磁干扰区接口库

---


## 函数

- **GenerateElectromagneticArea**(numberConfigID, FVectorLocation) — 生成电磁干扰区 生效范围：服务器 return bool, -是否成功生成电磁干扰区, 实例ID params ConfigID -电磁干扰区配置 ID params Location -电磁干扰区中心坐标
- **DestroyElectromagneticArea**(numberInstanceID) — 取消电磁干扰区 生效范围：服务器 return -是否成功取消电磁干扰区 params InstanceID -电磁干扰区实例 ID
- **ModifyConfigElectromagneticArea**(numberConfigID, stringParameterType, numberNewValue) — 修改电磁干扰区参数 生效范围：服务器 return -是否成功修改电磁干扰区配置 params ConfigID -电磁干扰区配置 ID params ParameterType -参数类型 params NewValue -新的参数值
- **GetAllConfigElectromagneticArea**(查看当前全部电磁干扰区 生效范围：服务器 return table<number, -所有电磁干扰区实例ID和对应的电磁干扰区参数)
- **GCEMPZoneConfigGetSpecifyElectromagneticAreaList**(numberInstanceID) — 查看指定电磁干扰区参数 生效范围：服务器 return -指定实例的电磁干扰区参数 params InstanceID -电磁干扰区实例 ID
- **GCEMPZoneManagerGetEMPZoneManager**(获取电磁干扰区管理器 获取电磁干扰区全局管理器实例，用于绑定电磁干扰区相关事件 生效范围：服务器&客户端 return -电磁干扰区管理器实例，失败时返回nil GenerateElectromagneticArea DestroyElectromagneticArea ModifyConfigElectromagneticArea GetAllConfigElectromagneticArea GetSpecifyElectromagneticAreaList GetEMPZoneManager)

## UGCEntityTypeSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCEntityTypeSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEntityTypeSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEntityTypeSystem](https://developer.gp.qq.com/api/#/searchContent/UGCEntityTypeSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEntityTypeSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEntityTypeSystem)

类

全文搜索

实体类型查询系统接口库

---


## 函数

- **IsActorOfEntityType**(AActorActor, stringEntityTypeName) — 判断Actor是否属于指定的实体类型 生效范围：服务器&客户端 return -是否属于指定类型 params Actor -要检查的Actor params EntityTypeName -实体类型名称
- **GetActorEntityType**(AActorActor) — 获取Actor的实体类型（返回第一个匹配的） 生效范围：服务器&客户端 return -实体类型名称，如果没有匹配则返回空字符串 params Actor -要检查的Actor
- **GetActorEntityTypes**(AActorActor) — 获取Actor的所有匹配的实体类型 生效范围：服务器&客户端 return -实体类型名称数组 params Actor -要检查的Actor
- **GetAllEntityTypeNames**(获取所有已配置的实体类型名称 生效范围：服务器&客户端 return -所有实体类型名称数组)
- **OverlapBoxByEntityType**(UObjectWorldContext, stringEntityTypeName, FVectorLocation, FVectorHalfExtent, FRotatorRotation) — 使用Box形状检测指定EntityType的Actor 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeName -实体类型名称 params Location -检测位置 params HalfExtent -Box的半尺寸（默认值：{X=50, Y=50, Z=50}） params Rotation -旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
- **OverlapSphereByEntityType**(UObjectWorldContext, stringEntityTypeName, FVectorLocation, numberRadius) — 使用Sphere形状检测指定EntityType的Actor 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeName -实体类型名称 params Location -检测位置 params Radius -球体半径（默认值：100）
- **OverlapCapsuleByEntityType**(UObjectWorldContext, stringEntityTypeName, FVectorLocation, numberRadius, numberHalfHeight, FRotatorRotation) — 使用Capsule形状检测指定EntityType的Actor 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeName -实体类型名称 params Location -检测位置 params Radius -胶囊体半径（默认值：100） params HalfHeight -胶囊体半高（默认值：100） params Rotation -旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
- **IsActorOfClassType**(AActorActor, stringActorClassPath) — 检查Actor是否为指定的类类型 生效范围：服务器&客户端 return -是否为指定类型 params Actor -要检查的Actor params ActorClassPath -Actor类的路径
- **IsActorOfAnyClassTypes**(AActorActor, string[]ActorClassPaths) — 检查Actor是否为指定类类型数组中的任意一种 生效范围：服务器&客户端 return -是否为指定类型之一 params Actor -要检查的Actor params ActorClassPaths -Actor类路径数组
- **IsActorOfEntityTypeByTag**(AActorActor, FGameplayTagEntityTypeTag) — 判断Actor是否属于指定的实体类型（使用GameplayTag） 生效范围：服务器&客户端 return -是否属于指定类型 params Actor -要检查的Actor params EntityTypeTag -实体类型GameplayTag
- **IsActorOfEntityTypeByTags**(AActorActor, FGameplayTagContainerEntityTypeTags) — 判断Actor是否属于指定的实体类型（使用GameplayTagContainer） 生效范围：服务器&客户端 return -是否属于指定类型之一 params Actor -要检查的Actor params EntityTypeTags -实体类型GameplayTag容器
- **GameplayTagGetActorEntityTypeAsGameplayTag**(AActorActor) — 获取Actor的实体类型（返回GameplayTag） 生效范围：服务器&客户端 return -实体类型GameplayTag params Actor -要检查的Actor
- **GameplayTagContainerGetActorEntityTypesAsGameplayTagContainer**(AActorActor) — 获取Actor的所有匹配的实体类型（返回GameplayTagContainer） 生效范围：服务器&客户端 return -实体类型GameplayTag容器 params Actor -要检查的Actor
- **OverlapBoxByEntityTypeTag**(UObjectWorldContext, FGameplayTagEntityTypeTag, FVectorLocation, FVectorHalfExtent, FRotatorRotation) — 使用Box形状检测指定EntityType的Actor（使用GameplayTag） 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeTag -实体类型GameplayTag params Location -检测位置 params HalfExtent -Box的半尺寸（默认值：{X=50, Y=50, Z=50}） params Rotation -旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
- **OverlapBoxByEntityTypeTags**(UObjectWorldContext, FGameplayTagContainerEntityTypeTags, FVectorLocation, FVectorHalfExtent, FRotatorRotation) — 使用Box形状检测指定EntityType的Actor（使用GameplayTagContainer） 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeTags -实体类型GameplayTag容器 params Location -检测位置 params HalfExtent -Box的半尺寸（默认值：{X=50, Y=50, Z=50}） params Rotation -旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
- **OverlapSphereByEntityTypeTag**(UObjectWorldContext, FGameplayTagEntityTypeTag, FVectorLocation, numberRadius) — 使用Sphere形状检测指定EntityType的Actor（使用GameplayTag） 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeTag -实体类型GameplayTag params Location -检测位置 params Radius -球体半径（默认值：100）
- **OverlapSphereByEntityTypeTags**(UObjectWorldContext, FGameplayTagContainerEntityTypeTags, FVectorLocation, numberRadius) — 使用Sphere形状检测指定EntityType的Actor（使用GameplayTagContainer） 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeTags -实体类型GameplayTag容器 params Location -检测位置 params Radius -球体半径（默认值：100）
- **OverlapCapsuleByEntityTypeTag**(UObjectWorldContext, FGameplayTagEntityTypeTag, FVectorLocation, numberRadius, numberHalfHeight, FRotatorRotation) — 使用Capsule形状检测指定EntityType的Actor（使用GameplayTag） 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeTag -实体类型GameplayTag params Location -检测位置 params Radius -胶囊体半径（默认值：100） params HalfHeight -胶囊体半高（默认值：100） params Rotation -旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
- **OverlapCapsuleByEntityTypeTags**(UObjectWorldContext, FGameplayTagContainerEntityTypeTags, FVectorLocation, numberRadius, numberHalfHeight, FRotatorRotation) — 使用Capsule形状检测指定EntityType的Actor（使用GameplayTagContainer） 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeTags -实体类型GameplayTag容器 params Location -检测位置 params Radius -胶囊体半径（默认值：100） params HalfHeight -胶囊体半高（默认值：100） params Rotation -旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
- **GameplayTagContainerGetAllEntityTypesAsGameplayTagContainer**(获取所有已配置的实体类型（返回GameplayTagContainer） 生效范围：服务器&客户端 return -所有实体类型GameplayTag容器)
- **GameplayTagConvertEntityTypeNameToGameplayTag**(stringEntityTypeName) — 将实体类型名称转换为GameplayTag 生效范围：服务器&客户端 return -对应的GameplayTag params EntityTypeName -实体类型名称
- **ConvertGameplayTagToEntityTypeName**(FGameplayTagEntityTypeTag) — 将GameplayTag转换为实体类型名称 生效范围：服务器&客户端 return -对应的实体类型名称 params EntityTypeTag -实体类型GameplayTag
- **ConfigDataAssetPath**(stringConfigDataAssetPath) — 设置自定义配置DataAsset路径 如果不调用此函数，将使用默认路径 生效范围：服务器&客户端 params ConfigDataAssetPath -配置DataAsset的路径
- **ReloadConfig**(强制重新加载配置 配合SetConfigDataAssetPath使用，建议设置完路径后调用一次 生效范围：服务器&客户端 IsActorOfEntityType GetActorEntityType GetActorEntityTypes GetAllEntityTypeNames OverlapBoxByEntityType OverlapSphereByEntityType OverlapCapsuleByEntityType IsActorOfClassType IsActorOfAnyClassTypes IsActorOfEntityTypeByTag IsActorOfEntit)

## UGCFakePlayerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCFakePlayerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCFakePlayerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCFakePlayerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCFakePlayerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCFakePlayerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCFakePlayerSystem)

类

全文搜索

假人玩家系统

---


## 函数

- **FakePlayer**(numberAIPlayerKey, numberTeamID) — 生成假人玩家， GameMode 中 DataManager，AIProbe 数据中配置 AIController 生效范围：服务器 params AIPlayerKey -AIPlayerKey，建议使用 UGCFakePlayerSystem.GetRandomAIPlayerKey 生成 params TeamID -队伍 ID
- **GetRandomAIPlayerKey**(生成随机AIPlayerKey，用于UGCFakePlayerSystem.SpawnFakePlayer接口参数 生效范围：服务器 return -AIPlayerKey)
- **FakePlayer**(numberAIPlayerKey) — 销毁假人玩家 生效范围：服务器 params AIPlayerKey -AIPlayerKey SpawnFakePlayer GetRandomAIPlayerKey DestroyFakePlayer

## UGCGamePartSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGamePartSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGCGamePartSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGamePartSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGamePartSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGCGamePartSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGamePartSystem)

类

全文搜索

GamePart系统接口库

---


## 函数

- **UGCGamePartConfigGetGamePartConfig**(stringGamePartName) — 获取指定GamePart的Config 生效范围：服务器&客户端 return -指定GamePart的Config params GamePartName -GamePart名称
- **ActorGetGamePartGlobalActor**(stringGamePartName) — 获取指定GamePart的GlobalActor 生效范围：服务器&客户端 return -指定GamePart的GlobalActor params GamePartName -GamePart名称
- **ActorComponentGetGamePartPlayerComponent**(stringGamePartName, PlayerControllerPC, stringPlayerComponentName) — 获取指定GamePart的指定玩家的指定PlayerComponent return -指定的PlayerComponent params GamePartName -GamePart名称 params PC -玩家控制器 params PlayerComponentName -PlayerComponent名称
- **IsGamePartLoaded**(stringGamePartName) — 获取指定GamePart是否已加载 return -GamePart是否已加载 params GamePartName -GamePart名称
- **GetAllLoadedGameParts**(获取所有已加载的GamePart return -所有已加载的GamePart列表 GetGamePartConfig GetGamePartGlobalActor GetGamePartPlayerComponent IsGamePartLoaded GetAllLoadedGameParts)

## UGCGameplayTagSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGameplayTagSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCGameplayTagSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameplayTagSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGameplayTagSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCGameplayTagSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameplayTagSystem)

类

全文搜索

GameplayTag接口库

---


## 函数

- **GameplayTagRequestGameplayTag**(stringTagString) — 根据字符串获取FGameplayTag 生效范围：服务器&客户端 return -是否为合法的Tag params TagString -Tag的字符串
- **IsValidTag**(UGCGameplayTag) — string
- **IsUGCGameplayTag**(UGCGameplayTagTag) — 检查一个Tag是否是UGCGameplayTag 生效范围：服务器&客户端 return -是否为UGCGameplayTag params Tag -UGCGameplayTag的lua对象
- **MatchesTag**(UGCGameplayTag) — string
- **EqualsTag**(UGCGameplayTag) — string
- **GameplayTagContainerCreateGameplayTagContainer**(创建一个空的FFGameplayTagContainer 生效范围：服务器&客户端 return -空的FGameplayTagContainer)
- **GameplayTagContainerCreateGameplayTagContainerFromTag**(UGCGameplayTag) — string
- **GameplayTagContainerCreateGameplayTagContainerFromArray**(FGameplayTag[]GameplayTags) — 创建一个包含一组FGameplayTag的FGameplayTagContainer 生效范围：服务器&客户端 return -包含传入FGameplayTags的GameplayTagContainer params GameplayTags -传入FGameplayTagContainer中的FGameplayTags
- **GameplayTagToContainer**(FGameplayTagContainerTagContainer, FGameplayTagTag) — 将单个FGameplayTag添加到传入的FGameplayTagContainer中 生效范围：服务器&客户端 params TagContainer -要追加到的FGameplayTagContainer params Tag -要添加到FGameplayTagContainer中的FGameplayTag
- **RemoveGameplayTagFromContainer**(FGameplayTagContainerTagContainer, FGameplayTagTag) — 从传入的FGameplayTagContainer中移除单个FGameplayTag，若找到并移除则返回 true ，否则返回 false 生效范围：服务器&客户端 return -是否成功移除 params TagContainer -要从中移除的FGameplayTagContainer params Tag -要从FGameplayTagContainer中移除的FGameplayTag
- **HasTag**(FGameplayTagContainerTagContainer, FGameplayTagTag, booleanbExactMatch) — 检查FGameplayTagContainer是否包含特定的FGameplayTag 生效范围：服务器&客户端 return -是否包含Tag params TagContainer -要从中查找指定FGameplayTag的FGameplayTagContainer params Tag -要从FGameplayTagContainer中检查的FGameplayTag params bExactMatch -是否精确匹配 RequestGameplayTag IsValidTag IsUGCGameplayTag MatchesTag EqualsTag CreateGameplayTagC

## UGCGameplayTaskSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGameplayTaskSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCGameplayTaskSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameplayTaskSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGameplayTaskSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCGameplayTaskSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameplayTaskSystem)

类

全文搜索

异步任务接口库

---


## 属性

- **General** — @通用异步任务 UGCGameplayTaskSystem.General.SpawnActor class SpawnActor @通用异步任务：SpawnActor UGCGameplayTaskSystem.Player class Player @玩家异步任务 UGCGameplayTaskSystem.Player.AddCustomCameraData class AddCustomCameraData @玩家异步任务：添加自定义相机数据 UGCGameplayTaskSystem.Player.SetEyeRotationMode class SetEyeRotationMode

## UGCGameSettingSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGameSettingSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCGameSettingSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameSettingSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGameSettingSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCGameSettingSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameSettingSystem)

类

全文搜索

游戏配置通用接口库

---


## 函数

- **GetDeviceLevel**(获取设备水平（0=低端机，1=中端机，2=高端机） 生效范围：客户端 return -设备水平级别)
- **RenderQualityGetRenderQualitySetting**(获取渲染水平设置（画面品质） 生效范围：客户端 return -渲染水平枚举值)
- **RenderStyleGetRenderStyleSetting**(获取渲染风格设置（画面风格） 生效范围：客户端 return -渲染风格枚举值)
- **SoftwareOcclusion**(booleanbEnabled) — 是否开启软件遮挡剔除（默认开启）。2D 类游戏建议关闭，否则在手机上层次相近（接近重叠）的物体处，可能会出现（黑屏）闪烁 生效范围：客户端 params bEnabled -是否开启 GetDeviceLevel GetRenderQualitySetting GetRenderStyleSetting AllowSoftwareOcclusion

## UGCGameSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGameSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCGameSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGameSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCGameSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameSystem)

类

全文搜索

游戏通用接口库

---


## 函数

- **GetAllPlayerController**(booleanNotIgnorePureSpectator) — 获取所有的 PlayerController，客户端仅能拿到自己的PlayerController 生效范围：服务器&客户端 params NotIgnorePureSpectator -是否包含非玩家观战者（全局观战）
- **GetAllPlayerPawn**(获取所有的 PlayerPawn 生效范围：服务器&客户端)
- **GetAllPlayerState**(booleanNotIgnorePureSpectator?) — 获取所有的 PlayerState，客户端仅能拿到所有队友的PlayerState 生效范围：服务器&客户端 params NotIgnorePureSpectator? -是否包含非玩家观战者(全局观战)，客户端不生效
- **GetAllPlayerKey**(booleanNotIgnorePureSpectator?) — 获取所有的 PlayerKey，包括敌人的，该接口通过Pawn获取敌人的PlayerKey，如果敌人没有Pawn，则获取的UID不全 生效范围：服务器&客户端 return -PlayerKey列表 params NotIgnorePureSpectator? -是否包含非玩家观战者(全局观战)，客户端不生效
- **GetAllUID**(booleanNotIgnorePureSpectator) — 获取所有的 UID，包括敌人的，该接口通过Pawn获取敌人的UID，如果敌人没有Pawn，则获取的UID不全 生效范围：服务器&客户端 return -玩家UID列表 params NotIgnorePureSpectator -是否包含非玩家观战者(全局观战)
- **GetPlayerKeyByPlayerController**(ASTExtraPlayerControllerPlayerController) — 通过PlayerController获取PlayerKey 生效范围：服务器&客户端 return -PlayerKey，无效时返回-1
- **GetPlayerKeyByPlayerPawn**(ASTExtraPlayerCharacterPlayerPawn) — 通过PlayerPawn获取PlayerKey 生效范围：服务器&客户端 return -PlayerKey，无效时返回-1
- **GetPlayerKeyByPlayerState**(ASTExtraPlayerStatePlayerState) — 通过PlayerState获取PlayerKey 生效范围：服务器&客户端 return -PlayerKey，无效时返回-1
- **GetPlayerKeyByUID**(numberUID) — 通过 UID 获取 PlayerKey，客户端也可以获取敌人的UID 生效范围：服务器&客户端 return -PlayerKey，无效时返回-1
- **PlayerControllerGetPlayerControllerByPlayerKey**(numberPlayerKey) — 根据 PlayerKey 获取 PlayerController 生效范围：服务器&客户端 return -玩家 Controller params PlayerKey -玩家唯一 Key
- **STExtraPlayerControllerGetPlayerControllerByUID**(numberUID) — 通过UID获取PlayerController 生效范围：服务器 return -玩家 Controller params UID -玩家UID
- **STExtraPlayerControllerGetPlayerControllerByPlayerState**(ASTExtraPlayerStatePlayerState) — 通过PlayerState获取PlayerController，客户端只能通过PlayerState获取当前客户端的PlayerController 生效范围：服务器&客户端 return -玩家 Controller
- **STExtraPlayerControllerGetPlayerControllerByPlayerPawn**(ASTExtraPlayerCharacterPlayerPawn) — 通过PlayerPawn获取PlayerController，客户端只能通过PlayerPawn获取当前客户端的PlayerController 生效范围：服务器&客户端 return -玩家 Controller
- **FakePlayerAIControllerGetAIControllerByPlayerKey**(numberAIPlayerKey) — 根据 AIPlayerKey 获取 AIController 生效范围：服务器 return -假玩家 AIController params AIPlayerKey -假玩家唯一 Key
- **PawnGetPlayerPawnByPlayerKey**(numberPlayerKey) — 根据 PlayerKey 获取 PlayerPawn（不会获取到尸体） 生效范围：服务器&客户端 return -玩家 Pawn params PlayerKey -玩家唯一 Key
- **STExtraPlayerCharacterGetPlayerPawnByUID**(numberUID) — 通过UID获取PlayerPawn，客户端也可以获取敌人的Pawn 生效范围：服务器&客户端 return -玩家 Pawn params UID -玩家UID
- **STExtraPlayerCharacterGetPlayerPawnByPlayerState**(ASTExtraPlayerStatePlayerState) — 通过PlayerState获取PlayerPawn 生效范围：服务器&客户端 return -玩家 Pawn
- **STExtraPlayerCharacterGetPlayerPawnByPlayerController**(ASTExtraPlayerControllerPlayerController) — 通过PlayerController获取PlayerPawn 生效范围：服务器&客户端 return -玩家 Pawn
- **PlayerStateGetPlayerStateByPlayerKey**(numberPlayerKey) — 根据 PlayerKey 获取 PlayerState，客户端只能拿到队友的PlayerState 生效范围：服务器&客户端 return -玩家 PlayerState params PlayerKey -玩家唯一 Key
- **STExtraPlayerStateGetPlayerStateByPlayerPawn**(ASTExtraPlayerCharacterPlayerPawn) — 通过 PlayerPawn 获取 PlayerState，客户端仅能拿到所有队友的PlayerState 生效范围：服务器&客户端 return -玩家 PlayerState
- **GetPlayerStateByUID**(numberUID) — 根据 UID 获取 PlayerState，客户端仅能拿到所有队友的PlayerState 生效范围：服务器&客户端 return -玩家 PlayerState params UID -玩家 UID
- **GetPlayerStateByPlayerController**(ASTExtraPlayerControllerPlayerController) — 根据 PlayerController 获取 PlayerState 生效范围：服务器&客户端 return -玩家 PlayerState params PlayerController -玩家 Controller
- **GetUIDByPlayerController**(ASTExtraPlayerControllerPlayerController) — 根据 PlayerController 获取 UID 生效范围：服务器&客户端 return -玩家 UID params PlayerController -玩家 Controller
- **GetUIDByPlayerState**(PlayerStatePlayerState) — 根据 PlayerState 获取 UID 生效范围：服务器&客户端 return -玩家 UID params PlayerState -玩家 PlayerState
- **GetUIDByPlayerPawn**(ASTExtraPlayerCharacterPlayerPawn) — 根据 PlayerPawn 获取 UID 生效范围：服务器&客户端 return -玩家 UID params PlayerPawn -玩家 PlayerPawn
- **GetUIDByPlayerKey**(numberPlayerKey) — 根据 PlayerKey 获取 UID，通过Pawn获取敌人的UID，如果敌人Pawn死亡则获取的结果不全 生效范围：服务器&客户端 return -玩家 UID params PlayerKey -玩家 PlayerKey
- **ObjectNewObject**(UObjectOuter, UClassClass, stringName) — 创建 Object 生效范围：服务器&客户端 return -创建的对象
- **SpawnActor**(UObjectWorldContextObject, UClassActorClass, VectorLocation, RotatorRotation, VectorScale3D, ActorOwner) — 【废弃】请使用 UGCActorComponentUtility.SpawnActor 创建 Actor 生效范围：服务器&客户端 return -创建的Actor params WorldContextObject -世界上下文对象 params ActorClass -需要使用 UE.LoadClass 加载对应 Class 再作为参数传入 params Location -可使用 Vector.New(x,y,z) 创建,结构 {X=x,Y=y,Z=z} params Rotation -可使用 Rotator.New(Roll,Pitch,Yaw) 创建,结构 {Roll=Roll,
- **PlayerRespawnComponentGetRespawnComponent**(【废弃】请使用 UGCPlayerPawnSystem 获取复活组件 生效范围：服务器 return -复活组件)
- **PlayerRespawnInfo**(numberPlayerKey, booleanIsUseRespawnLocation, FTransformRespawnLocation) — 【废弃】请使用 UGCPlayerPawnSystem 设置复活信息 生效范围：服务器 params PlayerKey -PlayerKey params IsUseRespawnLocation -是否使用复活点 是：复活点复活 否：出生点复活 params RespawnLocation -复活点位置
- **Player**(numberPlayerKey) — 【废弃】复活单个角色 生效范围：服务器 params PlayerKey -PlayerKey
- **AllPlayers**(【废弃】请使用 UGCPlayerPawnSystem 复活所有角色 生效范围：服务器)
- **GetPlayerNum**(booleanIsIgnoreAI) — 获取玩家数量 生效范围：服务器&客户端 return -玩家数量 params IsIgnoreAI -是否忽略 AI
- **ControllerGetControllerByPawn**(APawnPlayerPawn) — 获取角色 Controller，包括 AI 生效范围：服务器
- **ApplyRadialDamageWhiteList**(numberBaseDamage, numberMinimumDamage, VectorOrigin, numberDamageInnerRadius, numberDamageOuterRadius, numberDamageFalloff, FGameplayTag[]DamageTypeTags, Actor[]GivenActors, ActorDamageCauser, Control) — 造成爆炸类伤害，指定列表内 Actor 接受伤害 生效范围：服务器 return -是否造成伤害 params BaseDamage -伤害值（最大） params MinimumDamage -最小伤害 params Origin -伤害中心 params DamageInnerRadius -伤害内圈范围（受到最大伤害) params DamageOuterRadius -伤害外圈范围（伤害持续衰减） params DamageFalloff -内圈至外圈伤害衰减指数 params DamageTypeTags -造成伤害的自定义类型列表 params GivenActors -指定受伤害
- **ApplyRadialDamage**(numberBaseDamage, numberMinimumDamage, VectorOrigin, numberDamageInnerRadius, numberDamageOuterRadius, numberDamageFalloff, FGameplayTag[]DamageTypeTags, Actor[]IgnoreActors, ActorDamageCauser, Contro) — 造成爆炸伤害 生效范围：服务器 return -是否造成伤害 params BaseDamage -伤害值（最大） params MinimumDamage -最小伤害 params Origin -伤害中心 params DamageInnerRadius -伤害内圈范围（受到最大伤害) params DamageOuterRadius -伤害外圈范围（伤害持续衰减） params DamageFalloff -内圈至外圈伤害衰减指数 params DamageTypeTags -造成伤害的自定义类型列表 params IgnoreActors -伤害忽略 Actor 列表 params D
- **ApplyPointDamage**(ActorDamagedActor, numberBaseDamage, VectorHitFromDirection, FHitResultHitInfo, ControllerEventInstigator, ActorDamageCauser, FGameplayTag[]DamageTypeTags, numberItemID) — 造成点伤害 生效范围：服务器 return -实际伤害 params DamagedActor -伤害目标 params BaseDamage -伤害值 params HitFromDirection -伤害来源方向（如子弹射击方向） params HitInfo -命中信息 params EventInstigator -事件煽动者的玩家控制器 params DamageCauser -造成伤害的人/物体 params DamageTypeTags -造成伤害的自定义类型列表 params ItemID -造成伤害的物品 ID
- **ApplyAvatarPositionDamage**(ActorDamagedActor, numberBaseDamage, ControllerEventInstigator, ActorDamageCauser, EAvatarDamagePositionAvatarDamagePosition, FGameplayTag[]DamageTypeTags) — 造成部位伤害 生效范围：服务器 return -实际伤害 params DamagedActor -伤害目标 params BaseDamage -伤害值 params EventInstigator -事件煽动者的玩家控制器 params DamageCauser -造成伤害的人/物体 params AvatarDamagePosition -造成伤害的部位 params DamageTypeTags -造成伤害的自定义类型列表
- **ApplyDamage**(ActorDamagedActor, numberBaseDamage, ControllerEventInstigator, ActorDamageCauser, FGameplayTag[]DamageTypeTags) — 造成伤害 生效范围：服务器 return -实际伤害 params DamagedActor -伤害目标 params BaseDamage -伤害值 params EventInstigator -事件煽动者的玩家控制器 params DamageCauser -造成伤害的人/物体 params DamageTypeTags -造成伤害的自定义类型列表
- **SendPlayerSettlement**(numberPlayerKey) — 【废弃】发送玩家结算（代表玩家已经完成了游戏，后台进行完成率统计，每个玩家正常结束游戏都需要发送） 最新：现已废弃，调用无效果，可以无需再调用，会在玩家退出游戏和触发 UGC请求退出DS Action 时自动发送 生效范围：服务器 return -是否发送成功。现在总是返回 true params PlayerKey -玩家 Key
- **Client**(断开客户端连接。DS关闭后，需要同步关闭客户端对服务器的长链接检测，否则玩家客户端会弹出无法连接到服务器的报错信息。 生效范围：客户端)
- **PlayerJoin**(开启补充玩家（需要先开启补充玩家，发送补充玩家申请才会有效） 例：成局人数最小为 10 人，最大 20 人，匹配设置中设置 10 人，然后开启补充玩家，申请 10 人的补充名额 生效范围：服务器)
- **PlayerJoin**(停止补充玩家（清空补充玩家申请记录） 生效范围：服务器)
- **PlayerJoin**(numberCount, numberTeamID) — 申请补充玩家（申请数量会累加,需先调用 UGCGameSystem.OpenPlayerJoin 开启补充玩家） 例：成局人数最小为10人，最大20人，匹配设置中设置10人，然后开启补充玩家，申请10人的补充名额 生效范围：服务器 params Count -需要补充的玩家数量 params TeamID -队伍ID
- **PlayerJoinLimitCount**(table<int, int>TeamPlayerCounts) — 申请补充玩家（申请数量会累加,需先调用 UGCGameSystem.OpenPlayerJoin 开启补充玩家） 例：成局人数最小为10人，最大20人，匹配设置中设置10人，然后开启补充玩家，申请10人的补充名额。但不会使得对局玩家的数量超过项目设置中 “小队玩家数量（TeamPlayers） * 队伍数量（NumberOfTeams）”设置的数量 生效范围：服务器 params TeamPlayerCounts -需要补充的玩家数量，形式如同：TeamPlayerCounts = { [TeamID1] = PlayerCount1, [TeamID2] = PlayerCount2, ..
- **EnterSpectating**(PlayerControllerPlayerController) — 进入观战，默认观战任意队友 可以通过 UGCGameSystem.ChangeAllowOBPlayerKeys 自定义可观战玩家列表 生效范围：服务器 return -被观战的玩家的 PlayerKey params PlayerController -进入观战的玩家 Controller
- **Spectating**(PlayerControllerPlayerController) — 退出观战 生效范围：服务器 params PlayerController -退出观战的玩家 Controller
- **AllowOBPlayerKeys**(PlayerControllerPlayerController, int32[]PlayerKeyList) — 设置可被观战玩家列表 生效范围：服务器 params PlayerController -可被观战玩家列表的 Controller params PlayerKeyList -可观战玩家列表数组
- **ObserversChangeTarget**(PlayerControllerPlayerController) — 让观战我的人切换别的观战目标，只有当观战对象的Pawn死亡时才生效 生效范围：服务器 params PlayerController -不再被观战的玩家 Controller
- **IsEnableGM**(PlayerControllerPlayerController) — 是否开启 GM，自定义 GM 逻辑和界面可接入此开关，正式服中此开关为 false 生效范围：服务器&客户端 return -是否开启 GM params PlayerController -玩家 Controller
- **IsServer**(是否为服务端 逻辑依赖 UGCGameSystem.GameState，在 GameState 初始化前的逻辑不建议调用此函数判断 生效范围：服务器&客户端 return -是否为服务端)
- **IsDebug**(是否在 Debug（编辑器 Debug 调试） 生效范围：服务器&客户端 return -是否为 Debug 环境)
- **GetPlatformInfo**(获取平台类型 生效范围：服务器&客户端 return -共有三种平台类型："PIE", "WINRELEASE", "CLIENT")
- **GetAllAIController**(获取所有的 AIController 生效范围：服务器 return -获取所有的 AIController,获取失败时将返回 nil)
- **ToLobby**(主动返回大厅（使用此接口返回大厅的玩家不会弹出重进战斗对话框） 生效范围：客户端)
- **OBPlayer**(PlayerControllerPlayerController, numberPlayerKey) — 改变当前观战目标（仅限观战中使用） 例：被观战的玩家被淘汰后，需要使用此接口，切换至其他玩家进行观战 生效范围：服务器 params PlayerController -自己的 PlayerController params PlayerKey -观战目标玩家 PlayerKey
- **ModeCustomEvent**(stringEventName, any...) — 向模式编辑器发送自定义事件 根据自定义事件参数顺序传入,如 SendModeCustomEvent(EventName,param1,param2) 生效范围：服务器 params EventName -事件名 params ... -自定义事件参数
- **GetServerTimeSec**(获取当前服务器时间 生效范围：服务器&客户端 return -当前服务器时间（UTC）:单位秒)
- **LuaSingleDelegateSetTimer**(UObjectObject, LuaFunctionCallbackFunction, numberTime, booleanIsLooping) — 设置定时器 生效范围：服务器&客户端 return FTimerHandle, -定时器句柄，定时器回调 params Object -对象 params CallbackFunction -Lua 回调函数 params Time -定时时长 params IsLooping -是否循环
- **Timer**(UObjectObject, ULuaSingleDelegateTimerHandle) — 移除定时器 生效范围：服务器&客户端 params Object -上下文对象 params TimerHandle -定时器句柄，定时器回调
- **TLog**(stringKey, stringValue) — 记录埋点日志 value 中多个字段建议使用_（下划线）分割 例: ItemName_NormalItem_Count_1 生效范围：服务器 params Key -日志索引 params Value -日志内容
- **GreyTLog**(numberID, numberPlayerKey) — 记录灰度埋点日志 生效范围：服务器 params ID -灰度 ID params PlayerKey -玩家 ID
- **PgcGameTlog**(numberIndex, numberUID, tableCustomData) — 发送游戏日志 生效范围：服务器 注意：函数会先做本地参数校验和频率限制；命中拦截时会直接 return，不会真正发包。 params Index -日志索引，必填，范围是[800800, 801800]；传 nil、非 number 或越界值会在本地校验阶段被拦截，日志不会发出去 params UID -玩家UID，必填；当前实现不支持传空，传 nil 或非 number 会在本地校验阶段被拦截，日志不会发出去；UID无效/错误仍可能导致上报失败 params CustomData -自定义数据，必填 table；传 nil 或非 table 会在本地校验阶段被拦截，日志不会发出去；序列化后超
- **LiveStreamingTLog**(numberLogType, numberId, tableValue) — 发送直播日志 生效范围：服务器 params LogType -类型 1-赛事，2-人生 params Id -事件ID(自定义) params Value -事件内容(自定义)
- **TournamentInfo**(numberPlayerKey, booleanbEscaped, numberPersonRank, numberTeamRank, ETournamentMatchResultMatchResult) — 设置赛事信息 生效范围：服务器 params PlayerKey -玩家Key params bEscaped -是否逃跑 params PersonRank -个人排名 params TeamRank -队伍排名 params MatchResult -胜利失败信息
- **MoveInputEventEnable**(PlayerControllerPlayerController, booleanIsEnable, booleanIsOverride) — 是否关闭移动输入事件 IsOverride 开启后需要在 PlayerController 重载 UGCMoveEvent(Vector2D) 事件 生效范围：客户端 params PlayerController -玩家控制器 params IsEnable -是否关闭 params IsOverride -是否重载（原移动输入会被覆盖）
- **LookInputEventEnable**(PlayerControllerPlayerController, booleanIsEnable, booleanIsOverride) — 开启/关闭旋转输入事件 IsOverride 开启后需要在 PlayerController 重载 UGCLookEvent(Vector2D) 事件 生效范围：客户端 params PlayerController -玩家控制器 params IsEnable -是否开启 params IsOverride -是否重载（原旋转输入会被覆盖）
- **PlayCameraShake**(ASTExtraPlayerControllerPlayerController, EPESkillCameraShakeTypeCameraShakeType, numberShakeScale, numberDuration) — 在PlayerController对应的客户端震屏 生效范围：服务器 params PlayerController -震屏玩家的 PlayerController params CameraShakeType -震屏类型(随机方向/X方向/Y方向) params ShakeScale -震屏强度 params Duration -震屏时间(单位:秒，<=0 表示一直持续)
- **StopCameraShake**(ASTExtraPlayerControllerPlayerController, EPESkillCameraShakeTypeCameraShakeType) — 在PlayerController对应的客户端停止某类型的震屏 生效范围：服务器 params PlayerController -震屏玩家的 PlayerController params CameraShakeType -震屏类型(随机方向/X方向/Y方向)
- **GetTableData**(stringTablePath) — 根据表格路径获取表格内容 TablePath支持以下格式(...表示相对Asset目录的路径, 如Data/Table)： .../TableName
- **GetUGCResourcesFullPath**('Asset/.../TableName.TableName') — /Game/.../TableName.TableName 生效范围：服务器&客户端 return -表格全部内容 params TablePath -表格路径
- **GetTableCount**(stringTablePath) — 根据表格路径获取表格行数 生效范围：服务器&客户端 return -表格行数 params TablePath -表格路径，支持格式见UGCGameSystem.GetTableData
- **GetTableDataByRowName**(stringTablePath, numberRowName) — 根据表格路径，以及key获取表格内容 生效范围：服务器&客户端 return -表格某行内容 params TablePath -表格路径，支持格式见UGCGameSystem.GetTableData params RowName -key值 string型或者int型都可以
- **GetDataTableData**(UDataTableDataTable) — 获取指定DataTable的表格内容 生效范围：服务器&客户端 return -表格全部内容 params DataTable -要读取的表格
- **GetDataTableDataByRowName**(UDataTableDataTable, stringRowName) — 获取指定DataTable的指定行的表格内容 生效范围：服务器&客户端 return -指定行的全部内容 params DataTable -要读取的表格 params RowName -行名
- **GetDataTableRowCount**(UDataTableDataTable) — 获取指定DataTable的行数 生效范围：服务器&客户端 return -行数 params DataTable -要读取的表格
- **GetTableData**(stringTablePath, functionCallBack, UObjectCallBack_self) — 异步根据表格路径获取表格内容 生效范围：服务器&客户端 params TablePath -表格路径，支持格式见UGCGameSystem.GetTableData params CallBack -lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) params CallBack_self -这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
- **GetTableCount**(stringTablePath, functionCallBack, UObjectCallBack_self) — 异步根据表格路径获取表格行数 生效范围：服务器&客户端 params TablePath -表格路径，支持格式见UGCGameSystem.GetTableData params CallBack -lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) params CallBack_self -这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
- **GetTableDataByRowName**(stringTablePath, stringRowName, functionCallBack, UObjectCallBack_self) — 异步根据表格路径获取表格内容 生效范围：服务器&客户端 params TablePath -表格路径，支持格式见UGCGameSystem.GetTableData params RowName -查询关键字 params CallBack -lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) params CallBack_self -这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传
- **Friend**(numberUID) — 添加好友 生效范围：客户端 params UID -玩家 UID
- **GetUGCResourcesFullPath**(stringRelativePath) — 获取资源的完整加载路径 仅自己工程下资源需要使用此函数获取路径，和平精英目录资源不需要使用此函数拼接路径 例：自己工程资源 local ClassPath = "Asset/MyBlueprint.MyBlueprint_C"
- **LoadClass**(UGCGameSystem.GetUGCResourcesFullPath(ClassPath) — 例：和平精英目录资源 local ClassPath = "/Game/Arts_PlayerBluePrints/Vehicle/VH_Buggy/BP_VH_Buggy.BP_VH_Buggy_C"
- **LoadClass**(ClassPath) — 生效范围：服务器&客户端 return -完整资源路径 params RelativePath -工程资源路径
- **UGCRequire**(stringRelativePath) — 用于替代原生require，如果需要将功能发布至资源商店，需要使用此函数 require lua 文件 例：require("Script.MyLua"); 生效范围：服务器&客户端 return -加载的 lua 文件 params RelativePath -Lua 文件路径
- **UGCRankAndAchievementUI**(显示绿洲段位，徽章结算界面 会自动显示段位变化以及新增徽章 详细内容参考：https://developer.gp.qq.com/wikieditor/#/catalog/375 生效范围：客户端)
- **ObjectGetSTExtraGMDelegatesMgr**(获取 DS 全局事件代理 生效范围：服务器 return -全局代理类)
- **STExtraPlayerControllerGetLocalPlayerController**(获取客户端当前的 PlayerController 生效范围：客户端 return -当前正在控制的玩家)
- **PawnGetLocalPlayerPawn**(获取客户端当前的 PlayerPawn 生效范围：客户端 return -当前的PlayerPawn)
- **STExtraPlayerStateGetLocalPlayerState**(获取客户端当前的 PlayerState 生效范围：客户端 return -当前的PlayerState)
- **GetLocalPlayerKey**(获取客户端当前的 PlayerKey 生效范围：客户端 return -当前的PlayerKey)
- **UGCGameModeBaseGetGameMode**(获取当前的 GameMode 生效范围：服务器 return -当前的 GameMode)
- **UGCGameStateBaseGetGameState**(获取当前的 GameState 生效范围：服务器&客户端 return -当前的 GameState)
- **IsRoomMode**(判断是否是房间模式 生效范围：服务器 return -true表示是房间模式，false表示不是房间模式)
- **PlayerAntiAFKData**(numberUID, stringDataKey, stringDataValue) — 反挂机数据收集 在结算数据里上报 1.击杀数-Kill 2.伤害量-DamageAmount 3.移动距离-TravelDistance 4.达到存档数-ReachedArchives 生效范围：服务器 params UID -上报玩家的UID params DataKey -上报数据的字段名字 params DataValue -上报数据
- **GetCurrentLevel**(UObjectWorldContextObject, booleanbRemovePrefixString) — 获取当前关卡 生效范围：服务器 return -当前关卡的名字 params WorldContextObject -关卡上下文对象 params bRemovePrefixString -是否移除前缀字符串
- **StreamLevel**(stringLevelName, booleanbMakeVisibleAfterLoad, booleanbShouldBlockOnLoad, LatentInfoLatentInfo) — 加载关卡 生效范围：服务器 & 客户端 params LevelName -关卡名字 params bMakeVisibleAfterLoad -是否在加载完成后显示关卡 params bShouldBlockOnLoad -是否延迟加载 params LatentInfo -延迟信息
- **StreamLevel**(stringLevelName, LatentInfoLatentInfo) — 卸载关卡 生效范围：服务器 & 客户端 params LevelName -关卡名字 params LatentInfo -延迟信息
- **LevelStreaming**(强制刷新关卡流加载 生效范围：服务器)
- **ObjectPtrMakeWeakObjectPtr**(UObjectInObject) — 【废弃】创建弱对象指针 生效范围：服务器 & 客户端 return -弱对象指针 params InObject -对象
- **ObjectGetObjectFromWeakObjectPtr**(WeakObjectPtrInWeakObjectPtr) — 【废弃】从弱对象指针获取对象 生效范围：服务器 & 客户端 return -对象 params InWeakObjectPtr -弱对象指针
- **IsWeakObjectPtrValid**(WeakObjectPtrInWeakObjectPtr) — 【废弃】判断弱对象指针是否有效 生效范围：服务器 & 客户端 return -是否有效 params InWeakObjectPtr -弱对象指针
- **MouseCursorShowState**(切换鼠标显示 生效范围：客户端)
- **GetShowMouseCursor**(获取鼠标显示状态 生效范围：客户端 return -是否显示鼠标)
- **MouseCursorShowState**(booleanbShow) — 设置鼠标显示 生效范围：客户端 params bShow -是否显示鼠标
- **Outline**(AActorInActor, booleanbIsDrawOutline, numberOutlineThickness, FLinearColorOutlineColor) — 设置Actor描边 生效范围：客户端 params InActor -Actor params bIsDrawOutline -是否描边 params OutlineThickness -描边粗细 params OutlineColor -描边颜色
- **IsUGCPIE**(是否为PIE环境 生效范围：服务器& 客户端 return -是否为PIE环境)
- **ParticleSystemComponentSpawnEmitterAtLocation**(UObjectWorldContext, UParticleSystemEmitterTemplate, FVectorLocation, FRotatorRotation, FVectorScale, booleanbAutoDestroy) — 在指定位置生成粒子效果，粒子系统播放完成后会自动销毁，不会进行网络复制 生效范围：客户端 return -粒子系统组件 params WorldContext -世界上下文对象 params EmitterTemplate -要创建的粒子系统 params Location -位置 params Rotation -旋转 params Scale -缩放 params bAutoDestroy -是否自动销毁
- **ParticleSystemComponentSpawnEmitterAttached**(UParticleSystemEmitterTemplate, USceneComponentAttachComponent, stringAttachPointName, FVectorLocation, FRotatorRotation, FVectorScale, EAttachLocationLocationType, booleanbAutoDestroy) — 播放指定效果，该效果会附加到指定组件并跟随其移动。效果播放完成后系统将消失。此效果不进行网络复制 生效范围：客户端 return -创建的粒子系统组件 params EmitterTemplate -要创建的粒子系统 params AttachComponent -要附加到的组件 params AttachPointName -附加组件中用于生成发射器的可选命名点（若不指定则在附加组件原点生成） params Location -根据 LocationType 的值，此参数可为相对于附加组件/点的偏移量；或为绝对世界位置（若 LocationType 为 KeepWorldPosition，则
- **DecalComponentSpawnDecalAtLocation**(UObjectWorldContext, UMaterialInterfaceDecalMaterial, FVectorDecalSize, FVectorLocation, FRotatorRotation, numberLifeSpan) — 在指定位置和旋转角度生成一个贴花，生成后无需管理。此效果不进行网络复制 return -创建的贴花组件 params WorldContext -世界上下文对象 params DecalMaterial -贴花的材质 params DecalSize -贴花的尺寸 params Location -贴花在世界空间中的放置位置 params Rotation -贴花在世界空间中的放置旋转 params LifeSpan -贴花组件在时间结束后销毁（0表示永久存在）
- **DecalComponentSpawnDecalAtAttached**(UMaterialInterfaceDecalMaterial, FVectorDecalSize, USceneComponentAttachComponent, stringAttachPointName, FVectorLocation, FRotatorRotation, EAttachLocationLocationType, numberLifeSpan) — 在指定组件上生成一个附加并跟随的贴花。此效果不进行网络复制 return -创建的贴花组件 params DecalMaterial -贴花的材质 params DecalSize -贴花的尺寸 params AttachComponent -要附加到的组件 params AttachPointName -附加组件中用于生成发射器的可选命名点（若不指定则在附加组件原点生成） params Location -根据 LocationType 的值，此参数可为相对于附加组件/点的偏移量；或为绝对世界位置（若 LocationType 指定为 KeepWorldPosition，则会将该位置转换为相
- **GetTimeSeconds**(UObjectWorldContext) — 获得当前游戏开始之后的时间，单位秒，受时间膨胀影响，但不受游戏暂停影响 生效范围：服务器 & 客户端 return -当前游戏开始之后的时间，单位秒 params WorldContext -世界上下文对象
- **DateTimeToTimeStamp**(FDateTimeDateTime) — 将日期时间转换为时间戳 生效范围：服务器 & 客户端 return -时间戳 params DateTime -日期时间
- **DateTimeGetCurrentDateTime**(获取当前日期时间 生效范围：服务器& 客户端 return -当前日期时间)
- **GetDSRemainingTime**(获取DS剩余时间，单位秒 生效范围：服务器 return -DS剩余时间)
- **DSCloseNotify**(int[]NotifyTimes) — 设置DS关闭通知时间，监听UGCGenericMessageSystem.UserDefinedMessages.UGC.UGCDSShutDownManager.DSCloseNotify，会在到达时间时发送通知，附带参数为DS剩余时间 假设已经到了设置的时间比DS长，例如DS剩余关闭时间是30s，设置的时间组是{50，40，20}，那么会在游戏开始时，50和40两个时间点合并仅发送一次通知，目前仅支持整数时间点 生效范围：服务器 params NotifyTimes -通知时间组
- **Over**(游戏结束，一键执行发送所有玩家结算，玩家退出和玩家销毁的动作，并关闭DS，这个接口会有一定延时，如果玩家还在游戏内执行，会将玩家强行踢出ds，返回大厅 生效范围：服务器)
- **IsObserver**(APlayerControllerPlayerController) — 判断玩家是否为观战玩家 生效范围：服务器 & 客户端 return -是否为观战玩家 params PlayerController -玩家控制器
- **UGCDamageNumberParamsMakeCustomDamageNumberParams**(生成自定义伤害数字默认参数 生效范围：服务器& 客户端 return -自定义伤害数字参数)
- **AddUGCCustomDamageNumber**(UObjectWorldContext, ActorTargetActor, FUGCDamageNumberParamsParams) — 显示自定义伤害数字 生效范围：客户端 return -是否为观战玩家 params WorldContext -世界上下文对象 params TargetActor -伤害数字显示目标 params Params -自定义伤害数字参数
- **IsOuterlineDEV**(判断是否为外研线 生效范围：服务器& 客户端 return -是否为外研线 GetAllPlayerController GetAllPlayerPawn GetAllPlayerState GetAllPlayerKey GetAllUID GetPlayerKeyByPlayerController GetPlayerKeyByPlayerPawn GetPlayerKeyByPlayerState GetPlayerKeyByUID GetPlayerControllerByPlayerKey GetPlayerControllerByUID GetPlayerControllerBy)

## 属性

- **ApplyPlayerJoinStoppedReason** — EApplyPlayerJoinStoppedReason @停止补充玩家的原因 UGCGameSystem.ApplyPlayerJoinSucceededDelegate 通过补充玩家接口（UGCGameSystem.ApplyPlayerJoin、UGCGameSystem.ApplyPlayerJoinLimitCount），使得每一名玩家加入成功时触发 生效范围：服务器 @param UID number @玩家 UID @param RemainingPlayerCountToJoin number @剩余需要加入的玩家数量 UGCGameSystemImplementation.

## UGCGenericCharacterSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGenericCharacterSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCGenericCharacterSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGenericCharacterSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGenericCharacterSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCGenericCharacterSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGenericCharacterSystem)

类

全文搜索

怪物系统接口库

---


## 函数

- **GenericCharacter**(AUGCGenericCharacterGenericCharacter) — 强制杀死怪物 生效范围：服务器 params GenericCharacter -怪物
- **IsAlive**(AUGCGenericCharacterGenericCharacter) — 小怪是否存活 生效范围：服务器&客户端 return -小怪是否存活 params GenericCharacter -怪物
- **IsGenericCharacter**(AActorTarget) — 目标是否为小怪 生效范围：服务器&客户端 return -是否为小怪 params Target -目标
- **GetHealth**(AUGCGenericCharacterGenericCharacter) — 获取小怪血量 生效范围：服务器&客户端 return -血量 params GenericCharacter -怪物
- **GetHealthMax**(AUGCGenericCharacterGenericCharacter) — 获取小怪血量上限 生效范围：服务器&客户端 return -血量上限 params GenericCharacter -怪物
- **Health**(AUGCGenericCharacterGenericCharacter, numberHealth) — 设置小怪血量 生效范围：服务器 params GenericCharacter -怪物 params Health -血量
- **HealthMax**(AUGCGenericCharacterGenericCharacter, numberHealthMax) — 设置小怪血量上限 生效范围：服务器 params GenericCharacter -怪物 params HealthMax -血量上限
- **Movement**(AUGCGenericCharacterGenericCharacter) — 启动移动能力 生效范围：服务器 params GenericCharacter -怪物
- **Movement**(AUGCGenericCharacterGenericCharacter) — 关闭移动能力 生效范围：服务器 params GenericCharacter -怪物
- **AvoidanceGroup**(AUGCGenericCharacterGenericCharacter, EGenericAvoidanceGroupAvoidanceGroup) — 设置避障组 生效范围：服务器 params GenericCharacter -怪物 params AvoidanceGroup -避障组
- **To**(AUGCGenericCharacterGenericCharacter, FVectorInDestination, numberInStopRadius) — 移动到目标位置(注意不要和行为树移动冲突) 生效范围：服务器 params GenericCharacter -怪物 params InDestination -目的地 params InStopRadius -停止距离
- **Move**(AUGCGenericCharacterGenericCharacter) — 停止移动(注意不要和行为树移动冲突) 生效范围：服务器 params GenericCharacter -怪物
- **VectorGetCurrentVelocity**(AUGCGenericCharacterGenericCharacter) — 获取当前怪物动量 生效范围：服务器/客户端 return -当前动量 params GenericCharacter -怪物
- **MaxSpeed**(AUGCGenericCharacterGenericCharacter, numberInSpeed, numberReason) — 设置最大移动速度 生效范围：服务器 params GenericCharacter -怪物 params InSpeed -速度 params Reason -原因
- **GetMaxSpeed**(AUGCGenericCharacterGenericCharacter) — 获取最大移动速度 生效范围：服务器 return -最大移动速度 params GenericCharacter -怪物
- **GetDefaultMaxSpeed**(AUGCGenericCharacterGenericCharacter) — 获取默认最大移动速度 生效范围：服务器 return -默认最大移动速度 params GenericCharacter -怪物
- **ActorGetTargetEnemy**(AUGCGenericCharacterGenericCharacter) — 获取当前仇恨目标 生效范围：服务器 return -当前仇恨对象 params GenericCharacter -怪物
- **Behavior**(AUGCGenericCharacterGenericCharacter, stringBehaviorTreePath) — 运行指定行为树 生效范围：服务器 params GenericCharacter -怪物 params BehaviorTreePath -行为树路径
- **Behavior**(AUGCGenericCharacterGenericCharacter, stringReason) — 停止当前行为树 生效范围：服务器 params GenericCharacter -怪物 params Reason -原因
- **BehaviorTreeSetting**(AUGCGenericCharacterGenericCharacter, FBehaviorTreeReflectSettingInBehaviorTreeSetting) — 覆盖行为树设置并重新启动行为树 生效范围：服务器 params GenericCharacter -怪物 params InBehaviorTreeSetting -新的行为树设置
- **BehaviorTreeReflectSettingGetBehaviorTreeSetting**(AUGCGenericCharacterGenericCharacter) — 获取当前行为树设置 生效范围：服务器 params GenericCharacter -怪物
- **Behavior**(AUGCGenericCharacterGenericCharacter, stringReason) — 暂停当前行为树 生效范围：服务器 params GenericCharacter -怪物 params Reason -原因
- **Behavior**(AUGCGenericCharacterGenericCharacter, stringReason) — 继续当前行为树 生效范围：服务器 params GenericCharacter -怪物 params Reason -原因
- **AnimMontage**(AUGCGenericCharacterGenericCharacter, UAnimMontageAnimMontage, numberInPlayRate) — 播放蒙太奇动画 生效范围：客户端 params GenericCharacter -怪物 params AnimMontage -蒙太奇动画 params InPlayRate -播放速率
- **AnimMontageByTag**(AUGCGenericCharacterGenericCharacter, FGameplayTagAnimGameplayTag, numberInPlayRate) — 通过Tag播放蒙太奇动画 生效范围：客户端 params GenericCharacter -怪物 params AnimGameplayTag -蒙太奇动画Tag params InPlayRate -播放速率
- **OverrideAnimAsset**(AUGCGenericCharacterGenericCharacter, FGenericCharacterAnimOverrideDataData, numberBlendTime) — 覆盖指定Tag的动画资源 生效范围：客户端 params GenericCharacter -怪物 params Data -覆写数据 params BlendTime -混合时间
- **OverrideAnimAsset**(AUGCGenericCharacterGenericCharacter, FGenericCharacterAnimOverrideDataData, numberBlendTime) — 移除覆盖指定Tag的动画资源 生效范围：客户端 params GenericCharacter -怪物 params Data -覆写数据 params BlendTime -混合时间
- **IsEnableLogicPart**(AUGCGenericCharacterGenericCharacter, FGameplayTagInLogicPartTag) — 是否启用LogicPart 生效范围：服务器 return -是否启用 params GenericCharacter -怪物 params InLogicPartTag -LogicPart Tag
- **ActorSpawnGenericCharacter**(UObjectWorldContextObject, UClassGenericCharacterClass, FVectorLocation, FRotatorRotation) — 在目标位置刷一个怪 生效范围：服务器 return -刷出的怪物 params WorldContextObject -世界上下文对象 params GenericCharacterClass -怪物的类 params Location -刷怪的位置 params Rotation -刷出怪物的朝向
- **ActorSpawnGenericCharacterByGroup**(UObjectWorldContextObject, numberGroupID, FVectorLocation, FRotatorRotation) — 在目标位置根据怪物组表中的ID刷一个怪 生效范围：服务器 return -刷出的怪物 params WorldContextObject -世界上下文对象 params GroupID -怪物组表中的ID params Location -刷怪的位置 params Rotation -刷出怪物的朝向
- **RangeSpawnGenericCharacters**(UObjectWorldContextObject, UClassGenericCharacterClass, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberCount) — 在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪 生效范围：服务器 return -刷出怪物的列表 params WorldContextObject -世界上下文对象 params GenericCharacterClass -怪物的类 params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params Count -刷出怪物的数量
- **RangeSpawnGenericCharactersByGroup**(UObjectWorldContextObject, numberGroupID, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberCount) — 在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪，怪物类型由怪物组表ID指定 生效范围：服务器 return -刷出怪物的列表 params WorldContextObject -世界上下文对象 params GroupID -怪物组表中的ID params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params Count -刷出怪物的数量
- **SpawnGenericCharactersOnTime**(UObjectWorldContextObject, UClassGenericCharacterClass, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberMinSpawnCountPerLoop, numberMaxSpawnCountPerLoop, numberLoopTimes, numb) — 在指定位置的圆形范围中每隔一定时间寻找合适的地面刷出一定数量的怪 生效范围：服务器 params WorldContextObject -世界上下文对象 params GenericCharacterClass -怪物类 params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params MinSpawnCountPerLoop -每次刷怪的最小数量 params MaxSpawnCountPerLoop -每次刷怪的最大
- **SpawnGenericCharactersByGroupOnTime**(UObjectWorldContextObject, numberGroupID, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberMinSpawnCountPerLoop, numberMaxSpawnCountPerLoop, numberLoopTimes, numberIntervalMinT) — 在指定位置的圆形范围中每个一定时间寻找合适的地面刷出一定数量的怪 生效范围：服务器 params WorldContextObject -世界上下文对象 params GroupID -怪物组表中的ID params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params MinSpawnCountPerLoop -每次刷怪的最小数量 params MaxSpawnCountPerLoop -每次刷怪的最大数量 params
- **GetPartTypeSockets**(ACharacterCharacter) — 获取角色骨骼里所有的PartTypeSocket 生效范围：服务器&客户端 return -PartTypeSocket列表 params Character -角色
- **BlackboardComponentGetBlackboard**(AActorActor) — 获取Actor的BlackboardComponent 生效范围：服务器 return -BlackboardComponent params Actor -Actor KillGenericCharacter IsAlive IsGenericCharacter GetHealth GetHealthMax SetHealth SetHealthMax EnableMovement DisableMovement SetAvoidanceGroup MoveTo StopMove GetCurrentVelocity SetMaxSpeed GetMaxSpeed GetDefaultMax

## UGCGenericMessageSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGenericMessageSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCGenericMessageSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGenericMessageSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGenericMessageSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCGenericMessageSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGenericMessageSystem)

类

全文搜索

广播信息接口库

---


## 函数

- **ListenObjectMessage**(UObjectListenedObject, stringMessage, UObjectListener, functionCallback) — 监听对象的广播信息，作用包含ListenUserDefinedObjectMessage，正常仅调用本接口即可 生效范围：服务器&客户端 return -返回监听ID params ListenedObject -被监听对象 params Message -广播信息的索引，后续的广播和监听都通过索引进行操作 params Listener -监听对象 params Callback -监听对象监听到广播后调用的回调函数
- **UserDefinedObjectMessage**(UObjectListenedObject, stringMessage, any...) — 广播自定义的对象消息 生效范围：服务器&客户端 params ListenedObject -被监听对象 params Message -广播信息的索引，后续的广播和监听都通过索引进行操作 params ... -自定义事件参数
- **ListenGlobalMessage**(UObjectWorldContextObject, stringMessage, UObjectListener, functionCallback) — 监听全局的广播信息，作用包含ListenUserDefinedGlobalMessage，正常仅调用本接口即可 生效范围：服务器&客户端 return -返回监听ID params WorldContextObject -世界上下文对象 params Message -广播信息的索引，后续的广播和监听都通过索引进行操作 params Listener -监听对象 params Callback -监听对象监听到广播后调用的回调函数
- **ListenUserDefinedGlobalMessage**(UObjectWorldContextObject, stringMessage, UObjectListener, functionCallback) — 监听自定义的全局广播信息 生效范围：服务器&客户端 return -返回监听ID params WorldContextObject -世界上下文对象 params Message -广播信息的索引，后续的广播和监听都通过索引进行操作 params Listener -监听对象 params Callback -监听对象监听到广播后调用的回调函数
- **UserDefinedGlobalMessage**(stringMessage, any...) — 广播自定义的全局消息 生效范围：服务器&客户端 params Message -广播信息的索引，后续的广播和监听都通过索引进行操作 params ... -自定义事件参数
- **ListenMessage**(UObject) — numberListener, stringMessage
- **RegisterUserDefinedMessage**(stringMessage) — 注册自定义消息 生效范围：服务器&客户端 return -返回注册后的Message，与输入的Message相同 params Message -广播信息的索引，后续的广播和监听都通过索引进行操作 ListenObjectMessage BroadcastUserDefinedObjectMessage ListenGlobalMessage ListenUserDefinedGlobalMessage BroadcastUserDefinedGlobalMessage UnListenMessage RegisterUserDefinedMessage

## 属性

- **PlayerKey** — number @玩家的 PlayerKey UGCGenericMessageSystem.Messages.UGC.Player.PlayerExit 玩家退出游戏 生效范围：服务器 ListenedObject：无，全局事件 @param PlayerKey number @玩家的 PlayerKey UGCGenericMessageSystem.Messages.UGC.Player.PlayerLost 玩家掉线 生效范围：服务器 ListenedObject：无，全局事件 @param PlayerKey number @玩家的 PlayerKey UGCGenericMessag

## UGCGunSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGunSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCGunSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGunSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGunSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCGunSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGunSystem)

类

全文搜索

枪械系统接口库

---


## 函数

- **Fire**(STExtraShootWeaponGun) — 开火 生效范围：客户端 params Gun -枪械
- **Fire**(STExtraShootWeaponGun) — 停止开火 生效范围：客户端 params Gun -枪械
- **InfiniteBullets**(STExtraShootWeaponGun, booleanIsEnable) — 启用/停用无限子弹（无需换弹） 启用后，弹夹容量无限，一直开火也无需换弹 生效范围：服务器 params Gun -枪械 params IsEnable -启用/停用
- **ClipInfiniteBullets**(STExtraShootWeaponGun, booleanIsEnable) — 启用/停用弹夹无限子弹（需要换弹一次） 启用后，子弹容量无限，开火会打空弹夹触发换弹 生效范围：服务器 params Gun -枪械 params IsEnable -启用/停用
- **ReloadAndEnableInfiniteBullets**(STExtraShootWeaponGun, booleanIsEnable) — 启用/停用无限子弹（无需换弹）并且强制换弹 启用后，强制换弹弹夹容量无限，一直开火也无需换弹，避免弹夹内子弹为0时触发检查 生效范围：服务器 params Gun -枪械 params IsEnable -启用/停用
- **MaxBulletNumInOneClip**(STExtraShootWeaponGun, numberMaxBulletNumInOneClip) — 设置弹夹容量 生效范围：服务器 params Gun -枪械 params MaxBulletNumInOneClip -弹夹容量
- **GetMaxBulletNumInOneClip**(STExtraShootWeaponGun) — 获取弹夹容量 生效范围：服务器&客户端 return -弹夹容量 params Gun -枪械
- **BulletFireSpeed**(STExtraShootWeaponGun, numberBulletFireSpeed) — 设置子弹飞行速度 例：60000代表1秒飞行600米 生效范围：服务器 params Gun -枪械 params BulletFireSpeed -飞行速度
- **GetBulletFireSpeed**(STExtraShootWeaponGun) — 获取子弹飞行速度 例：60000代表1秒飞行600米 生效范围：服务器&客户端 return -当前飞行速度 params Gun -枪械
- **ShootIntervalTime**(STExtraShootWeaponGun, numberShootIntervalTime) — 设置射击间隔时间 例：0.1代表0.1秒射击一次 生效范围：服务器 params Gun -枪械 params ShootIntervalTime -射击间隔时间
- **GetShootIntervalTime**(STExtraShootWeaponGun) — 获取射击间隔时间 例：0.1代表0.1秒射击一次 生效范围：服务器&客户端 return -射击间隔时间 params Gun -枪械
- **BulletRange**(STExtraShootWeaponGun, numberBulletRange) — 设置子弹射程 例：60000射程为600米 生效范围：服务器 params Gun -枪械 params BulletRange -子弹射程
- **GetBulletRange**(STExtraShootWeaponGun) — 获取子弹射程 例：60000射程为600米 生效范围：服务器&客户端 return -子弹射程 params Gun -枪械
- **BulletBaseDamage**(STExtraShootWeaponGun, numberBulletBaseDamage) — 设置子弹基础伤害 生效范围：服务器 params Gun -枪械 params BulletBaseDamage -基础伤害
- **GetBulletBaseDamage**(STExtraShootWeaponGun) — 获取子弹基础伤害 生效范围：服务器&客户端 return -基础伤害 params Gun -枪械
- **BulletMinimumDamage**(STExtraShootWeaponGun, numberBulletMinimumDamage) — 设置子弹最低伤害（子弹经过穿透，距离等衰减后） 生效范围：服务器 params Gun -枪械 params BulletMinimumDamage -最低伤害
- **GetBulletMinimumDamage**(STExtraShootWeaponGun) — 获取子弹最低伤害（子弹经过穿透，距离等衰减后） 生效范围：服务器&客户端 return -最低伤害 params Gun -枪械
- **BulletImpulse**(STExtraShootWeaponGun, numberBulletImpulse) — 设置子弹命中冲量 冲量越大，击退击飞效果越大 参考：破片手雷最大造成冲量为2500 生效范围：服务器 params Gun -枪械 params BulletImpulse -冲量
- **GetBulletImpulse**(STExtraShootWeaponGun) — 获取子弹命中冲量 冲量越大，击退击飞效果越大 参考：破片手雷最大造成冲量为2500 生效范围：服务器&客户端 return -冲量 params Gun -枪械
- **ReloadTime**(STExtraShootWeaponGun, numberReloadTime) — 设置换弹时间 生效范围：服务器 params Gun -枪械 params ReloadTime -换弹时间
- **GetReloadTime**(STExtraShootWeaponGun) — 获取换弹时间 生效范围：服务器&客户端 return -换弹时间 params Gun -枪械
- **TacticalReloadTime**(STExtraShootWeaponGun, numberTacticalReloadTime) — 设置战术换弹时间（弹夹子弹数不为0） 生效范围：服务器 params Gun -枪械 params TacticalReloadTime -换弹时间
- **GetTacticalReloadTime**(STExtraShootWeaponGun) — 获取战术换弹时间（弹夹子弹数不为0） 生效范围：服务器&客户端 return -换弹时间 params Gun -枪械
- **VerticalRecoilScale**(STExtraShootWeaponGun, numberVerticalRecoilScale) — 设置垂直后坐力倍率 生效范围：服务器 params Gun -枪械 params VerticalRecoilScale -倍率
- **GetVerticalRecoilScale**(STExtraShootWeaponGun) — 获取垂直后坐力倍率 生效范围：服务器&客户端 return -倍率 params Gun -枪械
- **HorizontalRecoilScale**(STExtraShootWeaponGun, numberHorizontalRecoilScale) — 设置水平后坐力倍率 生效范围：服务器 params Gun -枪械 params HorizontalRecoilScale -倍率
- **GetHorizontalRecoilScale**(STExtraShootWeaponGun) — 获取水平后坐力倍率 生效范围：服务器&客户端 return -倍率 params Gun -枪械
- **DeviationScale**(STExtraShootWeaponGun, numberDeviationScale) — 设置扩散值倍率 生效范围：服务器 params Gun -枪械 params DeviationScale -倍率
- **GetDeviationScale**(STExtraShootWeaponGun) — 获取扩散值倍率 生效范围：服务器&客户端 return -倍率 params Gun -枪械 Reload(PlayerPawnPlayerPawn) 玩家当前武器换弹 生效范围：客户端 params PlayerPawn -玩家角色
- **Scope**(PlayerPawnPlayerPawn, booleanIsOpenScope) — 玩家当前武器开镜/关镜 生效范围：客户端 params PlayerPawn -玩家角色 params IsOpenScope -开镜/关镜
- **GetIsAutoAimEnabled**(PlayerPawnPlayerPawn) — 获取辅助瞄准是否启用 生效范围：客户端 return -启用/关闭 params PlayerPawn -玩家角色
- **IsAutoAimEnabled**(PlayerPawnPlayerPawn, booleanIsAutoAimEnabled) — 设置自动瞄准是否启用 生效范围：客户端 params PlayerPawn -玩家角色 params IsAutoAimEnabled -启用/关闭
- **GunAttachment**(STExtraShootWeaponGun, ItemDefineIDItemDefineID) — 武器添加指定配件 生效范围：服务端 params Gun -枪械 params ItemDefineID -物品DefineID
- **AndAddGunAttachment**(STExtraShootWeaponGun, numberItemID) — 创建新配件并且直接添加到武器 生效范围：服务端 params Gun -枪械 params ItemID -物品ID
- **GunAttachmentBySocketType**(STExtraShootWeaponGun, WeaponAttachmentSocketTypeSocketType) — 卸载武器指定部位配件 生效范围：服务端 params Gun -枪械 params SocketType -配件槽位
- **DefineIDGetWeaponAttachmentIDBySocketType**(STExtraShootWeaponGun, WeaponAttachmentSocketTypeSocketType) — 获取特定槽位的配件ItemDefineID 生效范围：服务端 params Gun -枪械 params SocketType -配件槽位
- **AttachmentSocketTypeGetAvailableWeaponAttachmentSocketTypeList**(STExtraShootWeaponGun) — 获取枪械可用的配件槽位 生效范围：服务端 return uint8[] -列表 params Gun -枪械
- **AvailableWeaponAttachmentGetAvailableWeaponAttachment**(STExtraShootWeaponGun) — 获取武器可用配件(需要武器加载出来才能使用，不能在武器初始化时调用) 生效范围：服务端 return int32[] -列表 params Gun -枪械
- **AllWeaponAttachmentsOnServer**(STExtraShootWeaponGun) — 卸载武器所有配件 生效范围：服务端 params Gun -枪械
- **AttachmentDefineIDGetWeaponAllAttachmentIDList**(STExtraShootWeaponGun) — 获取武器上的所有配件 生效范围：服务端 return ItemDefineID[] -列表 params Gun -枪械
- **CurrentBulletNumInClip**(STExtraShootWeaponGun, intCount) — 设置武器弹匣内弹药 生效范围：服务端 params Gun -枪械 params Count -枪械 StartFire StopFire EnableInfiniteBullets EnableClipInfiniteBullets ForceReloadAndEnableInfiniteBullets SetMaxBulletNumInOneClip GetMaxBulletNumInOneClip SetBulletFireSpeed GetBulletFireSpeed SetShootIntervalTime GetShootIntervalTime SetBulletRange G

## UGCInputSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCInputSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCInputSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCInputSystem](https://developer.gp.qq.com/api/#/searchContent/UGCInputSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCInputSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCInputSystem)

类

全文搜索

输入系统接口库

---


## 函数

- **BindInputMapping**(UObjectBindingOwner, UGCGameplayTag) — string
- **BindingToObject**(UObjectBindingOwner) — 解除与目标Object所有相关的输入事件绑定 生效范围：客户端 params BindingOwner -绑定输入事件的对象
- **Binding**(UObjectWorldContext, int32InputBindingHandle) — 解除指定索引的输入事件绑定 生效范围：客户端 params WorldContext -世界上下文对象 params InputBindingHandle -输入事件绑定的索引
- **InputMapping**(UObjectWorldContext, UGCGameplayTag) — string
- **BindingConsumeInput**(UObjectWorldContext, int32InputBindingHandle, boolbConsumeInput) — 设置某个输入事件绑定是否消耗输入，消耗输入后，后续的其他输入事件绑定将不被触发 生效范围：客户端 params WorldContext -世界上下文对象 params InputBindingHandle -输入事件绑定的索引 params bConsumeInput -是否消耗Input
- **GetInputValue**(UObjectWorldContext, UGCGameplayTag) — string

## UGCItemSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCItemSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCItemSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCItemSystem](https://developer.gp.qq.com/api/#/searchContent/UGCItemSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCItemSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCItemSystem)

类

全文搜索

道具系统接口库

---


## 函数

- **GetItemType**(numberItemID) — 获取物品ItemType 对应表格数据：和平精英\表格\物品表中ItemType列 生效范围：服务器&客户端 return -物品类型 params ItemID -物品ID
- **GetItemSubType**(numberItemID) — 获取ItemSubType 对应表格数据：和平精英\表格\物品表中ItemSubType列 生效范围：服务器&客户端 return -物品子类型 params ItemID -物品ID
- **BattleItem_TabResGetItemData**(numberItemID) — 获取道具数据 生效范围：服务器&客户端 return -物品数据 params ItemID -物品ID
- **IsUGCItem**(numberItemID) — 是否为绿洲物品（物资编辑器中自定义物品） 生效范围：服务器&客户端 return -是否为绿洲物品 params ItemID -物品ID
- **IsCanUseInBackpack**(numberItemID) — 返回道具在背包中是否可以使用 生效范围：服务器&客户端 return -是否可以使用 params ItemID -物品ID
- **GetPickupWrapperClassPath**(numberItemID) — 通过ItemID获取Wrapper路径 生效范围：服务器 return -Wrapper路径 params ItemID -物品ID
- **SetWrapperToGround**(APickUpWrapperActorWrapperActor) — 将Wrapper设置贴在地面 Wrapper.bDropedByPlayer为True时，贴地功能生效 生效范围：服务器 params WrapperActor -可拾取物
- **GetWrapperItemID**(APickUpWrapperActorWrapperActor) — 获取Wrapper关联的ItemID 生效范围：服务器&客户端 return -物品ID params WrapperActor -可拾取物
- **ModifyWrapperItemCount**(APickUpWrapperActorWrapperActor, numberCount) — 修改Wrpaaer中物品的数量 生效范围：服务器 params WrapperActor -可拾取物 params Count -修改后的数量
- **DoPickWrapper**(PlayerPawnPlayerPawn, APickUpWrapperActorWrapperActor) — 拾取Wrapper 生效范围：服务器&客户端 params WrapperActor -可拾取物
- **IsWrapperDropedByPlayer**(APickUpWrapperActorWrapperActor) — Wrapper是否是由玩家丢弃生成 生效范围：服务器&客户端 params WrapperActor -可拾取物
- **SetWrapperPickUpRadius**(APickUpWrapperActorWrapperActor, numberRadius) — 设置Wrapper的可拾取范围 生效范围：服务器 params WrapperActor -可拾取物 params Radius -可拾取范围，单位厘米
- **GetQualityTexturePath**(numberQualityRank) — 获取品质色的128*128纹理路径 生效范围：服务器&客户端 return -品质纹理路径 params QualityRank -品质等级
- **GetBigQualityTexturePath**(numberQualityRank) — 获取品质色的128*256纹理路径 生效范围：服务器&客户端 return -品质纹理路径string params QualityRank -品质等级
- **GetQualityBarTexturePath**(numberQualityRank) — 获取品质色条纹理路径 生效范围：服务器&客户端 return -品质纹理路径string params QualityRank -品质等级 GetItemType GetItemSubType GetItemData IsUGCItem IsCanUseInBackpack GetPickupWrapperClassPath SetWrapperToGround GetWrapperItemID ModifyWrapperItemCount DoPickWrapper IsWrapperDropedByPlayer SetWrapperPickUpRadius GetQualityTextur

## UGCItemSystemV2

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCItemSystemV2?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCItemSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCItemSystemV2](https://developer.gp.qq.com/api/#/searchContent/UGCItemSystemV2?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCItemSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCItemSystemV2)

类

全文搜索

V2道具系统接口库

---


## 函数

- **BattleItemHandleBaseGetConfigItemHandle**(numberItemID) — 获取物品 ItemHandle 配置 可以通过它取得所有物品中配置的数据（只读） 生效范围：服务器&客户端 return -配置数据 params ItemID -物品 ID
- **UGCBattleItemInstanceDataManagerGetItemInstanceDataManager**(获取物品实例数据管理器 生效范围：服务器&客户端 return -实例数据管理器)
- **IsUGCItemV2**(numberItemID) — 是否为绿洲物品（物资编辑器中自定义物品） 生效范围：服务器&客户端 return -是否为绿洲物品 params ItemID -物品 ID
- **IsShouldPersist**(numberItemID) — 是否持久化 生效范围：服务器&客户端 return -是否持久化 params ItemID -物品 ID
- **IsObjEditorItemV2**(numberItemID) — 是否为V2版本物编创建的物品 生效范围：服务器&客户端 return -是否为V2版本物编创建的物品 params ItemID -物品 ID
- **GetItemNameV2**(numberItemID) — 返回物品名称 生效范围：服务器&客户端 return -物品名称 params ItemID -物品 ID
- **GetItemSubTypeV2**(numberItemID) — 返回物品子类型SubType，(比如武器类别为1，M146子类型为101) 生效范围：服务器&客户端 return -物品子类型 params ItemID -物品 ID
- **SoftObjectPathGetItemIconTextureV2**(numberItemID) — 返回物品图标路径 生效范围：服务器&客户端 return -物品图标路径 params ItemID -物品 ID
- **ComponentV2GetOwnBackpackComponent**(UBattleItemHandleBaseItemHandle) — 读取物品所在背包 生效范围：服务器&客户端 return -V2背包组件 params ItemHandle -物品 Handle
- **SoftObjectPathGetItemIconWithPlayerSkinV2**(numberItemID, PlayerControllerPlayerController) — 返回物品图标路径(带玩家皮肤) 生效范围：服务器&客户端 return -物品图标路径 params ItemID -物品 ID params PlayerController -玩家 PlayerController
- **SoftObjectPathGetWhiteIconTextureV2**(numberItemID) — 返回物品剪影图标路径 生效范围：服务器&客户端 return -剪影图标路径 params ItemID -物品 ID
- **SoftObjectPathGetBigIconTextureV2**(numberItemID) — 返回物品装备栏图标路径 生效范围：服务器&客户端 return -装备栏图标路径 params ItemID -物品 ID
- **SoftObjectPathGetBigIconTextureWithPlayerSkinV2**(numberItemID, PlayerControllerPlayerController) — 返回物品装备栏图标路径(带玩家皮肤) 生效范围：服务器&客户端 return -装备栏图标路径 params ItemID -物品 ID params PlayerController -玩家 PlayerController
- **GetItemDetailV2**(numberItemID) — 返回物品详情 生效范围：服务器&客户端 return -物品详情 params ItemID -物品 ID
- **GetItemPickupDetailV2**(numberItemID) — 返回物品拾取描述 生效范围：服务器&客户端 return -物品拾取描述 params ItemID -物品 ID
- **ItemHasTagV2**(numberItemID, stringTag) — 是否含有某个 Tag 生效范围：服务器&客户端 return -是否含有 Tag params ItemID -物品 ID params Tag -物品 Tag
- **GetItemTagsV2**(numberItemID) — 返回物品所有 Tag 生效范围：服务器&客户端 return -物品所有 Tag params ItemID -物品 ID
- **ItemCanDropV2**(numberItemID) — 返回物品是否可丢弃 生效范围：服务器&客户端 return -物品是否可丢弃 params ItemID -物品 ID
- **ItemCanRemoveV2**(numberItemID) — 返回物品是否可销毁 生效范围：服务器&客户端 return -物品是否可销毁 params ItemID -物品 ID
- **IsCanUseV2**(numberItemID) — 返回物品在背包中是否可以使用 生效范围：服务器&客户端 return -是否可以使用 params ItemID -物品 ID
- **GetItemMaxNumberOfStacksV2**(numberItemID) — 返回物品最大堆叠数量 生效范围：服务器&客户端 return -物品最大堆叠数量 params ItemID -物品 ID
- **GetItemQualityV2**(numberItemID) — 返回物品品质 生效范围：服务器&客户端 return -物品品质 params ItemID -物品 ID
- **GetItemCustomizedTypeV2**(numberItemID) — 返回物品自定义类型 生效范围：服务器&客户端 return -物品自定义类型 params ItemID -物品 ID
- **LoadItemCustomData**(FItemDefineIDItemDefineID) — 获取物品自定义实例化数据 生效范围：服务器&客户端 return -物品自定义实例化数据table params ItemDefineID -物品DefineID
- **SaveItemCustomData**(FItemDefineIDItemDefineID, tableItemCustomData) — 保存物品自定义实例化数据 注意: 实例数据也包含了和平内置数据，应避免直接覆盖，采用下述方式添加数据 local CustomData = UGCItemSystemV2.LoadItemCustomData(ItemDefineID) CustomData.NewKey = NewTableData -- 填充新的数据
- **SaveItemCustomData**(ItemDefineID, CustomData) — 生效范围：服务器 return -保存成功or失败 params ItemDefineID -物品DefineID params ItemCustomData -物品自定义实例化数据table
- **ItemDefineIDGetItemDefineID**(numberItemID) — 通过物品ID创建一个全新的物品实例，并返回 DefineID 生效范围：服务器 return -物品 DefineID params ItemID -物品 ID
- **ItemCommonReason**(FItemDefineIDItemDefineID, numberReason) — 设置物品通用 Reason 用于操作物品时指定其中一些行为 生效范围：服务器 params ItemDefineID -物品 DefineID params Reason -Reason
- **GetItemCommonReason**(FItemDefineIDItemDefineID) — 获取物品通用 Reason 用于操作物品时指定其中一些行为 生效范围：服务器 return -Reason params ItemDefineID -物品 DefineID
- **GetEquipTargetSlots**(numberItemID) — 获取装备物品拥有的槽位列表 生效范围：服务器&客户端 return -物品拥有的所有槽位 params ItemID -物品ID
- **GetDisplayNameBySlotName**(numberItemID, stringSlotName) — 获取槽位对应的展示名 生效范围：服务器&客户端 return -物品槽位的展示名称 params ItemID -物品ID params SlotName -槽位名
- **FNameGetAttachTargetItem**(ItemDefineIDItemDefineID) — 获取物品附加在哪个物品上 生效范围：服务器&客户端 return -物品是否正附加在另一个物品上,物品附加的目标物品 DefineID,物品附加的目标物品槽位 params ItemDefineID -物品 DefineID
- **DefineIDGetAttachChildItem**(ItemDefineIDAttachParentID, stringAttachSlot) — 获取附加在物品上的子物品 生效范围：服务器&客户端 return -附加在此槽位上的子物品 DefineID params AttachParentID -父物品的 DefineID params AttachSlot -父物品的槽位名
- **GetAttachChildrenItem**(ItemDefineIDAttachParentID) — 获取所有附加在物品上的子物品 生效范围：服务器&客户端 return -所有子物品 DefineID, 数组元素与父物品槽位一一对应，可能存在无效的 ItemDefineID params AttachParentID -父物品的 DefineID
- **GetAttachAllowSlots**(numberAttachParentID, numberAttachChildID) — 获取子物品可以 Attach 到父物品的哪些 Slot(不考虑槽位启用状态) 生效范围：服务器&客户端 return -所有可装备槽位 FName params AttachParentID -父物品的 ItemID params AttachChildID -子物品的 ItemID
- **GetAttachAllowSlotsByDefineID**(PlayerPawnPlayer, ItemDefineIDAttachParentDefineID, numberAttachChildID) — 获取子物品可以 Attach 到父物品`实例` 的哪些 Slot(考虑槽位启用状态) 生效范围：服务器&客户端 return -所有可装备槽位 FName params Player -玩家 params AttachParentDefineID -父物品的 ItemDefineID params AttachChildID -子物品的 ItemID
- **GetQualityTexturePath**(numberQualityRank) — 获取品质色的128*128纹理路径 生效范围：服务器&客户端 return -品质纹理路径 params QualityRank -品质等级
- **GetBackpackSimpleNameV2**(numberItemID) — 返回物品背包简述 生效范围：服务器&客户端 return -物品背包简写 params ItemID -物品 ID
- **GetBigQualityTexturePath**(numberQualityRank) — 获取品质色的128*256纹理路径(废弃，结果同GetQualityTexturePath) 生效范围：服务器&客户端 return -品质纹理路径string params QualityRank -品质等级
- **GetQualityBarTexturePath**(numberQualityRank) — 获取品质色条纹理路径 生效范围：服务器&客户端 return -品质纹理路径string params QualityRank -品质等级
- **GetEquipmentQualityTexturePath**(numberQualityRank) — 获取装备品质色条纹理路径 生效范围：服务器&客户端 return -品质纹理路径string params QualityRank -品质等级
- **GetWeaponSlotAttachItemIDs**(numberItemID, stringSlotName) — 获取武器配件槽位可用配件的物品ID 生效范围：服务器&客户端 return -可用的配件物品ID params ItemID -武器的物品ID params SlotName -武器槽位名
- **GetPickupWrapperListByItemID**(numberItemID) — 根据物品ID查询拾取物 生效范围：服务器&客户端, 客户端仅查询本地生成的 return -拾取物列表 params ItemID -物品ID
- **GetPickupWrapperListByCustomType**(stringCustomType) — 根据自定义类型查询拾取物 生效范围：服务器&客户端, 客户端仅查询本地生成的 return -拾取物列表 params CustomType -自定义类型
- **GetPickupWrapperListByItemTag**(stringItemTag) — 根据物品Tag查询拾取物 生效范围：服务器&客户端, 客户端仅查询本地生成的 return -拾取物列表 params ItemTag -物品Tag
- **EquipSlotEnable**(FItemDefineIDDefineID, stringSlotName) — 启用物品槽位 生效范围：服务器 params DefineID -物品DefineID params SlotName -槽位名
- **GetEquipSlotEnable**(FItemDefineIDDefineID, stringSlotName) — 获取物品槽位是否启用 生效范围：服务器&客户端 return -是否启用 params DefineID -物品DefineID params SlotName -槽位名
- **CustomizeDrop**(FVectorDropLocation, numberProduceID, numberProduceGroupID, EUGCGenerateItemEntityTypeEntityType, PlayerPawnRelatedPlayer, UClassDropActorClass) — 指定掉落方案进行一次 Wrapper 掉落 生效范围：服务器 params DropLocation -掉落中心点 params ProduceID -掉落方案ID params ProduceGroupID -掉落组方案ID(掉落组ID不为-1，掉落组ID生效。掉落组ID为-1,则掉落ID生效) params EntityType -掉落物类型(可缺省，默认为Wrapper) params RelatedPlayer -当掉落物方向为面相玩家时必须，当掉落物类型为进入背包时必须，其他时候可以为nil params DropActorClass -掉落主体Actor类型，应继承自 UGCDro
- **FindAllNearPickupItemData**(PlayerPawnPlayerPawn) — 找到所有玩家角色附近的地面拾取物 生效范围：客户端 return -地面拾取物信息 params PlayerPawn -玩家角色
- **FindPickupWrapperActorByRange**(FVectorCenter, numberDistanceRange) — 查找指定距离范围内的地面拾取物 生效范围：服务器 return -地面拾取物Actor params Center -中心点坐标 params DistanceRange -查找距离
- **PickupWrapperItem**(PlayerPawnPlayerPawn, AActorTargetWrapper, FItemDefineIDItemDefineID, numberPickupCount, booleanCheckPickupCondition) — 玩家角色尝试拾取地面物品（不播拾取动作） 生效范围：服务器 params PlayerPawn -玩家角色 params TargetWrapper -目标地面拾取物 params ItemDefineID -要拾取的物品 DefineID，可缺省，默认取 TargetWrapper 中的物品实例数据 params PickupCount -拾取数量，可缺省，默认拾取1个 params CheckPickupCondition -是否检查拾取条件(距离、是否穿墙等)，可缺省，默认为 true
- **PickUpWrapperActorSpawnPickupWrapper**(FVectorLocation, numberItemID, numberCount, tableCustomData) — 创建地面拾取物 生效范围：服务器 return -地面拾取物Actor params Location -创建位置 params ItemID -拾取物物品ID params Count -拾取物物品数量 params CustomData -物品自定义实例化数据(可缺省，默认无自定义实例化数据)
- **UUGCPickUpListComponentGetUGCPickUpListComponent**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **AutoPick**(numberItemID, PlayerPawn) — PlayerController
- **Pick**(PlayerPawn) — PlayerController
- **Pick**(PlayerPawn) — PlayerController

## UGCLevelFlowSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCLevelFlowSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9C%BA%E6%99%AF%E4%B8%8E%E7%8E%AF%E5%A2%83%2FUGCLevelFlowSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCLevelFlowSystem](https://developer.gp.qq.com/api/#/searchContent/UGCLevelFlowSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9C%BA%E6%99%AF%E4%B8%8E%E7%8E%AF%E5%A2%83%2FUGCLevelFlowSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCLevelFlowSystem)

类

全文搜索

关卡流程系统接口库

---


## 函数

- **LevelFlow**(stringInMgrPath) — 启用关卡流程 生效范围：服务器 params InMgrPath -需要注册的 GameModeActorMgr 的路径
- **GoToNextLevelForAllPlayers**(当前关卡所有玩家直接跳转到下个关卡，需所有玩家都已达到通关条件 生效范围：服务器 return -所有玩家跳转到下个关卡是否成功)
- **GoToNextLevelForOnePlayer**(ASTExtraPlayerControllerPlayerController) — 单个玩家直接跳转到下个关卡，需当前玩家已达到通关条件，当前队伍其他玩家仍停留在当前关卡 生效范围：服务器 return -当前玩家跳转到下个关卡是否成功 params PlayerController -玩家
- **AddScore**(numberTeamID, numberScore) — 给指定队伍关卡加分 生效范围：服务器 params TeamID -队伍 ID params Score -加分的分数
- **Settle**(numberTeamID, booleanIsFinish) — 队伍所在关卡立即结算 生效范围：服务器 params TeamID -结算的队伍 params IsFinish -是否通关
- **GetCurrentLevelStage**(ASTExtraPlayerControllerPlayerController) — 获取当前玩家处于第几关 生效范围：服务器&客户端 return -当前玩家处于第几关 params PlayerController -玩家
- **GetTotalLevelCount**(获取总关卡数，随机切换关卡暂时不支持获取总关卡数，需要自定义逻辑 生效范围：服务器 return -总关卡数)
- **AddScore**(numberTeamID, numberScore) — 给指定队伍游戏加分 生效范围：服务器 params TeamID -队伍 ID params Score -加分的分数
- **Settle**(booleanIsFinish) — 游戏立即结算 生效范围：服务器 params IsFinish -是否通关
- **GetAllPlayerControllerInCurrentLevel**(获取关卡里的所有玩家 生效范围：服务器 return -玩家列表)
- **GCLevelActorGetCurrentLevelActor**(获取当前副本 生效范围：服务器 return -关卡Actor EnableLevelFlow GoToNextLevelForAllPlayers GoToNextLevelForOnePlayer LevelAddScore LevelSettle GetCurrentLevelStage GetTotalLevelCount GameAddScore GameSettle GetAllPlayerControllerInCurrentLevel GetCurrentLevelActor)

## UGCMailSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMailSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCMailSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMailSystem](https://developer.gp.qq.com/api/#/searchContent/UGCMailSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCMailSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMailSystem)

类

全文搜索

邮件系统库

---


## 函数

- **GetMailList**(intUID) — 获取指定玩家的邮件列表 生效范围：服务器 return -邮件列表 params UID -UID
- **GCMailInfoGetMailInfo**(intUID, intMailID) — 获取指定玩家的邮件信息 生效范围：服务器 return -邮件信息，如果不存在则返回 nil params UID -UID params MailID -邮件ID
- **MailAward**(intUID, int[]MailIDs) — 请求领取指定玩家的邮件奖励 生效范围：服务器 params UID -UID params MailIDs -邮件ID数组
- **Mail**(intUID, int[]MailIDs) — 请求标记指定玩家的邮件已读 生效范围：服务器 params UID -UID params MailIDs -邮件ID数组
- **ReadMail**(intUID, int[]MailIDs) — 请求删除指定玩家的已读邮件 生效范围：服务器 params UID -UID params MailIDs -邮件ID数组
- **IESendMail**(intUID, stringTitle, stringContent, intExpireTime, tableAttachments) — 发送邮件, 仅PIE环境有效 生效范围：服务器 params UID -UID params Title -邮件标题 params Content -邮件内容 params ExpireTime -过期时间 params Attachments -附件 {[ItemID]=Count, ...} GetMailList GetMailInfo ClaimMailAward ReadMail DeleteReadMail PIESendMail

## 属性

- **UID** — int @UID @param MailList UGCMailInfo[] @邮件列表 UGCMailSystem.ClaimMailsResultDelegate 收到领取邮件奖励结果后触发 @param UID int @UID @param ItemList table @奖励物品列表 @param ClaimedMailIDs int[] @已领取的邮件ID数组 @param FailedResults table<ID,EUGCMailOperationFailedReason> @失败邮件 UGCMailSystem.ReadMailsResultDelegate 收到标记邮件已

## UGCMapMarkManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMapMarkManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2FUI%20%E7%95%8C%E9%9D%A2%2FUGCMapMarkManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMapMarkManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCMapMarkManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2FUI%20%E7%95%8C%E9%9D%A2%2FUGCMapMarkManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMapMarkManagerSystem)

类

全文搜索

地图标记管理器系统接口库

---


## 函数

- **AddCustomMark**(stringWidgetClassPath, EMarkDispatchRangeRangeType, numberRangeRad, PlayerStateOwnerPlayerState) — 添加一个自定义 Mark，需要自行管理位置（Widget 需继承自 MapUIMarkBaseWidget） 必须先调用一次 UpdateMarkLocation，调用 GetMarkLocation 才有效（Rotation 同理） 生效范围：服务器 return -标记 ID params WidgetClassPath -控件类路径，Widget 需继承自 MapUIMarkBaseWidget params RangeType -标记同步范围 params RangeRad -标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm） params OwnerPlayerState
- **AddLocalCustomMark**(stringWidgetClassPath, numberRangeRad) — 添加一个自定义 Mark，需要自行管理位置（Widget 需继承自 MapUIMarkBaseWidget） 必须先调用一次 UpdateMarkLocation，调用 GetMarkLocation 才有效（Rotation 同理） 生效范围：客户端 return -标记 ID params WidgetClassPath -控件类路径，Widget 需继承自 MapUIMarkBaseWidget params RangeRad -标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm）
- **AddPlayerMark**(stringWidgetClassPath, EMarkDispatchRangeRangeType, numberRangeRad, PlayerStateOwnerPlayerState) — 添加一个玩家 Mark，会根据玩家位置实时更新位置。（Widget 需继承自 UGCMapUIMarkDynamicWidget） 生效范围：服务器 return -标记 ID params WidgetClassPath -控件类路径，Widget 需继承自 UGCMapUIMarkDynamicWidget params RangeType -标记同步范围 params RangeRad -标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm） params OwnerPlayerState -标记目标 PlayerState
- **AddLocalPlayerMark**(stringWidgetClassPath, PlayerStateOwnerPlayerState, numberRangeRad) — 添加一个玩家Mark，会根据玩家位置实时更新位置。（Widget 需继承自 UGCMapUIMarkDynamicWidget） 生效范围：客户端 return -标记 ID params WidgetClassPath -控件类路径，Widget 需继承自 UGCMapUIMarkDynamicWidget params OwnerPlayerState -标记目标 PlayerState params RangeRad -标记显示范围，超出范围不会显示标记（目标实际距离，单位：cm）
- **Mark**(numberInstanceID) — 移除一个标记，此接口的调用者同传入的 InstanceID 匹配。 生效范围：服务器&客户端 params InstanceID -标记 ID
- **MarkLocation**(numberInstanceID, VectorMarkLocation, booleanbNeedPrintLog) — 更新标记位置，此接口的调用者同传入的 InstanceID 匹配。 生效范围：服务器&客户端 params InstanceID -标记 ID params MarkLocation -新 Location params bNeedPrintLog -是否输出日志
- **MarkRotation**(numberInstanceID, RotatorNewRotation) — 更新标记旋转，此接口的调用者同传入的 InstanceID 匹配。 生效范围：服务器&客户端 params InstanceID -标记 ID params NewRotation -新 Rotator 可使用 Rotator.New(Roll,Pitch,Yaw) 创建，结构 {Roll=Roll, Pitch=Pitch, Yaw=Yaw}
- **GetMarkLocation**(numberInstanceID) — 获取标记位置，此接口的调用者同传入的 InstanceID 匹配。 生效范围：服务器&客户端 return -标记点 Location params InstanceID -标记 ID
- **GetMarkRotation**(numberInstanceID) — 获取标记旋转，此接口的调用者同传入的 InstanceID 匹配。 调用此接口来更新通过 UGCMapMarkManagerSystem.Add[Local]CustomMark 创建的小地图标记控件时，须确保该控件的 Rotate Widget to Angle 选项已勾选。 生效范围：服务器&客户端 return -标记点 Rotator 可使用 Rotator.New(Roll,Pitch,Yaw) 创建,结构 {Roll=Roll, Pitch=Pitch, Yaw=Yaw} params InstanceID -标记 ID
- **StateGetMarkOwner**(numberInstanceID) — 获取标记 Owner，此接口的调用者同传入的 InstanceID 匹配。 生效范围：服务器&客户端 return -标记点对应的 PlayerState params InstanceID -标记 ID
- **MapMarkGraph**(FVector[]WorldCorners, FColorMarkColor, numberRadiusOrLineWidth, booleanbRecolorOrBlending, EAddMarkFlagAddMarkFlag) — 在地图上画图 生效范围：客户端 params WorldCorners -世界坐标点，按顺序绘制，1个点画圆，2个点画直线，3个点或以上画多边形 params MarkColor -图像颜色 params RadiusOrLineWidth -半径或直线宽度 params bRecolorOrBlending -覆盖颜色或Alpha混合 params AddMarkFlag -生效地图类型
- **MapMarkGraph**(EAddMarkFlagClearMarkFlag) — 清除地图上的图案 生效范围：客户端 params ClearMarkFlag -生效地图类型
- **VoiceVisualization**(EVoiceVisualizationFlagInFlag, booleanbIsEnable) — 开关小地图上的指定类型音效图标 生效范围：服务端&客户端 params InFlag -指定音效类型 params bIsEnable -开关控制
- **IsVoiceVisualizationFlagEnable**(EVoiceVisualizationFlagInFlag) — 获取小地图上指定类型音效图标的开关状态 生效范围：服务端&客户端 return -是否开启 params InFlag -指定音效类型
- **GetMapMarkLocation**(ASTExtraPlayerStatePlayerState) — 获取和平原生小地图标点位置 生效范围：客户端 return -标记点位置 params PlayerState -玩家状态
- **MapByMapID**(numberMapID) — 根据地图ID修改右上角地图 生效范围：客户端 params MapID -地图ID
- **DrawGuidePathToTarget**(FGuidePathDrawParamsParams, FOnGuidePathResultOnResult) — 请求绘制引导线 生效范围：客户端 return -请求ID params Params -绘制参数 params OnResult -结果回调 AddCustomMark AddLocalCustomMark AddPlayerMark AddLocalPlayerMark RemoveMark UpdateMarkLocation UpdateMarkRotation GetMarkLocation GetMarkRotation GetMarkOwner MakeMapMarkGraph ClearMapMarkGraph SetVoiceVisualization IsVoiceVisu

## UGCMathUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMathUtility?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCMathUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMathUtility](https://developer.gp.qq.com/api/#/searchContent/UGCMathUtility?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCMathUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMathUtility)

类

全文搜索

数学工具接口库

---


## 函数

- **Sin**(numberA) — 返回A的正弦值(sin)，结果为弧度制 return -sin(A) params A -A
- **Asin**(numberA) — 返回A的反正弦值(arcsin)，结果为弧度制 return -arcsin(A) params A -A
- **Cos**(numberA) — 返回A的余弦值(cos)，结果为弧度制 return -cos(A) params A -A
- **Acos**(numberA) — 返回A的反余弦值(arccos)，结果为弧度制 return -arccos(A) params A -A
- **Tan**(numberA) — 返回A的正切值(tan)，结果为弧度制 return -tan(A) params A -A
- **Atan**(numberA) — 返回A的反正切值(arctan)，结果为弧度制 return -arctan(A) params A -A
- **DegSin**(numberA) — 返回A的正弦值(sin)，结果为角度制 return -sin(A) params A -A
- **DegAsin**(numberA) — 返回A的反正弦值(arcsin)，结果为角度制 return -arcsin(A) params A -A
- **DegCos**(numberA) — 返回A的余弦值(cos)，结果为角度制 return -cos(A) params A -A
- **DegAcos**(numberA) — 返回A的反余弦值(arccos)，结果为角度制 return -arccos(A) params A -A
- **DegTan**(numberA) — 返回A的正切值(tan)，结果为角度制 return -tan(A) params A -A
- **DegAtan**(numberA) — 返回A的反正切值(arctan)，结果为角度制 return -arctan(A) params A -A
- **DegAtan2**(numberA, numberB) — 返回A/B的反正切值(atan2)，结果为角度制 return -arctan(A/B) params A -A params B -B
- **RandomFloat**(返回一个介于0和1之间的随机浮点数 return -随机浮点数)
- **RandomFloatInRange**(numberInMin, numberInMax) — 生成一个介于Min和Max之间的随机数 return -随机数 params InMin -最小值 params InMax -最大值
- **Lerp**(numberA, numberB, numberAlpha) — 根据Alpha在A和B之间线性插值（Alpha=0时返回A，Alpha=1时返回B）） return -线性插值 params A -A params B -B params Alpha -Alpha
- **FClamp**(numberInValue, numberInMin, numberInMax) — 【废弃】请使用 UGCMathUtility.Clamp 返回限制在A和B之间的值（包含A和B） return -限制后的值 params InValue -值 params InMin -最小值 params InMax -最大值
- **MapRangeClamped**(numberInValue, numberInMinIn, numberInMaxIn, numberInMinOut, numberInMaxOut) — 将数值从一个输入范围映射到另一个输出范围（数值会被限制在输入范围内）。（例如：将0.5从0→1范围映射到0→50范围会得到25） return -映射后的值 params InValue -值 params InMinIn -输入范围最小值 params InMaxIn -输入范围最大值 params InMinOut -输出范围最小值 params InMaxOut -输出范围最大值
- **NearlyEqualFloat**(numberA, numberB, numberTolerance) — 返回A是否近似等于B（
- **NotEqualFloat**(numberA, numberB) — 如果A不等于B则返回true return -是否不等于 params A -A params B -B
- **DateTimeNow**(返回当前计算机的本地日期和时间 return -当前计算机的本地日期和时间)
- **DateTimeToday**(返回当前计算机的本地日期 return -当前计算机的本地日期)
- **DateTimeUtcNow**(返回当前计算机的UTC日期和时间 return -当前计算机的UTC日期和时间)
- **GetYear**(FDateTimeA) — 返回A的年分量值 return -年分量值 params A -A
- **GetMonth**(FDateTimeA) — 返回A的月分量值 return -月分量值 params A -A
- **DaysInMonth**(numberYear, numberMonth) — 返回给定年份和月份的天数 return -天数 params Year -年份 params Month -月份
- **VectorAddVector**(FVectorA, FVectorB) — 向量加法 params A -A params B -B
- **Vector2DAddVector2D**(FVector2DA, FVector2DB) — 返回二维向量A和二维向量B的和（A + B） params A -A params B -B
- **VectorSubtractVector**(FVectorA, FVectorB) — 向量减法 params A -A params B -B
- **Vector2DSubtractVector2D**(FVector2DA, FVector2DB) — 返回二维向量A和二维向量B的差（A - B） params A -A params B -B
- **VectorMultiplyVector**(FVectorA, numberB) — 将向量A按B缩放 params A -A params B -B
- **Vector2DMultiplyVector2D**(FVector2DA, numberB) — 将二维向量A按B缩放 params A -A params B -B
- **VSize**(FVectorA) — 返回向量的长度 params A -A
- **VSize2D**(FVector2DA) — 返回二维向量的长度 params A -A
- **VSizeSquared**(FVectorA) — 返回向量的长度的平方 params A -A
- **VSizeSquared2D**(FVector2DA) — 返回二维向量的长度的平方 params A -A
- **EqualVector**(FVectorA, FVectorB, numberTolerance) — 判断向量A是否在允许误差范围内等于向量B params A -A params B -B params Tolerance -允许误差，默认为1.e-4f
- **NotEqualVector**(FVectorA, FVectorB, numberTolerance) — 判断向量A是否在允许误差范围内不等于向量B params A -A params B -B params Tolerance -允许误差，默认为1.e-4f
- **DotVector**(FVectorA, FVectorB) — 返回两个向量的点积 params A -A params B -B
- **VectorCrossVector**(FVectorA, FVectorB) — 返回两个向量的叉积 params A -A params B -B
- **DotVector2D**(FVector2DA, FVector2DB) — 返回两个二维向量的点积 params A -A params B -B
- **CrossVector2D**(FVector2DA, FVector2DB) — 返回两个二维向量的叉积 params A -A params B -B
- **VectorRotateVector**(FVectorA, FRotatorB) — 返回向量A经过 Rotator B 旋转后的结果 return -Vector params A -A params B -B
- **VectorRotateAngleAxis**(FVectorA, numberAngleDeg, FVectorAxis) — 返回向量A绕Axis轴旋转AngleDeg角度后的结果 return -Vector params A -A params AngleDeg -AngleDeg params Axis -Axis
- **VectorNormal**(FVectorA) — 返回向量A的单位法向量 return -Vector params A -A
- **Vector2DNormal2D**(FVector2DA) — 返回二维向量A的单位法向量 return -Vector params A -A
- **VectorVLerp**(FVectorA, FVectorB, numberAlpha) — 根据Alpha值在向量A和向量B之间线性插值（Alpha=0时返回100%A，Alpha=1时返回100%B） return -Vector params A -A params B -B params Alpha -Alpha
- **VectorRandomUnitVector**(返回一个长度为1的随机向量 return -Vector)
- **VectorRandomPointInBoundingBox**(FVectorOrigin, FVectorBoxExtent) — 返回指定边界框内的随机点 return -Point params Origin -Origin params BoxExtent -BoxExtent
- **VectorProjectVectorOnToVector**(FVectorV, FVectorTarget) — 将向量V投影到目标向量Target上并返回投影向量，如果Target长度接近零，则返回零向量 return -Vector params V -V params Target -Target
- **FInterpTo**(numberCurrent, numberTarget, numberDeltaTime, numberInterpSpeed) — 根据当前值到目标值的插值进行平滑过渡，实现流畅的过度效果 return -新的插值位置 params Current -当前值 params Target -目标值 params DeltaTime -平滑时间 params InterpSpeed -插值速度
- **FInterpConstantTo**(numberCurrent, numberTarget, numberDeltaTime, numberInterpSpeed) — 以恒定速率向目标值变换 return -Location params Current -当前值 params Target -目标值 params DeltaTime -平滑时间 params InterpSpeed -插值速度
- **VectorVInterpTo**(FVectorCurrent, FVectorTarget, numberDeltaTime, numberInterpSpeed) — 根据向量表示的当前位置与目标位置的距离平滑地接近目标位置，实现流畅的追踪效果 return -新的插值位置 params Current -当前位置 params Target -目标位置 params DeltaTime -平滑时间 params InterpSpeed -插值速度
- **VectorVInterpConstantTo**(FVectorCurrent, FVectorTarget, numberDeltaTime, numberInterpSpeed) — 以恒定速率向向量表示的目标位置移动 return -Location params Current -当前位置 params Target -目标位置 params DeltaTime -平滑时间 params InterpSpeed -插值速度
- **Vector2DVector2DInterpTo**(FVector2DCurrent, FVector2DTarget, numberDeltaTime, numberInterpSpeed) — 根据二维向量表示的当前位置与目标位置的距离平滑地接近目标位置，实现流畅的追踪效果 return -新的插值位置 params Current -当前位置 params Target -目标位置 params DeltaTime -平滑时间 params InterpSpeed -插值速度
- **Vector2DVector2DInterpConstantTo**(FVector2DCurrent, FVector2DTarget, numberDeltaTime, numberInterpSpeed) — 以恒定速率向二维向量表示的目标位置移动 return -Location params Current -当前位置 params Target -目标位置 params DeltaTime -平滑时间 params InterpSpeed -插值速度
- **RotatorRInterpTo**(FRotatorCurrent, FRotatorTarget, numberDeltaTime, numberInterpSpeed) — 根据当前旋转角度平滑过渡到目标旋转角度，实现流畅的旋转效果 return -新的插值旋转角度 params Current -当前旋转角度 params Target -目标旋转角度 params DeltaTime -平滑时间 params InterpSpeed -插值速度
- **RotatorRInterpConstantTo**(FRotatorCurrent, FRotatorTarget, numberDeltaTime, numberInterpSpeed) — 以恒定速率向目标旋转角度旋转 return -Location params Current -当前旋转角度 params Target -目标旋转角度 params DeltaTime -平滑时间 params InterpSpeed -插值速度
- **VectorFindClosestPointOnSegment**(FVectorPoint, FVectorSegmentStart, FVectorSegmentEnd) — 查找线段上距离给定点最近的点 return -线段上距离给定点最近的点 params Point -需要计算最近点的目标点 params SegmentStart -线段起点 params SegmentEnd -线段终点
- **VectorFindClosestPointOnLine**(FVectorPoint, FVectorLineOrigin, FVectorLineDirection) — 找到无限长直线上距离给定点最近的点 return -Point params Point -需要计算最近点的目标点 params LineOrigin -直线上的参考点 params LineDirection -直线上的方向向量(无需归一化)
- **GetPointDistanceToSegment**(FVectorPoint, FVectorSegmentStart, FVectorSegmentEnd) — 计算点到线段的最短距离 return -点到线段的最短距离 params Point -需要计算最近点的目标点 params SegmentStart -线段起点 params SegmentEnd -线段终点
- **GetPointDistanceToLine**(FVectorPoint, FVectorLineOrigin, FVectorLineDirection) — 计算点到无限长直线的最短距离 return -点到直线上的最短距离 params Point -需要计算距离的目标 params LineOrigin -直线上的参考点 params LineDirection -直线上的方向向量(无需归一化)
- **VectorProjectVectorOnToPlane**(FVectorV, FVectorPlaneNormal) — 将向量投影到由法向量定义的平面上 return -投影后的向量 params V -需要投影的向量 params PlaneNormal -法向量
- **VectorNegateVector**(FVectorV) — 向量取反 return -取反后的向量 params V -需要取反的向量
- **VectorClampVectorSize**(FVectorV, numberMin, numberMax) — 将向量长度限制在最小值和最大值之间 return -限制长度后的向量 params V -需要限制长度的向量 params Min -最小长度 params Max -最大长度
- **GetMinElement**(FVectorV) — 找出向量中(X, Y或Z)的最小分量 return -最小分量 params V -需要计算最小分量的向量
- **GetMaxElement**(FVectorV) — 找出向量中(X, Y或Z)的最大分量 return -最大分量 params V -需要计算最大分量的向量
- **VectorGetDirectionUnitVector**(FVectorFrom, FVectorTo) — 计算从一个位置指向另一个位置的单位方向向量 return -单位方向向量 params From -起点 params To -终点
- **EqualName**(stringA, stringB) — 如果A和B相等则返回true (A == B) return -true or false params A -A params B -B
- **NotEqualName**(stringA, stringB) — 如果A和B不相等则返回true (A ~= B) return -true or false params A -A params B -B
- **BoxMakeBox**(FVectorMin, FVectorMax) — 通过最小点和最大点创建一个FBox，并将IsValid设为true return -FBox params Min -最小点 params Max -最大点
- **Box2DMakeBox2D**(FVector2DMin, FVector2DMax) — 通过最小点和最大点创建一个FBox2D，并将IsValid设为true return -FBox2D params Min -最小点 params Max -最大点
- **VectorMakeVector**(numberX, numberY, numberZ) — 创建一个向量 {X, Y, Z} return -向量 params X -X params Y -Y params Z -Z
- **BreakVector**(FVectorV) — 将向量分解为X、Y和Z分量 return -X,Y,Z params V -向量
- **Vector2DMakeVector2D**(numberX, numberY) — 创建一个二维向量 {X, Y} return -向量 params X -X params Y -Y
- **BreakVector2D**(FVector2DV) — 将二维向量分解为X和Y分量 return -X,Y params V -向量
- **VectorGetForwardVector**(FRotatorInRot) — 按给定旋转角度旋转世界前向向量 return -矩阵 params InRot -旋转角度
- **VectorGetRightVector**(FRotatorInRot) — 按给定旋转角度旋转世界右向量 return -矩阵 params InRot -旋转角度
- **VectorGetUpVector**(FRotatorInRot) — 按给定旋转角度旋转世界上向量 return -矩阵 params InRot -旋转角度
- **GetYawPitchFromVector**(FVectorV) — 将向量分解为Yaw(偏航角)和Pitch(俯仰角)旋转值(角度制，不限制范围) return -Yaw,Pitch params V -向量
- **RotatorMakeRotator**(numberRoll, numberPitch, numberYaw) — 使用以度数为单位提供的旋转值创建旋转器{Roll, Pitch, Yaw} return -矩阵 params Roll -Roll params Pitch -Pitch params Yaw -Yaw
- **RotatorFindLookAtRotation**(FVectorStart, FVectorTarget) — 查找一个物体在起始位置指向目标位置所需的旋转角度 return -矩阵 params Start -起始位置 params Target -目标位置
- **RotatorMakeRotFromX**(FVectorXAxis) — 仅使用X轴构建Rotator。Y和Z轴未指定但将保持正交归一。X轴无需归一化 return -矩阵 params XAxis -X轴
- **RotatorMakeRotFromY**(FVectorYAxis) — 仅使用Y轴构建Rotator。X和Z轴未指定但将保持正交归一。Y轴无需归一化 return -矩阵 params YAxis -Y轴
- **RotatorMakeRotFromZ**(FVectorZAxis) — 仅使用Z轴构建Rotator。X和Y轴未指定但将保持正交归一。Z轴无需归一化 return -矩阵 params ZAxis -Z轴
- **RotatorMakeRotFromXY**(FVectorXAxis, FVectorYAxis) — 使用给定的X和Y轴构建矩阵。X轴保持不变，Y轴会微调以确保正交性。Z轴将被计算得出。输入向量无需归一化 return -矩阵 params XAxis -X轴 params YAxis -Y轴
- **RotatorMakeRotFromXZ**(FVectorXAxis, FVectorZAxis) — 使用给定的X和Z轴构建矩阵。X轴保持不变，Z轴会微调以确保正交性。Y轴将被计算得出。输入向量无需归一化 return -矩阵 params XAxis -X轴 params ZAxis -Z轴
- **RotatorMakeRotFromYX**(FVectorYAxis, FVectorXAxis) — 使用给定的Y和X轴构建矩阵。Y轴保持不变，X轴会微调以确保正交性。Z轴将被计算得出。输入向量无需归一化 return -矩阵 params YAxis -Y轴 params XAxis -X轴
- **RotatorMakeRotFromYZ**(FVectorYAxis, FVectorZAxis) — 使用给定的Y和Z轴构建矩阵。Y轴保持不变，Z轴会微调以确保正交性。X轴将被计算得出。输入向量无需归一化 return -矩阵 params YAxis -Y轴 params ZAxis -Z轴
- **RotatorMakeRotFromZX**(FVectorZAxis, FVectorXAxis) — 使用给定的Z和X轴构建矩阵。Z轴保持不变，X轴会微调以确保正交性。Y轴将被计算得出。输入向量无需归一化 return -矩阵 params ZAxis -Z轴 params XAxis -X轴
- **RotatorMakeRotFromZY**(FVectorZAxis, FVectorYAxis) — 使用给定的Z和Y轴构建矩阵。Z轴保持不变，Y轴会微调以确保正交性。X轴将被计算得出。输入向量无需归一化 return -矩阵 params ZAxis -Z轴 params YAxis -Y轴
- **BreakRotator**(FRotatorRotator) — 将Rotator分解为{Roll, Pitch, Yaw}角度值(单位:度) return -Roll,Pitch,Yaw params Rotator -Rotator
- **TransformMakeTransform**(FVectorLocation, FRotatorRotation, FVectorScale) — 根据位置、旋转和缩放创建Transform return -transformFVecto params Location -位置 params Rotation -旋转 params Scale -缩放
- **FVectorBreakTransform**(FTransformTransform) — 将transform分解为{Location, Rotation, Scale}值 return -Location,Rotation,Scale params Transform -Transform
- **LinearColorConv_VectorToLinearColor**(FVectorVector) — 将向量转换为LinearColor return -LinearColor params Vector -向量
- **LinearColorConv_ColorToLinearColor**(FColorColor) — 将Color转换为LinearColor return -LinearColor params Color -Color
- **ColorConv_LinearColorToColor**(FLinearColorLinearColor) — 将LinearColor转换为Color return -Color params LinearColor -LinearColor
- **Vector2DConv_VectorToVector2D**(FVectorVector) — 将向量转换为二维向量 return -二维向量 params Vector -向量
- **VectorConv_Vector2DToVector**(FVector2DVector2D) — 将二维向量转换为向量 return -向量 params Vector2D -二维向量
- **LinearColorHSVToRGB**(numberH, numberS, numberV, numberA) — 根据HSV分量创建颜色 return -Color params H -色相 params S -饱和度 params V -明度 params A -透明度
- **RGBToHSV**(FLinearColorColor) — 将颜色分解为单独的HSV分量（以及透明度） return -H,S,V,A params Color -Color
- **LinearColorConv_HSVToRGB**(FLinearColorHSV) — 将HSV线性颜色转换为RGB颜色（其中H在R分量，S在G分量，V在B分量） return -RGB params HSV -HSV
- **LinearColorConv_RGBToHSV**(FLinearColorRGB) — 将RGB线性颜色转换为HSV（其中H存储在R分量，S存储在G分量，V存储在B分量） return -HSV params RGB -RGB
- **LinearColorHexToRGB**(stringHexString, booleanbSRGB) — 将十六进制颜色字符串转换为RGB return -RGB params HexString -十六进制颜色字符串 params bSRGB -是否使用sRGB颜色空间
- **RGBToHex**(FLinearColorRGB, booleanbSRGB) — 将RGB颜色转换为十六进制字符串 return -十六进制颜色字符串 params RGB -RGB params bSRGB -是否使用sRGB颜色空间
- **RotatorConv_VectorToRotator**(FVectorXAxis) — 创建一个使X轴朝向指定方向向量的Rotator return -Rotator params XAxis -X轴
- **VectorConv_RotatorToVector**(FRotatorRotator) — 获取旋转后的X轴方向向量 return -X轴 params Rotator -Rotator
- **VectorTransformLocation**(FTransformT, FVectorLocation) — 使用指定的变换矩阵转换位置坐标 例如：若T是某物体的变换矩阵，此操作会将局部坐标系的位置转换到世界坐标系 return -世界坐标系下的位置 params T -变换矩阵 params Location -局部坐标系下的位置
- **VectorTransformDirection**(FTransformT, FVectorDirection) — 使用指定的变换矩阵转换方向向量 - 不会改变向量长度 例如：若T是某物体的变换矩阵，此操作会将局部坐标系的方向向量转换到世界坐标系 return -世界坐标系下的方向向量 params T -变换矩阵 params Direction -局部坐标系下的方向向量
- **RotatorTransformRotation**(FTransformT, FRotatorRotation) — 使用指定的变换矩阵转换Rotator 例如：若T是某物体的变换矩阵，此操作会将局部坐标系的旋转转换到世界坐标系 return -世界坐标系下的旋转 params T -变换矩阵 params Rotation -局部坐标系下的旋转
- **RandomBool**(随机返回 true 或 false，概率各占 50% return -true或false)
- **RandomBoolWithWeight**(numberWeight) — 根据指定权重获取随机概率结果。权重范围为 0.0 - 1.0 例如：权重 = 0.6，返回值将有 60% 的概率为 True return -true或false params Weight -权重
- **RandomInteger**(numberMax) — 返回一个随机数，范围在0到Max - 1之间，每个数出现的概率相同 return -随机数 params Max -最大值
- **Clamp**(numberValue, numberMin, numberMax) — 返回限制在A和B之间的值(包含A和B) return -限制后的值 params Value -值 params Min -最小值 params Max -最大值
- **RandomIntegerInRange**(numberMin, numberMax) — 返回Min和Max之间的随机整数(包含Min和Max) return -随机整数 params Min -最小值 params Max -最大值
- **IsPointInBox**(FVectorPoint, FVectorBoxOrigin, FVectorBoxExtent) — 判断给定点是否在盒子内（包括在盒子边界上的点） return -如果点在盒子内则返回true；否则返回false params Point -要测试的点 params BoxOrigin -盒子的原点 params BoxExtent -盒子在各个轴上的范围（从原点出发的距离）
- **IsPointInBoxWithTransform**(FVectorPoint, FTransformBoxWorldTransform, FVectorBoxExtent) — 判断给定点是否在具有特定变换的盒子内（包含边界点) return -如果点在盒子内则返回true；否则返回false params Point -要测试的点 params BoxWorldTransform -盒子从组件空间到世界空间的变换 params BoxExtent -盒子在组件空间中的范围（各轴距原点的距离）
- **EqualRotator**(FRotatorA, FRotatorB, numberErrorTolerance) — 检查Rotator A 和 B 是否在指定误差范围内相等 (A == B) return -如果旋转量A和B在误差范围内相等则返回true；否则返回false params A -旋转量A params B -旋转量B params ErrorTolerance -误差范围
- **NotEqualRotator**(FRotatorA, FRotatorB, numberErrorTolerance) — 检查Rotator A 和 B 是否在指定误差范围内不相等 (A != B) return -如果旋转量A和B在误差范围内不相等则返回true；否则返回false params A -旋转量A params B -旋转量B params ErrorTolerance -误差范围
- **RotatorComposeRotators**(FRotatorA, FRotatorB) — 组合两个旋转，返回先应用A再应用B的结果旋转 return -先应用A再应用B的结果旋转 params A -旋转量A params B -旋转量B
- **FVectorGetAxes**(FRotatorRotator) — 获取该旋转对应的前向、右向和上向三个基准方向向量 return -前向向量,右向向量,上向向量 params Rotator -旋转量
- **RotatorNormalRotator**(FRotatorA) — 标准化Rotator return -标准化后的旋转量 params A -旋转量
- **RotatorRandomRotator**(booleanbRoll) — 生成一个随机旋转角度，可选择是否包含绕Z轴的随机旋转 return -随机旋转量 params bRoll -是否包含绕Z轴的随机旋转
- **RotatorRLerp**(FRotatorA, FRotatorB, numberAlpha, booleanbShortestPath) — 基于Alpha值在A和B之间线性插值（Alpha=0时返回100%A，Alpha=1时返回100%B） return -线性插值后的值 params A -起始旋转量 params B -目标旋转量 params Alpha -插值比例（0-1） params bShortestPath -是否采用最短路径插值 Sin Asin Cos Acos Tan Atan DegSin DegAsin DegCos DegAcos DegTan DegAtan DegAtan2 RandomFloat RandomFloatInRange Lerp FClamp MapRangeClamped Nea

## UGCMessageSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMessageSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCMessageSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMessageSystem](https://developer.gp.qq.com/api/#/searchContent/UGCMessageSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCMessageSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMessageSystem)

类

全文搜索

游戏聊天通用接口库

---


## 函数

- **CampMessageChannel**(numberPlayerKey, numberCampID) — 阵营聊天 开局分阵营或阵营变更时同步阵营信息，创建阵营的聊天室 生效范围：服务器 params PlayerKey -玩家的 PlayerKey params CampID -阵营 ID（传入0为无阵营）
- **SendSystemMessageToPlayer**(numberPlayerKey, stringMessageTag, stringMessageContent, numberLevel) — 给单独玩家发送系统消息 生效范围：服务器 return -是否发送成功 params PlayerKey -玩家 PlayerKey params MessageTag -消息标题 params MessageContent -消息内容 params Level -消息等级
- **SendSystemMessageToAll**(stringMessageTag, stringMessageContent, numberLevel) — 给所有玩家发送系统消息 生效范围：服务器 return -是否发送成功 params MessageTag -消息标题 params MessageContent -消息内容 params Level -消息等级 JoinCampMessageChannel SendSystemMessageToPlayer SendSystemMessageToAll

## UGCMiscFunctionSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMiscFunctionSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCMiscFunctionSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMiscFunctionSystem](https://developer.gp.qq.com/api/#/searchContent/UGCMiscFunctionSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCMiscFunctionSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMiscFunctionSystem)

类

全文搜索

游戏杂项函数接口库

---


## 函数

- **AirRoute**(UObjectWorldObjectContext) — 开始航线飞行 生效范围：服务器 params WorldObjectContext -世界上下文对象
- **AirDrop**(UObjectWorldObjectContext, numberIndex, EAirDropTypeAirDropType) — 【废弃】请使用 UGCAirDropManagerSystem 开始空投 生效范围：服务器 params WorldObjectContext -世界上下文对象 params Index -定时普通空投设置中的配置序号（AirDropConfigsUGC） params AirDropType -空投箱空投类型一般为 EAirDropType.AirDrop_NormalAirDrop
- **NormalAirDrop**(UObjectWorldObjectContext, Vector2DStartPos, Vector2DDropPos, numberDistance, EAirDropTypeAirDropType) — 【废弃】请使用 UGCAirDropManagerSystem 自定义空投 生效范围：服务器 params WorldObjectContext -世界上下文对象 params StartPos -飞机起始点,结构：{X=x,Y=y} params DropPos -飞机结束点，结构：{X=x,Y=y} params Distance -空投点距离起始点的比例 （0-1）的一个范围，0=StartPos，1=DropPos params AirDropType -空投箱空投类型一般为EAirDropType.AirDrop_NormalAirDrop StartAirRoute StartAi

## UGCMobPawnSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMobPawnSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCMobPawnSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMobPawnSystem](https://developer.gp.qq.com/api/#/searchContent/UGCMobPawnSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCMobPawnSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMobPawnSystem)

类

全文搜索

怪物系统接口库

---


## 函数

- **ActorSpawnMob**(UObjectWorldContextObject, UClassMobClass, FVectorLocation, FRotatorRotation) — 在目标位置刷一个怪 生效范围：服务器 return -刷出的怪物 params WorldContextObject -世界上下文对象 params MobClass -怪物的类 params Location -刷怪的位置 params Rotation -刷出怪物的朝向
- **ActorSpawnMobByMobGroup**(UObjectWorldContextObject, numberMobGroupID, FVectorLocation, FRotatorRotation) — 在目标位置根据怪物组表中的ID刷一个怪 生效范围：服务器 return -刷出的怪物 params WorldContextObject -世界上下文对象 params MobGroupID -怪物组表中的ID params Location -刷怪的位置 params Rotation -刷出怪物的朝向
- **RangeSpawnMobs**(UObjectWorldContextObject, UClassMobClass, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberCount) — 在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪 生效范围：服务器 return -刷出怪物的列表 params WorldContextObject -世界上下文对象 params MobClass -怪物的类 params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params Count -刷出怪物的数量
- **RangeSpawnMobsByMobGroup**(UObjectWorldContextObject, numberMobGroupID, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberCount) — 在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪，怪物类型由怪物组表ID指定 生效范围：服务器 return -刷出怪物的列表 params WorldContextObject -世界上下文对象 params MobGroupID -怪物组表中的ID params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params Count -刷出怪物的数量
- **SpawnMobsOnTime**(UObjectWorldContextObject, UClassMobClass, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberMinSpawnCountPerLoop, numberMaxSpawnCountPerLoop, numberLoopTimes, numberIntervalMin) — 在指定位置的圆形范围中每隔一定时间寻找合适的地面刷出一定数量的怪 生效范围：服务器 params WorldContextObject -世界上下文对象 params MobClass -怪物类 params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params MinSpawnCountPerLoop -每次刷怪的最小数量 params MaxSpawnCountPerLoop -每次刷怪的最大数量 params Loo
- **SpawnMobsByMobGroupOnTime**(UObjectWorldContextObject, numberMobGroupID, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberMinSpawnCountPerLoop, numberMaxSpawnCountPerLoop, numberLoopTimes, numberIntervalM) — 在指定位置的圆形范围中每个一定时间寻找合适的地面刷出一定数量的怪 生效范围：服务器 params WorldContextObject -世界上下文对象 params MobGroupID -怪物组表中的ID params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params MinSpawnCountPerLoop -每次刷怪的最小数量 params MaxSpawnCountPerLoop -每次刷怪的最大数量 par

## UGCMultiMode

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMultiMode?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCMultiMode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMultiMode](https://developer.gp.qq.com/api/#/searchContent/UGCMultiMode?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCMultiMode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMultiMode)

类

全文搜索

多模式匹配通用接口库

---


## 函数

- **ModeChooseUIVisible**(booleanVisible) — 设置模式选择 UI 的显示/隐藏 生效范围：客户端 params Visible -设置为显示/隐藏
- **SetModeState**(numberModeID, booleanModeAvailability) — 设置模式选择 UI 的子模式可选择状态 生效范围：客户端 return -操作是否成功 params ModeID -模式 ID params ModeAvailability -设置为可用/不可用
- **GetModeID**(获取当前模式 ID 生效范围：服务器&客户端 return -当前模式 ID，若不存在则返回 0)
- **SetModeChooseButtonVisible**(booleanVisible) — 设置模式选择打开按钮的显示/隐藏 生效范围：客户端 return -操作是否成功 params Visible -设置为显示/隐藏
- **PlayerFill**(booleanbPlayerFill) — 开启/关闭补人 生效范围：服务器 params bPlayerFill -目标状态
- **RequestMatch**(numberSubModeID, functionResCallBack, UObjectObj, booleanIsTeamUnfill) — 开始匹配 生效范围：客户端 return -是否请求匹配成功 params SubModeID -子模式 ID params ResCallBack -一个接受 bool 入参的回调函数，发起匹配的结果返回后会调用该函数 params Obj -回调函数所属的对象 params IsTeamUnfill -是否允许不匹配队友开始匹配
- **RequestCancelMatch**(请求取消匹配 生效范围：客户端 return -请求是否发送成功)
- **ReadyMatch**(booleanbReady) — 请求进入准备匹配状态 生效范围：客户端 params bReady -是否准备匹配
- **StatusOfReadyMatchQueryStatusOfReadyMatch**(numberUID) — 查询准备匹配的状态 生效范围：客户端 return -准备匹配的状态 params UID -玩家 UID，可选，如果传入 nil 或者不传入，那么获取自己的准备匹配状态
- **SettingGetModeSetting**(numberModeID) — 获取指定ModeID的配置 生效范围：服务器&客户端 return -ModeID对应的设置 params ModeID -ModeID SetModeChooseUIVisible SetModeState GetModeID SetModeChooseButtonVisible SetPlayerFill RequestMatch RequestCancelMatch RequestReadyMatch QueryStatusOfReadyMatch GetModeSetting

## 属性

- **bSuccess** — boolean @是否匹配成功。通常来说 true 则把匹配界面切换到匹配中的状态，false 则把匹配界面切换到尚未开始匹配的状态 UGCMultiMode.NotifyMatchSucceededDelegate 通知在“匹配中”的玩家，匹配成功，即将进入新的对局游戏 生效范围：客户端 UGCMultiMode.NotifyStatusOfReadyMatchChangedDelegate 通知准备匹配的状态变化 生效范围：客户端 @param UID number @玩家 UID @param NewStatus EStatusOfReadyMatch @新的准备匹配的状态 @param

## UGCNavigationSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCNavigationSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCNavigationSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCNavigationSystem](https://developer.gp.qq.com/api/#/searchContent/UGCNavigationSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCNavigationSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCNavigationSystem)

类

全文搜索

寻路导航系统接口库

---


## 函数

- **Navmesh**(UObjectWorldContext, FNameAgentName) — 同步生成全地图寻路图, 会阻塞服务器运行 生效范围：服务器 params WorldContext -当前世界上下文 params AgentName -作用Agent的寻路图名称一般为"Mannequin"
- **BuildNavmesh**(UObjectWorldContext, FNameAgentName) — 异步生成全地图寻路图 生效范围：服务器 params WorldContext -当前世界上下文 params AgentName -作用Agent的寻路图名称一般为"Mannequin"
- **AddDynamicNavAffect**(UObjectWorldContext, FNameAgentName, FBoxInBounds) — 添加寻路图动态影响区域，标记后可只针对该区域增量更新寻路 生效范围：服务器 return -操作结果 params WorldContext -当前世界上下文 params AgentName -作用Agent的寻路图名称一般为"Mannequin" params InBounds -区域大小
- **AsyncIncrementalBuild**(UObjectWorldContext, FNameAgentName) — 区域异步增量生成寻路图，和AddDynamicNavAffect配合使用 生效范围：服务器 return -操作结果 params WorldContext -当前世界上下文 params AgentName -作用Agent的寻路图名称一般为"Mannequin"
- **FVectorProjectPointToNavigation**(UObjectWorldContext, FVectorPoint, FVectorQueryExtent) — 投影点到寻路图上的位置 生效范围：服务器 return -操作结果, @投影位置 params WorldContext -当前世界上下文 params Point -要投影的点 params QueryExtent -投影查询范围
- **FVectorGetRandomReachablePointInRadius**(UObjectWorldContext, FVectorOrigin, floatRadius) — 范围获取随机可寻路到达点位 生效范围：服务器 return -操作结果， @可达位置 params WorldContext -当前世界上下文 params Origin -查找原点 params Radius -查询范围
- **IsNavigationBeingBuilt**(UObjectWorldContext) — 寻路图是否构建 生效范围：服务器 return -查询结果 params WorldContext -当前世界上下文
- **GetNavigationGenerationFinishedDelegate**(UObjectWorldContext) — 获取寻路图生成结束Delegate 生效范围：服务器 return -寻路图生成结束Delegate params WorldContext -当前世界上下文 BuildNavmesh AsyncBuildNavmesh AddDynamicNavAffect AsyncIncrementalBuild ProjectPointToNavigation GetRandomReachablePointInRadius IsNavigationBeingBuilt GetNavigationGenerationFinishedDelegate

## UGCObjectUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCObjectUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCObjectUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCObjectUtility](https://developer.gp.qq.com/api/#/searchContent/UGCObjectUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCObjectUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCObjectUtility)

类

全文搜索

UObject基础接口库

---


## 函数

- **ClassFindClass**(stringInClassName) — 通过类名(短路径)寻找类 生效范围：服务器&客户端 return -检索到的类 params InClassName -类名
- **ClassLoadClass**(stringInClassPath) — 通过完整路径加载类，具体路径可以点击 "右键" - "copy reference" 得到路径 生效范围：服务器&客户端 return -加载完成的类 params InClassPath -类的路径
- **AsyncLoadClass**(stringInClassPath, functionCallback, UObjectCallback_self) — 通过完整路径异步加载蓝图 Class，路径规则与 LoadClass 相同 生效范围：服务器&客户端 return -加载是否成功 params InClassPath -类的路径 params Callback -lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) params Callback_self -这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
- **ObjectFindObject**(stringInObjectName) — 通过对象名寻找对象，会遍历所有包进行寻找，性能较差，且如果出现冲突，会有警告且返回其中一个 生效范围：服务器&客户端 return -检索到的对象 params InObjectName -对象名
- **ObjectLoadObject**(stringInObjectPath) — 通过完整路径加载对象，性能较好 生效范围：服务器&客户端 return -加载的对象 params InObjectPath -对象的路径
- **AsyncLoadObject**(stringInObjectPath, functionCallback, UObjectCallback_self) — 通过完整路径异步加载Object 生效范围：服务器&客户端 return -加载是否成功 params InObjectPath -对象的路径 params Callback -lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) params Callback_self -这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
- **ObjectNewObject**(UObjectOuter, UClassInClass, stringInObjectName) — 通过包名，类名和对象名创建对象 生效范围：服务器&客户端 return -创建的对象 params Outer -Outer 对象 params InClass -类 params InObjectName -对象名
- **NewStruct**(stringInStructName, any...) — 创建新结构体对象，优先从已有的对象中查找是否有已创建对象。可传递结构体的构造参数，仅已导出结构体支持构造时赋值，传递非法参数时不保证结果正常。 return -新创建的结构体 params InStructName -不带 F 的结构体名字（比如 "Transform"、"ItemDefineID"） params ... -结构体的构造参数
- **NewStructAsTable**(stringInStructName, any...) — 以 lua table 形式创建新结构体，优先从已有的对象中查找是否有已创建对象。可传递结构体的构造参数，传递非法参数时不保证结果正常。 return -新创建的结构体 table params InStructName -不带 F 的结构体名字（比如 "Transform"、"ItemDefineID"） params ... -结构体的构造参数
- **ClassGetObjectClass**(UObjectInObject) — 通过一个对象获取对应的类 生效范围：服务器&客户端 return -对应的类 params InObject -对象实例
- **ObjectGetObjectOuter**(UObjectInObject) — 通过一个对象获取对应的包 生效范围：服务器&客户端 return -传入对象的 Outer 对象 params InObject -对象实例
- **GetObjectName**(UObjectInObject) — 获取对象的名字 生效范围：服务器&客户端 return -对象的名字 params InObject -对象实例
- **GetObjectFullName**(UObjectInObject) — 获取对象的类名以及完整路径 生效范围：服务器&客户端 return -对象的类以及完整路径 params InObject -对象实例
- **GetObjectPathName**(UObjectInObject) — 获取对象的完整路径 生效范围：服务器&客户端 return -对象的完整路径 params InObject -对象实例
- **IsObjectValid**(UObjectInObject) — 判断对象是否有效 生效范围：服务器&客户端 return -对象是否有效的判断结果 params InObject -对象实例
- **IsA**(UObjectInObject, UClassInClass) — 判断一个对象是否是特定类的实例 生效范围：服务器&客户端 return -对象是否是特定类的实例的判断结果 params InObject -对象实例 params InClass -类
- **AsGarbage**(UObjectInObject) — 删除对象，将对象标记为带回收的垃圾 生效范围：服务器&客户端 params InObject -对象实例
- **SoftObjectPathMakeSoftObjectPath**(stringInObjectPath) — 通过完整对象路径创建软路径 生效范围：服务器&客户端 return -创建的软路径 params InObjectPath -对象的路径
- **GetPathBySoftObjectPath**(FSoftObjectPathInSoftObjectPath) — 获取软路径获取对象完整路径 生效范围：服务器&客户端 return -对象的完整路径 params InSoftObjectPath -对象的软路径
- **LoadObjectBySoftPath**(FSoftObjectPathInSoftObjectPath) — 通过软路径加载对象 生效范围：服务器&客户端 return -加载是否成功 params InSoftObjectPath -对象的软路径
- **AsyncLoadObjectBySoftPath**(FSoftObjectPathInSoftObjectPath, functionCallback, UObjectCallback_Self) — 通过软路径异步加载对象 生效范围：服务器&客户端 return -加载是否成功 params InSoftObjectPath -对象的软路径 params Callback -lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) params Callback_Self -这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil
- **GetAllActorsOfClass**(UObjectWorldContextObject, UClassActorClass) — 【废弃】请使用UGCActorComponentUtility.GetAllActorsOfClass 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContextObject -世界中任意对象 params ActorClass -要找的Actor对应的类。必须指定，否则结果数组将为空
- **ReferencedObject**(UObjectObject) — 移除引用关联（如果有UObject泄露等问题，可用此函数手动释放Lua侧对UObject的引用） 生效范围：服务器&客户端 params Object -需要释放引用的 UObject
- **GetObjectsOfClass**(UClassClass, booleanbIncludeDerivedClasses) — 以 lua table 形式获取某个类的所有对象列表 return -找到的 UObject 数组 params Class -要找的 UObject 对应的类 params bIncludeDerivedClasses -是否包括派生类
- **GetObjectsWithOuter**(UObjectOuter, booleanbIncludeNestedObjects) — 以 lua table 形式获取以目标对象为 Outer 的所有 UObject 列表 return -找到的 UObject 数组 params Outer -Outer 对象 params bIncludeNestedObjects -是否包括嵌套对象
- **ClassIsChildOf**(UClassTestClass, UClassParentClass) — 判断一个类是否是另一个类的子类 return -如果TestClass等于ParentClass，或者TestClass是ParentClass的子类则返回true；否则返回false。如果任一参数为'None'也返回false params TestClass -子类 params ParentClass -父类
- **GetDisplayName**(UObjectObject) — 获取对象的显示名称 生效范围：服务器&客户端 return -对象的显示名称 params Object -对象实例
- **ObjectGetClassDefaultObject**(UClassClass) — 获取类默认对象 生效范围：服务器&客户端 return -类默认对象 params Class -类
- **ObjectPtrMakeWeakObjectPtr**(UObjectInObject) — 创建弱对象指针 生效范围：服务器 & 客户端 return -弱对象指针 params InObject -对象
- **ObjectGetObjectFromWeakObjectPtr**(WeakObjectPtrInWeakObjectPtr) — 从弱对象指针获取对象 生效范围：服务器 & 客户端 return -对象 params InWeakObjectPtr -弱对象指针
- **IsWeakObjectPtrValid**(WeakObjectPtrInWeakObjectPtr) — 判断弱对象指针是否有效 生效范围：服务器 & 客户端 return -是否有效 params InWeakObjectPtr -弱对象指针 FindClass LoadClass AsyncLoadClass FindObject LoadObject AsyncLoadObject NewObject NewStruct NewStructAsTable GetObjectClass GetObjectOuter GetObjectName GetObjectFullName GetObjectPathName IsObjectValid IsA MarkAsGarbage MakeSoft

## UGCPawnAttrSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPawnAttrSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPawnAttrSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPawnAttrSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPawnAttrSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPawnAttrSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPawnAttrSystem)

类

全文搜索

【废弃】角色属性系统接口库

---


## 函数

- **Health**(PlayerPawnPlayerPawn, numberHealth) — 【废弃】请使用 UGCAttributeSystem 设置血量(不会超过最大血量) 生效范围：服务器 params PlayerPawn -玩家角色 params Health -血量
- **GetHealth**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取当前血量 生效范围：服务器&客户端 return -血量 params PlayerPawn -玩家角色
- **HealthMax**(PlayerPawnPlayerPawn, numberHealthMax) — 【废弃】请使用 UGCAttributeSystem 设置血量上限（当前血量不会变化） 生效范围：服务器 params PlayerPawn -玩家角色 params HealthMax -最大血量
- **GetHealthMax**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取血量上限 生效范围：服务器&客户端 return -最大血量 params PlayerPawn -玩家角色
- **Signal**(PlayerPawnPlayerPawn, numberSignal) — 【废弃】请使用 UGCAttributeSystem 设置信号值（不会超过最大值） 生效范围：服务器 params PlayerPawn -玩家角色 params Signal -信号值
- **GetSignal**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取信号值 生效范围：服务器&客户端 return -信号值 params PlayerPawn -玩家角色
- **GetSignalMax**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取信号值上限 生效范围：服务器&客户端 return -最大信号值 params PlayerPawn -玩家角色
- **Energy**(PlayerPawnPlayerPawn, numberEnergy) — 【废弃】请使用 UGCAttributeSystem 设置能量值（设置的值不能超过能量值上限[默认100]） 生效范围：服务器 params PlayerPawn -玩家角色 params Energy -能量值
- **GetEnergy**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取能量值 生效范围：服务器&客户端 return -能量值 params PlayerPawn -玩家角色
- **GetEnergyMax**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取能量值上限 生效范围：服务器&客户端 return -最大能量值 params PlayerPawn -玩家角色
- **SpeedScale**(PlayerPawnPlayerPawn, numberSpeedScale) — 【废弃】请使用 UGCAttributeSystem 设置移动速度总系数，影响走路、冲刺、蹲下、趴下与游泳速度 注：该接口已废弃，请改用其他各移动状态的速度修改接口 生效范围：服务器 params PlayerPawn -玩家角色 params SpeedScale -移动速度总系数
- **GetSpeedScale**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取移动速度总系数 生效范围：服务器&客户端 return -移动速度总系数 params PlayerPawn -玩家角色
- **GetWalkSpeedScale**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取走路移动速度系数 生效范围：服务器&客户端 return -走路移动速度系数 params PlayerPawn -玩家角色
- **WalkSpeedScale**(PlayerPawnPlayerPawn, numberWalkSpeedScale) — 【废弃】请使用 UGCAttributeSystem 设置走路移动速度系数 生效范围：服务器 params PlayerPawn -玩家角色 params WalkSpeedScale -走路移动速度系数
- **GetSprintSpeedScale**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取疾跑移动速度系数 生效范围：服务器&客户端 return -疾跑移动速度系数 params PlayerPawn -玩家角色
- **SprintSpeedScale**(PlayerPawnPlayerPawn, numberSprintSpeedScale) — 【废弃】请使用 UGCAttributeSystem 设置疾跑移动速度系数 生效范围：服务器 params PlayerPawn -玩家角色 params SprintSpeedScale -疾跑移动速度系数
- **GetCrouchSpeedScale**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取蹲下移动速度系数 生效范围：服务器&客户端 return -蹲下移动速度系数 params PlayerPawn -玩家角色
- **CrouchSpeedScale**(PlayerPawnPlayerPawn, numberCrouchSpeedScale) — 【废弃】请使用 UGCAttributeSystem 设置蹲下移动速度系数 生效范围：服务器 params PlayerPawn -玩家角色 params CrouchSpeedScale -蹲下移动速度系数
- **GetProneSpeedScale**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取趴下移动速度系数 生效范围：服务器&客户端 return -趴下移动速度系数 params PlayerPawn -玩家角色
- **ProneSpeedScale**(PlayerPawnPlayerPawn, numberProneSpeedScale) — 【废弃】请使用 UGCAttributeSystem 设置趴下移动速度系数 生效范围：服务器 params PlayerPawn -玩家角色 params ProneSpeedScale -趴下移动速度系数
- **GetSwimSpeedScale**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取游泳移动速度系数 生效范围：服务器&客户端 return -游泳移动速度系数 params PlayerPawn -玩家角色
- **SwimSpeedScale**(PlayerPawnPlayerPawn, numberSwimSpeedScale) — 【废弃】请使用 UGCAttributeSystem 设置游泳移动速度系数 生效范围：服务器 params PlayerPawn -玩家角色 params SwimSpeedScale -游泳移动速度系数
- **GetCurrentFOVTPP**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取当前第三人称视角FOV 生效范围：客户端 return -当前FOV params PlayerPawn -玩家角色
- **CurrentFOVTPP**(PlayerPawnPlayerPawn, numberCurrentFOV) — 【废弃】请使用 UGCAttributeSystem 设置当前第三人称视角FOV 生效范围：客户端 params PlayerPawn -玩家角色 params CurrentFOV -FOV
- **GetCanSwitchFPP**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取是否可以切换至第一人称视角 生效范围：客户端 return -是否可切换至第一人称 params PlayerPawn -玩家角色
- **CanSwitchFPP**(PlayerPawnPlayerPawn, booleanCanSwitchFPP) — 【废弃】请使用 UGCAttributeSystem 设置是否可以切换至第一人称视角 生效范围：客户端 params PlayerPawn -玩家角色 params CanSwitchFPP -是否可切换至第一人称
- **GetCurrentFOVFPP**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取当前第一人称视角FOV 生效范围：客户端 return -当前第一人称FOV params PlayerPawn -玩家角色
- **CurrentFOVFPP**(PlayerPawnPlayerPawn, numberCurrentFOV_FPP) — 【废弃】请使用 UGCAttributeSystem 设置当前第一人称视角FOV 生效范围：客户端 params PlayerPawn -玩家角色 params CurrentFOV_FPP -FOV
- **GetHearRadius**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取听觉半径 生效范围：服务器&客户端 return -半径 params PlayerPawn -玩家角色
- **GetPickUpRadius**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取拾取半径 生效范围：服务器&客户端 return -半径 params PlayerPawn -玩家角色
- **GetShowPlayerName**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取是否显示玩家名称 生效范围：客户端 return -显示玩家名称 params PlayerPawn -玩家角色
- **ShowPlayerName**(PlayerPawnPlayerPawn, booleanShowPlayerName) — 【废弃】请使用 UGCAttributeSystem 设置是否显示玩家名称 生效范围：客户端 params PlayerPawn -玩家角色 params ShowPlayerName -显示玩家名称
- **GetIsAI**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取是否AI 生效范围：服务器&客户端 return -是否AI params PlayerPawn -玩家角色
- **GetPlayerName**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取玩家名称 生效范围：服务器&客户端 return -玩家名称 params PlayerPawn -玩家角色
- **GetPlayerKey**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取字符串玩家PlayerKey 生效范围：服务器&客户端 return -玩家PlayerKey params PlayerPawn -玩家角色
- **GetPlayerKeyInt64**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取64位玩家Key 生效范围：服务器&客户端 return -玩家Key params PlayerPawn -玩家角色
- **GetPlayerUID**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取玩家UID 生效范围：服务器&客户端 return -玩家 UID params PlayerPawn -玩家角色
- **GetPlayerTeamIndex**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取玩家队伍中序号（非TeamID，而是玩家在队伍中的序号） 生效范围：服务器&客户端 return -玩家UID params PlayerPawn -玩家角色
- **CharacterJumpTypeGetJumpType**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取跳跃类型 生效范围：服务器&客户端 return -跳跃类型 params PlayerPawn -玩家角色
- **GetJumpHeight**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取跳跃高度 生效范围：服务器&客户端 return -跳跃高度 params PlayerPawn -玩家角色
- **GetJumpZVelocity**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取跳跃时的初速度 生效范围：服务器&客户端 return -跳跃时的初速度 params PlayerPawn -玩家角色
- **JumpZVelocity**(PlayerPawnPlayerPawn, numberJumpZVelocity) — 【废弃】请使用 UGCAttributeSystem 设置跳跃时的初速度 生效范围：服务器 params PlayerPawn -玩家角色 params JumpZVelocity -跳跃时的初速度
- **GetStandHalfHeight**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取站立半高 生效范围：服务器&客户端 return -站立半高 params PlayerPawn -玩家角色
- **GetStandRadius**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取站立半径 生效范围：服务器&客户端 return -站立半径 params PlayerPawn -玩家角色
- **GetCrouchHalfHeight**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取蹲伏半高 生效范围：服务器&客户端 return -蹲伏半高 params PlayerPawn -玩家角色
- **GetProneHalfHeight**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取匍匐半高 生效范围：服务器&客户端 return -匍匐半高 params PlayerPawn -玩家角色
- **GetTeamID**(PlayerPawnPlayerPawn) — 【废弃】请使用 UGCAttributeSystem 获取TeamID 生效范围：服务器&客户端 return -队伍ID params PlayerPawn -玩家角色 SetHealth GetHealth SetHealthMax GetHealthMax SetSignal GetSignal GetSignalMax SetEnergy GetEnergy GetEnergyMax SetSpeedScale GetSpeedScale GetWalkSpeedScale SetWalkSpeedScale GetSprintSpeedScale SetSprintSpeedScal

## UGCPawnSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPawnSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPawnSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPawnSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPawnSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPawnSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPawnSystem)

类

全文搜索

角色系统接口库（废弃，已迁移到 UGCPlayerPawnSystem）

---


## 函数

- **HasPawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 【废弃】已迁移到 UGCPlayerPawnSystem 是否在指定状态下 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **AllowPawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 【废弃】已迁移到 UGCPlayerPawnSystem 是否允许进入指定状态 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **SwitchPoseState**(PlayerPawnPlayerPawn, ESTEPoseStatePoseState) — 【废弃】已迁移到 UGCPlayerPawnSystem 切换 Pose 状态 生效范围：客户端 params PlayerPawn -玩家角色 params PoseState -角色状态
- **EnterPawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 【废弃】已迁移到 UGCPlayerPawnSystem 进入指定状态 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **LeavePawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 【废弃】已迁移到 UGCPlayerPawnSystem 离开指定状态 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **PawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState, boolIsDisabled) — 【废弃】已迁移到 UGCPlayerPawnSystem 禁用指定状态 生效范围：服务器 params PlayerPawn -玩家角色 params PawnState -角色状态 params IsDisabled -是否禁用
- **GetIsFPP**(PlayerPawnPlayerPawn) — 【废弃】已迁移到 UGCPlayerPawnSystem 获取是否第一人称视角 生效范围：服务器&客户端 return -是不是 FPP 模式
- **SetIsFPP**(PlayerPawnPlayerPawn, boolIsFPP, boolbForce) — 【废弃】已迁移到 UGCPlayerPawnSystem 设置是否第一人称视角 生效范围：服务器 return -设置是否成功 params PlayerPawn -玩家角色 params IsFPP -是否第一人称 params bForce -强制设置人称
- **GetIsTPP**(PlayerPawnPlayerPawn) — 【废弃】已迁移到 UGCPlayerPawnSystem 获取是否第三人称视角 生效范围：服务器&客户端 return -是否第三人称
- **SetIsTPP**(PlayerPawnPlayerPawn, boolIsTPP, boolbForce) — 【废弃】已迁移到 UGCPlayerPawnSystem 设置是否第三人称视角 生效范围：服务器 return -设置是否成功 params PlayerPawn -玩家角色 params IsTPP -是否第三人称 params bForce -强制设置 TPP 模式
- **GetIsInvincible**(PlayerPawnPlayerPawn) — 【废弃】已迁移到 UGCPlayerPawnSystem 获取是否无敌 生效范围：服务器&客户端 return -是否无敌 params PlayerPawn -玩家角色
- **IsInvincible**(PlayerPawnPlayerPawn, boolIsInvincible) — 【废弃】已迁移到 UGCPlayerPawnSystem 设置是否无敌 生效范围：服务器 params PlayerPawn -玩家角色 params IsInvincible -是否无敌
- **EnterParachuteState**(PlayerPawnPlayerPawn, EPawnState[]CheckPawnState, floatCanOpenParachuteHeight, floatForceOpenParachuteHeight, floatCloseParachuteHeight, boolbParachuteAvatarNotShown) — 【废弃】已迁移到 UGCPlayerPawnSystem 尝试进入跳伞状态 生效范围：服务器 params PlayerPawn -玩家角色 params CheckPawnState -不允许进入跳伞的角色状态 params CanOpenParachuteHeight -允许开伞高度 params ForceOpenParachuteHeight -强制开伞高度 params CloseParachuteHeight -关伞高度 params bParachuteAvatarNotShown -是否不显示伞包
- **ParachuteState**(PlayerPawnPlayerPawn) — 【废弃】已迁移到 UGCPlayerPawnSystem 退出跳伞状态 生效范围：服务器 params PlayerPawn -玩家角色
- **BoneByBoneName**(PlayerPawnPlayerPawn, FNameBoneName, boolbHide) — 【废弃】已迁移到 UGCPlayerPawnSystem 根据玩家角色的骨骼名称修改骨骼的显隐性 生效范围：客户端 params PlayerPawn -玩家角色 params BoneName -骨骼名称 params bHide -true隐藏，false显示
- **AvatarMesh**(PlayerPawnPlayerPawn, stringSkeletalMeshPath) — 【废弃】已迁移到 UGCPlayerPawnSystem 切换玩家角色使用的全身骨骼体 生效范围：服务器 params PlayerPawn -玩家角色 params SkeletalMeshPath -全身骨骼体路径
- **AvatarMesh**(PlayerPawnPlayerPawn) — 【废弃】已迁移到 UGCPlayerPawnSystem 恢复玩家角色使用的全身骨骼体 生效范围：服务器 params PlayerPawn -玩家角色
- **SpawnDeadTombBox**(PlayerPawnPlayerPawn, boolbIsSkip) — 【废弃】已迁移到 UGCPlayerPawnSystem 玩家死亡取消生成盒子 生效范围：服务器 params PlayerPawn -玩家角色 params bIsSkip -玩家是否取消生成死亡盒子 HasPawnState AllowPawnState SwitchPoseState EnterPawnState LeavePawnState DisabledPawnState GetIsFPP SetIsFPP GetIsTPP SetIsTPP GetIsInvincible SetIsInvincible TryEnterParachuteState ExitParachuteSt

## UGCPersistEffectSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPersistEffectSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCPersistEffectSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPersistEffectSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPersistEffectSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCPersistEffectSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPersistEffectSystem)

类

全文搜索

新技能和Buff系统接口库

---


## 函数

- **PersistEffectSkillAddSkillByClass**(AActorTargetActor, UClass) — stringSkillClass, numberOverrideApplyTime, UGCGameplayTag
- **RemoveSkillInstance**(AActorTargetActor, UPersistEffectSkillSkillInstance) — 给指定拥有新技能组件的目标 Actor 移除技能 生效范围：服务器 return -是否移除成功 params TargetActor -拥有新技能组件的目标 Actor params SkillInstance -技能对象
- **GetSkillsByClass**(AActorTargetActor, UClass) — stringSkillClass
- **GetSkillsByTag**(AActorTargetActor, UGCGameplayTag) — string
- **PersistEffectBuffAddBuffByClass**(AActorTargetActor, UClass) — stringBuffClass, AActorCauser, numberOverrideDuration, numberStackNum
- **RemoveBuffByClass**(AActorTargetActor, UClass) — stringBuffClass, numberRemoveNum, AActorCauser
- **RemoveBuffByTag**(AActorTargetActor, UGCGameplayTag) — string
- **GetBuffsByClass**(AActorTargetActor, UClass) — stringBuffClass
- **GetBuffsByTag**(AActorTargetActor, UGCGameplayTag) — string
- **HasDynamicState**(AActorTargetActor, UGCGameplayTag) — string
- **AllowDynamicState**(AActorTargetActor, UGCGameplayTag) — string
- **EnterDynamicState**(AActorTargetActor, UGCGameplayTag) — string
- **LeaveDynamicState**(AActorTargetActor, UGCGameplayTag) — string
- **InterruptDynamicState**(AActorTargetActor, UGCGameplayTag) — string
- **DynamicStateDisabled**(AActorTargetActor, UGCGameplayTag) — string
- **DynamicStateDisabled**(AActorTargetActor, UGCGameplayTag) — string
- **UPersistBaseComponentGetPersistBaseComponentByContent**(AActorTargetActor) — 从拥有新技能组件的目标 Actor 上获取 PersistBaseComponent 组件 生效范围：服务器 return UPersistBaseComponent -组件 params TargetActor -拥有新技能组件的目标 Actor
- **AddOcclusionHighlight**(ACharacterTargetCharacter, AActorCauser, EPEBuffOcclusionHighlightTypeType, FLinearColorColor) — 添加透视效果 生效范围：客户端 return -透视ID，用于移除透视效果,<=0为无效值 params TargetCharacter -被透视的角色或怪 params Causer -透视的发起方 params Type -透视类型(仅Causer透视/Causer及其队友透视/所有人) params Color -透视颜色
- **OcclusionHighlight**(UObjectWorldContextObject, numberOcclusionID) — 移除透视效果 生效范围：客户端 params WorldContextObject -世界上下文对象 params OcclusionID -透视ID，AddOcclusionHighlight函数的返回值, <=0为无效值
- **FresnelEffect**(ACharacterTargetCharacter, FLinearColorColor, numberDuration) — 添加菲涅尔效果 生效范围：客户端 params TargetCharacter -被透视的角色或怪 params Color -颜色 params Duration -时长
- **PickTargets**(AActorOwnerActor, FTransformStartTransform, FTargetPickerParamsTargetPickerParams, AActor[]IgnoreActors) — 选取参数指定范围内的目标 生效范围：服务器&客户端 return -选中的目标 params OwnerActor -发起选目标的角色 params StartTransform -Picker开始位置 params TargetPickerParams -Picker参数 params IgnoreActors -忽略的Actors AddSkillByClass RemoveSkillInstance GetSkillsByClass GetSkillsByTag AddBuffByClass RemoveBuffByClass RemoveBuffByTag GetBuffsByClas

## UGCPlayerControllerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPlayerControllerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPlayerControllerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPlayerControllerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPlayerControllerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPlayerControllerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPlayerControllerSystem)

类

全文搜索

玩家控制器系统

---


## 函数

- **JoyStickSprint**(PlayerControllerPlayerController) — 禁用摇杆触发疾跑 生效范围：服务器&客户端 params PlayerController -玩家控制器
- **JoyStickSprint**(PlayerControllerPlayerController) — 启用摇杆触发疾跑 生效范围：服务器&客户端 params PlayerController -玩家控制器
- **GetTeamID**(PlayerControllerPlayerController) — 通过 PlayerController 获取 TeamID 生效范围：服务器&客户端 return -玩家队伍 ID params PlayerController -玩家控制器
- **STExtraBaseCharacterGetPlayerCharacter**(PlayerControllerPlayerController) — 获取玩家角色 生效范围：服务器&客户端 return -玩家角色 params PlayerController -玩家控制器
- **To**(PlayerControllerPlayerController, numberX, numberY, numberZ) — 瞬移至坐标 生效范围：服务器 params PlayerController -玩家控制器 params X -X坐标 params Y -Y坐标 params Z -Z坐标
- **ControlRotation**(PlayerControllerPlayerController, RotatorNewRotation) — 设置控制旋转 生效范围：服务器&客户端 params PlayerController -玩家控制器 params NewRotation -新旋转量 可使用Rotator.New(Roll,Pitch,Yaw)创建,结构{Roll=Roll, Pitch=Pitch, Yaw=Yaw}
- **BulletTrackEffect**(PlayerControllerPlayerController) — 启用子弹尾迹特效 生效范围：客户端 params PlayerController -玩家控制器
- **BattleBeginPlay**(PlayerControllerPlayerController) — 使玩家立刻进入游戏。首先设置PlayerController蓝图上的DelayNotifyBattleBeginPlay，设置之后在切换DS，或者进入游戏的两种情况下的loading图会延长，接着调用本接口，即可立刻跳过loading图进入游戏 生效范围：服务器 params PlayerController -玩家控制器
- **IsLocalController**(AControllerInController) — 判断是否为主控端 生效范围：客户端&服务器 return -当前端是否为主控端 params InController -Pawn DisableJoyStickSprint EnableJoyStickSprint GetTeamID GetPlayerCharacter TeleportTo SetControlRotation EnableBulletTrackEffect NotifyBattleBeginPlay IsLocalController

## UGCPlayerPawnSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPlayerPawnSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCPlayerPawnSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPlayerPawnSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPlayerPawnSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCPlayerPawnSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPlayerPawnSystem)

类

全文搜索

角色系统接口库

---


## 函数

- **HasPawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 是否在指定状态下 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **AllowPawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 是否允许进入指定状态 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **SwitchPoseState**(PlayerPawnPlayerPawn, ESTEPoseStatePoseState) — 切换 Pose 状态 生效范围：客户端 params PlayerPawn -玩家角色 params PoseState -角色状态
- **EnterPawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 进入指定状态 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **LeavePawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState) — 离开指定状态 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params PawnState -角色状态
- **PawnState**(PlayerPawnPlayerPawn, EPawnStatePawnState, booleanIsDisabled) — 禁用指定状态 生效范围：服务器 params PlayerPawn -玩家角色 params PawnState -角色状态 params IsDisabled -是否禁用
- **GetIsFPP**(PlayerPawnPlayerPawn) — 获取是否第一人称视角 生效范围：服务器&客户端 return -是不是 FPP 模式
- **SetIsFPP**(PlayerPawnPlayerPawn, booleanIsFPP, booleanbForce) — 设置是否第一人称视角 生效范围：服务器 return -设置是否成功 params PlayerPawn -玩家角色 params IsFPP -是否第一人称 params bForce -强制设置人称
- **GetIsTPP**(PlayerPawnPlayerPawn) — 获取是否第三人称视角 生效范围：服务器&客户端 return -是否第三人称
- **SetIsTPP**(PlayerPawnPlayerPawn, booleanIsTPP, booleanbForce) — 设置是否第三人称视角 生效范围：服务器 return -设置是否成功 params PlayerPawn -玩家角色 params IsTPP -是否第三人称 params bForce -强制设置 TPP 模式
- **GetIsInvincible**(PlayerPawnPlayerPawn) — 获取是否无敌 生效范围：服务器&客户端 return -是否无敌 params PlayerPawn -玩家角色
- **IsInvincible**(PlayerPawnPlayerPawn, booleanIsInvincible) — 设置是否无敌 生效范围：服务器 params PlayerPawn -玩家角色 params IsInvincible -是否无敌
- **EnterParachuteState**(PlayerPawnPlayerPawn, EPawnState[]CheckPawnState, numberCanOpenParachuteHeight, numberForceOpenParachuteHeight, numberCloseParachuteHeight, booleanbParachuteAvatarNotShown) — 尝试进入跳伞状态 生效范围：服务器 params PlayerPawn -玩家角色 params CheckPawnState -不允许进入跳伞的角色状态 params CanOpenParachuteHeight -允许开伞高度 params ForceOpenParachuteHeight -强制开伞高度 params CloseParachuteHeight -关伞高度 params bParachuteAvatarNotShown -是否不显示伞包
- **ParachuteState**(PlayerPawnPlayerPawn) — 退出跳伞状态 生效范围：服务器 params PlayerPawn -玩家角色
- **BoneByBoneName**(PlayerPawnPlayerPawn, stringBoneName, booleanbHide) — 根据玩家角色的骨骼名称修改骨骼的显隐性 生效范围：客户端 params PlayerPawn -玩家角色 params BoneName -骨骼名称 params bHide -true隐藏，false显示
- **AvatarVisibility**(PlayerPawnPlayerPawn, booleanbHide, EAvatarSlotType[]ExcludingAvatarSlot) — 设置角色Avatar的显隐 生效范围：客户端 params PlayerPawn -玩家角色 params bHide -true显示，false隐藏 params ExcludingAvatarSlot -排除的AvatarSlot类型
- **AvatarMesh**(PlayerPawnPlayerPawn, UClass) — stringSkeletalMesh
- **AvatarMesh**(PlayerPawnPlayerPawn) — 恢复玩家角色使用的全身骨骼体 生效范围：服务器 params PlayerPawn -玩家角色
- **SpawnDeadTombBox**(PlayerPawnPlayerPawn, booleanbIsSkip) — 玩家死亡取消生成盒子 生效范围：服务器 params PlayerPawn -玩家角色 params bIsSkip -玩家是否取消生成死亡盒子
- **GetPartTypeSockets**(ACharacterCharacter) — 获取角色骨骼里所有的PartTypeSocket 生效范围：服务器&客户端 return -PartTypeSocket列表 params Character -角色
- **DefaultPlayerRespawnPointSelectionMethod**(EUGCPlayerRespawnPointSelectionMethodMethod, FVectorRespawnMethodInfo) — 设置玩家的默认复活方式 生效范围：服务器 params Method -复活方式 params RespawnMethodInfo -指定复活位置（仅选择复活方式为指定复活点生效）
- **DefaultPlayerSpawnPointSelectionMethod**(EUGCPlayerSpawnPointSelectionMethodMethod, FVector) — uint8SpawnMethodInfo, booleanPlayerStartInfo
- **Player**(numberPlayerKey, numberRespawnDelayTime, booleanIsDestoryAlivePawn, numberDestroyDelayTime) — 复活单个角色 生效范围：服务器 params PlayerKey -PlayerKey params RespawnDelayTime -复活延时时间，默认为0 params IsDestoryAlivePawn -是否销毁当前未死亡的角色 params DestroyDelayTime -销毁未死亡角色的延时时间，默认为0.01，销毁时间不能设为零，否则角色不销毁
- **AllPlayers**(numberRespawnDelayTime, booleanIsDestroyAlivePawn, numberDestroyDelayTime) — 复活所有角色 生效范围：服务器 params RespawnDelayTime -复活延时时间，默认为0 params IsDestroyAlivePawn -是否销毁当前未死亡的角色 params DestroyDelayTime -销毁未死亡角色的延时时间，默认为0
- **RescueInterruptable**(PlayerPawnInPawn, booleanbCanBeInterrupt, numberCanBeInterruptWhenOverRadius) — 设置救援队友是否能被打断 生效范围：服务器 params InPawn -角色 params bCanBeInterrupt -是否能被打断 params CanBeInterruptWhenOverRadius -施救者可以移动的范围半径(传入的bCanBeInterrupt为true时这个变量才生效)
- **RescueOtherDuration**(PlayerPawnInPawn, numberRescueOtherDuration) — 设置救援队友的时长 生效范围：服务器 params InPawn -角色 params RescueOtherDuration -救援队友的时长
- **RescuingSelfCDTime**(PlayerPawnInPawn, numberRescuingSelfCDTime) — 设置自救的冷却时间 生效范围：服务器 params InPawn -角色 params RescuingSelfCDTime -救援队友的冷却时间
- **RescueOther**(PlayerPawnInPawn, PlayerPawnInTargetPawn) — 确认救援队友 生效范围：服务器 params InPawn -角色 params InTargetPawn -救援对象
- **RescueOtherImmediately**(PlayerPawnInPawn, PlayerPawnInTargetPawn) — 确认救援队友并将队友立即救起 生效范围：服务器 params InPawn -角色 params InTargetPawn -救援对象
- **IsDirectlyDie**(PlayerPawnInPawn, booleanbIsDirectlyDie) — 设置玩家倒地后立即死亡 生效范围：服务器 params InPawn -角色 params bIsDirectlyDie -是否倒地后立即死亡
- **Outline**(PlayerPawnInPawn, booleanbIsDrawOutline, numberOutlineThickness, FLinearColorOutlineColor) — 设置玩家描边 生效范围：客户端 params InPawn -角色 params bIsDrawOutline -是否描边 params OutlineThickness -描边粗细 params OutlineColor -描边颜色
- **AddOcclusionHighlight**(ACharacterTargetCharacter, AActorCauser, EPEBuffOcclusionHighlightTypeType, FLinearColorColor) — 添加透视效果 生效范围：客户端 return -透视ID，用于移除透视效果,<=0为无效值 params TargetCharacter -被透视的角色或怪 params Causer -透视的发起方 params Type -透视类型(仅Causer透视/Causer及其队友透视/所有人) params Color -透视颜色
- **OcclusionHighlight**(UObjectWorldContextObject, numberOcclusionID) — 移除透视效果 生效范围：客户端 params WorldContextObject -世界上下文对象 params OcclusionID -透视ID，AddOcclusionHighlight函数的返回值, <=0为无效值
- **OutputBusVolume**(PlayerPawnInPawn, numberVolume) — 修改角色发出的声音音量 生效范围：客户端 params InPawn -角色 params Volume -音量大小
- **EightWayUniformSpeedEnabled**(PlayerPawnInPawn, booleanEnable) — 设置八向移动相同速度 生效范围：客户端 params InPawn -角色 params Enable -是否启用
- **UpSubViewTargetServer**(PlayerPawnInPawn, booleanbSetUp, AActorTargetActor, numberBlendTime) — 设置ViewTarget 生效范围：服务端 params InPawn -角色 params bSetUp -是否启用 params TargetActor -是否启用 params BlendTime -缓动时间 HasPawnState AllowPawnState SwitchPoseState EnterPawnState LeavePawnState DisabledPawnState GetIsFPP SetIsFPP GetIsTPP SetIsTPP GetIsInvincible SetIsInvincible TryEnterParachuteState ExitParac

## UGCPlayerStateSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPlayerStateSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPlayerStateSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPlayerStateSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPlayerStateSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPlayerStateSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPlayerStateSystem)

类

全文搜索

玩家数据/状态系统接口库

---


## 函数

- **IsAlive**(numberPlayerKey) — 是否存活 生效范围：服务器
- **IsExit**(numberPlayerKey) — 是否离开游戏（主动退出，非断线） 生效范围：服务器
- **GetUGCVIPLevel**(numberPlayerKey) — 获取 VIP Level 生效范围：服务器
- **PlayerAccountInfoGetPlayerAccountInfo**(numberPlayerKey) — 获取玩家的账号数据 生效范围：服务器 & 客户端
- **PlayerBattleInfoGetPlayerBattleInfo**(numberPlayerKey) — 获取玩家的战斗数据 生效范围：服务器
- **SavePlayerArchiveData**(numberUID, tableArchiveData) — 保存玩家存档数据（存档数据在 PIE 下无法跨对局保存和读取）!!!!注意，不能在对局结算之后保存存档数据，在对局结算后调用此接口无法成功保存存档数据 生效范围：服务器 params UID -玩家 UID params ArchiveData -存档数据
- **GetPlayerArchiveData**(numberUID) — 获取玩家存档数据（存档数据在 PIE 下无法跨对局保存和读取） 生效范围：服务器 return -存档数据 params UID -玩家 UID
- **PlayerArchiveData**(清理玩家存档数据（GM 指令，仅开发环境生效） 生效范围：客户端)
- **GetPlayerPlatformGender**(numberPlatformGender, numberUID) — 获取玩家账号性别 生效范围：客户端 return -玩家账号性别，0 - 隐藏，1 - 男，2 - 女 params PlatformGender -从DS获取的玩家性别 params UID -玩家UID
- **GetTeamID**(numberPlayerKey) — 获取 TeamID 生效范围：服务器&客户端
- **GetPlayerKeyInt64**(PlayerStatePlayerState) — 获取 64 位玩家 PlayerKey 生效范围：服务器&客户端
- **GetPlayerKey**(PlayerStatePlayerState) — 获取字符串玩家 PlayerKey 生效范围：服务器&客户端 IsAlive IsExit GetUGCVIPLevel GetPlayerAccountInfo GetPlayerBattleInfo SavePlayerArchiveData GetPlayerArchiveData ClearPlayerArchiveData GetPlayerPlatformGender GetTeamID GetPlayerKeyInt64 GetPlayerKey

## UGCPrivilegeSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPrivilegeSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGCPrivilegeSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPrivilegeSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPrivilegeSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGCPrivilegeSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPrivilegeSystem)

类

全文搜索

特权系统接口库

---


## 函数

- **GetPlayerPrivilegesInformation**(numberUID) — 获取玩家特权 ID 信息列表，如果玩家没有特权 ID 信息或者在 PIE 环境下返回 nil 生效范围：服务器 return -玩家特权ID信息列表，table = { [id1] = { Description = "" }, [id2] = { Description = "" }, [id3] = { Description = "" }, ... } params UID -玩家UID
- **DoesPlayerHavePrivileges**(numberUID) — 判断玩家是否拥有特权，没有特权或者在 PIE 环境下返回 false 生效范围：服务器 return -玩家是否拥有特权 params UID -玩家UID
- **PrivilegeEmblemFlagUI**(PlayerStatePlayerState, stringNameColorHexStr, booleanbHideTeammatePositionItemName) — 给指定队友（不包含主控玩家自己）添加绿洲特权徽章UI标记 生效范围：客户端 params PlayerState -队友PlayerState params NameColorHexStr -玩家名字颜色 params bHideTeammatePositionItemName -是否隐藏队友标记名
- **PrivilegeEmblemFlagUI**(PlayerStatePlayerState) — 给指定队友（不包含主控玩家自己）移除绿洲特权徽章UI标记 生效范围：客户端 params PlayerState -队友PlayerState GetPlayerPrivilegesInformation DoesPlayerHavePrivileges AddPrivilegeEmblemFlagUI RemovePrivilegeEmblemFlagUI

## UGCProjectileSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCProjectileSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCProjectileSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCProjectileSystem](https://developer.gp.qq.com/api/#/searchContent/UGCProjectileSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCProjectileSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCProjectileSystem)

类

全文搜索

抛体系统接口库

---


## 函数

- **PVEProjectileBaseSpawnProjectile**(ProjectileSpawnInfoProjectileSpawnInfo) — 生成抛体 生效范围：服务器 return -抛体对象实例 params ProjectileSpawnInfo -抛体生成参数
- **GetDestroyAfterHit**(APVEProjectileBaseProjectile) — 获取抛体命中之后是否销毁 生效范围：服务器&客户端 return -是否命中后销毁 params Projectile -抛体
- **DestroyAfterHit**(APVEProjectileBaseProjectile, booleanbNewDestroyAfterHit) — 设置抛体命中之后是否销毁 生效范围：服务器 params Projectile -抛体 params bNewDestroyAfterHit -是否销毁
- **GetPMComp**(APVEProjectileBaseProjectile) — 获取抛体运动组件 生效范围：服务器&客户端 return -抛体运动组件 params Projectile -抛体
- **MoveAfterImpactWithNoLost**(APVEProjectileBaseProjectile, booleanbNeedUpdateImmide) — 设置抛体命中之后是否继续移动 生效范围：服务器 params Projectile -抛体 params bNeedUpdateImmide -是否更新组件速度
- **GetLastUpdateCompBeforeStop**(APVEProjectileBaseProjectile) — 停止前最后更新的组件 生效范围：服务器&客户端 return -最后更新的组件 params Projectile -抛体 SpawnProjectile GetDestroyAfterHit SetDestroyAfterHit GetPMComp SetMoveAfterImpactWithNoLost GetLastUpdateCompBeforeStop

## UGCProjectileSystemV2

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCProjectileSystemV2?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCProjectileSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCProjectileSystemV2](https://developer.gp.qq.com/api/#/searchContent/UGCProjectileSystemV2?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCProjectileSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCProjectileSystemV2)

类

全文搜索

技能抛体系统接口库

---


## 函数

- **PESkillProjectileBaseCreateProjectile**(UClassProjectileClass, AActorOwner, FVectorLocation, FVectorDirection, numberSpeed, numberGravityScale, numberDamageValue, FRestrictedDamageTypeDataDamageType) — 发射技能抛体 生效范围：服务器 return -抛体实例 params ProjectileClass -抛体类型 params Owner -新生成抛体的所属对象 params Location -生成坐标 params Direction -初始方向 params Speed -初始速度 params GravityScale -初始重力系数 params DamageValue -抛体的伤害值 params DamageType -抛体的伤害类型
- **PESkillProjectileBaseCreateProjectileSimple**(UClassProjectileClass, AActorOwner, FVectorLocation, FVectorDirection, numberSpeed, numberGravityScale, numberTarget) — 发射技能抛体（不传递伤害） 生效范围：服务器 return -抛体实例 params ProjectileClass -抛体类型 params Owner -新生成抛体的所属对象 params Location -生成坐标 params Direction -初始方向 params Speed -初始速度 params GravityScale -初始重力系数 params Target -抛体的伤害值
- **Direction**(APESkillProjectileBaseProjectile, FVectorNewDirection) — 设置抛体速度方向 生效范围：服务器 params Projectile -抛体实例 params NewDirection -新方向
- **Speed**(APESkillProjectileBaseProjectile, numberNewSpeed) — 设置抛体速度大小 生效范围：服务器 params Projectile -抛体实例 params NewSpeed -新速度
- **GravityScale**(APESkillProjectileBaseProjectile, numberNewGravityScale) — 设置抛体重力系数 生效范围：服务器 params Projectile -抛体实例 params NewGravityScale -新重力系数
- **Damage**(APESkillProjectileBaseProjectile, numberNewDamage) — 设置抛体伤害，会覆盖所有的伤害值，伤害方式会调整为常量 生效范围：服务器 params Projectile -抛体实例 params NewDamage -伤害值
- **Target**(APESkillProjectileBaseProjectile, APawnNewTarget) — 设置抛体目标 生效范围：服务器 params Projectile -抛体实例 params NewTarget -新的目标单位
- **ProjectileMovementComponentGetProjectileMovementComponent**(APESkillProjectileBaseProjectile) — 获取抛体移动组件 生效范围：服务器 return -抛体组件类 params Projectile -抛体实例
- **VectorGetDirection**(APESkillProjectileBaseProjectile) — 获取抛体速度方向 生效范围：服务器 return -当前速度方向 params Projectile -抛体实例
- **GetSpeed**(APESkillProjectileBaseProjectile) — 获取抛体速度大小 生效范围：服务器 return -新速度 params Projectile -抛体实例
- **GetGravityScale**(APESkillProjectileBaseProjectile) — 获取抛体重力系数 生效范围：服务器 return -新重力系数 params Projectile -抛体实例
- **PawnGetTarget**(APESkillProjectileBaseProjectile) — 获取抛体目标 生效范围：服务器 return -新的目标单位 params Projectile -抛体实例
- **GetProjectileListByGroupKey**(APESkillProjectileBaseTargetActor, stringGroupKey) — 获取抛体组中的抛体 生效范围：服务器 return -抛体组中的抛体 params TargetActor -发射抛体的角色 params GroupKey -抛体组Key CreateProjectile CreateProjectileSimple SetDirection SetSpeed SetGravityScale SetDamage SetTarget GetProjectileMovementComponent GetDirection GetSpeed GetGravityScale GetTarget GetProjectileListByGroupKey

## UGCRankSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCRankSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCRankSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCRankSystem](https://developer.gp.qq.com/api/#/searchContent/UGCRankSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCRankSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCRankSystem)

类

全文搜索

段位专用接口库

---


## 函数

- **GetUGCRank**(numberPlayerKey) — 查询段位分 调用 UGCRankSystem.AddRankProgress 后，会获取到新段位分 例：开局 2000 积分，中途调用 UGCRankSystem.AddRankProgress 增加 100 积分，再调用 UGCRankSystem.GetUGCRank 则得到 2100 积分 详细使用流程参考 wiki (https://developer.gp.qq.com/wiki/#/lvzhou_duanwei.html) 生效范围：服务器 return -段位分 params PlayerKey -玩家 PlayerKey
- **RankProgress**(numberPlayerKey, numberCount) — 修改段位分 生效范围：服务器 params PlayerKey -玩家 PlayerKey params Count -段位分变化值
- **GetUGCGameSeasonId**(查询当前玩法段位赛 ID 生效范围：服务器 return -游戏赛季 ID GetUGCRank AddRankProgress GetUGCGameSeasonId)

## UGCSceneQueryUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCSceneQueryUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCSceneQueryUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSceneQueryUtility](https://developer.gp.qq.com/api/#/searchContent/UGCSceneQueryUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCSceneQueryUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSceneQueryUtility)

类

全文搜索

环境查询工具库

---


## 函数

- **HitResultQueryByLineSingle**(UObjectWorldContextObject, FVectorStart, FVectorEnd, ESceneQueryTypeQueryType, AActor[]ActorsToIgnore, booleanIgnoreSelf) — 使用射线执行一次环境查询（单个目标） return boolean, -查询结果，是否找到 params WorldContextObject -世界上下文对象 params Start -射线起点 params End -射线终点 params QueryType -环境查询类型 params ActorsToIgnore -忽略的 Actor 列表（默认值：空） params IgnoreSelf -是否忽略自身（默认值：true）
- **QueryByLineMulti**(UObjectWorldContextObject, FVectorStart, FVectorEnd, ESceneQueryTypeQueryType, AActor[]ActorsToIgnore, booleanIgnoreSelf) — 使用射线执行一次环境查询（多个目标） return boolean, -查询结果数组，是否找到 params WorldContextObject -世界上下文对象 params Start -射线起点 params End -射线终点 params QueryType -环境查询类型 params ActorsToIgnore -忽略的 Actor 列表（默认值：空） params IgnoreSelf -是否忽略自身（默认值：true）
- **HitResultQueryBySphereSingle**(UObjectWorldContextObject, FVectorStart, FVectorEnd, ESceneQueryTypeQueryType, numberRadius, AActor[]ActorsToIgnore, booleanIgnoreSelf) — 使用球体执行一次环境查询（单个目标） return boolean, -查询结果数组，是否找到 params WorldContextObject -世界上下文对象 params Start -射线起点 params End -射线终点 params QueryType -环境查询类型 params Radius -球体半径（默认值：100） params ActorsToIgnore -忽略的 Actor 列表（默认值：空） params IgnoreSelf -是否忽略自身（默认值：true）
- **QueryBySphereMulti**(UObjectWorldContextObject, FVectorStart, FVectorEnd, ESceneQueryTypeQueryType, numberRadius, AActor[]ActorsToIgnore, booleanIgnoreSelf) — 使用球体执行一次环境查询（多个目标） return boolean, -查询结果数组，是否找到 params WorldContextObject -世界上下文对象 params Start -射线起点 params End -射线终点 params QueryType -环境查询类型 params Radius -球体半径（默认值：100） params ActorsToIgnore -忽略的 Actor 列表（默认值：空） params IgnoreSelf -是否忽略自身（默认值：true）
- **HitResultQueryByBoxSingle**(UObjectWorldContextObject, FVectorStart, FVectorEnd, ESceneQueryTypeQueryType, FVectorHalfSize, FRotatorOrientation, AActor[]ActorsToIgnore, booleanIgnoreSelf) — 使用盒子执行一次环境查询（单个目标） return boolean, -查询结果数组，是否找到 params WorldContextObject -世界上下文对象 params Start -射线起点 params End -射线终点 params QueryType -环境查询类型 params HalfSize -各轴到盒子中心的距离（默认值：X = 25, Y = 25, Z = 25） params Orientation -盒子朝向（默认值：Pitch = 0, Yaw = 0, Roll = 0） params ActorsToIgnore -忽略的 Actor 列表（默认值：空
- **QueryByBoxMulti**(UObjectWorldContextObject, FVectorStart, FVectorEnd, ESceneQueryTypeQueryType, FVectorHalfSize, FRotatorOrientation, AActor[]ActorsToIgnore, booleanIgnoreSelf) — 使用盒子执行一次环境查询（多个目标） return boolean, -查询结果数组，是否找到 params WorldContextObject -世界上下文对象 params Start -射线起点 params End -射线终点 params QueryType -环境查询类型 params HalfSize -各轴到盒子中心的距离（默认值：X = 25, Y = 25, Z = 25） params Orientation -盒子朝向（默认值：Pitch = 0, Yaw = 0, Roll = 0） params ActorsToIgnore -忽略的 Actor 列表（默认值：空
- **HitResultQueryByCapsuleSingle**(UObjectWorldContextObject, FVectorStart, FVectorEnd, ESceneQueryTypeQueryType, numberRadius, numberHalfHeight, AActor[]ActorsToIgnore, booleanIgnoreSelf) — 使用胶囊执行一次环境查询（单个目标） return boolean, -查询结果数组，是否找到 params WorldContextObject -世界上下文对象 params Start -胶囊起点 params End -胶囊终点 params QueryType -环境查询类型 params Radius -胶囊半径（默认值：100） params HalfHeight -胶囊高度（默认值：50） params ActorsToIgnore -忽略的 Actor 列表（默认值：空） params IgnoreSelf -是否忽略自身（默认值：true）
- **QueryByCapsuleMulti**(UObjectWorldContextObject, FVectorStart, FVectorEnd, ESceneQueryTypeQueryType, numberRadius, numberHalfHeight, AActor[]ActorsToIgnore, booleanIgnoreSelf) — 使用胶囊执行一次环境查询（多个目标） return boolean, -查询结果数组，是否找到 params WorldContextObject -世界上下文对象 params Start -胶囊起点 params End -胶囊终点 params QueryType -环境查询类型 params Radius -胶囊半径（默认值：100） params HalfHeight -胶囊高度（默认值：50） params ActorsToIgnore -忽略的 Actor 列表（默认值：空） params IgnoreSelf -是否忽略自身（默认值：true）
- **QueryOverlapActorsBySphere**(UObjectWorldContextObject, FVectorPosition, ESceneQueryTypeQueryType, numberRadius, AActor[]ActorsToIgnore, UClassActorClassFilter, AActor[]OutActors) — 使用球体检测重叠的Actor return boolean, -是否找到重叠的Actor，重叠的Actor数组 params WorldContextObject -世界上下文对象 params Position -球体中心位置 params QueryType -环境查询类型 params Radius -球体半径（默认值：100） params ActorsToIgnore -忽略的 Actor 列表（默认值：空） params ActorClassFilter -Actor类型过滤器（默认值：nil） params OutActors -输出的Actor数组（如果为nil则创建新数组）
- **QueryByBoxMultiForObjects**(UObjectWorldContextObject, FVectorStart, FVectorEnd, FVectorHalfSize, FRotatorOrientation, EObjectTypeQuery[]ObjectTypes, booleanbTraceComplex, AActor[]ActorsToIgnore, EDrawDebugTraceDrawDebugType, FH) — 返回所有跟Box沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型 return boolean, -是否检测到碰撞，碰撞结果数组 params WorldContextObject -世界上下文对象 params Start -射线检测起点 params End -射线检测终点 params HalfSize -Box边的半长尺寸 params Orientation -Box的朝向 params ObjectTypes -要检测的对象类型数组 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需
- **QueryOverlapActorsBySphereWithFinder**(UObjectWorldContextObject, AActorFinder, FVectorOrigin, numberRadius, ECollisionChannelChannel) — 在指定位置和半径的球体范围内检测所有重叠的Actor对象 return -碰撞结果数组 params WorldContextObject -世界上下文对象 params Finder -检测发起者，不被检测 params Origin -球体中心位置 params Radius -球体半径 params Channel -碰撞通道，默认为ECollisionChannel.ECC_WorldDynamic
- **QueryBlocksByChannel**(UObjectWorldContextObject, FVectorStart, FVectorEnd, FHitResult[]OutHits, AActor[]IgnoreActors, ECollisionChannel[]TraceChannels) — 检测从起点到终点之间所有阻挡物体的碰撞信息 return bool, -是否检测到碰撞，碰撞结果数组 params WorldContextObject -世界上下文对象 params Start -射线检测起点 params End -射线检测终点 params OutHits -存储所有碰撞结果 params IgnoreActors -需要忽略的Actor列表 params TraceChannels -需要检测的碰撞通道数组
- **QueryBySphereMultiForObjects**(UObjectWorldContextObject, FVectorStart, FVectorEnd, numberRadius, EObjectTypeQuery[]ObjectTypes, booleanbTraceComplex, AActor[]ActorsToIgnore, EDrawDebugTraceDrawDebugType, FHitResult[]OutHits, boole) — 返回所有跟球体沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型 return -如果发生碰撞返回true，否则返回false params WorldContextObject -世界上下文 params Start -射线检测起点 params End -射线检测终点 params Radius -扫描球体的半径 params ObjectTypes -对象类型列表 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -要忽略的Actor列表 params DrawDebugType -调试模式 p
- **QueryByLineMultiForObjects**(UObjectWorldContextObject, FVectorStart, FVectorEnd, EObjectTypeQuery[]ObjectTypes, booleanbTraceComplex, AActor[]ActorsToIgnore, EDrawDebugTraceDrawDebugType, FHitResult[]OutHits, booleanbIgnoreSelf,) — 返回所有跟射线碰撞的物体的碰撞信息，只查询指定对象类型 return -true为检测到碰撞，false为未检测到碰撞 params WorldContextObject -world上下文对象 params Start -射线检测起点 params End -射线检测终点 params ObjectTypes -对象类型列表 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params DrawDebugType -调试模式 params OutHits -输出的HitRes
- **QueryByLineWithChannel**(FHitResultOutHit, UObjectContextObject, FVectorStart, FVectorEnd, AActor[]IgnoreActors, ECollisionChannelTraceChannel) — 返回指定通道的射线碰撞的物体的碰撞信息 return -true为检测到碰撞，false为未检测到碰撞 params OutHit -输出的HitResult params ContextObject -world上下文对象 params Start -射线检测起点 params End -射线检测终点 params IgnoreActors -需要忽略的Actor列表 params TraceChannel -碰撞通道
- **FindPositionToHoldCapsule**(UObjectWorldContextObject, FVectorSourceLocation, FRotatorCapsuleRotation, floatCapsuleRadius, floatCapsuleHalfHeight, AActor[]IgnoreActors, EObjectTypeQuery[]DetectObjectTypes, intIterations, boolbNe) — 获取一个目标位置附近能容纳胶囊体的坐标，以目标位置为中心，八方向向外迭代寻找位置 return -是否找到合适的位置 return -找到的坐标 params WorldContextObject -World上下文 params SourceLocation -目标位置 params CapsuleRotation -胶囊体的旋转 params CapsuleRadius -胶囊体半径 params CapsuleHalfHeight -胶囊体半高 params IgnoreActors -需要忽略的Actor列表 params DetectObjectTypes -检测的对象类型列表 pa

## UGCSimpleCharacterSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCSimpleCharacterSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCSimpleCharacterSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSimpleCharacterSystem](https://developer.gp.qq.com/api/#/searchContent/UGCSimpleCharacterSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCSimpleCharacterSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSimpleCharacterSystem)

类

全文搜索

怪物小动物系统接口库

---


## 函数

- **GetHealth**(ASTExtraSimpleCharacterBaseSimpleCharacter) — 获取当前血量 生效范围：服务器&客户端 return -血量 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物
- **Health**(ASTExtraSimpleCharacterBaseSimpleCharacter, numberHealth) — 设置当前血量（不会超过血量最大值） 生效范围：服务器 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物 params Health -血量
- **GetHealthMax**(ASTExtraSimpleCharacterBaseSimpleCharacter) — 获取当前最大血量 生效范围：服务器&客户端 return -血量 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物
- **HealthMax**(ASTExtraSimpleCharacterBaseSimpleCharacter, numberHealthMax) — 设置当前最大血量（当前血量不会随之变大，但如果超过最大血量，则会变小） 生效范围：服务器 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物 params HealthMax -最大血量
- **GetSpeedScale**(ASTExtraSimpleCharacterBaseSimpleCharacter) — 获取移动速度系数 生效范围：服务器&客户端 return -移动系数 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物
- **SpeedScale**(ASTExtraSimpleCharacterBaseSimpleCharacter, numberSpeedScale) — 设置移动速度系数 生效范围：服务器 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物 params SpeedScale -移动系数
- **IsInvincible**(ASTExtraSimpleCharacterBaseSimpleCharacter) — 获取是否无敌 生效范围：服务器&客户端 return -是否无敌 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物
- **Invincible**(ASTExtraSimpleCharacterBaseSimpleCharacter, booleanIsInvincible) — 设置是否无敌 生效范围：服务器 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物 params IsInvincible -是否无敌
- **IsAlive**(ASTExtraSimpleCharacterBaseSimpleCharacter) — 获取是否存活 生效范围：服务器&客户端 return -是否存活 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物 GetHealth SetHealth GetHealthMax SetHealthMax GetSpeedScale SetSpeedScale IsInvincible SetInvincible IsAlive

## UGCSkillManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCSkillManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCSkillManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSkillManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCSkillManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCSkillManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSkillManagerSystem)

类

全文搜索

【废弃】技能管理系统接口库

---


## 函数

- **ManagerComponentGetSkillManagerComponent**(ActorActor) — 【废弃】请使用 UGCPersistEffectSystem 获取技能组件 生效范围：服务器&客户端 return -技能组件 params Actor -Actor 对象
- **Skill**(ActorActor, stringSkillName) — 【废弃】请使用 UGCPersistEffectSystem 使用技能（技能列表中，技能需配置 SET_KEY_DOWN 事件触发） 生效范围：服务器&客户端 params Actor -Actor 对象 params SkillName -技能短名
- **Skill**(ActorActor, stringSkillName) — 【废弃】请使用 UGCPersistEffectSystem 停止技能 生效范围：服务器&客户端 params Actor -Actor 对象 params SkillName -技能短名
- **SkillEvent**(ActorActor, stringSkillName, UTSkillEventTypeEventType) — 【废弃】请使用 UGCPersistEffectSystem 使用技能（自定义触发事件类型） 生效范围：服务器&客户端 params Actor -Actor 对象 params SkillName -技能短名 params EventType -事件类型
- **SkillByPath**(ActorActor, stringSkillPath) — 【废弃】请使用 UGCPersistEffectSystem 根据技能路径使用技能（技能列表中，技能需配置 SET_KEY_DOWN 事件触发） 生效范围：服务器&客户端 params Actor -Actor 对象 params SkillPath -技能完整路径
- **SkillByPath**(ActorActor, stringSkillPath) — 【废弃】请使用 UGCPersistEffectSystem 根据技能路径停止技能 生效范围：服务器&客户端 params Actor -Actor 对象 params SkillPath -技能完整路径
- **SkillEventByPath**(ActorActor, stringSkillPath, UTSkillEventTypeEventType) — 【废弃】请使用 UGCPersistEffectSystem 生效范围：服务器&客户端 params Actor -Actor 对象 params SkillPath -技能完整路径 params EventType -事件类型
- **AllSkill**(ActorActor) — 【废弃】请使用 UGCPersistEffectSystem 停止所有技能 生效范围：服务器 params Actor -Actor 对象
- **Skill**(ActorActor, stringSkillClassPath) — 【废弃】请使用 UGCPersistEffectSystem 添加技能 生效范围：服务器 params Actor -Actor 对象 params SkillClassPath -技能完整路径
- **Skill**(ActorActor, stringSkillClassPath) — 【废弃】请使用 UGCPersistEffectSystem 移除技能 生效范围：服务器 params Actor -Actor 对象 params SkillClassPath -技能完整路径
- **IsSkillRunning**(ActorActor) — 【废弃】请使用 UGCPersistEffectSystem 当前是否有技能在执行 生效范围：服务器&客户端 return -是否有技能在执行 params Actor -Actor 对象
- **GetSkillCD**(ActorActor, stringSkillPath) — 【废弃】请使用 UGCPersistEffectSystem 获取技能冷却 生效范围：服务器 return -技能冷却时间 params Actor -Actor 对象 params SkillPath -技能完整路径
- **SkillActive**(ActorActor, stringSkillPath, booleanNewActive) — 【废弃】请使用 UGCPersistEffectSystem 激活技能 生效范围：服务器 params Actor -Actor 对象 params SkillPath -技能完整路径 params NewActive -技能状态
- **StringEvent**(ActorActor, stringSkillPath, stringEventString) — 【废弃】请使用 UGCPersistEffectSystem 向技能抛出一个字符串类型的事件 生效范围：服务器 params Actor -Actor 对象 params SkillPath -技能完整路径 params EventString -字符串事件
- **UAEEvent**(ActorActor, stringSkillPath, UAESkillEventEventType) — 【废弃】请使用 UGCPersistEffectSystem 向技能抛出一个预定义的事件 生效范围：服务器 params Actor -Actor 对象 params SkillPath -技能完整路径 params EventType -预定义事件 GetSkillManagerComponent UseSkill StopSkill TriggerSkillEvent UseSkillByPath StopSkillByPath TriggerSkillEventByPath StopAllSkill AddSkill RemoveSkill IsSkillRunning GetSkill

## UGCSoundManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCSoundManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCSoundManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSoundManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCSoundManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCSoundManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSoundManagerSystem)

类

全文搜索

语音系统接口库

---


## 函数

- **PlaySound2D**(UAkAudioEventAKEvent) — 播放 2D 音效 生效范围：客户端 return - 音效 ID params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取）
- **PlaySoundAtLocation**(UAkAudioEventAKEvent, VectorLocation, RotatorOrientation) — 在指定位置播放音效 生效范围：客户端 return - 音效 ID params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取），需要导入音效时选 3D params Location -位置 params Orientation -旋转 可使用 Rotator.New(Roll,Pitch,Yaw) 创建,结构 {Roll=Roll, Pitch=Pitch, Yaw=Yaw}
- **PlaySoundAttachActor**(UAkAudioEventAKEvent, ActorAttachedActor, booleanStopWhenAttachedToDestroyed) — 依附于 Actor 播放音效 生效范围：客户端 return - 音效 ID params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取） params AttachedActor -依附的 Actor params StopWhenAttachedToDestroyed -依附的 Actor 销毁时是否停止音效播放
- **AllSound**(停止全部音效 生效范围：客户端)
- **SoundByActor**(ActorActor) — 停止指定 Actor 上的所有音效 生效范围：客户端 params Actor -指定的Actor
- **SoundByID**(numberID) — 停止指定 ID 的音效 生效范围：客户端 params ID -音效 ID
- **PlaySoundWithVolumePitch**(UAkAudioEventAKEvent, ActorAttachedActor, numberVolume, numberPitch, booleanStopWhenAttachedToDestroyed) — 在以指定音量音高的方式播放音效，如果播放的是同一个音效，必须在上次播放完成再开始下一个播放，音效资源必须在最新的UGC编辑器上制作生成的 生效范围：客户端 return - 音效 ID params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取） params AttachedActor -依附的 Actor params Volume -范围为-12到12的值 如果不想调整该参数就传一个范围以外的值 params Pitch -范围为-2400到2400的值 如果不想调整该参数就传一个范围以外的值 params StopWhenAttachedTo
- **SoundWithRange**(UAkAudioEventAKEvent, ActorAttachedActor, numberStartTime, numberEndTime, numberID) — 播放指定时间范围的音频 生效范围：客户端 params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取） params AttachedActor -依附的 Actor params StartTime -开始时间 params EndTime -结束时间 params ID -音效 ID
- **SoundWithLoop**(UAkAudioEventAKEvent, ActorAttachedActor) — 播放循环音频 生效范围：客户端 params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取） params AttachedActor -依附的 Actor
- **SoundWith2D**(UAkAudioEventAKEvent, ActorAttachedActor) — 播放2D音频 生效范围：客户端 params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取） params AttachedActor -依附的 Actor PlaySound2D PlaySoundAtLocation PlaySoundAttachActor StopAllSound StopSoundByActor StopSoundByID PlaySoundWithVolumePitch PlaySoundWithRange PlaySoundWithLoop PlaySoundWith2D

## UGCStringTextUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCStringTextUtility?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCStringTextUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCStringTextUtility](https://developer.gp.qq.com/api/#/searchContent/UGCStringTextUtility?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCStringTextUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCStringTextUtility)

类

全文搜索

文本系统接口库

---


## 函数

- **ExportText**(stringObject) — 导出对象文本，会根据传入的对象类型打印关键信息 return -文本字符串 params Object -文本对象
- **TrimStartOrEnd**(stringInStr, booleanTrimStart, booleanTrimEnd) — 修剪字符串的起始和结尾，根据传入的TrimStart和TrimEnd去除字符串头尾的空白字符 return -修剪后的字符串 params InStr -字符串 params TrimStart -是否修剪起始 params TrimEnd -是否修剪结尾
- **SplitToArray**(stringInStr, stringSeparator) — 将字符串按照分隔符分割成数组 return -数组 params InStr -字符串 params Separator -分隔符
- **StartsWith**(stringInStr, stringInPrefix, ESearchCaseSearchCase) — 判断字符串是否以指定的前缀开头 return -是否以指定的前缀开头 params InStr -字符串 params InPrefix -前缀 params SearchCase -是否区分大小写
- **EndWith**(stringInStr, stringInSuffix, ESearchCaseSearchCase) — 判断字符串是否以指定的后缀结尾 return -是否以指定的后缀结尾 params InStr -字符串 params InSuffix -后缀 params SearchCase -是否区分大小写
- **InsertIntoString**(stringSourceStr, stringContent, numberPosition) — 在字符串的指定位置插入内容 return -字符串 params SourceStr -源字符串 params Content -插入内容 params Position -插入位置
- **JoinArrayIntoString**(tableInStrArray, stringSeparator) — 将字符串数组连接成字符串 return -字符串 params InStrArray -字符串数组 params Separator -分隔符
- **SplitToCharArray**(stringInStr) — 将字符串分割成字符数组 return -字符数组 params InStr -字符串
- **ComposedOfDigits**(stringInStr) — 判断字符串是否由数字组成 return -是否由数字组成 params InStr -字符串
- **LeftChop**(stringInStr, numberCount) — 截断字符串的前n个字符 return -字符串 params InStr -字符串 params Count -字符数
- **LeftPad**(stringInStr, numberStrLen) — 在字符串的左侧填充空白字符使得字符串长度达到指定的长度 return -字符串 params InStr -字符串 params StrLen -指定的长度
- **RightChop**(stringInStr, numberCount) — 截断字符串的后n个字符 return -字符串 params InStr -字符串 params Count -字符数
- **RightPad**(stringInStr, numberStrLen) — 在字符串的右侧填充空白字符使得字符串长度达到指定的长度 return -字符串 params InStr -字符串 params StrLen -指定的长度
- **Tree**(stringDesc, anyVar) — 打印变量,特别是对table类型做树形输出,仅DEV打印 params Desc -变量描述 params Var -要输出的变量,可以是任何类型table, bool, number, nil ExportText TrimStartOrEnd SplitToArray StartsWith EndWith InsertIntoString JoinArrayIntoString SplitToCharArray ComposedOfDigits LeftChop LeftPad RightChop RightPad LogTree

## UGCTeamSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCTeamSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCTeamSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCTeamSystem](https://developer.gp.qq.com/api/#/searchContent/UGCTeamSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCTeamSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCTeamSystem)

类

全文搜索

队伍系统接口库

---


## 函数

- **ModeComponentGetTeamComponent**(【废弃】获取队伍组件 生效范围：服务器 return -队伍组件)
- **PlayerTeamID**(numberPlayerKey, numberTeamID) — 改变玩家 TeamID 生效范围：服务器 params PlayerKey -玩家 PlayerKey params TeamID -队伍 ID
- **UIDGetUIDsByTeamID**(numberTeamID) — 根据TeamID获取对应队伍里所有的玩家UID 生效范围：服务器 return number[] -列表 params TeamID -队伍 ID
- **PlayerKeyGetPlayerKeysByTeamID**(numberTeamID, booleanbReturnAsLuaTable) — 根据TeamID获取对应队伍里所有的玩家PlayerKey，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确 生效范围：服务器 return number[] -列表 params TeamID -队伍 ID params bReturnAsLuaTable -是否以LuaTable返回
- **PlayerKeyGetAIPlayerKeysByTeamID**(numberTeamID) — 根据 TeamID 获取对应队伍里所有的假人玩家 AIPlayerKey，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确 生效范围：服务器 return number[] -列表 params TeamID -队伍 ID
- **PlayerControllerGetPlayerControllersByTeamID**(numberTeamID) — 根据TeamID获取对应队伍里所有的玩家PlayerController 生效范围：服务器 return ASTExtraPlayerController[] -列表 params TeamID -队伍 ID
- **PlayerPawnGetPlayerPawnsByTeamID**(numberTeamID) — 根据TeamID获取对应队伍里所有的玩家PlayerPawn 生效范围：服务器&客户端 return PlayerPawn[] -列表 params TeamID -队伍 ID
- **PlayerStateGetPlayerStatesByTeamID**(numberTeamID) — 根据TeamID获取对应队伍里所有的玩家PlayerState 生效范围：服务器&客户端 return ASTExtraPlayerState[] -列表 params TeamID -队伍 ID
- **GetLobbyTeamUIDsByUID**(numberUID) — 【废弃】请使用 UGCTeamSystem.GetLobbyTeammateUIDsByUID 根据玩家的UID获取其大厅里组队的成员 UID 列表 生效范围：服务器 return -玩家 UID 列表 params UID -玩家 UID
- **GetLobbyTeammateUIDsByUID**(numberUID) — 根据玩家的UID获取其大厅里组队的成员 UID 列表 生效范围：服务器 return -玩家 UID 列表 params UID -玩家 UID
- **GetDynamicLobbyTeammateUIDsByUID**(numberUID) — 根据玩家的UID获取其大厅里组队的成员 UID 列表。跟 UGCTeamSystem.GetLobbyTeammateUIDsByUID 不同的是，此接口会返回动态组队（UGCTeamSystem.InviteToJoinLobbyTeam、UGCTeamSystem.RequestToJoinLobbyTeam）的成员 UID 列表，而 UGCTeamSystem.GetLobbyTeammateUIDsByUID 以及其他接口只会返回从大厅进入战斗对局那一刻的该玩家在大厅组队的成员 UID 列表。 生效范围：客户端 return -玩家 UID 列表 params UID -玩家 UID
- **PlayerKeyGetLobbyTeamKeysByPlayerKey**(numberPlayerKey) — 【废弃】请使用 UGCTeamSystem.GetLobbyTeammatePlayerKeysByPlayerKey 根据玩家的 PlayerKey 获取其大厅里组队的成员 PlayerKey 列表，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确 生效范围：服务器 return number[] -列表 params PlayerKey -玩家 PlayerKey
- **PlayerKeyGetLobbyTeammatePlayerKeysByPlayerKey**(numberPlayerKey) — 根据玩家的 PlayerKey 获取其大厅里组队的成员 PlayerKey 列表，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确 生效范围：服务器 return number[] -列表 params PlayerKey -玩家 PlayerKey
- **ToJoinLobbyTeam**(numberInviteeUID) — 邀请玩家加入（我的）大厅队伍 生效范围：客户端 params InviteeUID -被邀请玩家 UID
- **ToInvitingToJoinLobbyTeam**(EResponseOfBeingInvitedToJoinLobbyResponseOfBeingInvitedToJoinLobby, tableInviteToJoinLobbyTeamToken) — 响应加入大厅队伍的邀请 生效范围：客户端 params ResponseOfBeingInvitedToJoinLobby -被邀请加入大厅队伍的响应类型：EResponseOfBeingInvitedToJoinLobby params InviteToJoinLobbyTeamToken -邀请到大厅队伍的 Token
- **ToJoinLobbyTeam**(numberTeamMemberUID) — 玩家请求加入大厅队伍 生效范围：客户端 params TeamMemberUID -大厅队伍中的玩家 UID
- **ToRequestingToJoinLobbyTeam**(EResponseOfBeingRequestedToJoinLobbyResponseOfBeingRequestedToJoinLobby, tableRequestToJoinLobbyTeamToken) — 队长响应被加入大厅队伍的请求 生效范围：客户端 params ResponseOfBeingRequestedToJoinLobby -被请求加入大厅队伍的响应类型：EResponseOfBeingRequestedToJoinLobby params RequestToJoinLobbyTeamToken -请求加入大厅队伍的 Token
- **LobbyTeam**(玩家主动退出大厅队伍 生效范围：客户端)
- **FromLobbyTeam**(numberTargetUID) — 队长将指定玩家踢出大厅队伍 生效范围：客户端 params TargetUID -被踢玩家的 UID
- **LobbyTeamLeader**(numberNewLeaderUID) — 队长转让大厅队长身份给指定玩家 生效范围：客户端 params NewLeaderUID -新队长的 UID
- **TeamIDGetTeamIDs**(获取所有队伍的 ID 生效范围：服务器 return int[] -列表)
- **GetPlayerList**(booleanbWithOB?) — 获取所有玩家信息列表 生效范围：服务器 return -玩家信息列表 params bWithOB? -是否包含 OB
- **GetTeamSizeByID**(numberTeamID) — 【废弃】请使用 UGCTeamSystem.GetTeamSizeByTeamID 获取队伍中的玩家数量 生效范围：服务器 return -玩家数量 params TeamID -队伍 ID
- **GetTeamSizeByTeamID**(numberTeamID) — 获取队伍中的玩家数量 生效范围：服务器 return -玩家数量 params TeamID -队伍 ID
- **GetTeamLeaderKeyByTeamID**(numberTeamID) — 通过队伍编号获取队长PlayerKey列表（每个在大厅点击开始游戏的玩家都会被设置为队长，例如四人匹配，队伍里只有一个队长，三人匹配，再随机匹配一个队友，三人里面点击开始游戏的是队长，随机匹配的那个队友也是队长，属于他自己那个小队的队长） 生效范围：服务器 return -队长PlayerKey params TeamID -队伍 ID
- **GetIsLeaderOrNotByPlayerKey**(numberPlayerKey) — 通过玩家PlayerKey查询身份 生效范围：服务器 return -是否是队长 params PlayerKey -玩家 PlayerKey
- **GetAllTeammatePlayerState**(booleanbExcludeSelf) — 获取所有队友的的PlayerState 生效范围：客户端 params bExcludeSelf -是否排除玩家自身
- **STExtraPlayerStateGetTeammatePlayerStateByPlayerKey**(numberPlayerKey) — 获取指定PlayerKey队友的的PlayerState 生效范围：客户端 params PlayerKey -玩家 PlayerKey
- **STExtraPlayerStateIsTeamIDValid**(numberTeamID) — 判断TeamID是否合法 生效范围：服务器 params TeamID -TeamID
- **GetTeamIDByPlayerKey**(numberPlayerKey) — 根据PlayerKey获取队伍ID 生效范围：服务器&客户端 return -队伍 ID params PlayerKey -玩家 PlayerKey
- **GetTeammateIndexByPlayerKey**(ASTExtraPlayerStatePlayerState, numberPlayerKey) — 根据PlayerKey获取队友ID(头顶标号) 生效范围：服务器&客户端 return -队友 ID params PlayerState -玩家 PlayerState params PlayerKey -玩家 PlayerKey
- **GetAllTeammateIndex**(ASTExtraPlayerStatePlayerState) — 获取所有队友的的队友ID(头顶标号) 生效范围：服务器&客户端 return table<number, -以PlayerKey为键，队友ID为值的表 params PlayerState -玩家 PlayerState
- **GetPlayerKeyByTeammateIndex**(ASTExtraPlayerStatePlayerState, numberTeammateIndex) — 根据队友ID(头顶标号)获取队友PlayerKey 生效范围：服务器&客户端 return -队友 PlayerKey params PlayerState -玩家 PlayerState params TeammateIndex -队友ID GetTeamComponent ChangePlayerTeamID GetUIDsByTeamID GetPlayerKeysByTeamID GetAIPlayerKeysByTeamID GetPlayerControllersByTeamID GetPlayerPawnsByTeamID GetPlayerStatesByTeamID GetL

## 属性

- **InviteToJoinLobbyTeamToken** — table @邀请到大厅队伍的 Token。InviteToJoinLobbyTeamToken.InviterUID int @邀请者 UID UGCTeamSystem.NotifyRequestToJoinLobbyTeamDelegate 通知请求加入大厅队伍 生效范围：客户端 @param RequestToJoinLobbyTeamToken table @请求加入大厅队伍的 Token。RequestToJoinLobbyTeamToken.TeamID int @队伍 ID UGCTeamSystem.NotifyInviteToJoinLobbyTeamDelegate UG

## UGCTimerUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCTimerUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCTimerUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCTimerUtility](https://developer.gp.qq.com/api/#/searchContent/UGCTimerUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCTimerUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCTimerUtility)

类

全文搜索

计时器工具类

---


## 函数

- **GCLuaTimerInstanceCreateLuaTimer**(numberTimeOffset, functionCallback, booleanbLoop, stringTimerName, numberInitDelay, booleanbLog, booleanbCoroutine) — 创建 Lua 计时器 1. TimeOffset > 0，则 TimeOffset 单位是秒。 2. TimeOffset == 0，遇到 tick 就会执行。 3. TimeOffset < 0，是负数如 -N 的话，会在间隔 N 帧后执行第一次。如果传入了 InitDelay，则此条略过，按下面 InitDelay 参数说明来执行： a) 如果 InitDelay ~= nil(即传入 InitDelay 参数)，则计时器会在 InitDelay 秒后执行第一次；后面根据 TimeOffset 的设置，循环调用。 b) 如果 InitDelay == 0，则 InsertTimer 时，会
- **LuaTimer**(UGCLuaTimerInstanceTimerInstance) — 移除 Lua 计时器 生效范围：服务器&客户端 params TimerInstance -计时器实例
- **LuaTimerByName**(stringTimerName) — 根据名称移除 Lua 计时器 生效范围：服务器&客户端 params TimerName -计时器名称
- **IsLuaTimerExistByName**(stringTimerName) — 根据名称判断 Lua 计时器是否存在 生效范围：服务器&客户端 return -是否存在 params TimerName -计时器名称
- **LuaSingleDelegateCreateUETimer**(LuaFunctionCallbackFunction, numberTime, booleanIsLooping) — 设置 UE 计时器 生效范围：服务器&客户端 return FTimerHandle, -计时器句柄，计时器回调 params CallbackFunction -Lua 回调函数 params Time -定时时长 params IsLooping -是否循环
- **UETimer**(FTimerHandleTimerHandle) — 移除 UE 计时器 生效范围：服务器&客户端 params TimerHandle -计时器句柄 CreateLuaTimer RemoveLuaTimer RemoveLuaTimerByName IsLuaTimerExistByName CreateUETimer RemoveUETimer

## UGCVehicleCommonSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCVehicleCommonSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%BD%BD%E5%85%B7%2FUGCVehicleCommonSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleCommonSystem](https://developer.gp.qq.com/api/#/searchContent/UGCVehicleCommonSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%BD%BD%E5%85%B7%2FUGCVehicleCommonSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleCommonSystem)

类

全文搜索

载具系统通用功能接口库

---


## 函数

- **VehicleHPMax**(ASTExtraVehicleBaseVehicle, numberMaxHP) — 设置载具最大血量 本接口不会自动改变载具血量，游戏逻辑中改变载具血量时（比如收到伤害、载具维修等）会考虑载具最大血量 生效范围：服务器 params Vehicle -载具 params MaxHP -最大血量
- **VehicleHP**(ASTExtraVehicleBaseVehicle, numberHP) — 设置载具血量 生效范围：服务器 params Vehicle -载具 params HP -血量
- **VehicleFuelPercent**(ASTExtraVehicleBaseVehicle, numberFuelPercent) — 设置载具油量（按照百分比设置） 生效范围：服务器 params Vehicle -载具 params FuelPercent -油量百分比
- **GetVehicleHPMax**(ASTExtraVehicleBaseVehicle) — 获得载具最大血量 生效范围：服务器&客户端 return -载具最大血量 params Vehicle -载具
- **GetVehicleHP**(ASTExtraVehicleBaseVehicle) — 获得载具当前血量 生效范围：服务器&客户端 return -载具当前血量 params Vehicle -载具
- **GetVehicleFuelMax**(ASTExtraVehicleBaseVehicle) — 获得载具最大油量 生效范围：服务器&客户端 return -载具最大油量 params Vehicle -载具
- **GetVehicleFuelConsumeFactor**(ASTExtraVehicleBaseVehicle) — 获得当前油耗系数 生效范围：服务器&客户端 return -当前油耗系数 params Vehicle -载具
- **GetVehicleFuel**(ASTExtraVehicleBaseVehicle) — 获得当前油量 生效范围：服务器&客户端 return -当前油量 params Vehicle -载具
- **IsDontConsumeFuel**(ASTExtraVehicleBaseVehicle) — 获得当前是否不耗油 生效范围：服务器&客户端 return -当前是否不耗油 params Vehicle -载具
- **IsDontDamage**(ASTExtraVehicleBaseVehicle) — 获得当前是否不受到伤害 生效范围：服务器&客户端 return -当前是否不受到伤害 params Vehicle -载具
- **GetWheelHP**(ASTExtraVehicleBaseVehicle, numberWheelIndex) — 获得轮胎血量 生效范围：服务器&客户端 return -载具轮子血量 params Vehicle -载具 params WheelIndex -轮胎 ID（从 1 开始）
- **SetWheelHP**(ASTExtraVehicleBaseVehicle, numberWheelIndex, numberHP) — 设置轮胎血量 生效范围：服务器 return -设置是否成功 params Vehicle -载具 params WheelIndex -轮胎 ID（从 1 开始） params HP -载具轮子血量 SetVehicleHPMax SetVehicleHP SetVehicleFuelPercent GetVehicleHPMax GetVehicleHP GetVehicleFuelMax GetVehicleFuelConsumeFactor GetVehicleFuel IsDontConsumeFuel IsDontDamage GetWheelHP SetWheelHP

## UGCVehicleSeatSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCVehicleSeatSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%BD%BD%E5%85%B7%2FUGCVehicleSeatSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleSeatSystem](https://developer.gp.qq.com/api/#/searchContent/UGCVehicleSeatSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%BD%BD%E5%85%B7%2FUGCVehicleSeatSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleSeatSystem)

类

全文搜索

载具系统座位系统接口库

---


## 函数

- **PassengerSeat**(ASTExtraVehicleBaseVehicle, ASTExtraBaseCharacterPassenger, numberSeatIndex) — 在目标座位上没有乘客时更换乘客座位 生效范围：客户端&服务器 params Vehicle -载具 params Passenger -乘客 params SeatIndex -座位 ID
- **ChangePassengerSeat**(ASTExtraVehicleBaseVehicle, ASTExtraBaseCharacterPassenger, numberSeatIndex) — 在目标座位上有乘客时更换乘客座位 生效范围：服务器 params Vehicle -载具 params Passenger -乘客 params SeatIndex -座位 ID
- **GetSeatNum**(ASTExtraVehicleBaseVehicle) — 获得载具座位个数 生效范围：服务器&客户端 return -载具座位个数 params Vehicle -载具
- **GetAvailableSeatNum**(ASTExtraVehicleBaseVehicle) — 获得空闲的载具座位个数 生效范围：服务器&客户端 return -空闲的载具座位个数 params Vehicle -载具
- **STExtraBaseCharacterGetPassenger**(ASTExtraVehicleBaseVehicle, numberSeatIndex) — 获得对应座位的乘客 生效范围：服务器&客户端 return -对应座位的乘客 params Vehicle -载具 params SeatIndex -座位 ID
- **IsSeatIndexAvailable**(ASTExtraVehicleBaseVehicle, numberSeatIndex) — 获得对应座位是否空着 生效范围：服务器&客户端 return -对应座位是否空着 params Vehicle -载具 params SeatIndex -座位 ID
- **GetCharacterSeatIndex**(ASTExtraVehicleBaseVehicle, ASTExtraBaseCharacterPassenger, booleanGetBySocket) — 获得指定乘客的座位 ID 生效范围：服务器&客户端 return -指定乘客的座位 ID params Vehicle -载具 params Passenger -乘客 params GetBySocket -BySocket
- **STExtraBaseCharacterGetDriver**(ASTExtraVehicleBaseVehicle) — 获得司机 生效范围：服务器&客户端 return -司机 params Vehicle -载具
- **GetPassengers**(ASTExtraVehicleBaseVehicle) — 获得所有乘客 生效范围：服务器&客户端 return -所有乘客 params Vehicle -载具
- **GetAvailableSeatIndexes**(ASTExtraVehicleBaseVehicle) — 获得所有空闲座位的 Index 生效范围：服务器&客户端 return -所有空闲座位的索引 params Vehicle -载具
- **CanLeanOut**(ASTExtraVehicleBaseVehicle, numberSeatIndex) — 座位上是否可以探头 生效范围：服务器&客户端 return -是否可以探头 params Vehicle -载具 params SeatIndex -座位 ID
- **VehicleWeapon**(ASTExtraVehicleBaseVehicle, numberSeatIndex, numberWeaponIndex) — 移除指定座位上对应 ID 的车载武器 需要这个座位原来也配置了载具武器，且这个载具武器不在使用中 生效范围：服务器 params Vehicle -载具 params SeatIndex -座位 ID params WeaponIndex -车载武器 ID
- **VehicleWeaponFromSupportKit**(ASTExtraVehicleBaseVehicle, numberSeatIndex, numberWeaponIndex, numberWeaponIndexSupport) — 将座位武器库中的武器装备到座位武器孔上 需要这个座位原来也配置了载具武器，且这个载具武器不在使用中 生效范围：服务器 params Vehicle -载具 params SeatIndex -座位 ID params WeaponIndex -车载武器 ID params WeaponIndexSupport -武器库武器 ID
- **PassengerVehicleWeapon**(ASTExtraVehicleBaseVehicle, numberSeatIndex, booleanbControlVehicleWeapon) — 设置当前座位上的车载武器是否能使用 需要这个座位原来也配置了载具武器，且乘客正在该座位上 生效范围：服务器 params Vehicle -载具 params SeatIndex -座位 ID params bControlVehicleWeapon -是否能控制车载武器 ChangePassengerSeat ForceChangePassengerSeat GetSeatNum GetAvailableSeatNum GetPassenger IsSeatIndexAvailable GetCharacterSeatIndex GetDriver GetPassengers GetAvai

## UGCVehicleSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCVehicleSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%BD%BD%E5%85%B7%2FUGCVehicleSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleSystem](https://developer.gp.qq.com/api/#/searchContent/UGCVehicleSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%BD%BD%E5%85%B7%2FUGCVehicleSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleSystem)

类

全文搜索

载具系统接口库

---


## 函数

- **STExtraVehicleBaseSpawnVehicle**(numberVehicleID, VectorLocation, RotatorRotation, booleanIsForce) — 【废弃】请使用 UGCVehicleSystem.SpawnVehicleNew 生成载具 生效范围：服务器 return -载具 params VehicleID -载具表ID params Location -生成位置 params Rotation -旋转 params IsForce -是否无视碰撞强行生成
- **Vehicle**(ASTExtraBaseCharacterPawn, ASTExtraVehicleBaseVehicle, ESTExtraVehicleSeatTypeSeatType, booleanIsForce) — 进入载具 仅限普通玩家控制的角色（Character）可以用 生效范围：服务器&客户端 params Pawn -普通玩家 params Vehicle -载具 params SeatType -座位类型 params IsForce -是否无视距离和阻挡
- **Vehicle**(ASTExtraBaseCharacterPawn) — 离开载具 仅限普通玩家控制的角色可以用 生效范围：服务器&客户端 params Pawn -普通玩家
- **GetVehicleSeatCount**(ASTExtraVehicleBaseVehicle) — 获取载具的座位数量 生效范围：服务器&客户端 return -载具的座位数量 params Vehicle -载具
- **GetVehicleSeatOccupiers**(ASTExtraVehicleBaseVehicle) — 获取载具座位上的乘客列表（包括司机） 生效范围：服务器&客户端 return -载具上的乘客们（包括司机） params Vehicle -对应的载具
- **STExtraVehicleSeatTypeGetVehicleSeatType**(ASTExtraVehicleBaseVehicle, numberSeatIndex) — 获取载具对应 SeatIndex 编号的座位类型 生效范围：服务器&客户端 return -载具座位类型 params Vehicle -载具 params SeatIndex -座位编号(从1开始)
- **STExtraBaseCharacterGetOccupierBySeatIndex**(ASTExtraVehicleBaseVehicle, numberSeatIndex) — 获取 SeatIndex 编号获取对应座位上的乘客 Pawn 生效范围：服务器&客户端 return -对应乘客，如果没有则返回 nil params Vehicle -载具 params SeatIndex -座位编号（从 1 开始）
- **STExtraVehicleBaseSpawnVehicleNew**(stringVehicleBlueprintPath, VectorLocation, RotatorRotation, booleanSnapFloor, booleanIsForce) — 使用蓝图路径生成载具 不要在 Spawn 之后立马修改载具位置，等载具落地停稳后再修改，不然位置修改会失败（如果有类似需求，建议直接创建在对应点） 生效范围：服务器 return -载具 params VehicleBlueprintPath -载具蓝图路径，格式类似 /Game/Arts_PlayerBluePrints/Vehicle/VH_Buggy/BP_VH_Buggy.BP_VH_Buggy_C params Location -生成位置 params Rotation -旋转 params SnapFloor -是否贴地 params IsForce -是否无视碰撞强行生成
- **CharacterEnterVehicle**(ASTExtraBaseCharacterCharacter, ASTExtraVehicleBaseVehicle, ESTExtraVehicleSeatTypeSeatType, booleanIsForce) — 乘客进入载具 仅限普通玩家控制的角色可以用 生效范围：服务器 return -是否成功 params Character -乘客 params Vehicle -载具 params SeatType -座位类型 params IsForce -是否无视距离和阻挡
- **LeaveVehicle**(ASTExtraBaseCharacterCharacter) — 乘客离开当前所在载具 仅限普通玩家控制的角色可以用 生效范围：服务器 params Character -乘客
- **VehicleTo**(ASTExtraVehicleBaseVehicle, VectorLocation, RotatorRotator) — 传送载具 不要在 Spawn 之后立马传送载具，等载具落地停稳后再传送，不然传送会失败（如果有类似需求，建议直接创建在对应点） 生效范围：服务器 params Vehicle -载具 params Location -位置 params Rotator -旋转
- **GetForwardSpeed**(ASTExtraVehicleBaseVehicle) — 获得载具当前速度(单位是cm/s) 生效范围：服务器&客户端 return -载具当前速度 params Vehicle -载具
- **IsStoped**(ASTExtraVehicleBaseVehicle) — 载具是否静止 生效范围：服务器&客户端 return -载具是否静止 params Vehicle -载具
- **IsEngineStarted**(ASTExtraVehicleBaseVehicle) — 载具引擎是否启动 生效范围：服务器&客户端 return -载具引擎是否启动 params Vehicle -载具
- **STExtraVehicleHealthStateGetVehicleHealthState**(ASTExtraVehicleBaseVehicle) — 获得当前载具健康状态 生效范围：服务器&客户端 return -载具当前健康状态 params Vehicle -载具
- **Self**(ASTExtraVehicleBaseVehicle) — 摧毁载具 生效范围：服务器 params Vehicle -载具 Respawn(ASTExtraVehicleBaseVehicle) 重生载具 生效范围：服务器 params Vehicle -载具
- **GetSeatState**(ASTExtraVehicleBaseVehicle, numberSeatIndex) — 指定座位上是否有人 生效范围：服务器&客户端 return -指定座位上是否有人 params Vehicle -载具 params SeatIndex -座位 ID
- **GetSeatNum**(ASTExtraVehicleBaseVehicle) — 获得载具座位个数 生效范围：服务器&客户端 return -载具座位个数 params Vehicle -载具
- **GetWheelNum**(ASTExtraVehicleBaseVehicle) — 获得轮胎数量 生效范围：服务器&客户端 return -载具轮子数量 params Vehicle -载具
- **IsWheelDamageable**(ASTExtraVehicleBaseVehicle, numberWheelIndex) — 获得轮胎是否可以被摧毁 生效范围：服务器 return -轮胎是否可以被摧毁 params Vehicle -载具 params WheelIndex -轮胎 ID（从 1 开始）
- **WheelDamageable**(ASTExtraVehicleBaseVehicle, numberWheelIndex, booleanDamageable) — 设置轮胎是否可以被摧毁 生效范围：服务器 params Vehicle -载具 params WheelIndex -轮胎ID（从1开始） params Damageable -是否可以被摧毁
- **FireVehicleWeapon**(ASTExtraVehicleBaseVehicle, AVehicleShootWeaponVehicleWeapon) — 车载武器停止攻击 仅限驾驶位车载武器生效 生效范围：客户端 params Vehicle -载具 params VehicleWeapon -车载武器
- **FireVehicleWeapon**(ASTExtraVehicleBaseVehicle, AVehicleShootWeaponVehicleWeapon, ASTExtraBaseCharacterCharacter) — 车载武器开始攻击 仅限驾驶位车载武器生效 生效范围：客户端 params Vehicle -载具 params VehicleWeapon -车载武器 params Character -攻击者(传入 nil 视为 Driver)
- **VehicleShootWeaponGetVehicleWeapon**(ASTExtraVehicleBaseVehicle, numberSeatIndex, numberWeaponID) — 获得指定座位上指定 ID 的武器实例 武器 ID 指载具蓝图中，座位上配置的武器序号 生效范围：服务器&客户端 return -武器实例 params Vehicle -载具 params SeatIndex -座位ID（从 1 开始） params WeaponID -武器ID（从 1 开始）
- **GetAllVehicleWeaponList**(ASTExtraVehicleBaseVehicle) — 获得所有车载武器的列表 生效范围：服务器&客户端 return -武器列表 params Vehicle -载具
- **Music**(ASTExtraVehicleBaseVehicle) — 暂停播放车载音乐 生效范围：服务器 params Vehicle -载具
- **STExtraVehicleTypeGetVehicleType**(ASTExtraVehicleBaseVehicle) — 获得载具类型 生效范围：服务器&客户端 return -载具类型 params Vehicle -载具
- **Brake**(ASTExtraVehicleBaseVehicle) — 载具拉起手刹 仅在主控端（驾驶员端）调用有效 生效范围：客户端 params Vehicle -载具
- **Brake**(ASTExtraVehicleBaseVehicle) — 载具放下手刹 仅在主控端（驾驶员端）调用有效 生效范围：客户端 params Vehicle -载具
- **CanDriverBoosting**(ASTExtraVehicleBaseVehicle) — 获得载具是否能够加速 生效范围：服务器&客户端 return -载具是否能够加速 params Vehicle -载具
- **Boosting**(ASTExtraVehicleBaseVehicle) — 载具加速 生效范围：客户端 params Vehicle -载具
- **Boosting**(ASTExtraVehicleBaseVehicle) — 载具取消加速 生效范围：客户端 params Vehicle -载具
- **CanDriverUsingHorn**(ASTExtraVehicleBaseVehicle) — 是否能按喇叭 生效范围：服务器 return -是否能按喇叭 params Vehicle -载具
- **Horn**(ASTExtraVehicleBaseVehicle) — 载具长按喇叭（按下） 生效范围：客户端 params Vehicle -载具
- **Horn**(ASTExtraVehicleBaseVehicle) — 载具长按喇叭（抬起） 生效范围：客户端 params Vehicle -载具
- **Forward**(ASTExtraVehicleBaseVehicle, numberThrottle) — 载具前进/后退 需要在驾驶员所在客户端每帧调用 生效范围：客户端 params Vehicle -载具 params Throttle -取值范围[-1,1]，负值代表后退，正值代表前进
- **CanDrive**(ASTExtraVehicleBaseVehicle) — 驾驶员是否可以操控载具 生效范围：服务器&客户端 return -是否可以操控载具 params Vehicle -载具
- **Music**(ASTExtraVehicleBaseVehicle, numberMusicIndex) — 播放车载音乐 注意，武装载具不支持车载音乐功能 生效范围：服务器&客户端 params Vehicle -载具 params MusicIndex -曲目ID（取值范围[1,8]）
- **STExtraVehicleBaseTypeGetVehicleBaseType**(ASTExtraVehicleBaseVehicle) — 获取载具的基础类型 生效范围：服务器&客户端 return -载具基础类型 params Vehicle -载具
- **WheeledVehicleDragCoefficientScale**(ASTExtraVehicleBaseVehicle, numberScale) — 修改空气阻力的倍率 生效范围：服务器 params Vehicle -载具 params Scale -空气阻力的修改倍率
- **WheeledVehicleMaxRPMScale**(ASTExtraVehicleBaseVehicle, numberScale) — 修改引擎最大转速的倍率 生效范围：服务器 params Vehicle -载具 params Scale -引擎最大转速的修改倍率
- **WheeledVehicleTorqueScale**(ASTExtraVehicleBaseVehicle, numberScale) — 修改引擎扭矩的倍率 生效范围：服务器 params Vehicle -载具 params Scale -引擎扭矩的修改倍率
- **InCustomizeScale**(ASTExtraVehicleBaseVehicle, numberScale) — 用自定义倍率刹车 生效范围：服务器 params Vehicle -载具 params Scale -自定义刹车倍率
- **STExtraVehicleBaseGetVehicleByPlayerController**(APlayerControllerPlayerController) — 通过 PlayerController 获取 Vehicle 生效范围：服务器&客户端 return -对应的载具 params PlayerController -对应的玩家控制器 SpawnVehicle EnterVehicle ExitVehicle GetVehicleSeatCount GetVehicleSeatOccupiers GetVehicleSeatType GetOccupierBySeatIndex SpawnVehicleNew CharacterEnterVehicle CharacterLeaveVehicle TeleportVehicleTo GetFor

## UGCVehicleSystemV2

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCVehicleSystemV2?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCVehicleSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleSystemV2](https://developer.gp.qq.com/api/#/searchContent/UGCVehicleSystemV2?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCVehicleSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleSystemV2)

类

全文搜索

载具系统接口库V2

---


## 函数

- **STExtraVehicleBaseSpawnVehicle**(stringVehiclePath, VectorLocation, RotatorRotation, boolSnapFloor, boolIsForce) — 使用蓝图路径生成载具 不要在 Spawn 之后立马修改载具位置，等载具落地停稳后再修改，不然位置修改会失败（如果有类似需求，建议直接创建在对应点） 生效范围：服务器 return -载具 params VehiclePath -载具蓝图路径，格式示例："/Game/Arts_PlayerBluePrints/Vehicle/VH_Buggy/BP_VH_Buggy.BP_VH_Buggy_C" params Location -生成位置 params Rotation -旋转。可缺省，默认无旋转 params SnapFloor -是否贴地。可缺省，默认 true params IsForce
- **Vehicle**(ASTExtraVehicleBaseVehicle) — 摧毁载具 生效范围：服务器 params Vehicle -载具
- **STExtraVehicleBaseRespawn**(ASTExtraVehicleBaseVehicle) — 重生载具 重生将创建新载具，旧的载具将被销毁不再可用 生效范围：服务器 return -重生后的新载具。若为nil，表示操作失败，新的载具不会创建、旧的载具也不会销毁。 params Vehicle -载具
- **EnterVehicle**(PlayerPawn) — PlayerController @玩家角色或玩家PlayerControllerPlayer, ASTExtraVehicleBaseVehicle, intSeatIndex, boolIsForce
- **LeaveVehicle**(PlayerPawn) — PlayerController @玩家角色或玩家PlayerControllerPlayer, boolIsForce
- **STExtraVehicleBaseTypeGetVehicleType**(ASTExtraVehicleBaseVehicle) — 获取载具类型 生效范围：服务器&客户端 return -载具基础类型 params Vehicle -载具
- **CanDrive**(ASTExtraVehicleBaseVehicle) — 驾驶员是否可以操控载具 生效范围：服务器&客户端 return -是否可以操控载具 params Vehicle -载具
- **Forward**(ASTExtraVehicleBaseVehicle, floatThrottle) — 操作载具前进/后退 需要在驾驶员所在客户端每帧调用 当地面载具处于前进状态时，输入后退操作，将执行刹车逻辑，受刹车力量系数(BrakeTorqueCoefficient)影响。 当地面载具处于后退状态时，输入前进操作，也将执行刹车逻辑。 生效范围：客户端 params Vehicle -载具 params Throttle -取值范围[-1,1]，负值代表后退，正值代表前进
- **Turn**(ASTExtraVehicleBaseVehicle, floatThrottle) — 操作载具打右方向/左方向 需要在驾驶员所在客户端每帧调用 生效范围：客户端 params Vehicle -载具 params Throttle -取值范围[-1,1]，负值代表左方向，正值代表右方向
- **CanHandBrake**(ASTExtraVehicleBaseVehicle) — 获得载具是否支持(急刹)手刹 生效范围：服务器&客户端 return -载具是否能够手刹 params Vehicle -载具
- **HandBrake**(ASTExtraVehicleBaseVehicle, floatBrakeScale) — 操作载具(急刹)手刹 需要在驾驶员所在客户端调用 生效范围：客户端 params Vehicle -载具 params BrakeScale -刹车倍率，取值范围[0,1]，0为无刹车，1为最强刹车
- **CanBoosting**(ASTExtraVehicleBaseVehicle) — 获得载具能否加速 生效范围：服务器&客户端 return -载具是否能够加速 params Vehicle -载具
- **Boosting**(ASTExtraVehicleBaseVehicle, boolOpen) — 开关载具加速 需要在驾驶员所在客户端调用 生效范围：客户端 params Vehicle -载具 params Open -true开启加速，false关闭加速
- **CanHorn**(ASTExtraVehicleBaseVehicle) — 获得载具能否按喇叭 生效范围：服务器&客户端 return -载具是否能够按喇叭 params Vehicle -载具
- **Horn**(ASTExtraVehicleBaseVehicle, boolOpen) — 按下/抬起载具喇叭 需要在驾驶员所在客户端调用 生效范围：客户端 params Vehicle -载具 params Open -true按下喇叭，false抬起喇叭
- **VectorGetVelocity**(ASTExtraVehicleBaseVehicle) — 获得载具当前速度(单位是cm/s) 生效范围：服务器&客户端 return -载具当前速度 params Vehicle -载具
- **STExtraVehicleHealthStateGetVehicleHealthState**(ASTExtraVehicleBaseVehicle) — 获得当前载具健康状态 生效范围：服务器&客户端 return -载具当前健康状态 params Vehicle -载具
- **CanDamage**(ASTExtraVehicleBaseVehicle) — 获得载具是否能受到伤害 生效范围：服务器 return -载具是否能受到伤害 params Vehicle -载具
- **CanDamage**(ASTExtraVehicleBaseVehicle, boolCanDamage) — 设置载具是否能受到伤害 生效范围：服务器 params Vehicle -载具 params CanDamage -能否受到伤害
- **GetSeatNum**(ASTExtraVehicleBaseVehicle) — 获取座位数量 生效范围：服务器 return -座位数量 params Vehicle -载具
- **GCVehicleSeatDataGetSeatDataByIndex**(ASTExtraVehicleBaseVehicle, intSeatIndex) — 获取座位数据 生效范围：服务器 return -座位数据 params Vehicle -载具 params SeatIndex -座位索引
- **GetAllSeatDatas**(ASTExtraVehicleBaseVehicle) — 获取所有座位数据 生效范围：服务器 return -座位数据列表 params Vehicle -载具
- **ChangePassengerSeat**(PlayerPawn) — PlayerController @玩家角色或玩家PlayerControllerPlayer, numberSeatIndex
- **FireVehicleWeapon**(ASTExtraVehicleBaseVehicle) — 车载武器开始攻击 仅限驾驶位车载武器生效 生效范围：客户端 params Vehicle -载具 SpawnVehicle DestroyVehicle Respawn EnterVehicle LeaveVehicle GetVehicleType CanDrive MoveForward MoveTurn CanHandBrake SetHandBrake CanBoosting SetBoosting CanHorn SetHorn GetVelocity GetVehicleHealthState CanDamage SetCanDamage GetSeatNum GetSeatDat

## UGCVoiceManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCVoiceManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCVoiceManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVoiceManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCVoiceManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCVoiceManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVoiceManagerSystem)

类

全文搜索

语音系统接口库

---


## 函数

- **GVoiceInterfaceGetGVoiceInterface**(获取 Voice 组件 生效范围：客户端 return -对应语音管理类的指针)
- **GetPlayerMemberID**(numberPlayerKey) — 获取玩家的语音房间 MemberID 生效范围：服务器 return -角色语音房间的 MemberID params PlayerKey -角色的 PlayerKey
- **VoiceRoom**(stringRoomKey) — 加入语音房间 RoomKey 为语音房间唯一标识，可由自己进行拼接 生效范围：客户端 params RoomKey -语音房间 Key
- **VoiceRoom**(退出 UGC 语音房间 生效范围：客户端)
- **GetVoiceRoomKey**(获取当前房间 RoomKey 生效范围：客户端 return -语音房间 Key)
- **GlobalVoiceRadius**(numberRadius) — 设置全局语音生效范围 生效范围：客户端 params Radius -全局语音半径（单位：cm）
- **VoiceRoomSoundEnable**(booleanIsEnable) — 开启/关闭语音房间喇叭 生效范围：客户端 params IsEnable -开启或者关闭喇叭
- **VoiceRoomMicrophoneEnable**(booleanIsEnable) — 开启/关闭语音房间麦克风 生效范围：客户端 params IsEnable -开启或者关闭麦克风
- **GlobalVoiceSoundEnable**(booleanIsEnable) — 开启/关闭全局语音喇叭 生效范围：客户端 params IsEnable -开启或者关闭喇叭
- **GlobalVoiceMicrophoneEnable**(booleanIsEnable) — 开启/关闭 全局语音麦克风 生效范围：客户端 params IsEnable -开启或者关闭麦克风
- **VoiceRoomPlayerMuteState**(numberMemberID, booleanIsMute) — 设置语音房间指定玩家语音屏蔽（静音）状态 生效范围：客户端 params MemberID -当前房间要被屏蔽的玩家的 UID params IsMute -是否屏蔽
- **GlobalVoicePlayerMuteState**(numberMemberID, booleanIsMute) — 设置全局房间指定玩家语音屏蔽（静音）状态 生效范围：客户端 params MemberID -当前房间要被屏蔽的玩家的 MemberID params IsMute -是否屏蔽
- **IsVoiceRoomSoundEnable**(获得语音房间声音（喇叭）开关状态 生效范围：客户端 return -当前房间喇叭状态)
- **IsVoiceRoomMicrophoneEnable**(获得语音房间麦克风开关状态 生效范围：客户端 return -当前房间麦克风状态)
- **IsGlobalVoiceSoundEnable**(获得全局语音声音（喇叭）开关状态 生效范围：客户端 return -当前房间喇叭状态)
- **IsGlobalVoiceMicrophoneEnable**(获得全局语音麦克风开关状态 生效范围：客户端 return -当前房间麦克风状态)
- **GlobalVoiceRoom**(numberGlobalVoiceRoomId) — 加入全局语音房间（依赖于全局语音房间的某个范围可听可说,区域语音，包厢等等） 生效范围：客户端 params GlobalVoiceRoomId -区域小房间的 index
- **GlobalVoiceRoom**(退出全局语音房间（区域语音，包厢等等） 生效范围：客户端)
- **CivilVoiceDetect**(关闭文明语音检测和 lbs 小号限制 生效范围：客户端 GetGVoiceInterface GetPlayerMemberID JoinVoiceRoom QuitVoiceRoom GetVoiceRoomKey SetGlobalVoiceRadius SetVoiceRoomSoundEnable SetVoiceRoomMicrophoneEnable SetGlobalVoiceSoundEnable SeGlobalVoiceMicrophoneEnable SetVoiceRoomPlayerMuteState SetGlobalVoicePlayerMuteState IsV)

## UGCWeaponManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCWeaponManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCWeaponManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCWeaponManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCWeaponManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCWeaponManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCWeaponManagerSystem)

类

全文搜索

武器管理系统接口库

---


## 函数

- **WeaponManagerComponentGetWeaponManagerComponent**(PlayerPawnPlayerPawn) — 获取武器管理组件 生效范围：服务器&客户端 return -武器管理组件 params PlayerPawn -玩家角色
- **STExtraWeaponGetWeaponBySlot**(PlayerPawnPlayerPawn, ESurviveWeaponPropSlotSlot) — 获取对应插槽的武器实例 生效范围：服务器&客户端 return -武器 params PlayerPawn -玩家角色 params Slot -武器槽位
- **STExtraWeaponGetCurrentWeapon**(PlayerPawnPlayerPawn) — 获取当前使用的武器实例 生效范围：服务器&客户端 return -武器 params PlayerPawn -玩家角色
- **STExtraWeaponGetLastUsedWeapon**(PlayerPawnPlayerPawn) — 获取上一把武器 生效范围：服务器&客户端 return -武器 params PlayerPawn -玩家角色
- **SurviveWeaponPropSlotGetCurrentWeaponSlot**(PlayerPawnPlayerPawn) — 获取当前使用武器插槽 生效范围：服务器&客户端 return -武器槽位 params PlayerPawn -玩家角色
- **WeaponBySlot**(PlayerPawnPlayerPawn, ESurviveWeaponPropSlotSlot, booleanIsUseAnimation) — 切换对应槽位的武器 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params Slot -武器槽位 params IsUseAnimation -是否播放使用动画
- **WeaponAttachToBack**(PlayerPawnPlayerPawn) — 收起武器 生效范围：服务器&客户端 params PlayerPawn -玩家角色
- **GetWeaponItemID**(ASTExtraWeaponWeapon) — 获取武器ItemID 生效范围：服务器&客户端 return -物品ID,对应物品表中ID params Weapon -武器
- **GetWeaponName**(ASTExtraWeaponWeapon) — 获取武器名 生效范围：服务器&客户端 return -武器名称 params Weapon -武器
- **GetCurrentUsingAmmoID**(PlayerPawnPlayerPawn) — 获取当前消耗弹药 生效范围：服务器&客户端 return -弹药ID params PlayerPawn -玩家角色
- **WeaponSlotVisible**(PlayerPawnPlayerPawn, ESurviveWeaponPropSlotWeaponSlot, booleanbVisible) — 设置武器的可见性 生效范围：客户端 params PlayerPawn -玩家角色 params WeaponSlot -武器槽位 params bVisible -是否可见 GetWeaponManagerComponent GetWeaponBySlot GetCurrentWeapon GetLastUsedWeapon GetCurrentWeaponSlot SwitchWeaponBySlot CurrentWeaponAttachToBack GetWeaponItemID GetWeaponName GetCurrentUsingAmmoID SetWeaponSlotVisi

## UGCWeatherSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCWeatherSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9C%BA%E6%99%AF%E4%B8%8E%E7%8E%AF%E5%A2%83%2FUGCWeatherSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCWeatherSystem](https://developer.gp.qq.com/api/#/searchContent/UGCWeatherSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9C%BA%E6%99%AF%E4%B8%8E%E7%8E%AF%E5%A2%83%2FUGCWeatherSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCWeatherSystem)

类

全文搜索

天气系统接口库

---


## 函数

- **WeatherSequence**(PlayerControllerPlayerController, WeatherSequenceWeatherSequence, numberBlendTime) — 加载天气序列 生效范围：服务器 params PlayerController -玩家控制器 params WeatherSequence -天气序列资源 params BlendTime -过渡时间
- **WeatherSequence**(PlayerControllerPlayerController, WeatherSequenceWeatherSequence) — 卸载天气序列 生效范围：服务器 params PlayerController -玩家控制器 params WeatherSequence -天气序列资源
- **WeatherSequence**(PlayerControllerPlayerController, WeatherSequenceWeatherSequence, numberTime) — 设置天气序列播放进度 生效范围：服务器&客户端 params PlayerController -玩家控制器 params WeatherSequence -天气序列资源 params Time -目标时间
- **WeatherSequence**(PlayerControllerPlayerController, WeatherSequenceWeatherSequence) — 暂停天气序列 生效范围：服务器&客户端 params PlayerController -玩家控制器 params WeatherSequence -天气序列资源
- **WeatherSequence**(PlayerControllerPlayerController, WeatherSequenceWeatherSequence) — 继续天气序列 生效范围：服务器&客户端 params PlayerController -玩家控制器 params WeatherSequence -天气序列资源
- **SequenceGetCurrentWeatherSequence**(PlayerControllerPlayerController) — 获取当前天气序列 生效范围：服务器&客户端 return -天气序列资源 params PlayerController -玩家控制器
- **GetCurrentWeatherPlayPercentage**(PlayerControllerPlayerController) — 获取当前天气播放进度 生效范围：服务器&客户端 return -播放进度（0~1） params PlayerController -玩家控制器
- **GetCurrentWeatherTime**(PlayerControllerPlayerController) — 获取当前天气时间 生效范围：服务器&客户端 return -天气时间（0~24） params PlayerController -玩家控制器 LoadWeatherSequence UnloadWeatherSequence SeekWeatherSequence PauseWeatherSequence ResumeWeatherSequence GetCurrentWeatherSequence GetCurrentWeatherPlayPercentage GetCurrentWeatherTime

## UGCWidgetManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCWidgetManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2FUI%20%E7%95%8C%E9%9D%A2%2FUGCWidgetManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCWidgetManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCWidgetManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2FUI%20%E7%95%8C%E9%9D%A2%2FUGCWidgetManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCWidgetManagerSystem)

类

全文搜索

UI控件管理器系统接口库

---


## 函数

- **WidgetAsync**(string) — FSoftObjectPathWidgetClassPath, fun(Widget:UUserWidget
- **UserWidgetCreateWidget**(UClassWidgetClass) — 创建一个控件，返回控件实例 return -控件实例 params WidgetClass -控件蓝图类
- **Widget**(UUserWidgetWidget) — 销毁一个控件 params Widget -控件实例
- **ToSlot**(UUserWidgetWidget, stringSlotName, numberZOrder, FAnchorDataAnchorData) — 添加一个控件到指定 UI 挂点槽位 params Widget -控件实例 params SlotName -控件槽位名称，默认为 UI.UISlot.MainUISlot_Low params ZOrder -控件层级，默认为 0 params AnchorData -控件锚点，默认为 { Anchors = { Minimum = Vector2D.New(0, 0), Maximum = Vector2D.New(1, 1) } }
- **FromSlot**(UUserWidgetWidget) — 从 UI 挂点槽位移除控件 params Widget -控件实例
- **WidgetLayout**(stringLayoutPath) — 异步加载并设置当前的 WidgetLayout，同时只能设置一个，旧的 WidgetLayout 会被卸载。传入 “Default” 可卸载 WidgetLayout 回到默认状态。（主要用于可视化屏蔽玩法中不需要的和平 UI，UI 会强制隐藏） params LayoutPath -WidgetLayout 引用路径
- **Widget**(UUserWidgetWidget) — 显示一个控件，需要控件已经挂载到挂点槽上 params Widget -控件实例
- **Widget**(UUserWidgetWidget) — 隐藏一个控件 params Widget -控件实例
- **IsWidgetAddedToSlot**(UUserWidgetWidget) — 判断一个控件是否已经挂载在 UI 挂点上 return -是否已经挂载 params Widget -控件实例
- **IsWidgetVisible**(UUserWidgetWidget) — 判断一个控件是否可见 return -是否可见 params Widget -控件实例
- **WidgetGetSubWidget**(UUserWidgetWidget, stringSubWidgetName) — 获取子控件，可用于获取 UMG 蓝图里的子控件 return -子控件实例 params Widget -控件实例 params SubWidgetName -子控件名称
- **GetAllWidgetsOfClass**(UClassWidgetClass, booleanbAddedToSlotOnly) — 获取指定类别的所有控件，可筛选只获取已被添加到挂点的控件 生效范围：客户端 return -控件实例列表 params WidgetClass -控件类（UUserWidget） params bAddedToSlotOnly -是否只获取已添加到挂点的控件
- **WidgetGetMainUI**(获取主 UI 面板实例（MainControlPanelTochButton） 生效范围：客户端)
- **WidgetGetMainControlUI**(获取主控制 UI 面板实例（MainControlBaseUI） 生效范围：客户端)
- **WidgetGetShootingUIPanel**(获取射击相关UI面板实例（ShootingUIPanel） 生效范围：客户端)
- **WidgetGetSkillRootPanel**(获取技能相关UI面板实例（SkillRootPanel_BP） 生效范围：客户端)
- **WidgetGetUserWidgetByWidgetLayout**(stringWidgetLayoutPath, stringUserWidgetName) — 获取通过WidgetLayout加载的自定义UserWidget 生效范围：客户端 params WidgetLayoutPath -控件 ClassPath, 控件需继承自 UUserWidgetLayout params UserWidgetName -控件 Name
- **WidgetHiddenLayer**(UserWidgetWidget) — 【废弃】请使用 UGCWidgetManagerSystem.ShowWidget SubWidgetHiddenLayer为控件减少隐藏层数（主要用于屏蔽玩法中不需要的和平 UI，HiddenLayer>=1，UI 会强制隐藏） 生效范围：客户端
- **VirtualJoystickVisibility**(booleanIsVisibility) — 设置摇杆是否可见 生效范围：客户端 params IsVisibility -是否可见（true 为显示，false 为隐藏）
- **CrosshairVisibility**(booleanIsVisibility) — 设置准星是否可见 生效范围：客户端 params IsVisibility -是否可见（true 为显示，false 为隐藏，在没有被隐藏的情况下禁止将其显示）
- **Share**(functionCloseCallBack) — 弹出分享界面 生效范围：客户端 return -分享调用是否成功 params CloseCallBack -关闭分享界面回调函数
- **ChildToTochButton**(UserWidgetWidget) — 把自定义 UI 挂到和平 UI 上并应用自定义布局 生效范围：客户端
- **LobbyChatFrameUI**(加载大厅聊天框 UI 生效范围：客户端)
- **AddObjectPositionUI**(ActorActor, stringWidgetClassPath, FVectorOffset, booleanSizeAutoContent, booleanOutViewHide, booleanBeOcclusionHide, booleanShowSelf) — 添加对象位置 UI,头顶 UI（类似血条，玩家名） 生效范围：服务器&客户端 return -实例 Index params Actor -需要添加位置 UI 的 Actor 对象 params WidgetClassPath -控件 ClassPath 控件需继承自 UObjectPositionWidget params Offset -偏移量 params SizeAutoContent -大小适配 params OutViewHide -控件离开镜头后是否隐藏（比如在背后） params BeOcclusionHide -被遮挡后是否隐藏 params ShowSelf -是否显示自己
- **AddObjectPositionUI_Custom**(ActorActor, stringWidgetClassPath, FObjectPosUIInfoObjectPosUIInfo) — 添加对象位置 UI,头顶 UI（类似血条，玩家名），自定义版本，提供更多参数配置。（ObjectPosUIInfo 可在蓝图中添加参数使用带有默认值的版本） 生效范围：服务器&客户端 return -实例 Index params Actor -需要添加位置 UI 的 Actor 对象 params WidgetClassPath -控件 ClassPath 控件需继承自 UObjectPositionWidget params ObjectPosUIInfo -配置属性结构体，可以在蓝图中定义该变量传入
- **ObjectPositionUI**(UObjectWorldContent, numberInstanceIndex) — 移除对象位置 UI 生效范围：服务器&客户端 params WorldContent -世界中对象 params InstanceIndex -实例 Index
- **WidgetGetObjectPositionUI**(UObjectWorldContent, numberInstanceIndex) — 根据 InstanceIndex 获取 Widget 实例（Add 之后不能立刻获取到，Widget 有可能还在加载） 生效范围：客户端 return UObjectPositionWidget -实例 params WorldContent -世界中对象 params InstanceIndex -实例 Index
- **SetPlayerStateUIVisibility**(booleanbVisible) — 设置玩家状态 UI 可见性 生效范围：客户端 return -实际修改的控件数量 params bVisible -是否显示（true 为显示，false 为隐藏）
- **ShowTipsUI**(stringTipsContent) — 在屏幕中间上方显示 Tips 内容 生效范围：客户端 params TipsContent -Tips 文字内容
- **TipsUIByServer**(stringTipsContent, PlayerControllerPlayerController) — 在屏幕中间上方显示 Tips 内容，从DS发起，在传入的PC所属的客户端显示 生效范围：服务器 params TipsContent -Tips 文字内容 params PlayerController -玩家控制器
- **WidgetGetGlobalOBUI**(获取全局观战 UI，仅全局观战模式下生效 生效范围：客户端)
- **Map**(stringMapPath, FVectorMapCentre, numberMapSize, numberMapScale) — 修改右上角地图 生效范围：客户端 params MapPath -地图文件路径 params MapCentre -地图中心点坐标 params MapSize -地图实际大小 params MapScale -地图缩放比
- **MapByMapID**(numberMapID) — 根据地图ID修改右上角地图 生效范围：客户端 params MapID -地图ID
- **Vector2DProjectWorldLocationToWidgetPosition**(FVectorWorldLocation) — 将世界坐标转换为控件坐标 生效范围：客户端 return -控件坐标 params WorldLocation -世界坐标
- **CanvasPanelSlotSlotAsCanvasSlot**(UUserWidgetWidget) — 获取 Canvas 插槽 生效范围：客户端 return - Canvas 插槽实例 params Widget -控件实例
- **OverlaySlotAsOverlaySlot**(UUserWidgetWidget) — 获取 Overlay 插槽 生效范围：客户端 return UOverlaySlot -插槽实例 params Widget -控件实例
- **HorizontalBoxSlotAsVerticalBoxSlot**(UUserWidgetWidget) — 获取 HorizontalBox 插槽 生效范围：客户端 return UVerticalBoxSlot -插槽实例 params Widget -控件实例
- **GetViewportScale**(获取视口缩放比例 生效范围：客户端 return -缩放比例)
- **Vector2DGetViewportSize**(获取视口尺寸 生效范围：客户端 return -视口尺寸)
- **GeometryGetViewportWidgetGeometry**(获取视口 Widget 几何信息 生效范围：客户端 return -几何信息)
- **Vector2DAbsoluteToLocal**(FGeometryGeometry, FVector2DAbsoluteCoordinate) — 绝对坐标转本地坐标 生效范围：客户端 return -本地坐标 params Geometry -控件几何信息 params AbsoluteCoordinate -绝对坐标
- **Vector2DLocalToAbsolute**(FGeometryGeometry, FVector2DLocalCoordinate) — 本地坐标转绝对坐标 生效范围：客户端 return -绝对坐标 params Geometry -控件几何信息 params LocalCoordinate -本地坐标
- **Vector2DGetLocalSize**(FGeometryGeometry) — 获取控件的本地尺寸 生效范围：客户端 return -本地尺寸 params Geometry -控件几何信息
- **Vector2DGetAbsoluteSize**(FGeometryGeometry) — 获取控件的绝对尺寸 生效范围：客户端 return -绝对尺寸 params Geometry -控件几何信息
- **Vector2DGetAbsolutePosition**(FGeometryGeometry) — 获取控件的绝对位置 生效范围：客户端 return -绝对位置 params Geometry -控件几何信息
- **WidgetGetWidgetFromName**(UserWidgetWidget, stringUserWidgetName) — 【废弃】请使用 UGCWidgetManagerSystem.GetSubWidget 通过控件名获取某一控件的子控件 生效范围：客户端 params UserWidgetName -控件 Name
- **MainUIWidgetLayoutByPath**(stringWidgetLayoutPath) — 【废弃】请使用 UGCWidgetManagerSystem.SetWidgetLayout 可视化设置主 UI 控件是否可见（主要用于可视化屏蔽玩法中不需要的和平 UI，UI 会强制隐藏） 生效范围：客户端 params WidgetLayoutPath -控件 ClassPath, 控件需继承自 UUserWidgetLayout
- **MainUIWidgetLayoutByPath**(stringWidgetLayoutPath) — 【废弃】请使用 UGCWidgetManagerSystem.SetWidgetLayout 可视化设置主 UI 控件是否可见（主要用于可视化屏蔽玩法中不需要的和平 UI，UI 会强制隐藏） 生效范围：客户端 params WidgetLayoutPath -控件 ClassPath, 控件需继承自 UUserWidgetLayout
- **FutureAddChildToUISlotByPath**(stringWidgetPath, stringUISlotName, numberZOrder, FAnchorDataAnchorData) — 【废弃】请使用 UGCWidgetManagerSystem.CreateWidgetAsync() + UGCWidgetManagerSystem.AddToSlot() 把自定义 UI 挂到和平 UI 挂点上 生效范围：客户端 return -PromiseFuture对象 params WidgetPath -控件 ClassPath params UISlotName -挂点标识 params ZOrder -层级 params AnchorData -控件布局信息
- **ChildToUISlotByWidget**(UserWidgetWidget, stringUISlotName, numberZOrder, FAnchorDataAnchorData) — 【废弃】请使用 UGCWidgetManagerSystem.AddToSlot 把自定义 UI 挂到和平 UI 挂点上 生效范围：客户端 params Widget -UI params UISlotName -挂点标识 params ZOrder -层级 params AnchorData -控件布局信息
- **WidgetHiddenLayer**(UserWidgetWidget) — 【废弃】请使用 UGCWidgetManagerSystem.HideWidget 为控件添加隐藏层数（主要用于屏蔽玩法中不需要的和平 UI，HiddenLayer>=1，UI 会强制隐藏） 生效范围：客户端
- **WidgetAddNewUI**(stringWidgetClassPath, booleanIsAdaptation) — 【废弃】请使用 UGCWidgetManagerSystem.CreateWidgetAsync() + UGCWidgetManagerSystem.AddToSlot() 添加新 UI，将会自动完成 AddViewport 显示 生效范围：客户端 params WidgetClassPath -Widget 路径 params IsAdaptation -是否屏幕适配
- **WidgetCreateNewWidget**(stringWidgetClassPath) — 【废弃】请使用 UGCWidgetManagerSystem.CreateWidgetAsync 创建新控件 生效范围：客户端 params WidgetClassPath -Widget 路径
- **NewWidgetAsync**(stringWidgetClassPath, ULuaSingleDelegateInCreatedDelegate) — 【废弃】请使用 UGCWidgetManagerSystem.CreateWidgetAsync 异步创建新控件，并绑定回调 生效范围：客户端 params WidgetClassPath -Widget 路径 params InCreatedDelegate -回调 CreateWidgetAsync CreateWidget DestroyWidget AddToSlot RemoveFromSlot SetWidgetLayout ShowWidget HideWidget IsWidgetAddedToSlot IsWidgetVisible GetSubWidget GetAllWi

## UGeneralProjectSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGeneralProjectSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGeneralProjectSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGeneralProjectSettings](https://developer.gp.qq.com/api/#/searchContent/UGeneralProjectSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGeneralProjectSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGeneralProjectSettings)

类

全文搜索

---


## 属性

- **name** — of the company (author, provider) that created the project. The distinguished name of the company (author, provider) that created the project. The project's copyright andor trademark notices. The project's description text. The project's homepage URL. The project's licensing terms. The project's pri

## UGIBoxVolumeComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGIBoxVolumeComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGIBoxVolumeComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGIBoxVolumeComponent](https://developer.gp.qq.com/api/#/searchContent/UGIBoxVolumeComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGIBoxVolumeComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGIBoxVolumeComponent)

类

全文搜索

---


## 函数

- **CaptureSceneToAmbientCube**(CaptureSceneToAmbientCube)

## UGridPanel

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGridPanel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridPanel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridPanel](https://developer.gp.qq.com/api/#/searchContent/UGridPanel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridPanel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridPanel)

类

全文搜索

A panel that evenly divides up available space between all of its children. Many Children

---


## 函数

- **AddChildToGrid**(UWidget *Content) — AddChildToGrid

## 属性

- **column** — fill rules The row fill rules ColumnFill RowFill

## UGridPathFollowingComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGridPathFollowingComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridPathFollowingComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridPathFollowingComponent](https://developer.gp.qq.com/api/#/searchContent/UGridPathFollowingComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridPathFollowingComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridPathFollowingComponent)

类

全文搜索

Path following augmented with local navigation grids Keeps track of nearby grids and use them instead of navigation path when agent is inside. Once outside grid, regular path following is resumed. This allows creating dynamic navigation obstacles with fully static navigation (e.g. static navmesh), as long as they are minor modifications for path. Not recommended for blocking off entire corridors. Does not replace proper avoidance for dynamic obstacles!

---

## UGridSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGridSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridSlot](https://developer.gp.qq.com/api/#/searchContent/UGridSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridSlot)

类

全文搜索

A slot for UGridPanel, these slots all share the same size as the largest slot in the grid.

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetRow**(int32InRow) — Sets the row index of the slot, this determines what cell the slot is in the panel
- **SetRowSpan**(int32InRowSpan) — How many rows this this slot spans over
- **SetColumn**(int32InColumn) — Sets the column index of the slot, this determines what cell the slot is in the panel
- **SetColumnSpan**(int32InColumnSpan) — How many columns this slot spans over
- **SetLayer**(int32InLayer) — Sets positive values offset this cell to be hit-tested and drawn on top of others.
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment) — SetPadding SetRow SetRowSpan SetColumn SetColumnSpan SetLayer SetHorizontalAlignment SetVerticalAlignment

## 属性

- **padding** — area between the slot and the content it contains. The alignment of the object horizontally. The alignment of the object vertically. The row index of the cell this slot is in The column index of the cell this slot is in Positive values offset this cell to be hit-tested and drawn on top of others. De

## UGridVisibilityCaptureComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGridVisibilityCaptureComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridVisibilityCaptureComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridVisibilityCaptureComponent](https://developer.gp.qq.com/api/#/searchContent/UGridVisibilityCaptureComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridVisibilityCaptureComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridVisibilityCaptureComponent)

类

全文搜索

---


## 函数

- **InitGridIDVisibilityCalculation**(TArray < FVector > &InGridLocations)
- **CalculateGridIDVisibility**(int32 GridID, TArray < FGridVisibilityCameraInfo >& CameraLocations, TArray < int32 > &PotentialGrids)
- **FinishGridIDVisibilityCalculation**(InitGridIDVisibilityCalculation CalculateGridIDVisibility FinishGridIDVisibilityCalculation)

## 属性

- **field** — of view (in degrees). UStaticMesh *GridMesh UTextureRenderTarget2D *RenderTargetToCreateRenderer UInstancedStaticMeshComponent *GridMeshComp CaptureViewSize NearClipPlane GridMesh GridMeshSizeScale GridMeshLocationOffset bForceLowestLOD bHiddenFoliage OcclusionDepthDiffThreshold bShouldRenderGridMes

