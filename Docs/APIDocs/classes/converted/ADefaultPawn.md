# ADefaultPawn

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ADefaultPawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADefaultPawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADefaultPawn](https://developer.gp.qq.com/api/#/searchContent/ADefaultPawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADefaultPawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADefaultPawn)

类

全文搜索

DefaultPawn implements a simple Pawn with spherical collision and built-in flying movement. @see UFloatingPawnMovement

---


## 函数

- **MoveForward**(floatVal) — Input callback to move forward in local space (or backward if Val is negative). params Val -Amount of movement in the forward direction (or backward if negative).
- **MoveRight**(floatVal) — Input callback to strafe right in local space (or left if Val is negative). params Val -Amount of movement in the right direction (or left if negative).
- **MoveUp_World**(floatVal) — Input callback to move up in world space (or down if Val is negative). params Val -Amount of movement in the world up direction (or down if negative).
- **TurnAtRate**(floatRate) — Called via input to turn at a given rate. params Rate -This is a normalized rate, i.e. 1.0 means 100% of desired turn rate
- **LookUpAtRate**(floatRate) — Called via input to look up at a given rate (or down if Rate is negative). params Rate -This is a normalized rate, i.e. 1.0 means 100% of desired turn rate MoveForward MoveRight MoveUp_World TurnAtRate LookUpAtRate

## 属性

- **turn** — rate, in degsec. Other scaling may affect final turn rate. Base lookup rate, in degsec. Other scaling may affect final lookup rate. UPawnMovementComponent *MovementComponent DefaultPawn movement component USphereComponent *CollisionComponent DefaultPawn collision component UStaticMeshComponent *Mesh