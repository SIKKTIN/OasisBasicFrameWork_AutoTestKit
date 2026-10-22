# UNavMovementComponent

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