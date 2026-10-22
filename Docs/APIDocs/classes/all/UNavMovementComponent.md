# UNavMovementComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavMovementComponent](https://developer.gp.qq.com/api/#/searchContent/UNavMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavMovementComponent)

类

全文搜索

NavMovementComponent defines base functionality for MovementComponents that move any 'agent' that may be involved in AI pathfinding.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **StopActiveMovement** |  | Stops applying further movement (usually zeros acceleration). |
| void | **StopMovementKeepPathing** |  | Stops movement immediately (reset velocity) but keeps following current path |
| bool | **IsCrouching** |  | return -true if currently crouching |
| bool | **IsFalling** |  | return -true if currently falling (not flying, in a non-fluid volume, and not on the ground) |
| bool | **IsMovingOnGround** |  | return -true if currently moving on the ground (e.g. walking or driving) |
| bool | **IsSwimming** |  | return -true if currently swimming (moving through a fluid volume) |
| bool | **IsFlying** |  | return -true if currently flying (moving through a non-fluid volume without resting on the ground) StopActiveMovement StopMovementKeepPathing IsCrouching IsFalling IsMovingOnGround IsSwimming IsFlying |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Properties | **that** | define how the component can move. Braking distance override used with acceleration driven path following (bUseAccelerationForPaths) If set to true NavAgentProps' radius and height will be updated with Owner's collision capsule size If set, pathfollowing will control character movement via accelerat |

