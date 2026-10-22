# UBackpackComponentV2

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBackpackComponentV2?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBackpackComponentV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBackpackComponentV2](https://developer.gp.qq.com/api/#/searchContent/UBackpackComponentV2?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBackpackComponentV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBackpackComponentV2)

类

全文搜索

V2背包内核组件

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| bool | **CheckInitPersistCompleted** |  | 查询背包是否初始化完成，完成后才可以进行背包操作 事件 |
| int32 | **CanAddItemV2** | int32 ItemID, int32Count | 能否添加物品，能添加多少物品 可重载并自定义 DS 被调用 能通过此事件，决定调用 AddItemV2 时，允许添加多少物品。 即使此事件允许添加物品，也可能因为其它限制因素导致物品添加数量减少或添加失败。 部分强制添加物品的情形，会跳过此事件。 return -允许添加的物品数量，如果等于 Count 表示允许添加所有需要的物品 params ItemID -物品ID params Count -需要添加的物品数量 |
| int32 | **CanAddItemByDefineIDV2** | FItemDefineID & DefineID, int32Count | 能否添加物品，能添加多少物品 可重载并自定义 DS 被调用 能通过此事件，决定添加某个实例物品时，允许添加多少物品。 此接口针对具体实例，调用AddItemV2、调用AddItemByDefineIDV2、物品转移等情形都可能触发此事件。 单次调用 AddItemV2 可能触发多次针对不同实例的 CanAddItemByDefineIDV2 判断。 即使此事件允许添加物品，也可能因为其它限制因素导致物品添加数量减少或添加失败。 部分强制添加物品的情形，会跳过此事件。 return -允许添加的物品数量，如果等于 Count 表示允许添加所有需要的物品 params Count -需要添加的物品 |
| void | **OnAddItemV2** | FItemDefineID & ItemDefineID, int32Count | 当添加物品实例后回调 可重载并自定义 DS 被调用 当物品实例被成功添加时触发此事件。 单次 AddItemV2 可能触发多次针对不同实例的 OnAddItem 调用（生成多个堆叠的情况）。 如果物品触发了自动装备，可能装备相关事件会先于 OnAddItemV2 被触发。 params ItemDefineID -物品DefineID params Count - 已添加的物品数量 |
| int32 | **CanMergeItemV2** | FItemDefineID & ItemDefineID, int32 CountNow, int32MergeCount | 能否合并物品(将新增的物品叠加到已有格子上) 可重载并自定义 DS 被调用 能通过此事件，决定多少物品能堆叠到已有堆叠（ItemDefineID）上。 此接口针对具体实例，调用AddItemV2、调用AddItemByDefineIDV2、物品转移等情形都可能触发此事件。 单次 AddItemV2 可能触发多次针对不同实例的 CanMergeItem 判断（向多个堆叠合并时）。 即使此事件允许堆叠物品，也可能因为其它限制因素导致物品堆叠数量减少或堆叠失败。 部分情形下会跳过此事件。 return -允许合并到格子的物品数量，如果等于 Count 表示允许合并所有需要的物品 params Ite |
| void | **OnMergeItemV2** | FItemDefineID & ItemDefineID, int32 OldCount, int32MergeCount | 当合并物品后回调(将新增的物品叠加到已有格子上) 可重载并自定义 DS 被调用 此接口针对具体实例，调用AddItemV2、调用AddItemByDefineIDV2、物品转移等情形都可能触发此事件。 单次 AddItemV2 可能触发多次针对不同实例的 OnMergeItemV2 事件（向多个堆叠合并时）。 params ItemDefineID -物品DefineID params OldCount -合并前的物品数量 params MergeCount -此次合并操作新增的物品数量 |
| int32 | **CanRemoveItemV2** | FItemDefineID & ItemDefineID, int32Count | 能否移除物品，能移除多少物品 可重载并自定义 DS、Client 被调用 能通过此事件，决定多少物品能被移除。 此接口针对具体实例，调用RemoveItemV2、调用RemoveItemByDefineIDV2、物品转移等情形都可能触发此事件。 单次 RemoveItemV2 可能触发多次针对不同实例的 CanRemoveItemV2 判断（单个堆叠数量不足时）。 即使此事件允许移除物品，也可能因为其它限制因素导致移除数量减少或移除失败。 部分情形下会跳过此事件。 return -允许移除的物品数量，如果等于 Count 表示允许移除所有需要的物品 params ItemDefineID -物 |
| void | **OnRemoveItemV2** | FItemDefineID & ItemDefineID, int32Count | 当移除物品后回调 可重载并自定义 DS 被调用 此接口针对具体实例，调用RemoveItemV2、调用RemoveItemByDefineIDV2、物品转移等情形都可能触发此事件。 单次 RemoveItemV2 可能触发多次针对不同实例的 OnRemoveItemV2 事件（单个堆叠数量不足时）。 params ItemDefineID -物品DefineID，移除后可能已不存在于背包 params Count - 已移除的物品数量 |
| int32 | **CanDropItemV2** | FItemDefineID & ItemDefineID, int32Count | 能否丢弃物品，能丢弃多少物品 可重载并自定义 DS、Client 被调用 能通过此事件，决定多少物品能被丢弃。 此接口针对具体实例，调用DropItemV2、调用DropItemByDefineIDV2等情形都可能触发此事件。 单次 调用 DropItemV2 可能触发多次针对不同实例的 CanDropItemV2 判断（单个堆叠数量不足时）。 即使此事件允许丢弃物品，也可能因为其它限制因素导致丢弃数量减少或丢弃失败。 部分情形下会跳过此事件。 return -允许丢弃的物品数量，如果等于 Count 表示允许丢弃所有需要的物品 params ItemDefineID -物品DefineID  |
| void | **OnDropItemV2** | FItemDefineID & ItemDefineID, int32Count | 当丢弃物品后回调 可重载并自定义 DS 被调用 当物品被成功丢弃时，触发此事件。 此接口针对具体实例，调用DropItemV2、调用DropItemByDefineIDV2等情形都可能触发此事件。 单次 DropItemV2 可能触发多次针对不同实例的 OnDropItemV2 事件（单个堆叠数量不足时）。 params ItemDefineID -物品DefineID，丢弃后可能已不存在于背包 params Count - 已丢弃的物品数量 |
| bool | **CanUseItemV2** | FItemDefineID &ItemDefineID | 能否使用物品 可重载并自定义 DS、Client 被调用 DS 触发使用物品时，会触发并判断能否使用。 即使此事件允许使用物品，也可能因为其它限制因素导致使用失败。 部分情形下会跳过此事件。 Client 背包UI选中物品时，会触发并判断是否显示使用按钮。 return -物品是否能够被使用 params ItemDefineID -物品DefineID |
| void | **OnUseItemV2** | FItemDefineID &ItemDefineID | 当物品触发使用后回调 可重载并自定义 DS 被调用 params ItemDefineID -物品DefineID |
| void | **OnDisuseItemV2** | FItemDefineID &ItemDefineID | 当物品触发 DisUseItem 完成后回调 可重载并自定义 DS 被调用 params ItemDefineID -物品DefineID |
| bool | **CanAttachToSlot_Implementation** | FName & SlotName, FItemDefineID &ItemDefineID | 其它物品是否能装备到此槽位 当物品尝试装备在背包槽位时触发 DS 被调用 开发者能通过此事件，决定调用 EquipItemV2 时，是否允许装备。 即使此事件允许装备物品，也可能因为其它限制因素导致物品装备失败。 部分强制装备物品的情形，会跳过此事件。 params SlotName -槽位名称 params ItemDefineID -即将装备在此槽位的物品 |
| void | **OnAttachToSlot_Implementation** | FName & SlotName, FItemDefineID &ItemDefineID | 当其它物品装备到此槽位 当物品成功装备在背包槽位时触发 DS 被调用 params SlotName -槽位名称 params ItemDefineID -已装备在此槽位的物品 |
| void | **OnDetachBySlot_Implementation** | FName & SlotName, FItemDefineID &ItemDefineID | 当物品成功从背包槽位卸下时触发 DS 被调用 params SlotName -槽位名称 params ItemDefineID -已从此槽位卸下的物品 |
| bool | **CanAutoEquip** | FItemDefineID &ItemDefineID | 物品能否自动装备 当配置了自动装备的物品尝试自动装备时触发 DS 被调用 开发者能通过此事件，阻止物品自动装备到背包或Attach到其它物品上。 手动装备或主动调用装备时，不受此函数影响。 params ItemDefineID -即将装备在此槽位的物品 |
| void | **HandleExceedCellCapacity** | FItemDefineID & ItemDefineID, int32Count | 处理超过格子容量的物品 普通情况下，背包内容量已满时，无法添加物品。 但存在特殊情况，背包满容量时依然成功添加物品、原本不占格子的物品变为占用格子、背包容量发生变化。 超容量物品会被直接移除，移除后在此函数处理保底逻辑 默认保底逻辑为丢弃到地上 重写此事件时，请不要将超容量物品在此处重新添加到背包里 可重载并自定义 DS 被调用 params ItemDefineID -超过容量的物品ID CheckInitPersistCompleted 事件 CanAddItemV2 CanAddItemByDefineIDV2 OnAddItemV2 CanMergeItemV2 OnMergeItem |

## 委托

- voidOnCellCapacityChange(const int32&NewCapacity)
- 当背包格子容量改变时广播
- 广播范围：服务端 & 客户端
- voidOnMaxCellCapacityChange(const int32&NewCapacity)
- 当背包格子容量上限改变时广播
- 广播范围：服务端 & 客户端
- voidOnWarehouseCellCapacityChange(const int32&NewCapacity)
- 当仓库格子容量改变时广播
- 广播范围：服务端 & 客户端
- voidItemUsingStateDelegateV2(FItemDefineIDItemDefineID, boolbUse)
- 背包物品使用状态变化时广播
- 广播范围: 服务端
- params ItemDefineID
- -物品DefefineID
- params bUse
- -true:开始使用,false:停止使用
- voidItemChangeDelegateV2(const EUGCItemChangeType&ChangeType, const FItemDefineID&DefineID)
- 当物品实例数据发生改变时广播
- 广播范围：服务端 & 客户端
- voidItemAddDelegateV2(const FItemDefineID&DefineID)
- 当新增物品实例时广播
- 广播范围：服务端 & 客户端
- voidItemUpdateDelegateV2(const FItemDefineID&DefineID)
- 当物品实例数据更新时广播
- 广播范围：服务端 & 客户端
- voidItemRemoveDelegateV2(const FItemDefineID&DefineID)
- 当移除物品实例时广播
- 广播范围：服务端 & 客户端
- voidItemInstanceDataChangeV2()
- 当背包物品实例化数据发生改变时广播
- 广播范围：客户端
- voidItemAttachParentChangeDelegateV2(const FItemDefineID&ItemDefineID, const FItemDefineID&OldAttachItem, const FName&OldAttachSlotName, const FItemDefineID&NewAttachItem, const FName&NewAttachSlotName)
- 当物品附加的Parent发生改变时广播
- 广播范围：服务端 & 客户端
- ItemDefineID: 哪个物品的 Parent 发生了改变
- OldAttachItem: 改变之前物品的 Parent
- OldAttachSlotName: 改变之前物品所在的槽位
- NewAttachItem: 改变之后物品的 Parent
- NewAttachSlotName: 改变之后物品所在的槽位
- 如果物品是直接装备在背包上，AttachItem 将为空物品 ( TypeSpecificID 为 0 ) ，AttachSlotName 为背包槽位名称。
- voidItemOperationInfoDelegateV2(FItemOperationInfoV2 const&ItemOperationInfo)
- 当对物品操作成功后广播
- 广播范围：服务端
- OnCellCapacityChange
- OnMaxCellCapacityChange
- OnWarehouseCellCapacityChange
- ItemUsingStateDelegateV2
- ItemChangeDelegateV2
- ItemAddDelegateV2
- ItemUpdateDelegateV2
- ItemRemoveDelegateV2
- ItemInstanceDataChangeV2
- ItemAttachParentChangeDelegateV2
- ItemOperationInfoDelegateV2

