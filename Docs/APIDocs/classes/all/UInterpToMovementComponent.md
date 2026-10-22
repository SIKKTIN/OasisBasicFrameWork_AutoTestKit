# UInterpToMovementComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpToMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpToMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpToMovementComponent](https://developer.gp.qq.com/api/#/searchContent/UInterpToMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpToMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpToMovementComponent)

类

全文搜索

Move the root component between a series of points over a given time @see UMovementComponent

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **StopSimulating** | FHitResult &HitResult | Clears the reference to UpdatedComponent, fires stop event, and stops ticking. |
| void | **RestartMovement** | floatInitialDirection | Reset to start. Sets time to zero and direction to 1. |
| void | **FinaliseControlPoints** |  | Initialise the control points array. Call after adding control points if they are add after begin play . StopSimulating RestartMovement FinaliseControlPoints |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| How | **long** | to take to move from the first point to the last (or vice versa) If true, will pause movement on impact. If false it will behave as if the end of the movement range was reached based on the BehaviourType. EInterpToBehaviourTypeBehaviourType Movement behaviour of the component If true, forces sub-ste |

## 委托

- voidOnInterpToReverse(const FHitResult&ImpactResult, floatTime)
- Called when InterpTo impacts something and reverse is enabled.
- voidOnInterpToStop(const FHitResult&ImpactResult, floatTime)
- Called when InterpTo has come to a stop.
- voidOnWaitBeginDelegate(const FHitResult&ImpactResult, floatTime)
- Called when InterpTo has come to a stop but will resume when possible.
- voidOnWaitEndDelegate(const FHitResult&ImpactResult, floatTime)
- Called when InterpTo has resumed following a stop.
- voidOnResetDelegate(const FHitResult&ImpactResult, floatTime)
- Called when InterpTo reached the end and reset back to start .
- OnInterpToReverse
- OnInterpToStop
- OnWaitBeginDelegate
- OnWaitEndDelegate
- OnResetDelegate

