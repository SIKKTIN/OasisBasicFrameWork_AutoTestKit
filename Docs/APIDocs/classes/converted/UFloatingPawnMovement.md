# UFloatingPawnMovement

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFloatingPawnMovement?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFloatingPawnMovement.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFloatingPawnMovement](https://developer.gp.qq.com/api/#/searchContent/UFloatingPawnMovement?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFloatingPawnMovement.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFloatingPawnMovement)

类

全文搜索

FloatingPawnMovement is a movement component that provides simple movement for any Pawn class. Limits on speed and acceleration are provided, while gravity is not implemented. Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()). During swept (non-teleporting) movement only collision of UpdatedComponent is considered, attached components will teleport to the end location ignoring collision.

---


## 属性

- **velocity** — magnitude allowed for the controlled Pawn. Acceleration applied by input (rate of change of velocity) Deceleration applied when there is no input (rate of change of velocity) Setting affecting extra force applied when changing direction, making turns have less drift and become more responsive. Veloc