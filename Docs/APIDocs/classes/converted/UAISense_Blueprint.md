# UAISense_Blueprint

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