# UNavigationPath

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavigationPath?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavigationPath.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavigationPath](https://developer.gp.qq.com/api/#/searchContent/UNavigationPath?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavigationPath.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavigationPath)

类

全文搜索

UObject wrapper for FNavigationPath

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| F | **StringGetDebugString** |  |  |
| void | **EnableDebugDrawing** | bool bShouldDrawDebugData, FLinearColorPathColor |  |
| void | **EnableRecalculationOnInvalidation** | TEnumAsByte < ENavigationOptionFlag :: Type >DoRecalculation | if enabled path will request recalculation if it gets invalidated due to a change to underlying navigation |
| float | **GetPathLength** |  |  |
| float | **GetPathCost** |  |  |
| bool | **IsPartial** |  |  |
| bool | **IsValid** |  |  |
| bool | **IsStringPulled** |  | GetDebugString EnableDebugDrawing EnableRecalculationOnInvalidation GetPathLength GetPathCost IsPartial IsValid IsStringPulled |

## 委托

- voidPathUpdatedNotifier(UNavigationPath*AffectedPath, TEnumAsByte<ENavPathEvent::Type>PathEvent)
- PathUpdatedNotifier

