# UVehicleSeatComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UVehicleSeatComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVehicleSeatComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVehicleSeatComponent](https://developer.gp.qq.com/api/#/searchContent/UVehicleSeatComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVehicleSeatComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVehicleSeatComponent)

类

全文搜索

载具座位组件类

---

## 委托

- voidUGC_OnSeatAttachedDelegate(ASTExtraPlayerCharacter*Character, ESTExtraVehicleSeatTypeSeatType, int32SeatIdx)
- 使用座位
- 生效范围S
- params Character
- -乘客
- params SeatType
- -座位类型
- params SeatIdx
- -座位Index
- voidUGC_OnSeatDetachedDelegate(ASTExtraPlayerCharacter*Character, ESTExtraVehicleSeatTypeSeatType, int32SeatIdx)
- 离开座位
- 生效范围S
- params Character
- -乘客
- params SeatType
- -座位类型
- params SeatIdx
- -座位Index
- voidUGC_OnSeatChangedDelegate(ASTExtraPlayerCharacter*Character, ESTExtraVehicleSeatTypeLastSeatType, int32LastSeatIdx, ESTExtraVehicleSeatTypeNewSeatType, int32NewSeatIdx)
- 离开座位
- 生效范围S
- params Character
- -乘客
- params LastSeatType
- -旧座位类型
- params LastSeatIdx
- -旧座位Index
- params NewSeatType
- -新座位类型
- params NewSeatIdx
- -新座位Index
- voidOnDriverChange(ASTExtraPlayerCharacter*OldChara, ASTExtraPlayerCharacter*NewChara)
- 驾驶员变更事件Delegate
- UGC_OnSeatAttachedDelegate
- UGC_OnSeatDetachedDelegate
- UGC_OnSeatChangedDelegate
- OnDriverChange

