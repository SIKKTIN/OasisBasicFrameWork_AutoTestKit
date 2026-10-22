# UNavigationSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavigationSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavigationSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavigationSystem](https://developer.gp.qq.com/api/#/searchContent/UNavigationSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavigationSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavigationSystem)

类

全文搜索

---


## 函数

- **BP_ChangeRecastPartitioning**(FName AgentName, boolHigh)
- **BP_BuildOne**(FNameAgentName)
- **BP_DynamicBuildOne**(FNameAgentName)
- **BP_Build**()
- **BP_AddDynamicNavAffect**(FName AgentName, FBox &InBounds)
- **BP_IncrementalBuild**(FNameAgentName)
- **BP_CancelBuild**(FNameAgentName)
- **BP_GetNavigationData**(FNameAgentName)
- **GetNavigationSystem**(UObject *WorldContextObject)
- **K2_ProjectPointToNavigation**(UObject* WorldContextObject, FVector& Point, FVector& ProjectedLocation, ANavigationData* NavData, TSubclassOf < UNavigationQueryFilter > FilterClass, FVectorQueryExtent) — Project a point onto the NavigationData
- **K2_GetRandomReachablePointInRadius**(UObject* WorldContextObject, FVector& Origin, FVector& RandomLocation, float Radius, ANavigationData* NavData, TSubclassOf < UNavigationQueryFilter > FilterClass, floatExtentRadius) — Generates a random location reachable from given Origin location. return -Return Value represents if the call was successful
- **K2_GetRandomPointInNavigableRadius**(UObject* WorldContextObject, FVector& Origin, FVector& RandomLocation, float Radius, ANavigationData* NavData, TSubclassOf < UNavigationQueryFilter >FilterClass) — Generates a random location in navigable space within given radius of Origin. return -Return Value represents if the call was successful
- **TypeGetPathCost**(UObject* WorldContextObject, FVector& PathStart, FVector& PathEnd, float& PathCost, ANavigationData* NavData, TSubclassOf < UNavigationQueryFilter >FilterClass) — Potentially expensive. Use with caution. Consider using UPathFollowingComponent::GetRemainingPathCost instead
- **TypeGetPathLength**(UObject* WorldContextObject, FVector& PathStart, FVector& PathEnd, float& PathLength, ANavigationData* NavData, TSubclassOf < UNavigationQueryFilter >FilterClass) — Potentially expensive. Use with caution
- **IsNavigationBeingBuilt**(UObject *WorldContextObject)
- **IsNavigationBeingBuiltOrLocked**(UObject *WorldContextObject)
- **SimpleMoveToActor**(AController* Controller, AActor *Goal)
- **SimpleMoveToLocation**(AController* Controller, FVector &Goal)
- **FindPathToLocationSynchronously**(UObject* WorldContextObject, FVector& PathStart, FVector& PathEnd, AActor* PathfindingContext, TSubclassOf < UNavigationQueryFilter >FilterClass) — Finds path instantly, in a FindPath Synchronously. params PathfindingContext -could be one of following: NavigationData (like Navmesh actor), Pawn or Controller. This parameter determines parameters of specific pathfinding query
- **FindPathToActorSynchronously**(UObject* WorldContextObject, FVector& PathStart, AActor* GoalActor, float TetherDistance, AActor* PathfindingContext, TSubclassOf < UNavigationQueryFilter >FilterClass) — Finds path instantly, in a FindPath Synchronously. Main advantage over FindPathToLocationSynchronously is that the resulting path will automatically get updated if goal actor moves more than TetherDistance away from last path node params PathfindingContext -could be one of following: NavigationData
- **NavigationRaycast**(UObject* WorldContextObject, FVector& RayStart, FVector& RayEnd, FVector& HitLocation, TSubclassOf < UNavigationQueryFilter > FilterClass, AController *Querier) — Performs navigation raycast on NavigationData appropriate for given Querier. return -true if line from RayStart to RayEnd was obstructed. Also, true when no navigation data present params HitLocation -if line was obstructed this will be set to hit location. Otherwise it contains SegmentEnd params Qu
- **SetMaxSimultaneousTileGenerationJobsCount**(int32MaxNumberOfJobs) — will limit the number of simultaneously running navmesh tile generation jobs to specified number. params MaxNumberOfJobs -gets trimmed to be at least 1. You cannot use this function to pause navmesh generation
- **ResetMaxSimultaneousTileGenerationJobsCount**(Brings limit of simultaneous navmesh tile generation jobs back to Project Setting's default value)
- **RegisterNavigationInvoker**(AActor* Invoker, float TileGenerationRadius, floatTileRemovalRadius) — Registers given actor as a "navigation enforcer" which means navigation system will make sure navigation is being generated in specified radius around it.
- **UnregisterNavigationInvoker**(AActor *Invoker) — Removes given actor from the list of active navigation enforcers.
- **SetGeometryGatheringMode**(ENavDataGatheringModeConfigNewMode)
- **OnNavigationBoundsUpdated**(ANavMeshBoundsVolume *NavVolume)
- **VectorProjectPointToNavigation**(UObject* WorldContextObject, FVector& Point, ANavigationData* NavData, TSubclassOf < UNavigationQueryFilter > FilterClass, FVectorQueryExtent)
- **VectorGetRandomReachablePointInRadius**(UObject* WorldContextObject, FVector& Origin, float Radius, ANavigationData* NavData, TSubclassOf < UNavigationQueryFilter >FilterClass)
- **VectorGetRandomPointInNavigableRadius**(UObject* WorldContextObject, FVector& Origin, float Radius, ANavigationData* NavData, TSubclassOf < UNavigationQueryFilter >FilterClass)
- **UpdateDynamicGenerateTargetNav**(bool IsAdd, FDynamicGenerateTargetNavigationGenerateTargetNav) — BP_ChangeRecastPartitioning BP_BuildOne BP_DynamicBuildOne BP_Build BP_AddDynamicNavAffect BP_IncrementalBuild BP_CancelBuild BP_GetNavigationData GetNavigationSystem K2_ProjectPointToNavigation K2_GetRandomReachablePointInRadius K2_GetRandomPointInNavigableRadius GetPathCost GetPathLength IsNavigat

## 属性

- **navigation** — data for managing direct paths, not part of NavDataSet! Should navigation system spawn default Navigation Data when there's none and there are navigation bounds present? gets set to true if gathering navigation data (like in navoctree) is required due to the need of navigation generation Is always t

## 委托

- voidOnNavDataRegisteredEvent(ANavigationData*NavData)
- UPROPERTY(BlueprintAssignable, Transient)
- voidOnNavigationGenerationFinishedDelegate(ANavigationData*NavData)
- OnNavDataRegisteredEvent
- OnNavigationGenerationFinishedDelegate