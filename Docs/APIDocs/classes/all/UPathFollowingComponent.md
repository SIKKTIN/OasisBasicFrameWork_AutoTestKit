# UPathFollowingComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPathFollowingComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPathFollowingComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPathFollowingComponent](https://developer.gp.qq.com/api/#/searchContent/UPathFollowingComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPathFollowingComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPathFollowingComponent)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **OnActorBump** | AActor * SelfActor, AActor * OtherActor, FVector NormalImpulse, FHitResult &Hit | called when moving agent collides with another actor |
| EPathFollowingAction :: | **TypeGetPathActionType** |  |  |
| F | **VectorGetPathDestination** |  |  |
| void | **OnNavDataRegistered** | ANavigationData *NavData | called when NavigationSystem registers new navigation data type while this component instance has empty MyNavData. This is usually the case for AI agents hand-placed on levels. OnActorBump GetPathActionType GetPathDestination OnNavDataRegistered |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| associated | **movement** | component ANavigationData *MyNavData navigation data for agent described in movement component MovementComp MyNavData |

