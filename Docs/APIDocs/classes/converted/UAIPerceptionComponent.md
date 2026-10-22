# UAIPerceptionComponent

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