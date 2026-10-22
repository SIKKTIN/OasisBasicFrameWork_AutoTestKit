# UAIBlueprintHelperLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAIBlueprintHelperLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIBlueprintHelperLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIBlueprintHelperLibrary](https://developer.gp.qq.com/api/#/searchContent/UAIBlueprintHelperLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIBlueprintHelperLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIBlueprintHelperLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| UAIAsyncTaskBlueprintProxy * | **CreateMoveToProxyObject** | UObject * WorldContextObject, APawn * Pawn, FVector Destination, AActor * TargetActor, float AcceptanceRadius, boolbStopOnOverlap |  |
| void | **SendAIMessage** | APawn * Target, FName Message, UObject * MessageSource, boolbSuccess |  |
| APawn * | **SpawnAIFromClass** | UObject * WorldContextObject, TSubclassOf < APawn > PawnClass, UBehaviorTree * BehaviorTree, FVector Location, FRotator Rotation, boolbNoCollisionFail |  |
| AAIController * | **GetAIController** | AActor *ControlledActor | The way it works exactly is if the actor passed in is a pawn, then the function retrieves pawn's controller cast to AIController. Otherwise the function returns actor cast to AIController. |
| UBlackboardComponent * | **GetBlackboard** | AActor *Target |  |
| void | **LockAIResourcesWithAnimation** | UAnimInstance * AnimInstance, bool bLockMovement, boolLockAILogic | locks indicated AI resources of animated pawn |
| void | **UnlockAIResourcesWithAnimation** | UAnimInstance * AnimInstance, bool bUnlockMovement, boolUnlockAILogic | unlocks indicated AI resources of animated pawn. Will unlock only animation-locked resources |
| bool | **IsValidAILocation** | FVectorLocation |  |
| bool | **IsValidAIDirection** | FVectorDirectionVector |  |
| bool | **IsValidAIRotation** | FRotatorRotation |  |
| UNavigationPath * | **GetCurrentPath** | AController *Controller | Returns a copy of navigation path given controller is currently using. The result being a copy means you won't be able to influence agent's pathfollowing by manipulating received path CreateMoveToProxyObject SendAIMessage SpawnAIFromClass GetAIController GetBlackboard LockAIResourcesWithAnimation Un |

