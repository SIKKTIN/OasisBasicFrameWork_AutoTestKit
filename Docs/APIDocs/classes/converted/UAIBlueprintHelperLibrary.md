# UAIBlueprintHelperLibrary

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