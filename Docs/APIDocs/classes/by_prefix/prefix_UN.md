# Navigation / 导航  (前缀: UN)
_共 14 个类_
---
## UNavArea

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavArea?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavArea.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavArea](https://developer.gp.qq.com/api/#/searchContent/UNavArea?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavArea.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavArea)

类

全文搜索

Class containing definition of a navigation area

---


## 属性

- **cost** — multiplier for path distance entering cost area color in navigation view restrict area only to specified agents DefaultCost FixedAreaEnteringCost DrawColor SupportedAgents bSupportsAgent0 bSupportsAgent1 bSupportsAgent2 bSupportsAgent3 bSupportsAgent4 bSupportsAgent5 bSupportsAgent6 bSupportsAgent7

## UNavAreaMeta_SwitchByAgent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavAreaMeta_SwitchByAgent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavAreaMeta_SwitchByAgent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavAreaMeta_SwitchByAgent](https://developer.gp.qq.com/api/#/searchContent/UNavAreaMeta_SwitchByAgent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavAreaMeta_SwitchByAgent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavAreaMeta_SwitchByAgent)

类

全文搜索

Class containing definition of a navigation area

---

## UNavCollision

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavCollision?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavCollision.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavCollision](https://developer.gp.qq.com/api/#/searchContent/UNavCollision?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavCollision.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavCollision)

类

全文搜索

---


## 属性

- **of** — nav collision cylinders list of nav collision boxes navigation area type (empty = default obstacle) If set, mesh will be used as dynamic obstacle (don't create navmesh on top, much faster addingremoving) If set, convex collisions will be exported offline for faster runtime navmesh building (increase

## UNavigationPath

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavigationPath?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavigationPath.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavigationPath](https://developer.gp.qq.com/api/#/searchContent/UNavigationPath?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavigationPath.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavigationPath)

类

全文搜索

UObject wrapper for FNavigationPath

---


## 函数

- **StringGetDebugString**()
- **EnableDebugDrawing**(bool bShouldDrawDebugData, FLinearColorPathColor)
- **EnableRecalculationOnInvalidation**(TEnumAsByte < ENavigationOptionFlag :: Type >DoRecalculation) — if enabled path will request recalculation if it gets invalidated due to a change to underlying navigation
- **GetPathLength**()
- **GetPathCost**()
- **IsPartial**()
- **IsValid**()
- **IsStringPulled**(GetDebugString EnableDebugDrawing EnableRecalculationOnInvalidation GetPathLength GetPathCost IsPartial IsValid IsStringPulled)

## 委托

- voidPathUpdatedNotifier(UNavigationPath*AffectedPath, TEnumAsByte<ENavPathEvent::Type>PathEvent)
- PathUpdatedNotifier

## UNavigationQueryFilter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavigationQueryFilter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavigationQueryFilter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavigationQueryFilter](https://developer.gp.qq.com/api/#/searchContent/UNavigationQueryFilter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavigationQueryFilter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavigationQueryFilter)

类

全文搜索

Class containing definition of a navigation query filter

---


## 属性

- **of** — overrides for navigation areas required flags of navigation nodes forbidden flags of navigation nodes Areas IncludeFlags ExcludeFlags

## UNavigationSystem

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

## UNavLinkCustomComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavLinkCustomComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavLinkCustomComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavLinkCustomComponent](https://developer.gp.qq.com/api/#/searchContent/UNavLinkCustomComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavLinkCustomComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavLinkCustomComponent)

类

全文搜索

Encapsulates NavLinkCustomInterface interface, can be used with Actors not relevant for navigation Additional functionality: - can be toggled - can create obstacle area for easierforced separation of link end points - can broadcast state changes to nearby agents

---


## 属性

- **Id** — assigned by navigation system area class to use when link is enabled area class to use when link is disabled start point, relative to owner end point, relative to owner direction of link is link currently in enabled state? (area class) should link notify nearby agents when it changes state to enable
- **for** — state change broadcast (0 = single broadcast) trace channel for state change broadcast NavLinkUserId EnabledAreaClass DisabledAreaClass LinkRelativeStart LinkRelativeEnd LinkDirection bLinkEnabled bNotifyWhenEnabled bNotifyWhenDisabled bCreateBoxObstacle ObstacleOffset ObstacleExtent ObstacleAreaCla

## UNavLocalGridManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavLocalGridManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavLocalGridManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavLocalGridManager](https://developer.gp.qq.com/api/#/searchContent/UNavLocalGridManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavLocalGridManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavLocalGridManager)

类

全文搜索

Manager for local navigation grids Builds non overlapping grid from multiple sources, that can be used later for pathfinding. Check also: UGridPathFollowingComponent, FNavLocalGridData

---


## 函数

- **SetLocalNavigationGridDensity**(UObject* WorldContextObject, floatCellSize)
- **AddLocalNavigationGridForPoint**(UObject* WorldContextObject, FVector& Location, int32 Radius2D, float Height, boolbRebuildGrids) — creates new grid data for single point
- **AddLocalNavigationGridForPoints**(UObject* WorldContextObject, TArray < FVector >& Locations, int32 Radius2D, float Height, boolbRebuildGrids) — creates single grid data for set of points
- **AddLocalNavigationGridForBox**(UObject* WorldContextObject, FVector& Location, FVector Extent, FRotator Rotation, int32 Radius2D, float Height, boolbRebuildGrids)
- **AddLocalNavigationGridForCapsule**(UObject* WorldContextObject, FVector& Location, float CapsuleRadius, float CapsuleHalfHeight, int32 Radius2D, float Height, boolbRebuildGrids)
- **RemoveLocalNavigationGrid**(UObject* WorldContextObject, int32 GridId, boolbRebuildGrids)
- **FindLocalNavigationGridPath**(UObject* WorldContextObject, FVector& Start, FVector& End, TArray < FVector > &PathPoints) — SetLocalNavigationGridDensity AddLocalNavigationGridForPoint AddLocalNavigationGridForPoints AddLocalNavigationGridForBox AddLocalNavigationGridForCapsule RemoveLocalNavigationGrid FindLocalNavigationGridPath

## UNavModifierComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavModifierComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavModifierComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavModifierComponent](https://developer.gp.qq.com/api/#/searchContent/UNavModifierComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavModifierComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavModifierComponent)

类

全文搜索

---


## 函数

- **SetAreaClass**(TSubclassOf < UNavArea >NewAreaClass) — SetAreaClass

## 属性

- **extent** — used ONLY when owning actor doesn't have collision component AreaClass FailsafeExtent

## UNavMovementComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavMovementComponent](https://developer.gp.qq.com/api/#/searchContent/UNavMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavMovementComponent)

类

全文搜索

NavMovementComponent defines base functionality for MovementComponents that move any 'agent' that may be involved in AI pathfinding.

---


## 函数

- **StopActiveMovement**(Stops applying further movement (usually zeros acceleration).)
- **StopMovementKeepPathing**(Stops movement immediately (reset velocity) but keeps following current path)
- **IsCrouching**(return -true if currently crouching)
- **IsFalling**(return -true if currently falling (not flying, in a non-fluid volume, and not on the ground))
- **IsMovingOnGround**(return -true if currently moving on the ground (e.g. walking or driving))
- **IsSwimming**(return -true if currently swimming (moving through a fluid volume))
- **IsFlying**(return -true if currently flying (moving through a non-fluid volume without resting on the ground) StopActiveMovement StopMovementKeepPathing IsCrouching IsFalling IsMovingOnGround IsSwimming IsFlying)

## 属性

- **that** — define how the component can move. Braking distance override used with acceleration driven path following (bUseAccelerationForPaths) If set to true NavAgentProps' radius and height will be updated with Owner's collision capsule size If set, pathfollowing will control character movement via accelerat

## UNavRelevantComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavRelevantComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavRelevantComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavRelevantComponent](https://developer.gp.qq.com/api/#/searchContent/UNavRelevantComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavRelevantComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavRelevantComponent)

类

全文搜索

---


## 函数

- **SetNavigationRelevancy**(boolbRelevant) — SetNavigationRelevancy

## 属性

- **navigation** — data to entry for owner's root component (depends on its relevancy) bAttachToOwnersRoot CachedNavParent

## UNetConnection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNetConnection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNetConnection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNetConnection](https://developer.gp.qq.com/api/#/searchContent/UNetConnection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNetConnection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNetConnection)

类

全文搜索

---


## 属性

- **connections** — for secondary viewports UNetDriver *Driver Owning net driver The class name for the PackageMap to be loaded UPackageMap *PackageMap Package map between local and remote. (negotiates net serialization) @todo document This actor is bNetTemporary, which means it should never be replicated after it's in

## UNetDriver

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNetDriver?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNetDriver.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNetDriver](https://developer.gp.qq.com/api/#/searchContent/UNetDriver?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNetDriver.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNetDriver)

类

全文搜索

---


## 属性

- **to** — specify the class to use for connections @todo document @todo document @todo document @todo document @todo document Amount of time a server will wait before traveling to next map, gives clients time to receive final RPCs on existing level @see NextSwitchCountdown @todo document @todo document @todo

## UNetworkSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNetworkSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNetworkSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNetworkSettings](https://developer.gp.qq.com/api/#/searchContent/UNetworkSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNetworkSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNetworkSettings)

类

全文搜索

Network settings.

---

