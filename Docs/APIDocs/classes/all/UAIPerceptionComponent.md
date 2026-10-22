# UAIPerceptionComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionComponent](https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionComponent)

类

全文搜索

AIPerceptionComponent is used to register as stimuli listener in AIPerceptionSystem and gathers registered stimuli. UpdatePerception is called when component gets new stimuli (batched)

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **OnOwnerEndPlay** | AActor * Actor, EEndPlayReason :: TypeEndPlayReason |  |
| void | **RequestStimuliListenerUpdate** |  | Notifies AIPerceptionSystem to update properties for this "stimuli listener" |
| void | **GetPerceivedHostileActors** | TArray < AActor * > &OutActors |  |
| void | **GetCurrentlyPerceivedActors** | TSubclassOf < UAISense > SenseToUse, TArray < AActor * > &OutActors | If SenseToUse is none all actors currently perceived in any way will get fetched |
| void | **GetKnownPerceivedActors** | TSubclassOf < UAISense > SenseToUse, TArray < AActor * > &OutActors | If SenseToUse is none all actors ever perceived in any way (and not forgotten yet) will get fetched |
| void | **GetPerceivedActors** | TSubclassOf < UAISense > SenseToUse, TArray < AActor * > &OutActors |  |
| bool | **GetActorsPerception** | AActor * Actor, FActorPerceptionBlueprintInfo &Info | Retrieves whatever has been sensed about given actor |
| void | **SetSenseEnabled** | TSubclassOf < UAISense > SenseClass, boolbEnable | Note that this works only if given sense has been already configured for this component instance OnOwnerEndPlay RequestStimuliListenerUpdate GetPerceivedHostileActors GetCurrentlyPerceivedActors GetKnownPerceivedActors GetPerceivedActors GetActorsPerception SetSenseEnabled |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Indicated | **sense** | that takes precedence over other senses when determining sensed actor's location. Should be set to one of the senses configured in SensesConfig, or None. AAIController *AIOwner SensesConfig DominantSense AIOwner |

## 委托

- voidOnPerceptionUpdated(TArray<AActor*>UpdatedActors)
- voidOnTargetPerceptionUpdated(AActor*Actor, FAIStimulusStimulus)
- OnPerceptionUpdated
- OnTargetPerceptionUpdated

