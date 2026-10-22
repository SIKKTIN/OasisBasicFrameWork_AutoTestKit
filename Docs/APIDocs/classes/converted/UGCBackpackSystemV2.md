# UGCBackpackSystemV2

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCBackpackSystemV2?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCBackpackSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCBackpackSystemV2](https://developer.gp.qq.com/api/#/searchContent/UGCBackpackSystemV2?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCBackpackSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCBackpackSystemV2)

类

全文搜索

UGC V2背包系统接口库 需启用及配合新背包系统使用，具体参见 https://developer.gp.qq.com/wikieditor/#/catalog/20104

---


## 函数

- **UGCGetBackpackComponentV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **UGCGetBackpackUIComponentV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **VerifyItemDefineIDInBackpack**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID
- **AddItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID, numberCount
- **CheckInitPersistCompleted**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **AddItemByDefineIDV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDDefineID, numberCount, booleanAllowMerge
- **RemoveItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID, numberCount
- **RemoveItemByDefineIDV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID, numberCount
- **DropItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID, numberCount
- **DropItemByDefineIDV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID, numberCount
- **SortOutItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **CanUseItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID
- **CanRemoveItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID, numberCount
- **CanDropItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID, numberCount
- **UseItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID
- **ItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID
- **GetItemCountV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID
- **GetItemCountByDefineIDV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID
- **GetItemDefineIDsByIDV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID
- **GetItemDefineIDsByTagV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringItemTag
- **GetAllItemDefineIDsV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetEquipSlots**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetSlotDisplayName**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotName
- **ItemCanEquipToSlot**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID, stringSlotName
- **DefineIDGetEquippedItemBySlotName**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotName
- **GetItemEquippingSlot**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDDefineID
- **EquipItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotName, ItemDefineIDDefineID
- **UnEquipItemV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotName
- **EquipItemToAnySlotV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDDefineID
- **SwapEquipSlotV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotNameA, stringSlotNameB
- **AttachEquipmentToTargetItem**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDEquipment, ItemDefineIDTargetItem, stringSlotName
- **DetachEquipmentToTargetItem**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDTargetItem, stringSlotName
- **GetWarehouseItemCountByDefineID**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID
- **GetWarehouseItemCount**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID
- **GetAllWarehouseItemDefineIDs**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **UGCItemTransferResultPutInWarehouse**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID, numberPutOnCount
- **UGCItemTransferResultTakeOutWarehouse**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ItemDefineIDItemDefineID, numberTakeOutCount
- **SortOutWarehouseItem**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetCellItemCount**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetMaxCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **AddCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberAddCount
- **AddMaxCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberAddCount
- **RemoveMaxCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberRemoveCount
- **GetWarehouseCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetWarehouseMaxCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **AddWarehouseCellCapacity**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberAddCount
- **GetAllCellItemDefineIDsV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetAllCellWarehouseItemDefineIDsV2**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **IsCellCapacityFull**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **GetCurrencyIDList**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player
- **IsCurrency**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, numberItemID
- **BackpackPanelStyle**(numberStyle, numberMode) — 打开背包主界面 生效范围：客户端 params Style -[0:全屏背包, 1:半屏背包, nil:读默认配置] params Mode -[1:背包 + 装备 2:背包 + 仓库 3:背包 + 仓库 + 装备 nil:读默认配置]
- **BackpackPanel**(numberMode) — 打开背包主界面 生效范围：客户端 params Mode -1:背包 + 装备 2:背包 + 仓库 3:背包 + 仓库 + 装备 [4-6]同1-3，形式为半屏背包
- **BackpackPanel**(关闭背包主界面 生效范围：客户端)
- **ItemNewLabel**(booleanbOnce) — 清除物品新标记(不会刷新背包UI，需重新打开) 生效范围：客户端 调用时机: 任意时机(不依赖背包UI) params bOnce -true:仅清除一次 false:始终清除，包含后续新进物品
- **EquipSlotEnable**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotName
- **GetEquipSlotEnable**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, stringSlotName
- **WidgetGetCustomUIWidget**(PlayerPawn) — PlayerController @玩家角色或者玩家控制器Player, ECustomUITypeType, ItemDefineIDDefineID
- **GetCustomItemUIWidgetPathsByItemID**(numberItemID) — 获取指定物品的自定义格子UI蓝图路径列表 生效范围：客户端 return -自定义UI蓝图路径列表 params ItemID -物品ID
- **BackpackButtonVisible**(booleanVisible) — 显隐背包按钮 生效范围：客户端 params Visible -是否可见
- **GetUISelectItemChangeDelegate**(获取背包UI选中态变化委托 生效范围：客户端 背包控件的选中数据 SelectData: 背包格子：table {ItemDefineID:物品DefineID, DataType:string, ItemIdx:格子位置索引, WeakWidget:控件弱引用,通过WeakWidget:Get()获取控件} 其他控件(装备、武器、槽位): table {ItemDefineID:物品DefineID, DataType:string, WeakWidget:控件弱引用} 可以通过DataType判断点击了哪个区域的UI控件，背包内核UI对应的DataType定义在EItemDataTypeS)