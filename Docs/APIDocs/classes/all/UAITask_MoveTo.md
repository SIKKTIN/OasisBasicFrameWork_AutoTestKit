# UAITask_MoveTo

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAITask_MoveTo?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAITask_MoveTo.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAITask_MoveTo](https://developer.gp.qq.com/api/#/searchContent/UAITask_MoveTo?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAITask_MoveTo.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAITask_MoveTo)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| UAITask_MoveTo * | **AIMoveTo** | AAIController * Controller, FVector GoalLocation, AActor * GoalActor, float AcceptanceRadius, EAIOptionFlag :: Type StopOnOverlap, EAIOptionFlag :: Type AcceptPartialPath, bool bUsePathfinding, bool b | AIMoveTo |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| parameters | **of** | move request OnRequestFailed MoveRequest |

## 委托

- voidOnMoveFinished(TEnumAsByte<EPathFollowingResult::Type>Result, AAIController*AIController)
- OnMoveFinished

