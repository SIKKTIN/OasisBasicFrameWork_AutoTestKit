# Actor Component 类  (前缀: UA)
_共 55 个类_
---
## UActivityFakePossessComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UActivityFakePossessComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActivityFakePossessComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActivityFakePossessComponent](https://developer.gp.qq.com/api/#/searchContent/UActivityFakePossessComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActivityFakePossessComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActivityFakePossessComponent)

类

全文搜索

能够将这个Actor的控制权传递给玩家的组件

---


## 函数

- **FakePossess**(AController *PC) — 生效范围：S 让一个PlayerController控制这个Actor params PC -获得控制权的PlayerController
- **FakeUnPossess**(EUnPossessReasonReason) — 生效范围：S 解除这个Actor上的PC的控制权 params Reason -解除控制权的原因
- **FakePossessWithAttach**(AController* PC, USceneComponent* AttachScene, FName SocketName, boolbMulticastToClient) — 生效范围：S 让一个PlayerController控制这个Actor，并将当前控制的角色Attach到这个Actor上 params PC -获得控制权的PlayerController params AttachScene -Attach到的组件 params SocketName -Attach到的Socket
- **FakeUnPossessWithDettach**(EUnPossessReasonReason) — 生效范围：S 解除这个Actor上的PC的控制权，并将角色从这个Actor上Detach params Reason -解除控制权的原因
- **CanBePossess**(ASTExtraBaseCharacter *Character) — 生效范围：S 获取是否可以由这个Character控制当前Actor params Character -要检查的Character FakePossess FakeUnPossess FakePossessWithAttach FakeUnPossessWithDettach CanBePossess

## 属性

- **PC** — 获取到这个Actor控制权的PC 解除控制权事件委托 @param PC 解除这个Actor控制权的PC 解除控制权事件委托 @param PC 解除这个Actor控制权的PC @param Reason 解除控制权的原因 OnPossess OnUnPossess OnUnPossessWithReason

## UActorChannel

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UActorChannel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActorChannel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActorChannel](https://developer.gp.qq.com/api/#/searchContent/UActorChannel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActorChannel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActorChannel)

类

全文搜索

A channel for exchanging actor and its subobject's properties and RPCs. ActorChannel manages the creation and lifetime of a replicated actor. Actual replication of properties and RPCs actually happens in FObjectReplicator now (see DataReplication.h). An ActorChannel bunch looks like this: |----------------------|---------------------------------------------------------------------------| | SpawnInfo | (Spawn Info) Initial bunch only | | -Actor Class | -Created by ActorChannel | | -Spawn LocRot | | | NetGUID assigns | | | -Actor NetGUID | | | -Component NetGUIDs | | |----------------------|---------------------------------------------------------------------------| | | | |----------------------|---------------------------------------------------------------------------| | NetGUID ObjRef | (Content chunks) x number of replicating objects (Actor + any components) | | | -Each chunk created by its own FObjectReplicator instance. | |----------------------|---------------------------------------------------------------------------| | | | | Properties... | | | | | | RPCs... | | | | | |----------------------|---------------------------------------------------------------------------| | <End Tag> | | |----------------------|---------------------------------------------------------------------------|

---

## UActorComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UActorComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActorComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActorComponent](https://developer.gp.qq.com/api/#/searchContent/UActorComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActorComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActorComponent)

类

全文搜索

ActorComponent is the base class for components that define reusable behavior that can be added to different types of Actors. ActorComponents that have a transform are known as SceneComponents and those that can be rendered are PrimitiveComponents. @see USceneComponent @see UPrimitiveComponent

---


## 函数

- **StringGetToString**()
- **ForceNetUpdate**()
- **OnRep_ScriptNetworkReplicatedPropertyWrapper**()
- **CallSubObjectLuaOnRep**(UObject *InObject)
- **ServerSendScriptNetworkRemoteContent**(FScriptNetworkRemoteContent &Content)
- **ServerSendScriptNetworkRemoteContent_Unreliable**(FScriptNetworkRemoteContent &Content)
- **ClientSendScriptNetworkRemoteContent**(FScriptNetworkRemoteContent &Content)
- **ClientSendScriptNetworkRemoteContent_Unreliable**(FScriptNetworkRemoteContent &Content)
- **ReceiveScriptNetworkRemoteContent**(FScriptNetworkRemoteContent &Content)
- **IsBeingDestroyed**(Returns whether the component is in the process of being destroyed.)
- **OnRep_Replicates**()
- **OnRep_IsActive**()
- **GetOwner**(Follow the Outer chain to get the AActor that 'Owns' this component)
- **ComponentHasTag**(FNameTag) — See if this component contains the supplied tag
- **Activate**(boolbReset) — Activates the SceneComponent params bReset -- The value to assign to HiddenGame.
- **Deactivate**(Deactivates the SceneComponent.)
- **SetActive**(bool bNewActive, boolbReset) — Sets whether the component is active or not params bNewActive -- The new active state of the component
- **ToggleActive**(Toggles the active state of the component)
- **IsActive**(Returns whether the component is active or not return -- The active state of the component.)
- **SetAutoActivate**(boolbNewAutoActivate) — Sets whether the component should be auto activate or not. Only safe during construction scripts. params bNewAutoActivate -- The new auto activate state of the component
- **SetTickableWhenPaused**(boolbTickableWhenPaused) — Sets whether this component can tick when paused.
- **SetIsReplicated**(boolShouldReplicate) — Enable or disable replication. This is the equivalent of RemoteRole for actors (only a bool is required for components)
- **ReceiveBeginPlay**(Blueprint implementable event for when the component is beginning play, called before its Owner's BeginPlay on Actor BeginPlay or when the component is dynamically created if the Actor has already BegunPlay.)
- **ReceiveEndPlay**(EEndPlayReason :: TypeEndPlayReason) — Blueprint implementable event for when the component ends play, generally via destruction or its Actor's EndPlay.
- **SetComponentTickEnabled**(boolbEnabled) — Set this component's tick functions to be enabled or disabled. Only has an effect if the function is registered params bEnabled -- Whether it should be enabled or not
- **IsComponentTickEnabled**(Returns whether this component has tick enabled or not)
- **IsComponentTickEnabledByExternal**(Returns whether this component has tick enabled or not, Which set by External business)
- **SetComponentTickInterval**(floatTickInterval) — Sets the tick interval for this component's primary tick function. Does not enable the tick interval. Takes effect on next tick. params TickInterval -The duration between ticks for this component's primary tick function
- **GetComponentTickInterval**(Returns whether this component has tick enabled or not)
- **K2_DestroyComponent**(UObject *Object) — Unregister and mark for pending kill a component. This may not be used to destroy a component that is owned by an actor unless the owning actor is calling the function.
- **SetTickGroup**(ETickingGroupNewTickGroup) — Changes the ticking group for this component
- **AddTickPrerequisiteActor**(AActor *PrerequisiteActor) — Make this component tick after PrerequisiteActor
- **AddTickPrerequisiteComponent**(UActorComponent *PrerequisiteComponent) — Make this component tick after PrerequisiteComponent.
- **RemoveTickPrerequisiteActor**(AActor *PrerequisiteActor) — Remove tick dependency on PrerequisiteActor.
- **RemoveTickPrerequisiteComponent**(UActorComponent *PrerequisiteComponent) — Remove tick dependency on PrerequisiteComponent.
- **ReceiveTick**(floatDeltaSeconds) — Event called every frame GetToString ForceNetUpdate OnRep_ScriptNetworkReplicatedPropertyWrapper CallSubObjectLuaOnRep ServerSendScriptNetworkRemoteContent ServerSendScriptNetworkRemoteContent_Unreliable ClientSendScriptNetworkRemoteContent ClientSendScriptNetworkRemoteContent_Unreliable ReceiveScri

## 属性

- **tick** — function for the Actor The frequency in seconds at which this tick function will be executed on DS. If less than or equal to 0 then it will tick every frame If greater than 0 will cover PrimaryComponentTick.TickInterval Add by zoranouyang Array of tags that can be used for grouping and categorizing.

## 委托

- voidOnComponentActivated(UActorComponent*Component, boolbReset)
- voidOnComponentDeactivated(UActorComponent*Component)
- OnComponentActivated
- OnComponentDeactivated

## UAIAsyncTaskBlueprintProxy

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAIAsyncTaskBlueprintProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIAsyncTaskBlueprintProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIAsyncTaskBlueprintProxy](https://developer.gp.qq.com/api/#/searchContent/UAIAsyncTaskBlueprintProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIAsyncTaskBlueprintProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIAsyncTaskBlueprintProxy)

类

全文搜索

---


## 函数

- **OnMoveCompleted**(FAIRequestID RequestID, EPathFollowingResult :: TypeMovementResult) — OnMoveCompleted

## 委托

- voidOnSuccess(EPathFollowingResult::TypeMovementResult)
- voidOnFail(EPathFollowingResult::TypeMovementResult)
- OnSuccess
- OnFail

## UAIBlueprintHelperLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAIBlueprintHelperLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIBlueprintHelperLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIBlueprintHelperLibrary](https://developer.gp.qq.com/api/#/searchContent/UAIBlueprintHelperLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIBlueprintHelperLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIBlueprintHelperLibrary)

类

全文搜索

---


## 函数

- **CreateMoveToProxyObject**(UObject* WorldContextObject, APawn* Pawn, FVector Destination, AActor* TargetActor, float AcceptanceRadius, boolbStopOnOverlap)
- **SendAIMessage**(APawn* Target, FName Message, UObject* MessageSource, boolbSuccess)
- **SpawnAIFromClass**(UObject* WorldContextObject, TSubclassOf < APawn > PawnClass, UBehaviorTree* BehaviorTree, FVector Location, FRotator Rotation, boolbNoCollisionFail)
- **GetAIController**(AActor *ControlledActor) — The way it works exactly is if the actor passed in is a pawn, then the function retrieves pawn's controller cast to AIController. Otherwise the function returns actor cast to AIController.
- **GetBlackboard**(AActor *Target)
- **LockAIResourcesWithAnimation**(UAnimInstance* AnimInstance, bool bLockMovement, boolLockAILogic) — locks indicated AI resources of animated pawn
- **UnlockAIResourcesWithAnimation**(UAnimInstance* AnimInstance, bool bUnlockMovement, boolUnlockAILogic) — unlocks indicated AI resources of animated pawn. Will unlock only animation-locked resources
- **IsValidAILocation**(FVectorLocation)
- **IsValidAIDirection**(FVectorDirectionVector)
- **IsValidAIRotation**(FRotatorRotation)
- **GetCurrentPath**(AController *Controller) — Returns a copy of navigation path given controller is currently using. The result being a copy means you won't be able to influence agent's pathfollowing by manipulating received path CreateMoveToProxyObject SendAIMessage SpawnAIFromClass GetAIController GetBlackboard LockAIResourcesWithAnimation Un

## UAIDataProvider_QueryParams

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAIDataProvider_QueryParams?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIDataProvider_QueryParams.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIDataProvider_QueryParams](https://developer.gp.qq.com/api/#/searchContent/UAIDataProvider_QueryParams?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIDataProvider_QueryParams.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIDataProvider_QueryParams)

类

全文搜索

AIDataProvider_QueryParams is used with environment queries It allows defining simple parameters for running query, which are not tied to any specific pawn, but defined for every query execution.

---


## 属性

- **name** — this query parameter will be exposed as to outside world (like BT nodes) ParamName FloatValue IntValue BoolValue

## UAIPerceptionComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionComponent](https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionComponent)

类

全文搜索

AIPerceptionComponent is used to register as stimuli listener in AIPerceptionSystem and gathers registered stimuli. UpdatePerception is called when component gets new stimuli (batched)

---


## 函数

- **OnOwnerEndPlay**(AActor* Actor, EEndPlayReason :: TypeEndPlayReason)
- **RequestStimuliListenerUpdate**(Notifies AIPerceptionSystem to update properties for this "stimuli listener")
- **GetPerceivedHostileActors**(TArray < AActor* > &OutActors)
- **GetCurrentlyPerceivedActors**(TSubclassOf < UAISense > SenseToUse, TArray < AActor* > &OutActors) — If SenseToUse is none all actors currently perceived in any way will get fetched
- **GetKnownPerceivedActors**(TSubclassOf < UAISense > SenseToUse, TArray < AActor* > &OutActors) — If SenseToUse is none all actors ever perceived in any way (and not forgotten yet) will get fetched
- **GetPerceivedActors**(TSubclassOf < UAISense > SenseToUse, TArray < AActor* > &OutActors)
- **GetActorsPerception**(AActor* Actor, FActorPerceptionBlueprintInfo &Info) — Retrieves whatever has been sensed about given actor
- **SetSenseEnabled**(TSubclassOf < UAISense > SenseClass, boolbEnable) — Note that this works only if given sense has been already configured for this component instance OnOwnerEndPlay RequestStimuliListenerUpdate GetPerceivedHostileActors GetCurrentlyPerceivedActors GetKnownPerceivedActors GetPerceivedActors GetActorsPerception SetSenseEnabled

## 属性

- **sense** — that takes precedence over other senses when determining sensed actor's location. Should be set to one of the senses configured in SensesConfig, or None. AAIController *AIOwner SensesConfig DominantSense AIOwner

## 委托

- voidOnPerceptionUpdated(TArray<AActor*>UpdatedActors)
- voidOnTargetPerceptionUpdated(AActor*Actor, FAIStimulusStimulus)
- OnPerceptionUpdated
- OnTargetPerceptionUpdated

## UAIPerceptionStimuliSourceComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionStimuliSourceComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionStimuliSourceComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionStimuliSourceComponent](https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionStimuliSourceComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionStimuliSourceComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionStimuliSourceComponent)

类

全文搜索

Gives owning actor a way to auto-register as perception system's sense stimuli source

---


## 函数

- **RegisterWithPerceptionSystem**(Registers owning actor as source of stimuli for senses specified in RegisterAsSourceForSenses. Note that you don't have to do it if bAutoRegisterAsSource == true)
- **RegisterForSense**(TSubclassOf < UAISense >SenseClass) — Registers owning actor as source for specified sense class
- **UnregisterFromPerceptionSystem**(Unregister owning actor from being a source of sense stimuli)
- **UnregisterFromSense**(TSubclassOf < UAISense >SenseClass) — Unregisters owning actor from sources list of a specified sense class RegisterWithPerceptionSystem RegisterForSense UnregisterFromPerceptionSystem UnregisterFromSense

## UAIPerceptionSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionSystem](https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionSystem)

类

全文搜索

By design checks perception between hostile teams

---


## 函数

- **ReportEvent**(UAISenseEvent *PerceptionEvent)
- **ReportPerceptionEvent**(UObject* WorldContextObject, UAISenseEvent *PerceptionEvent)
- **RegisterPerceptionStimuliSource**(UObject* WorldContextObject, TSubclassOf < UAISense > Sense, AActor *Target)
- **GetSenseClassForStimulus**(UObject* WorldContextObject, FAIStimulus &Stimulus)
- **OnPerceptionStimuliSourceEndPlay**(AActor* Actor, EEndPlayReason :: TypeEndPlayReason) — ReportEvent ReportPerceptionEvent RegisterPerceptionStimuliSource GetSenseClassForStimulus OnPerceptionStimuliSourceEndPlay

## UAISense

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAISense?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense](https://developer.gp.qq.com/api/#/searchContent/UAISense?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense)

类

全文搜索

---


## 属性

- **past** — which stimulus of this sense are "forgotten" EAISenseNotifyTypeNotifyType whether this sense is interested in getting notified about new Pawns being spawned this can be used for example for automated sense sources registration If true all newly spawned pawns will get auto registered as source for th

## UAISense_Blueprint

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAISense_Blueprint?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense_Blueprint.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense_Blueprint](https://developer.gp.qq.com/api/#/searchContent/UAISense_Blueprint?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense_Blueprint.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense_Blueprint)

类

全文搜索

---


## 函数

- **OnUpdate**(TArray < UAISenseEvent* > &EventsToProcess) — returns requested amount of time to pass until next frame. Return 0 to get update every frame (WARNING: hits performance)
- **OnListenerRegistered**(AActor* ActorListener, UAIPerceptionComponent *PerceptionComponent) — params PerceptionComponent -is ActorListener's AIPerceptionComponent instance
- **OnListenerUpdated**(AActor* ActorListener, UAIPerceptionComponent *PerceptionComponent) — params PerceptionComponent -is ActorListener's AIPerceptionComponent instance
- **OnListenerUnregistered**(AActor* ActorListener, UAIPerceptionComponent *PerceptionComponent) — called when a listener unregistered from this sense. Most often this is called due to actor's death params PerceptionComponent -is ActorListener's AIPerceptionComponent instance
- **GetAllListenerActors**(TArray < AActor* > &ListenerActors)
- **GetAllListenerComponents**(TArray < UAIPerceptionComponent* > &ListenerComponents)
- **K2_OnNewPawn**(APawn *NewPawn) — called when sense's instance gets notified about new pawn that has just been spawned OnUpdate OnListenerRegistered OnListenerUpdated OnListenerUnregistered GetAllListenerActors GetAllListenerComponents K2_OnNewPawn

## UAISense_Damage

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAISense_Damage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense_Damage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense_Damage](https://developer.gp.qq.com/api/#/searchContent/UAISense_Damage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense_Damage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense_Damage)

类

全文搜索

---


## 函数

- **ReportDamageEvent**(UObject* WorldContextObject, AActor* DamagedActor, AActor* Instigator, float DamageAmount, FVector EventLocation, FVectorHitLocation) — EventLocation will be reported as Instigator's location at the moment of event happening ReportDamageEvent

## UAISense_Hearing

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAISense_Hearing?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense_Hearing.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense_Hearing](https://developer.gp.qq.com/api/#/searchContent/UAISense_Hearing?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense_Hearing.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense_Hearing)

类

全文搜索

---


## 函数

- **ReportNoiseEvent**(UObject* WorldContextObject, FVector NoiseLocation, float Loudness, AActor* Instigator, float MaxRange, FNameTag) — Report a noise event. params NoiseLocation -Location of the noise. params Loudness -Loudness of the noise. If MaxRange is non-zero, modifies MaxRange, otherwise modifies the squared distance of the sensor's range. params Instigator -Actor that triggered the noise. params MaxRange -Max range at which

## 属性

- **to** — 0 to have instant notification. Setting to > 0 will result in delaying when AI hears the sound based on the distance from the source NoiseEvents SpeedOfSoundSq

## UAISense_Prediction

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAISense_Prediction?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense_Prediction.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense_Prediction](https://developer.gp.qq.com/api/#/searchContent/UAISense_Prediction?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense_Prediction.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense_Prediction)

类

全文搜索

---


## 函数

- **RequestControllerPredictionEvent**(AAIController* Requestor, AActor* PredictedActor, floatPredictionTime) — Asks perception system to supply Requestor with PredictedActor's predicted location in PredictionTime seconds Location is being predicted based on PredicterActor's current location and velocity
- **RequestPawnPredictionEvent**(APawn* Requestor, AActor* PredictedActor, floatPredictionTime) — Asks perception system to supply Requestor with PredictedActor's predicted location in PredictionTime seconds Location is being predicted based on PredicterActor's current location and velocity RequestControllerPredictionEvent RequestPawnPredictionEvent

## UAISenseConfig

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAISenseConfig?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISenseConfig.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISenseConfig](https://developer.gp.qq.com/api/#/searchContent/UAISenseConfig?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISenseConfig.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISenseConfig)

类

全文搜索

---


## 属性

- **age** — limit after stimuli generated by this sense become forgotten. 0 means "never" determines whether given sense starts in an enabled state DebugColor MaxAge bStartsEnabled

## UAISenseConfig_Hearing

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAISenseConfig_Hearing?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISenseConfig_Hearing.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISenseConfig_Hearing](https://developer.gp.qq.com/api/#/searchContent/UAISenseConfig_Hearing?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISenseConfig_Hearing.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISenseConfig_Hearing)

类

全文搜索

---


## 属性

- **has** — significant runtime cost Implementation HearingRange LoSHearingRange bUseLoSHearing DetectionByAffiliation

## UAISenseConfig_Sight

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAISenseConfig_Sight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISenseConfig_Sight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISenseConfig_Sight](https://developer.gp.qq.com/api/#/searchContent/UAISenseConfig_Sight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISenseConfig_Sight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISenseConfig_Sight)

类

全文搜索

---


## 属性

- **sight** — distance to notice a target. Maximum sight distance to see target that has been already seen. How far to the side AI can see, in degrees. Use SetPeripheralVisionAngle to change the value at runtime. The value represents the angle measured in relation to the forward vector, not the whole range. If no

## UAISystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAISystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISystem](https://developer.gp.qq.com/api/#/searchContent/UAISystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISystem)

类

全文搜索

---


## 函数

- **AIIgnorePlayers**()
- **AILoggingVerbose**(AIIgnorePlayers AILoggingVerbose)

## 属性

- **that** — will be used to spawn the hot spot manager, can be game-specific Default AI movement's acceptance radius used to determine whether AI reached path's end Value used for pathfollowing's internal code to determine whether AI reached path's point. @note this value is not used for path's last point. @see

## UAITask_MoveTo

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAITask_MoveTo?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAITask_MoveTo.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAITask_MoveTo](https://developer.gp.qq.com/api/#/searchContent/UAITask_MoveTo?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAITask_MoveTo.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAITask_MoveTo)

类

全文搜索

---


## 函数

- **AIMoveTo**(AAIController* Controller, FVector GoalLocation, AActor* GoalActor, float AcceptanceRadius, EAIOptionFlag :: Type StopOnOverlap, EAIOptionFlag :: Type AcceptPartialPath, bool bUsePathfinding, bool b) — AIMoveTo

## 属性

- **of** — move request OnRequestFailed MoveRequest

## 委托

- voidOnMoveFinished(TEnumAsByte<EPathFollowingResult::Type>Result, AAIController*AIController)
- OnMoveFinished

## UAnimationAsset

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimationAsset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimationAsset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimationAsset](https://developer.gp.qq.com/api/#/searchContent/UAnimationAsset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimationAsset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimationAsset)

类

全文搜索

---


## 属性

- **to** — the Skeleton this asset can be played on . Meta data that can be saved with the asset You can query by GetMetaData function Array of user data stored with the asset AnimAssetUID Skeleton MetaData AssetUserData bUseBoneRetarget

## UAnimationSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimationSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimationSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimationSettings](https://developer.gp.qq.com/api/#/searchContent/UAnimationSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimationSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimationSettings)

类

全文搜索

Default animation settings.

---


## 属性

- **error** — for compression of curves using remove redundant keys The alternate error threshold (0.0 means don't try anything other than the current default scheme) Determines the current setting for world-space error tolerance in the animation compressor. When requested, animation being compressed will also co

## UAnimBlueprint

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimBlueprint?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimBlueprint.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimBlueprint](https://developer.gp.qq.com/api/#/searchContent/UAnimBlueprint?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimBlueprint.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimBlueprint)

类

全文搜索

An Anim Blueprint is essentially a specialized Blueprint whose graphs control the animation of a Skeletal Mesh. It can perform blending of animations, directly control the bones of the skeleton, and output a final pose for a Skeletal Mesh each frame.

---


## 属性

- **kind** — of skeleton that animation graphs compiled from the blueprint will animate Allows this anim Blueprint to update its native update, blend tree, montages and asset players on a worker thread. The compiler will attempt to pick up any issues that may occur with threaded update. For updates to run in mul

## UAnimBlueprintGeneratedClass

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimBlueprintGeneratedClass?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimBlueprintGeneratedClass.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimBlueprintGeneratedClass](https://developer.gp.qq.com/api/#/searchContent/UAnimBlueprintGeneratedClass?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimBlueprintGeneratedClass.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimBlueprintGeneratedClass)

类

全文搜索

---


## 属性

- **skeleton** — for this blueprint class A list of anim notifies that state machines (or anything else) may reference 预计算标记：编辑器编译蓝图时（PostCompile）扫描并写入，打包后序列化到.uasset， 运行时加载后直接读取正确值，无需再次扫描。 编辑器未编译时为false，懒初始化逻辑会在首次CollectFunctionModule时兜底扫描。 预计算缓存：该动画蓝图类（含父类继承链）是否含有任何FunctionModule属性。 仅在bFMPrecomputeDone为true时有效。打包后

## UAnimClassData

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimClassData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimClassData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimClassData](https://developer.gp.qq.com/api/#/searchContent/UAnimClassData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimClassData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimClassData)

类

全文搜索

---


## 属性

- **skeleton** — for this blueprint class A list of anim notifies that state machines (or anything else) may reference UStructProperty *RootAnimNodeProperty BakedStateMachines TargetSkeleton AnimNotifies RootAnimNodeIndex OrderedSavedPoseIndices RootAnimNodeProperty AnimNodeProperties SyncGroupNames

## UAnimCompress

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimCompress?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimCompress.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimCompress](https://developer.gp.qq.com/api/#/searchContent/UAnimCompress?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimCompress.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimCompress)

类

全文搜索

---


## 属性

- **of** — Compression Scheme used for this asset Compression algorithms requiring a skeleton should set this value to true. Format for bitwise compression of translation data. Format for bitwise compression of rotation data. Format for bitwise compression of scale data. Max error for compression of curves usi

## UAnimCompress_Automatic

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimCompress_Automatic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimCompress_Automatic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimCompress_Automatic](https://developer.gp.qq.com/api/#/searchContent/UAnimCompress_Automatic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimCompress_Automatic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimCompress_Automatic)

类

全文搜索

---


## 属性

- **amount** — of error that a compression technique can introduce in an end effector Determines the current setting for world - space error tolerance in the animation compressor. When requested, animation being compressed will also consider an alternative compression method if the end result of that method produc

## UAnimCompress_PerTrackCompression

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimCompress_PerTrackCompression?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimCompress_PerTrackCompression.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimCompress_PerTrackCompression](https://developer.gp.qq.com/api/#/searchContent/UAnimCompress_PerTrackCompression?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimCompress_PerTrackCompression.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimCompress_PerTrackCompression)

类

全文搜索

---


## 属性

- **threshold** — to use when replacing a component with zero. Lower values retain more keys, but yield less compression. Maximum position difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression. Maximum angle difference to use when testing if an an

## UAnimCompress_RemoveEverySecondKey

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimCompress_RemoveEverySecondKey?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimCompress_RemoveEverySecondKey.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimCompress_RemoveEverySecondKey](https://developer.gp.qq.com/api/#/searchContent/UAnimCompress_RemoveEverySecondKey?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimCompress_RemoveEverySecondKey.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimCompress_RemoveEverySecondKey)

类

全文搜索

---


## 属性

- **with** — fewer than MinKeys will not lose any keys. If bStartAtSecondKey is true, remove keys 1,3,5,etc. If bStartAtSecondKey is false, remove keys 0,2,4,etc. MinKeys bStartAtSecondKey

## UAnimCompress_RemoveLinearKeys

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimCompress_RemoveLinearKeys?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimCompress_RemoveLinearKeys.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimCompress_RemoveLinearKeys](https://developer.gp.qq.com/api/#/searchContent/UAnimCompress_RemoveLinearKeys?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimCompress_RemoveLinearKeys.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimCompress_RemoveLinearKeys)

类

全文搜索

---


## 属性

- **position** — difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression. Maximum angle difference to use when testing if an animation key may be removed. Lower values retain more keys, but yield less compression. Maximum Scale difference to use wh

## UAnimFuntionBoneModifyLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimFuntionBoneModifyLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimFuntionBoneModifyLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimFuntionBoneModifyLibrary](https://developer.gp.qq.com/api/#/searchContent/UAnimFuntionBoneModifyLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimFuntionBoneModifyLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimFuntionBoneModifyLibrary)

类

全文搜索

---


## 函数

- **Prototype_BoneModifyFuntion**(FBPAnimComponentSpacePoseContext& Context, TArray < FBPAnimComponentSpacePoseContext >& AdditionalPoseBPContext, TArray < FFunctionBoneModifyData > &OutBoneModifyData)
- **TransformGetBoneTransformLocalSpace**(FBPAnimComponentSpacePoseContext& Context, FNameBoneName)
- **TransformGetBoneTransformComponentSpace**(FBPAnimComponentSpacePoseContext& Context, FNameBoneName) — Prototype_BoneModifyFuntion GetBoneTransformLocalSpace GetBoneTransformComponentSpace

## UAnimInstance

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimInstance](https://developer.gp.qq.com/api/#/searchContent/UAnimInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimInstance)

类

全文搜索

---


## 函数

- **TryGetPawnOwner**()
- **SavePoseSnapshot**(FNameSnapshotName) — Takes a snapshot of the current skeletal mesh component pose & saves it internally. This snapshot can then be retrieved by name in the animation blueprint for blending. The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1 and then used it at LOD0 any bones not in
- **SnapshotPose**(FPoseSnapshot &Snapshot) — Takes a snapshot of the current skeletal mesh component pose and saves it to the specified snapshot. The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1 and then used it at LOD0 any bones not in LOD1 will use the reference pose
- **GetOwningActor**(Returns the owning actor of this AnimInstance)
- **GetOwningComponent**()
- **BlueprintShouldSkipUpdateAnimation**(floatDeltaTimeX) — Executed before the Animation is updated, Check custom condition, whether to skip update
- **BlueprintInitializeAnimation**(Executed when the Animation is initialized)
- **BlueprintUnInitializeAnimation**()
- **BlueprintUpdateAnimation**(floatDeltaTimeX) — Executed when the Animation is updated
- **BlueprintPostEvaluateAnimation**(Executed after the Animation is evaluated)
- **BlueprintBeginPlay**(Executed when begin play is called on the owning component)
- **PlaySlotAnimation**(UAnimSequenceBase* Asset, FName SlotNodeName, float BlendInTime, float BlendOutTime, float InPlayRate, int32LoopCount) — SlotAnimation DEPRECATED. Use PlaySlotAnimationAsDynamicMontage instead, it returns the UAnimMontage created instead of time, allowing more control Play normal animation asset on the slot node. You can only play one asset (whether montage or animsequence) at a time.
- **PlaySlotAnimationAsDynamicMontage**(UAnimSequenceBase* Asset, FName SlotNodeName, float BlendInTime, float BlendOutTime, float InPlayRate, int32 LoopCount, float BlendOutTriggerTime, floatInTimeToStartMontageAt) — Play normal animation asset on the slot node by creating a dynamic UAnimMontage. You can only play one asset (whether montage or animsequence) at a time per SlotGroup.
- **PlaySlotAnimationAsDynamicMontageCustom**(UAnimSequenceBase* Asset, FName SlotNodeName, FCustomMontageAnimInfo Extra, float BlendInTime, float BlendOutTime, float InPlayRate, int32 LoopCount, float BlendOutTriggerTime, floatInTimeToStartMont)
- **SetMatineeAnimPosition**(UAnimMontage* TargetMontage, float InPosition, FCustomMontageAnimInfo Extra, floatWeight)
- **StopSlotAnimation**(float InBlendOutTime, FNameSlotNodeName) — Stops currently playing slot animation slot or all
- **IsPlayingSlotAnimation**(UAnimSequenceBase* Asset, FName SlotNodeName, boolbcheckTransientPackage) — Return true if it's playing the slot animation
- **ForceTriggerAnimEndedEvent**()
- **SetMontageCustomSectionsPlayInfo**(UAnimMontage* Montage, TArray < FMontageSectionsPlayInfo > &InPlayInfo) — AnimMontage
- **ClearMontageCustomSectionsPlayInfo**(UAnimMontage *Montage)
- **Montage_Play**(UAnimMontage* MontageToPlay, float InPlayRate, EMontagePlayReturnType ReturnValueType, floatInTimeToStartMontageAt) — Plays an animation montage. Returns the length of the animation montage in seconds. Returns 0.f if failed to play.
- **Montage_CustomPlay**(UAnimMontage* MontageToPlay, FCustomMontageAnimInfo Extra, float InPlayRate, EMontagePlayReturnType ReturnValueType, floatInTimeToStartMontageAt)
- **Montage_Stop**(float InBlendOutTime, UAnimMontage *Montage) — Stops the animation montage. If reference is NULL, it will stop ALL active montages.
- **Montage_StopBySlot**(float InBlendOutTime, FNameSlotName)
- **Montage_CustomStop**(float InBlendOutTime, FCustomMontageAnimInfo Extra, UAnimMontage *Montage)
- **Montage_Pause**(UAnimMontage *Montage) — Pauses the animation montage. If reference is NULL, it will pause ALL active montages.
- **Montage_Resume**(UAnimMontage *Montage) — Resumes a paused animation montage. If reference is NULL, it will resume ALL active montages.
- **Montage_JumpToSection**(FName SectionName, UAnimMontage *Montage) — Makes a montage jump to a named section. If Montage reference is NULL, it will do that to all active montages.
- **Montage_JumpToSectionsEnd**(FName SectionName, UAnimMontage *Montage) — Makes a montage jump to the end of a named section. If Montage reference is NULL, it will do that to all active montages.
- **Montage_SetNextSection**(FName SectionNameToChange, FName NextSection, UAnimMontage *Montage) — Relink new next section AFTER SectionNameToChange in run-time You can link section order the way you like in editor, but in run-time if you'd like to change it dynamically, use this function to relink the next section For example, you can have Start->Loop->Loop->Loop.... but when you want it to end,
- **Montage_SetPlayRate**(UAnimMontage* Montage, floatNewPlayRate) — Change AnimMontage play rate. NewPlayRate = 1.0 is the default playback rate.
- **Montage_ReversePlayByAbsRateAndSlot**(FName SlotName, floatAbsPlayRate)
- **Montage_SetDelayFrame**(UAnimMontage* Montage, int32DelayFrame)
- **Montage_IsActive**(UAnimMontage *Montage) — Returns true if the animation montage is active. If the Montage reference is NULL, it will return true if any Montage is active.
- **Montage_IsPlaying**(UAnimMontage *Montage) — Returns true if the animation montage is currently active and playing. If reference is NULL, it will return true is ANY montage is currently active and playing.
- **Montage_IsExisting**(UAnimMontage *Montage)
- **MontageGroup_IsPlaying**(FNameGroupName) — 判断有无某个组下的蒙太奇正在播放
- **NameMontage_GetCurrentSection**(UAnimMontage *Montage) — Returns the name of the current animation montage section.
- **Montage_GetPosition**(UAnimMontage *Montage) — Get Current Montage Position
- **Montage_SetPosition**(UAnimMontage* Montage, floatNewPosition) — Set position.
- **Montage_GetIsStopped**(UAnimMontage *Montage) — return true if Montage is not currently active. (not valid or blending out)
- **Montage_GetBlendTime**(UAnimMontage *Montage) — Get the current blend time of the Montage. If Montage reference is NULL, it will return the current blend time on the first active Montage found.
- **Montage_GetPlayRate**(UAnimMontage *Montage) — Get PlayRate for Montage. If Montage is not playing, 0 is returned.
- **IsAnyMontagePlaying**(Returns true if any montage is playing currently. Doesn't mean it's active though, it could be blending out.)
- **GetCurrentActiveMontage**(Get a current Active Montage in this AnimInstance. Note that there might be multiple Active at the same time. This will only return the first active one it finds.)
- **GetCurrentActiveMontages**()
- **GetCurMontageBySlot**(FNameSlotName) — Get the UAnimMontage currently running that matches this SlotName. Will return NULL if no instance is found.
- **NameMontage_GetNextSection**(UAnimMontage* Montage, FNameSectionName)
- **AddAnimAssetNoGCRef**(UAnimationAsset *InAnimAsset) — 添加动画资源到非GC引用列表，返回全局唯一ID
- **RemoveAnimAssetNoGCRef**(int64InAnimAssetNoGCID) — 从非GC引用列表移除动画资源（通过ID）
- **RemoveAllAnimAssetNoGCRef**(UAnimationAsset *InAnimAsset) — 从非GC引用列表移除所有动画资源（通过资源指针）
- **ClearAnimAssetsNoGCReferences**(清空非GC引用列表)
- **StopAllMontages**(floatBlendOut) — Stop all montages that are active
- **ClearAllMontages**(floatBlendOut) — Stop all montages that are active
- **ClearStoppedMontageInstances**(boolbClearSubAnim)
- **GetForbiddenPlayMontageSlot**()
- **SetForbiddenPlayMontageSlot**(bool bIsAdd, FStringSlotName) — params SlotName -should be GroupName + SlotName
- **SetRootMotionMode**(TEnumAsByte < ERootMotionMode :: Type >Value) — Set RootMotionMode
- **GetInstanceAssetPlayerLength**(int32AssetPlayerIndex) — NOTE: Derived anim getters Anim getter functions can be defined for any instance deriving UAnimInstance. To do this the function must be marked BlueprintPure, and have the AnimGetter metadata entry set to "true". Following the instructions below, getters should appear correctly in the blueprint node
- **GetInstanceAssetPlayerTime**(int32AssetPlayerIndex) — Get the current accumulated time in seconds for an asset player node
- **SetInstanceAssetPlayerTime**(int32 AssetPlayerIndex, floattime)
- **GetNodeIndexWithTag**(FNameNodeTag)
- **GetInstanceAssetPlayerTime_BP**(int32AssetPlayerIndex) — Get the current accumulated time in seconds for an asset player node
- **SetInstanceAssetPlayerTime_BP**(int32 AssetPlayerIndex, floattime)
- **GetInstanceAssetPlayerTimeFraction**(int32AssetPlayerIndex) — Get the current accumulated time as a fraction for an asset player node
- **GetInstanceAssetPlayerTimeFromEnd**(int32AssetPlayerIndex) — Get the time in seconds from the end of an animation in an asset player node
- **GetInstanceAssetPlayerTimeFromEndFraction**(int32AssetPlayerIndex) — Get the time as a fraction of the asset length of an animation in an asset player node
- **GetInstanceMachineWeight**(int32MachineIndex) — Get the blend weight of a specified state machine
- **GetInstanceStateWeight**(int32 MachineIndex, int32StateIndex) — Get the blend weight of a specified state
- **GetInstanceCurrentStateElapsedTime**(int32MachineIndex) — Get the current elapsed time of a state within the specified state machine
- **GetInstanceTransitionCrossfadeDuration**(int32 MachineIndex, int32TransitionIndex) — Get the crossfade duration of a specified transition
- **GetInstanceTransitionTimeElapsed**(int32 MachineIndex, int32TransitionIndex) — Get the elapsed time in seconds of a specified transition
- **GetInstanceTransitionTimeElapsedFraction**(int32 MachineIndex, int32TransitionIndex) — Get the elapsed time as a fraction of the crossfade duration of a specified transition
- **GetRelevantAnimTimeRemaining**(int32 MachineIndex, int32 StateIndex, floatNullAnimDefaultValue) — Get the time remaining in seconds for the most relevant animation in the source state
- **GetRelevantAnimTimeRemainingFraction**(int32 MachineIndex, int32 StateIndex, floatNullAnimDefaultValue) — Get the time remaining as a fraction of the duration for the most relevant animation in the source state
- **GetRelevantAnimLength**(int32 MachineIndex, int32 StateIndex, floatNullAnimDefaultValue) — Get the length in seconds of the most relevant animation in the source state
- **GetRelevantAnimTime**(int32 MachineIndex, int32 StateIndex, floatNullAnimDefaultValue) — Get the current accumulated time in seconds for the most relevant animation in the source state
- **GetRelevantAnimTimeFraction**(int32 MachineIndex, int32 StateIndex, floatNullAnimDefaultValue) — Get the current accumulated time as a fraction of the length of the most relevant animation in the source state
- **GetCurveValue**(FName CurveName, boolImmediately) — Returns the value of a named curve.
- **NameGetCurrentStateName**(int32MachineIndex) — Returns the name of a currently active state in a state machine.
- **SetMorphTarget**(FName MorphTargetName, floatValue) — Sets a morph target to a certain weight.
- **ClearMorphTargets**(Clears the current morph targets.)
- **CalculateDirection**(FVector& Velocity, FRotator &BaseRotation) — Returns degree of the angle betwee velocity and Rotation forward vector The range of return will be from [-180, 180], and this can be used to feed blendspace directional value
- **LockAIResources**(bool bLockMovement, boolLockAILogic) — locks indicated AI resources of animated pawn DEPRECATED. Use LockAIResourcesWithAnimation instead
- **UnlockAIResources**(bool bUnlockMovement, boolUnlockAILogic) — unlocks indicated AI resources of animated pawn. Will unlock only animation-locked resources. DEPRECATED. Use UnlockAIResourcesWithAnimation instead
- **GetTimeToClosestMarker**(FName SyncGroup, FName MarkerName, float &OutMarkerTime)
- **HasMarkerBeenHitThisFrame**(FName SyncGroup, FNameMarkerName)
- **IsSyncGroupBetweenMarkers**(FName InSyncGroupName, FName PreviousMarker, FName NextMarker, boolbRespectMarkerOrder)
- **MarkerSyncAnimPositionGetSyncGroupPosition**(FNameInSyncGroupName)
- **TriggerAllSequenceSwitchNotify**(Trigger AnimNotifies)
- **CheckCanTriggerNotify_AnimIsolation_Outer**(FAnimNotifyEvent& InAnimNotifyEvent, UAnimNotify *InNotify)
- **CheckCanTriggerNotifyState_AnimIsolation_Outer**(FAnimNotifyEvent& InAnimNotifyEvent, UAnimNotifyState *InNotifyState)
- **CheckCanTriggerAnimNotifyFunction_AnimIsolation_Outer**(FAnimNotifyEvent &InAnimNotifyEvent)
- **ReplaceSubAnimNodeAnimClass**(FName SubInstanceSlotName, TSubclassOf < UAnimInstance > NewAnimClass, float BlendTime, boolbEnableNoWaitParallelEvalTask)
- **ReplaceSubAnimNodeAnimClass_EmptyClassDefaut**(FName SubInstanceSlotName, TSubclassOf < UAnimInstance > NewAnimClass, floatBlendTime)
- **ResetSubAnimNodeAnimClass**(FName SubInstanceSlotName, TSubclassOf < UAnimInstance > FilterAnimClass, float BlendTime, boolbEnableNoWaitParallelEvalTask)
- **ResetSubAnimNodeAnimClass_EmptyClassDefaut**(FName SubInstanceSlotName, TSubclassOf < UAnimInstance > FilterAnimClass, floatBlendTime)
- **ResetAllSubAnimNode**()
- **ClearAllSubAnimBlendTime**()
- **ResetAllSubAnimNodePosInertialization**()
- **GetSubAnimInstanceBySlot**(FNameSubInstanceSlotName)
- **IsUseSubAnimInstanceBySlot**(FNameSubInstanceSlotName)
- **SetSubAnimNodeEnableBlend**(FName SubInstanceSlotName, bool bEnable, floatNewSubAnimBlendTime)
- **AddSubAnimNodeAnimClass**(FName SubInstanceSlotName, TSubclassOf < UAnimInstance > NewAnimClass, int32 Priority, floatBlendTime) — 同槽多子动画实例
- **RemoveSubAnimNodeAnimClass**(FName SubInstanceSlotName, TSubclassOf < UAnimInstance > FilterClass, floatBlendTime)
- **ResetSubAnimNode_MultiInstanceClass**(FNameSubInstanceSlotName)
- **ResetAllSubAnimNode_MultiInstance**()
- **AddStopTickSubAnimInstance**(UAnimInstance *Instance)
- **RemoveCachedStopTickSubAnimInstance**(UAnimInstance *Instance)
- **ClearAllStopTickSubAnimInstance**()
- **OnRecycleCachedSubAnimInstances**(boolbToPersistentPool)
- **MarkBoneStateDirty**(boolInIsDirty)
- **IsBoneStateDirty**()
- **IsUseBoneStateDirtyFeature**()
- **HasSlotNode**(FNameInSlotName)
- **UpdateAnimSlotRetargetInfo**(UAnimMontage* InMontage, TMap < FName , FName > &InSlotNameRetargetInfo)
- **GetInverseRetargetIgnoreBoneList**()
- **SetFollowedAnimInstance**(UAnimInstance *InputFollowedInstance)
- **ResetFollowedAnimInstance**()
- **IsFollowing**(UAnimInstance *TargetFollowedInstance)
- **SetDelayPlay**(bool IsDelay, intInputDelayFrames)
- **GetParentAnimInstance**()
- **SetParentAnimInstance**(UAnimInstance *InParentAnimInstance)
- **GetSubAnimInstances**()
- **GetAllSubAnimInstances**()
- **SwapCachedBoneTransformMap**()
- **GetCachedBoneTransform**(FName InBoneName, FTransform& OutTransform, boolforceSync)
- **GetCachedBoneTransformByFlag**(FName InBoneName, FName InCacheFlag, FTransform& OutTransform, int32 NeedLastFrameCount, boolforceSync)
- **CompareCachedBoneTransformByFlag**(FName InBoneName0, FName InCacheFlag0, FName InBoneName1, FNameInCacheFlag1)
- **SetTriggerAnimNotify**(boolNeedTrigger)
- **FilterForceTriggerNotifyWhenMontageJumpTick**(UAnimMontage* InMontage, bool bPlayingBackwards, float CurrentTrackPos, float CurrentDeltaSeconds, TArray < FAnimNotifyEvent >& InAnimNotifies, TArray < FAnimNotifyEvent > &OutForceTriggerAnimNotifi)
- **GetLobbySeqIgnoreNotifyList**()
- **ResetNotifyQueue**(TryGetPawnOwner SavePoseSnapshot SnapshotPose GetOwningActor GetOwningComponent BlueprintShouldSkipUpdateAnimation BlueprintInitializeAnimation BlueprintUnInitializeAnimation BlueprintUpdateAnimation BlueprintPostEvaluateAnimation BlueprintBeginPlay PlaySlotAnimation PlaySlotAnimationAsDynamicMontag)

## 属性

- **is** — used to extract animation. If Mesh exists, this will be overwritten by Mesh->Skeleton DEPRECATED: No longer used. Allows this anim instance to update its native update, blend tree, montages and asset players on a worker thread. this requires certain conditions to be met: - All access of variables in

## 委托

- voidOnMontageBlendingOut(UAnimMontage*Montage, boolbInterrupted)
- Called when a montage starts blending out, whether interrupted or finished
- voidOnMontageStarted(UAnimMontage*Montage)
- Called when a montage has started
- voidOnMontageEnded(UAnimMontage*Montage, boolbInterrupted)
- Called when a montage has ended, whether interrupted or finished
- voidOnMontageRealEnded(UAnimMontage*Montage, boolbInterrupted)
- Called when a montage real ended, whether interrupted or finished
- voidOnAllMontageInstancesEnded()
- Called when all Montage instances have ended.
- OnMontageBlendingOut
- OnMontageStarted
- OnMontageEnded
- OnMontageRealEnded
- OnAllMontageInstancesEnded

## UAnimInstanceUpdateCondition

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimInstanceUpdateCondition?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimInstanceUpdateCondition.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimInstanceUpdateCondition](https://developer.gp.qq.com/api/#/searchContent/UAnimInstanceUpdateCondition?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimInstanceUpdateCondition.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimInstanceUpdateCondition)

类

全文搜索

---


## 函数

- **SetEnable**(boolInEnable)
- **CheckCondition**(UAnimInstance* AnimInstance, floatDeltaTime)
- **NeedUpdate**(UAnimInstance* AnimInstance, floatDeltaTime)
- **NeedUpdate_Internal**(UAnimInstance* AnimInstance, floatDeltaTime) — SetEnable CheckCondition NeedUpdate NeedUpdate_Internal

## UAnimMontage

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimMontage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimMontage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimMontage](https://developer.gp.qq.com/api/#/searchContent/UAnimMontage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimMontage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimMontage)

类

全文搜索

Any property you're adding to AnimMontage and parent class has to be considered for Child Asset Child Asset is considered to be only asset mapping feature using everything else in the class For example, you can just use all parent's setting for the montage, but only remap assets This isn't magic bullet unfortunately and it is consistent effort of keeping the data synced with parent If you add new property, please make sure those property has to be copied for children. If it does, please add the copy in the function RefreshParentAssetData

---


## 属性

- **in** — option. Blend out option. This is only used when it blends out itself. If it's interrupted by other montages, it will use new montage's BlendIn option to blend out. Time from Sequence End to trigger blend out. <0 means using BlendOutTime, so BlendOut finishes as Montage ends. >=0 means using 'Sequen

## UAnimNotify

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimNotify?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotify.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotify](https://developer.gp.qq.com/api/#/searchContent/UAnimNotify?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotify.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotify)

类

全文搜索

---


## 函数

- **StringGetNotifyName**(Implementable event to get a custom name for the notify)
- **Received_Notify**(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, UAnimInstance *InvokeAnimInstance) — GetNotifyName Received_Notify

## UAnimNotifyState

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimNotifyState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotifyState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotifyState](https://developer.gp.qq.com/api/#/searchContent/UAnimNotifyState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotifyState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotifyState)

类

全文搜索

---


## 函数

- **StringGetNotifyName**(Implementable event to get a custom name for the notify)
- **Received_NotifyBegin**(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, float TotalDuration, UAnimInstance *InvokeAnimInstance)
- **Received_NotifyTick**(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, float FrameDeltaTime, UAnimInstance *InvokeAnimInstance)
- **Received_NotifyEnd**(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, UAnimInstance *InvokeAnimInstance)
- **TryGetNewFPPAdaptSkelMeshComp**(USkeletalMeshComponent* InTargetSkelMeshComp, bool InIsInitCall, bool HasRetarget, boolForceGetFPPMesh)
- **TryGetBoneRetargetAdaptSkelMeshComp**(USkeletalMeshComponent* InTargetSkelMeshComp, boolInIsInitCall) — For Bone Retarget Feature Start
- **ClearBoneRetargetAdaptState**(USkeletalMeshComponent *InTargetSkelMeshComp)
- **IsBoneRetargetAdaptInitDone**(USkeletalMeshComponent *InTargetSkelMeshComp)
- **IsEnableBoneRetargetAdaptFeature**(USkeletalMeshComponent *InTargetSkelMeshComp) — GetNotifyName Received_NotifyBegin Received_NotifyTick Received_NotifyEnd TryGetNewFPPAdaptSkelMeshComp TryGetBoneRetargetAdaptSkelMeshComp ClearBoneRetargetAdaptState IsBoneRetargetAdaptInitDone IsEnableBoneRetargetAdaptFeature

## 属性

- **AnimInstance** — 中触发 InOldFPPAnimMode_ChangeToNewFPPMesh bEnableBoneRetargetAdaptFeature bCheckAnimIsolation bCheckAnimIsolation_OnlyNewFPP bCheckAnimIsolation_OnlyNewFPP_IgnoreOldAnimMode bCheckAnimIsolation_OnlyTPP

## UAnimNotifyState_TimedParticleEffect

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimNotifyState_TimedParticleEffect?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotifyState_TimedParticleEffect.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotifyState_TimedParticleEffect](https://developer.gp.qq.com/api/#/searchContent/UAnimNotifyState_TimedParticleEffect?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotifyState_TimedParticleEffect.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotifyState_TimedParticleEffect)

类

全文搜索

---


## 函数

- **IsEnableSpawnObjTrackFeature**()
- **TryMarkSpawnObjTracker**(USkeletalMeshComponent* InTargetSkelMeshComp, UObject *InSpawnedObj)
- **TryClearSpawnObjTracker**(USkeletalMeshComponent *InTargetSkelMeshComp)
- **IsTrackingObj**(USkeletalMeshComponent *InTargetSkelMeshComp)
- **GetOverrideParticleTemplate**(USkeletalMeshComponent* InTargetSkelMeshComp, UParticleSystem *InPSTemplate)
- **TransformGetOverrideParticleWorldTransform**(USkeletalMeshComponent* InTargetSkelMeshComp, FTransformTargetTransform)
- **InnerCheckParticleParentVisibility**(USkeletalMeshComponent* skComp, UParticleSystemComponent *InPSC)
- **CheckParticleParentVisibility**(USkeletalMeshComponent *InComponent)
- **IsEnableSearchAllDescendants**(USkeletalMeshComponent *InTargetSkelMeshComp)
- **SearchChildrenParticleAndDestroy**(TArray < USceneComponent* > Children, USkeletalMeshComponent* MeshComp, USkeletalMeshComponent *AttachAdaptMeshComp) — IsEnableSpawnObjTrackFeature TryMarkSpawnObjTracker TryClearSpawnObjTracker IsTrackingObj GetOverrideParticleTemplate GetOverrideParticleWorldTransform InnerCheckParticleParentVisibility CheckParticleParentVisibility IsEnableSearchAllDescendants SearchChildrenParticleAndDestroy

## UAnimNotifyState_Trail

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimNotifyState_Trail?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotifyState_Trail.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotifyState_Trail](https://developer.gp.qq.com/api/#/searchContent/UAnimNotifyState_Trail?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotifyState_Trail.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotifyState_Trail)

类

全文搜索

---


## 函数

- **OverridePSTemplate**(USkeletalMeshComponent* MeshComp, UAnimSequenceBase *Animation) — OverridePSTemplate

## 属性

- **particle** — system to use for this trail. Name of the first socket defining this trail. Name of the second socket defining this trail. Name of the curve to drive the width scale. If true, render the trail geometry (this should typically be on) If true, render stars at each spawned particle point along the trail

## UAnimSequence

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimSequence?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimSequence.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimSequence](https://developer.gp.qq.com/api/#/searchContent/UAnimSequence?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimSequence.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimSequence)

类

全文搜索

---


## 属性

- **of** — raw frames in this sequence (not used by engine - just for informational purposes). In the future, maybe keeping RawAnimSequenceTrack + TrackMap as one would be good idea to avoid inconsistent array size TrackToSkeletonMapTable(i) should contains track mapping data for RawAnimationData(i). Additive

## UAnimSequenceBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimSequenceBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimSequenceBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimSequenceBase](https://developer.gp.qq.com/api/#/searchContent/UAnimSequenceBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimSequenceBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimSequenceBase)

类

全文搜索

---


## 函数

- **GetPlayLength**(Returns the total play length of the montage, if played back with a speed of 1.0. GetPlayLength)

## 属性

- **notifies** — , sorted by time (earliest notification first). Length (in seconds) of this AnimSequence if played back with a speed of 1.0. Number for tweaking playback rate of this animation globally. Raw uncompressed float curve data Notifies SequenceLength RateScale bEnableExcludeNotifiesWhenPlayAsMontage RawCu

## UAnimSet

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimSet?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimSet.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimSet](https://developer.gp.qq.com/api/#/searchContent/UAnimSet?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimSet.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimSet)

类

全文搜索

---


## 属性

- **that** — only the rotation should be taken from the animation sequence and the translation should come from the USkeletalMesh ref pose. Note that the root bone always takes translation from the animation, even if this flag is set. You can use the UseTranslationBoneNames array to specify other bones that shou

## UAnimSingleNodeInstance

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimSingleNodeInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimSingleNodeInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimSingleNodeInstance](https://developer.gp.qq.com/api/#/searchContent/UAnimSingleNodeInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimSingleNodeInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimSingleNodeInstance)

类

全文搜索

---


## 函数

- **SetLooping**(boolbIsLooping)
- **SetPlayRate**(floatInPlayRate)
- **SetReverse**(boolbInReverse)
- **SetPosition**(float InPosition, boolbFireNotifies)
- **SetPositionWithPreviousTime**(float InPosition, float InPreviousTime, boolbFireNotifies)
- **SetBlendSpaceInput**(FVector &InBlendInput)
- **SetPlaying**(boolbIsPlaying)
- **GetLength**()
- **PlayAnim**(bool bIsLooping, float InPlayRate, floatInStartPosition) — For AnimSequence specific
- **StopAnim**()
- **SetAnimationAsset**(UAnimationAsset* NewAsset, bool bIsLooping, floatInPlayRate) — Set New Asset - calls InitializeAnimation, for now we need MeshComponent
- **GetAnimationAsset**(Get the currently used asset)
- **SetPreviewCurveOverride**(FName& PoseName, float Value, boolbRemoveIfZero) — Set pose value SetLooping SetPlayRate SetReverse SetPosition SetPositionWithPreviousTime SetBlendSpaceInput SetPlaying GetLength PlayAnim StopAnim SetAnimationAsset GetAnimationAsset SetPreviewCurveOverride

## 委托

- voidPostEvaluateAnimEvent()
- voidOnAnimSinglePlayAnim(UAnimationAsset*AnimAsset, boolbPlay)
- PostEvaluateAnimEvent
- OnAnimSinglePlayAnim

## UApplicationLifecycleComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UApplicationLifecycleComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUApplicationLifecycleComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UApplicationLifecycleComponent](https://developer.gp.qq.com/api/#/searchContent/UApplicationLifecycleComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUApplicationLifecycleComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UApplicationLifecycleComponent)

类

全文搜索

Component to handle receiving notifications from the OS about application state (activated, suspended, termination, etc).

---


## 委托

- voidApplicationWillDeactivateDelegate()
- voidApplicationHasReactivatedDelegate()
- voidApplicationWillEnterBackgroundDelegate()
- voidApplicationHasEnteredForegroundDelegate()
- voidApplicationWillTerminateDelegate()
- voidOnTemperatureChangeDelegate(ETemperatureSeverityTypeSeverity)
- ApplicationWillDeactivateDelegate
- ApplicationHasReactivatedDelegate
- ApplicationWillEnterBackgroundDelegate
- ApplicationHasEnteredForegroundDelegate
- ApplicationWillTerminateDelegate
- OnTemperatureChangeDelegate

## UArrowComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UArrowComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUArrowComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UArrowComponent](https://developer.gp.qq.com/api/#/searchContent/UArrowComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUArrowComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UArrowComponent)

类

全文搜索

A simple arrow rendered using lines. Useful for indicating which way an object is facing.

---


## 函数

- **SetArrowColor**(FLinearColorNewColor) — Updates the arrow's colour, and tells it to refresh SetArrowColor

## 属性

- **to** — limit the screen size of this arrow The size on screen to limit this arrow to (in screen space) If true, don't show the arrow when EngineShowFlags.BillboardSprites is disabled. ArrowColor ArrowSize bIsScreenSizeScaled ScreenSize bTreatAsASprite

## UAssetManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAssetManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAssetManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAssetManager](https://developer.gp.qq.com/api/#/searchContent/UAssetManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAssetManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAssetManager)

类

全文搜索

A singleton UObject that is responsible for loading and unloading PrimaryAssets, and maintaining game-specific asset references Games should override this class and change the class reference

---


## 属性

- **of** — UObjects that are being kept from being GCd, derived from the asset type map. Arrays are currently more efficient than Sets True if we are running a build that is already scanning assets globally so we can perhaps avoid scanning paths synchronously True if PrimaryAssetTypeName will be implied for lo

## UAssetManagerSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAssetManagerSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAssetManagerSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAssetManagerSettings](https://developer.gp.qq.com/api/#/searchContent/UAssetManagerSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAssetManagerSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAssetManagerSettings)

类

全文搜索

Settings for the Asset Management framework, which can be used to discover, load, and audit game-specific asset types

---


## 属性

- **of** — asset types to scan at startup List of directories to exclude from scanning for Primary Assets, useful to exclude test assets List of specific asset rule overrides If true, DevelopmentCook assets will error when they are cooked If true, PrimaryAsset TypeName will be implied for assets in the editor

## UAssetMappingTable

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAssetMappingTable?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAssetMappingTable.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAssetMappingTable](https://developer.gp.qq.com/api/#/searchContent/UAssetMappingTable?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAssetMappingTable.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAssetMappingTable)

类

全文搜索

UAssetMappingTable : that has AssetMappingTableging data - used for retargeting - support to share different animations

---


## 属性

- **of** — asset between source and target MappedAssets

## UAssetRegistryHelpers

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAssetRegistryHelpers?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAssetRegistryHelpers.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAssetRegistryHelpers](https://developer.gp.qq.com/api/#/searchContent/UAssetRegistryHelpers?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAssetRegistryHelpers.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAssetRegistryHelpers)

类

全文搜索

---


## 函数

- **GetAssetRegistry**()
- **AssetDataCreateAssetData**(UObject* InAsset, boolbAllowBlueprintClass) — Creates asset data from a UObject. params InAsset -The asset to create asset data for params bAllowBlueprintClass -By default trying to create asset data for a blueprint class will create one for the UBlueprint instead
- **IsValid**(FAssetData &InAssetData) — Checks to see if this AssetData refers to an asset or is NULL
- **IsUAsset**(FAssetData &InAssetData) — Returns true if this asset was found in a UAsset file
- **IsRedirector**(FAssetData &InAssetData) — Returns true if the this asset is a redirector.
- **StringGetFullName**(FAssetData &InAssetData) — Returns the full name for the asset in the form: Class ObjectPath
- **SoftObjectPathToSoftObjectPath**(FAssetData &InAssetData) — Convert to a SoftObjectPath for loading
- **GetClass**(FAssetData &InAssetData)
- **GetAsset**(FAssetData &InAssetData) — Returns the asset UObject if it is loaded or loads the asset if it is unloaded then returns the result
- **IsAssetLoaded**(FAssetData &InAssetData) — Returns true if the asset is loaded
- **StringGetExportTextName**(FAssetData &InAssetData) — Returns the name for the asset in the form: Class'ObjectPath' Gets the value associated with the given tag as a string
- **ARFilterSetFilterTagsAndValues**(FARFilter& InFilter, TArray < FTagAndValue > &InTagsAndValues) — Populates the FARFilters tags and values map with the passed in tags and values GetAssetRegistry CreateAssetData IsValid IsUAsset IsRedirector GetFullName ToSoftObjectPath GetClass GetAsset IsAssetLoaded GetExportTextName GetTagValue < FName > SetFilterTagsAndValues

## UAsyncTaskDownloadImage

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAsyncTaskDownloadImage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAsyncTaskDownloadImage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAsyncTaskDownloadImage](https://developer.gp.qq.com/api/#/searchContent/UAsyncTaskDownloadImage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAsyncTaskDownloadImage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAsyncTaskDownloadImage)

类

全文搜索

---


## 函数

- **DownloadImage**(FStringURL) — DownloadImage

## 委托

- voidOnSuccess(UTexture2DDynamic*Texture)
- voidOnFail(UTexture2DDynamic*Texture)
- OnSuccess
- OnFail

## UAtmosphericFogComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAtmosphericFogComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAtmosphericFogComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAtmosphericFogComponent](https://developer.gp.qq.com/api/#/searchContent/UAtmosphericFogComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAtmosphericFogComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAtmosphericFogComponent)

类

全文搜索

Used to create fogging effects such as clouds.

---


## 函数

- **SetDefaultBrightness**(floatNewBrightness) — Set brightness of the light
- **SetDefaultLightColor**(FLinearColorNewLightColor) — Set color of the light
- **SetSunMultiplier**(floatNewSunMultiplier) — Set SunMultiplier
- **SetFogMultiplier**(floatNewFogMultiplier) — Set FogMultiplier
- **SetDensityMultiplier**(floatNewDensityMultiplier) — Set DensityMultiplier
- **SetDensityOffset**(floatNewDensityOffset) — Set DensityOffset
- **SetDistanceScale**(floatNewDistanceScale) — Set DistanceScale
- **SetAltitudeScale**(floatNewAltitudeScale) — Set AltitudeScale
- **SetStartDistance**(floatNewStartDistance) — Set StartDistance
- **SetDistanceOffset**(floatNewDistanceOffset) — Set DistanceOffset
- **DisableSunDisk**(boolNewSunDisk) — Set DisableSunDisk
- **DisableGroundScattering**(boolNewGroundScattering) — Set DisableGroundScattering
- **SetPrecomputeParams**(float DensityHeight, int32 MaxScatteringOrder, int32InscatterAltitudeSampleNum) — Set PrecomputeParams, only valid in Editor mode
- **StartPrecompute**(SetDefaultBrightness SetDefaultLightColor SetSunMultiplier SetFogMultiplier SetDensityMultiplier SetDensityOffset SetDistanceScale SetAltitudeScale SetStartDistance SetDistanceOffset DisableSunDisk DisableGroundScattering SetPrecomputeParams StartPrecompute)

## 属性

- **scattering** — factor. Scattering factor on object. Fog density control factor. Fog density offset to control opacity [-1.f ~ 1.f]. Distance scale. Altitude scale (only Z scale). Distance offset, in km (to handle large distance) Ground offset. Start Distance. Distance offset, in km (to handle large distance) Defau

## UAtmosphericSkyBoxComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAtmosphericSkyBoxComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAtmosphericSkyBoxComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAtmosphericSkyBoxComponent](https://developer.gp.qq.com/api/#/searchContent/UAtmosphericSkyBoxComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAtmosphericSkyBoxComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAtmosphericSkyBoxComponent)

类

全文搜索

---


## 函数

- **SetFixedCurrTime**(floattime)
- **SetFixedTimeOfDay**(boolIsFiexd)
- **SetNeedUpdate**(boolNeedUpdate)
- **GetMaterialInstancesDynamic**(SetFixedCurrTime SetFixedTimeOfDay SetNeedUpdate GetMaterialInstancesDynamic)

## UAudioComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAudioComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAudioComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAudioComponent](https://developer.gp.qq.com/api/#/searchContent/UAudioComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAudioComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAudioComponent)

类

全文搜索

AudioComponent is used to play a Sound @see USoundBase

---


## 函数

- **SetSound**(USoundBase *NewSound)
- **FadeIn**(float FadeInDuration, float FadeVolumeLevel, floatStartTime) — This can be used in place of "play" when it is desired to fade in the sound over time. If FadeTime is 0.0, the change in volume is instant. If FadeTime is > 0.0, the multiplier will be increased from 0 to FadeVolumeLevel over FadeIn seconds. params FadeInDuration -how long it should take to reach th
- **FadeOut**(float FadeOutDuration, floatFadeVolumeLevel) — This is used in place of "stop" when it is desired to fade the volume of the sound before stopping.
- **Stop**(If FadeTime is > 0.0, this will adjust the volume multiplier to FadeVolumeLevel over FadeInTime seconds and then stop the sound. how long it should take to reach the FadeVolumeLevel the percentage of the AudioComponents's calculated volume in which to)
- **Play**(floatStartTime) — Start a sound playing on an audio component
- **Stop**(Stop an audio component playing its sound cue, issue any delegates if needed)
- **SetPaused**(boolbPause) — Pause an audio component playing its sound cue, issue any delegates if needed
- **IsPlaying**(return -true if this component is currently playing a SoundCue.)
- **AdjustVolume**(float AdjustVolumeDuration, floatAdjustVolumeLevel) — This will allow one to adjust the volume of an AudioComponent on the fly
- **SetFloatParameter**(FName InName, floatInFloat) — Set a float instance parameter for use in sound cues played by this audio component
- **SetWaveParameter**(FName InName, USoundWave *InWave) — Set a sound wave instance parameter for use in sound cues played by this audio component
- **SetBoolParameter**(FName InName, boolInBool) — Set a boolean instance parameter for use in sound cues played by this audio component
- **SetIntParameter**(FName InName, int32InInt) — Set an integer instance parameter for use in sound cues played by this audio component
- **SetVolumeMultiplier**(floatNewVolumeMultiplier) — Set a new volume multiplier
- **SetPitchMultiplier**(floatNewPitchMultiplier) — Set a new pitch multiplier
- **SetUISound**(boolbInUISound) — Set whether sounds generated by this audio component should be considered UI sounds
- **AdjustAttenuation**(FSoundAttenuationSettings &InAttenuationSettings) — Modify the attenuation settings of the audio component
- **SetSubmixSend**(USoundSubmix* Submix, floatSendLevel) — Sets how much audio the sound should send to the given submix.
- **SetLowPassFilterEnabled**(boolInLowPassFilterEnabled) — Sets whether or not the low pass filter is enabled on the audio component.
- **SetLowPassFilterFrequency**(floatInLowPassFilterFrequency) — Sets lowpass filter frequency of the audio component.
- **BP_GetAttenuationSettingsToApply**(FSoundAttenuationSettings &OutAttenuationSettings) — SetSound FadeIn FadeOut Play Stop SetPaused IsPlaying AdjustVolume SetFloatParameter SetWaveParameter SetBoolParameter SetIntParameter SetVolumeMultiplier SetPitchMultiplier SetUISound AdjustAttenuation SetSubmixSend SetLowPassFilterEnabled SetLowPassFilterFrequency BP_GetAttenuationSettingsToApply

## 属性

- **sound** — to be played Array of per-instance parameters for this AudioComponent. USoundClass *SoundClassOverride Optional sound group this AudioComponent belongs to Auto destroy this component on completion Stop sound when owner is destroyed Whether the wave instances should remain active if they're dropped b

## 委托

- voidOnAudioFinished()
- called when we finish playing audio, either because it played to completion or because a Stop() call turned it off early
- voidOnAudioPlaybackPercent(const class USoundWave*PlayingSoundWave, const floatPlaybackPercent)
- Called as a sound plays on the audio component to allow BP to perform actions based on playback percentage.
- Computed as samples played divided by total samples, taking into account pitch.
- Not currently implemented on all platforms.
- voidOnQueueSubtitles(const TArray<struct FSubtitleCue>&Subtitles, floatCueDuration)
- Called when subtitles are sent to the SubtitleManager. Set this delegate if you want to hijack the subtitles for other purposes
- OnAudioFinished
- OnAudioPlaybackPercent
- OnQueueSubtitles

## UAudioMixerBlueprintLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAudioMixerBlueprintLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAudioMixerBlueprintLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAudioMixerBlueprintLibrary](https://developer.gp.qq.com/api/#/searchContent/UAudioMixerBlueprintLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAudioMixerBlueprintLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAudioMixerBlueprintLibrary)

类

全文搜索

---


## 函数

- **AddMasterSubmixEffect**(UObject* WorldContextObject, USoundEffectSubmixPreset *SubmixEffectPreset) — Adds a submix effect preset to the master submix.
- **RemoveMasterSubmixEffect**(UObject* WorldContextObject, USoundEffectSubmixPreset *SubmixEffectPreset) — Removes a submix effect preset from the master submix.
- **ClearMasterSubmixEffects**(UObject *WorldContextObject) — Clears all master submix effects.
- **AddSourceEffectToPresetChain**(UObject* WorldContextObject, USoundEffectSourcePresetChain* PresetChain, FSourceEffectChainEntryEntry) — Adds source effect entry to preset chain. Only effects the instance of the preset chain
- **RemoveSourceEffectFromPresetChain**(UObject* WorldContextObject, USoundEffectSourcePresetChain* PresetChain, int32EntryIndex) — Adds source effect entry to preset chain. Only affects the instance of preset chain.
- **SetBypassSourceEffectChainEntry**(UObject* WorldContextObject, USoundEffectSourcePresetChain* PresetChain, int32 EntryIndex, boolbBypassed) — Set whether or not to bypass the effect at the source effect chain index.
- **GetNumberOfEntriesInSourceEffectChain**(UObject* WorldContextObject, USoundEffectSourcePresetChain *PresetChain) — Returns the number of effect chain entries in the given source effect chain. AddMasterSubmixEffect RemoveMasterSubmixEffect ClearMasterSubmixEffects AddSourceEffectToPresetChain RemoveSourceEffectFromPresetChain SetBypassSourceEffectChainEntry GetNumberOfEntriesInSourceEffectChain

## UAudioSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAudioSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAudioSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAudioSettings](https://developer.gp.qq.com/api/#/searchContent/UAudioSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAudioSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAudioSettings)

类

全文搜索

Audio settings.

---


## 属性

- **SoundClass** — assigned to newly created sounds The SoundConcurrency assigned to newly created sounds The SoundMix to use as base when no other system has specified a Base SoundMix Sound class to be used for the VOIP audio component The amount of audio to send to reverb submixes if no reverb send is setup for the

## UAutomatedLevelSequenceCapture

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAutomatedLevelSequenceCapture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAutomatedLevelSequenceCapture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAutomatedLevelSequenceCapture](https://developer.gp.qq.com/api/#/searchContent/UAutomatedLevelSequenceCapture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAutomatedLevelSequenceCapture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAutomatedLevelSequenceCapture)

类

全文搜索

---


## 属性

- **level** — sequence asset to playback at runtime - used where the level sequence does not already exist in the world. When enabled, the StartFrame setting will override the default starting frame number Frame number to start capturing. The frame number range depends on whether the bUseRelativeFrameNumbers opti

## UAutomationTestSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAutomationTestSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAutomationTestSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAutomationTestSettings](https://developer.gp.qq.com/api/#/searchContent/UAutomationTestSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAutomationTestSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAutomationTestSettings)

类

全文搜索

Implements the Editor's user settings.

---


## 属性

- **to** — load that have engine tests Modules to load that have editor tests The automation test map to be used for several of the automation tests. The map to be used for the editor performance capture tool. Asset to test for open in automation process Editor build promotion test settings Material editor pro

