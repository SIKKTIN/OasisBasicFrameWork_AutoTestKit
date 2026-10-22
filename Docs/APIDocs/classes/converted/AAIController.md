# AAIController

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AAIController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAIController.json&isSelect=1&apiEnc=%22%22&apiLabel=AAIController](https://developer.gp.qq.com/api/#/searchContent/AAIController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAIController.json&isSelect=1&apiEnc=%22%22&apiLabel=AAIController)

全文搜索

AIController is the base class of controllers for AI-controlled Pawns. Controllers are non-physical actors that can be attached to a pawn to control its actions. AIControllers manage the artificial intelligence for the pawns they control. In networked games, they only exist on the server.

---


## 函数

- **OnPossess**(APawn *PossessedPawn) — Event called when PossessedPawn is possessed by this controller.
- **OnUnpossess**(APawn *UnpossessedPawn) — Gets triggered after given pawn has been unpossesed
- **TypeMoveToActor**(AActor* Goal, float AcceptanceRadius, bool bStopOnOverlap, bool bUsePathfinding, bool bCanStrafe, TSubclassOf < UNavigationQueryFilter > FilterClass, boolbAllowPartialPath) — Makes AI go toward specified Goal actor (destination will be continuously updated), aborts any active path following params AcceptanceRadius -- finish move if pawn gets close enough params bStopOnOverlap -- add pawn's radius to AcceptanceRadius params bUsePathfinding -- use navigation data to calcul
- **TypeMoveToLocation**(FVector& Dest, float AcceptanceRadius, bool bStopOnOverlap, bool bUsePathfinding, bool bProjectDestinationToNavigation, bool bCanStrafe, TSubclassOf < UNavigationQueryFilter > FilterClass, bool bAllo) — Makes AI go toward specified Dest location, aborts any active path following params AcceptanceRadius -- finish move if pawn gets close enough params bStopOnOverlap -- add pawn's radius to AcceptanceRadius params bUsePathfinding -- use navigation data to calculate path (otherwise it will go in straig
- **TypeGetMoveStatus**(Returns status of path following)
- **HasPartialPath**(Returns true if the current PathFollowingComponent's path is partial (does not reach desired destination).)
- **VectorGetImmediateMoveDestination**(Returns position of current path segment's end.)
- **SetMoveBlockDetection**(boolbEnable) — Updates state of movement block detection.
- **RunBehaviorTree**(UBehaviorTree *BTAsset) — Starts executing behavior tree.
- **UseBlackboard**(UBlackboardData* BlackboardAsset, UBlackboardComponent* &BlackboardComponent) — Makes AI use the specified Blackboard asset & creates a Blackboard Component if one does not already exist. return -true if we successfully linked the blackboard asset to the blackboard component. params BlackboardAsset - The Blackboard asset to use. params BlackboardComponent -The Blackboard compon
- **ClaimTaskResource**(TSubclassOf < UGameplayTaskResource >ResourceClass)
- **UnclaimTaskResource**(TSubclassOf < UGameplayTaskResource >ResourceClass)
- **OnUsingBlackBoard**(UBlackboardComponent* BlackboardComp, UBlackboardData *BlackboardAsset)
- **VectorGetFocalPoint**(Retrieve the final position that controller should be looking at.)
- **VectorGetFocalPointOnActor**(AActor *Actor) — Retrieve the focal point this controller should focus to on given actor.
- **K2_SetFocalPoint**(FVectorFP) — Set the position that controller should be looking at.
- **K2_SetFocus**(AActor *NewFocus) — Set Focus for actor, will set FocalPoint as a result.
- **GetFocusActor**(Get the focused actor.)
- **K2_ClearFocus**(Clears Focus, will also clear FocalPoint as a result)
- **OnGameplayTaskResourcesClaimed**(FGameplayResourceSet NewlyClaimed, FGameplayResourceSetFreshlyReleased)
- **GetPathFollowingComponent**(Returns PathFollowingComponent subobject)
- **GetAIPerceptionComponent**(OnPossess OnUnpossess MoveToActor MoveToLocation GetMoveStatus HasPartialPath GetImmediateMoveDestination SetMoveBlockDetection RunBehaviorTree UseBlackboard ClaimTaskResource UnclaimTaskResource OnUsingBlackBoard GetFocalPoint GetFocalPointOnActor K2_SetFocalPoint K2_SetFocus GetFocusActor K2_Clear)

## 属性

- **default** — AI's logic gets stopped when controlled Pawn is unpossesed. Setting this flag to false will make AI logic persist past loosing controll over a pawn Skip extra line of sight traces to extremities of target being checked. Is strafing allowed during movement? Specifies if this AI wants its own PlayerSt

## 委托

- voidReceiveMoveCompleted(FAIRequestIDRequestID, EPathFollowingResult::TypeResult)
- Blueprint notification that we've completed the current movement request
- ReceiveMoveCompleted