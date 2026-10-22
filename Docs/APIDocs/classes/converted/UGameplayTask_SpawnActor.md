# UGameplayTask_SpawnActor

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