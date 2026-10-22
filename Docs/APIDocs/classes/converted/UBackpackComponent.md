# UBackpackComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBackpackComponent?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%83%8C%E5%8C%85%E7%BB%84%E4%BB%B6%E7%B1%BB%2FUBackpackComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBackpackComponent](https://developer.gp.qq.com/api/#/searchContent/UBackpackComponent?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%83%8C%E5%8C%85%E7%BB%84%E4%BB%B6%E7%B1%BB%2FUBackpackComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBackpackComponent)

类

全文搜索

背包组件

---


## 委托

- voidUGC_ItemOperationFailedDelegate(const FItemDefineID&DefineID, EBattleItemOperationTypeOperationType, EBattleItemOperationFailedReasonOperationFailedReason)
- Delegate
- 生效范围SC
- 物品操作失败时通知
- params DefineID
- -物品DefineID
- params OperationType
- -操作类型
- params OperationFailedReason
- -失败原因
- voidUGC_ItemOperationDelegate(const FItemDefineID&DefineID, EBattleItemOperationTypeOperationType, uint8Reason)
- Delegate
- 生效范围SC
- 物品操作时通知
- params DefineID
- -物品DefineID
- params OperationType
- -操作类型
- params Reason
- -操作原因
- voidUGC_ItemBeforeRemovedDelegate(const FItemDefineID&DefineID)
- Delegate
- 生效范围S
- 物品被移除前通知
- params DefineID
- -物品DefineID
- voidUGC_CapacityUpdatedDelegate()
- Delegate
- 生效范围SC
- 背包最大容量变化时通知
- UGC_ItemOperationFailedDelegate
- UGC_ItemOperationDelegate
- UGC_ItemBeforeRemovedDelegate
- UGC_CapacityUpdatedDelegate