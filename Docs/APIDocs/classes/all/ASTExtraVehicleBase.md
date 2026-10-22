# ASTExtraVehicleBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASTExtraVehicleBase?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%BD%BD%E5%85%B7%E5%9F%BA%E7%B1%BB%2FASTExtraVehicleBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraVehicleBase](https://developer.gp.qq.com/api/#/searchContent/ASTExtraVehicleBase?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%BD%BD%E5%85%B7%E5%9F%BA%E7%B1%BB%2FASTExtraVehicleBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraVehicleBase)

类

全文搜索

载具基类

事件

voidUGC_OnVehicleEnterEvent(bool IsSucc, ASTExtraPlayerCharacter * Character, ESTExtraVehicleSeatTypeSeatType)

玩家进入载具事件

生效范围CS

params IsSucc

-上车是否成功

params Character

-乘客

params SeatType

-座位类型

voidUGC_OnVehicleExitEvent(ASTExtraPlayerCharacter *Character)

玩家离开载具事件

生效范围CS

params Character

-乘客

---

## 委托

- voidUGC_OnVehicleHealthStateChangedDelegate(ESTExtraVehicleHealthStateInVehicleHealthState)
- 载具健康状态变化
- 生效范围 CS
- params InVehicleHealthState
- -变化后的健康状态
- voidUGC_OnVehicleExplosionDelegate()
- 生效范围S
- 载具爆炸事件
- 事件
- UGC_OnVehicleEnterEvent
- UGC_OnVehicleExitEvent
- UGC_OnVehicleHealthStateChangedDelegate
- UGC_OnVehicleExplosionDelegate

