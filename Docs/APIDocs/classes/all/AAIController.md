# AAIController

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AAIController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAIController.json&isSelect=1&apiEnc=%22%22&apiLabel=AAIController](https://developer.gp.qq.com/api/#/searchContent/AAIController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAIController.json&isSelect=1&apiEnc=%22%22&apiLabel=AAIController)

全文搜索

AIController is the base class of controllers for AI-controlled Pawns. Controllers are non-physical actors that can be attached to a pawn to control its actions. AIControllers manage the artificial intelligence for the pawns they control. In networked games, they only exist on the server.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **OnPossess** | APawn *PossessedPawn | Event called when PossessedPawn is possessed by this controller. |
| void | **OnUnpossess** | APawn *UnpossessedPawn | Gets triggered after given pawn has been unpossesed |
| EPathFollowingRequestResult :: | **TypeMoveToActor** | AActor * Goal, float AcceptanceRadius, bool bStopOnOverlap, bool bUsePathfinding, bool bCanStrafe, TSubclassOf < UNavigationQueryFilter > FilterClass, boolbAllowPartialPath | Makes AI go toward specified Goal actor (destination will be continuously updated), aborts any active path following params AcceptanceRadius -- finish move if pawn gets close enough params bStopOnOverlap -- add pawn's radius to AcceptanceRadius params bUsePathfinding -- use navigation data to calcul |
| EPathFollowingRequestResult :: | **TypeMoveToLocation** | FVector & Dest, float AcceptanceRadius, bool bStopOnOverlap, bool bUsePathfinding, bool bProjectDestinationToNavigation, bool bCanStrafe, TSubclassOf < UNavigationQueryFilter > FilterClass, bool bAllo | Makes AI go toward specified Dest location, aborts any active path following params AcceptanceRadius -- finish move if pawn gets close enough params bStopOnOverlap -- add pawn's radius to AcceptanceRadius params bUsePathfinding -- use navigation data to calculate path (otherwise it will go in straig |
| EPathFollowingStatus :: | **TypeGetMoveStatus** |  | Returns status of path following |
| bool | **HasPartialPath** |  | Returns true if the current PathFollowingComponent's path is partial (does not reach desired destination). |
| F | **VectorGetImmediateMoveDestination** |  | Returns position of current path segment's end. |
| void | **SetMoveBlockDetection** | boolbEnable | Updates state of movement block detection. |
| bool | **RunBehaviorTree** | UBehaviorTree *BTAsset | Starts executing behavior tree. |
| bool | **UseBlackboard** | UBlackboardData * BlackboardAsset, UBlackboardComponent * &BlackboardComponent | Makes AI use the specified Blackboard asset & creates a Blackboard Component if one does not already exist. return -true if we successfully linked the blackboard asset to the blackboard component. params BlackboardAsset - The Blackboard asset to use. params BlackboardComponent -The Blackboard compon |
| void | **ClaimTaskResource** | TSubclassOf < UGameplayTaskResource >ResourceClass |  |
| void | **UnclaimTaskResource** | TSubclassOf < UGameplayTaskResource >ResourceClass |  |
| void | **OnUsingBlackBoard** | UBlackboardComponent * BlackboardComp, UBlackboardData *BlackboardAsset |  |
| F | **VectorGetFocalPoint** |  | Retrieve the final position that controller should be looking at. |
| F | **VectorGetFocalPointOnActor** | AActor *Actor | Retrieve the focal point this controller should focus to on given actor. |
| void | **K2_SetFocalPoint** | FVectorFP | Set the position that controller should be looking at. |
| void | **K2_SetFocus** | AActor *NewFocus | Set Focus for actor, will set FocalPoint as a result. |
| AActor * | **GetFocusActor** |  | Get the focused actor. |
| void | **K2_ClearFocus** |  | Clears Focus, will also clear FocalPoint as a result |
| void | **OnGameplayTaskResourcesClaimed** | FGameplayResourceSet NewlyClaimed, FGameplayResourceSetFreshlyReleased |  |
| UPathFollowingComponent * | **GetPathFollowingComponent** |  | Returns PathFollowingComponent subobject |
| UAIPerceptionComponent * | **GetAIPerceptionComponent** |  | OnPossess OnUnpossess MoveToActor MoveToLocation GetMoveStatus HasPartialPath GetImmediateMoveDestination SetMoveBlockDetection RunBehaviorTree UseBlackboard ClaimTaskResource UnclaimTaskResource OnUsingBlackBoard GetFocalPoint GetFocalPointOnActor K2_SetFocalPoint K2_SetFocus GetFocusActor K2_Clear |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| By | **default** | AI's logic gets stopped when controlled Pawn is unpossesed. Setting this flag to false will make AI logic persist past loosing controll over a pawn Skip extra line of sight traces to extremities of target being checked. Is strafing allowed during movement? Specifies if this AI wants its own PlayerSt |

## 委托

- voidReceiveMoveCompleted(FAIRequestIDRequestID, EPathFollowingResult::TypeResult)
- Blueprint notification that we've completed the current movement request
- ReceiveMoveCompleted

