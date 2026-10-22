UBackpackComponent
背包组件
委托
voidUGC_ItemOperationFailedDelegate(const FItemDefineID&DefineID, EBattleItemOperationTypeOperationType, EBattleItemOperationFailedReasonOperationFailedReason)
Delegate
生效范围SC
物品操作失败时通知
params DefineID 
-物品DefineID
params OperationType 
-操作类型
params OperationFailedReason 
-失败原因
voidUGC_ItemOperationDelegate(const FItemDefineID&DefineID, EBattleItemOperationTypeOperationType, uint8Reason)
Delegate
生效范围SC
物品操作时通知
params DefineID 
-物品DefineID
params OperationType 
-操作类型
params Reason 
-操作原因
voidUGC_ItemBeforeRemovedDelegate(const FItemDefineID&DefineID)
Delegate
生效范围S
物品被移除前通知
params DefineID 
-物品DefineID
voidUGC_CapacityUpdatedDelegate()
Delegate
生效范围SC
背包最大容量变化时通知