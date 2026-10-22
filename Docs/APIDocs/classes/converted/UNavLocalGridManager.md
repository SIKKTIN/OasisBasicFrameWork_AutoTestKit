# UNavLocalGridManager

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