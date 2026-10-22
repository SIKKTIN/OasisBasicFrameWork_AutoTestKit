# Object 类  (前缀: U)
_共 219 个类_
---
## UBackgroundBlur

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBackgroundBlur?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBackgroundBlur.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBackgroundBlur](https://developer.gp.qq.com/api/#/searchContent/UBackgroundBlur?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBackgroundBlur.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBackgroundBlur)

类

全文搜索

A background blur is a container widget that can contain one child widget, providing an opportunity to surround it with adjustable padding and apply a post-process Gaussian blur to all content beneath the widget. Single Child Blur Effect

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment)
- **SetApplyAlphaToBlur**(boolbInApplyAlphaToBlur)
- **SetBlurRadius**(int32InBlurRadius)
- **SetBlurStrength**(floatInStrength)
- **SetBlurDirection**(floatInDirection)
- **SetBlurCenter**(FVector2DInCenter)
- **SetBlurMask**(UTexture *InTexture)
- **SetLowQualityFallbackBrush**(FSlateBrush &InBrush) — SetPadding SetHorizontalAlignment SetVerticalAlignment SetApplyAlphaToBlur SetBlurRadius SetBlurStrength SetBlurDirection SetBlurCenter SetBlurMask SetLowQualityFallbackBrush

## 属性

- **padding** — area between the slot and the content it contains. The alignment of the content horizontally. The alignment of the content vertically. True to modulate the strength of the blur based on the widget alpha. How blurry the background is. Larger numbers mean more blurry but will result in larger runtime

## UBackgroundBlurSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBackgroundBlurSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBackgroundBlurSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBackgroundBlurSlot](https://developer.gp.qq.com/api/#/searchContent/UBackgroundBlurSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBackgroundBlurSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBackgroundBlurSlot)

类

全文搜索

The Slot for the UBackgroundBlurSlot, contains the widget displayed in a BackgroundBlur's single slot

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment) — SetPadding SetHorizontalAlignment SetVerticalAlignment

## 属性

- **padding** — area between the slot and the content it contains. The alignment of the object horizontally. The alignment of the object vertically. Padding HorizontalAlignment VerticalAlignment

## UBackpackComponent

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

## UBackpackComponentV2

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBackpackComponentV2?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBackpackComponentV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBackpackComponentV2](https://developer.gp.qq.com/api/#/searchContent/UBackpackComponentV2?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBackpackComponentV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBackpackComponentV2)

类

全文搜索

V2背包内核组件

---


## 函数

- **CheckInitPersistCompleted**(查询背包是否初始化完成，完成后才可以进行背包操作 事件)
- **CanAddItemV2**(int32 ItemID, int32Count) — 能否添加物品，能添加多少物品 可重载并自定义 DS 被调用 能通过此事件，决定调用 AddItemV2 时，允许添加多少物品。 即使此事件允许添加物品，也可能因为其它限制因素导致物品添加数量减少或添加失败。 部分强制添加物品的情形，会跳过此事件。 return -允许添加的物品数量，如果等于 Count 表示允许添加所有需要的物品 params ItemID -物品ID params Count -需要添加的物品数量
- **CanAddItemByDefineIDV2**(FItemDefineID& DefineID, int32Count) — 能否添加物品，能添加多少物品 可重载并自定义 DS 被调用 能通过此事件，决定添加某个实例物品时，允许添加多少物品。 此接口针对具体实例，调用AddItemV2、调用AddItemByDefineIDV2、物品转移等情形都可能触发此事件。 单次调用 AddItemV2 可能触发多次针对不同实例的 CanAddItemByDefineIDV2 判断。 即使此事件允许添加物品，也可能因为其它限制因素导致物品添加数量减少或添加失败。 部分强制添加物品的情形，会跳过此事件。 return -允许添加的物品数量，如果等于 Count 表示允许添加所有需要的物品 params Count -需要添加的物品
- **OnAddItemV2**(FItemDefineID& ItemDefineID, int32Count) — 当添加物品实例后回调 可重载并自定义 DS 被调用 当物品实例被成功添加时触发此事件。 单次 AddItemV2 可能触发多次针对不同实例的 OnAddItem 调用（生成多个堆叠的情况）。 如果物品触发了自动装备，可能装备相关事件会先于 OnAddItemV2 被触发。 params ItemDefineID -物品DefineID params Count - 已添加的物品数量
- **CanMergeItemV2**(FItemDefineID& ItemDefineID, int32 CountNow, int32MergeCount) — 能否合并物品(将新增的物品叠加到已有格子上) 可重载并自定义 DS 被调用 能通过此事件，决定多少物品能堆叠到已有堆叠（ItemDefineID）上。 此接口针对具体实例，调用AddItemV2、调用AddItemByDefineIDV2、物品转移等情形都可能触发此事件。 单次 AddItemV2 可能触发多次针对不同实例的 CanMergeItem 判断（向多个堆叠合并时）。 即使此事件允许堆叠物品，也可能因为其它限制因素导致物品堆叠数量减少或堆叠失败。 部分情形下会跳过此事件。 return -允许合并到格子的物品数量，如果等于 Count 表示允许合并所有需要的物品 params Ite
- **OnMergeItemV2**(FItemDefineID& ItemDefineID, int32 OldCount, int32MergeCount) — 当合并物品后回调(将新增的物品叠加到已有格子上) 可重载并自定义 DS 被调用 此接口针对具体实例，调用AddItemV2、调用AddItemByDefineIDV2、物品转移等情形都可能触发此事件。 单次 AddItemV2 可能触发多次针对不同实例的 OnMergeItemV2 事件（向多个堆叠合并时）。 params ItemDefineID -物品DefineID params OldCount -合并前的物品数量 params MergeCount -此次合并操作新增的物品数量
- **CanRemoveItemV2**(FItemDefineID& ItemDefineID, int32Count) — 能否移除物品，能移除多少物品 可重载并自定义 DS、Client 被调用 能通过此事件，决定多少物品能被移除。 此接口针对具体实例，调用RemoveItemV2、调用RemoveItemByDefineIDV2、物品转移等情形都可能触发此事件。 单次 RemoveItemV2 可能触发多次针对不同实例的 CanRemoveItemV2 判断（单个堆叠数量不足时）。 即使此事件允许移除物品，也可能因为其它限制因素导致移除数量减少或移除失败。 部分情形下会跳过此事件。 return -允许移除的物品数量，如果等于 Count 表示允许移除所有需要的物品 params ItemDefineID -物
- **OnRemoveItemV2**(FItemDefineID& ItemDefineID, int32Count) — 当移除物品后回调 可重载并自定义 DS 被调用 此接口针对具体实例，调用RemoveItemV2、调用RemoveItemByDefineIDV2、物品转移等情形都可能触发此事件。 单次 RemoveItemV2 可能触发多次针对不同实例的 OnRemoveItemV2 事件（单个堆叠数量不足时）。 params ItemDefineID -物品DefineID，移除后可能已不存在于背包 params Count - 已移除的物品数量
- **CanDropItemV2**(FItemDefineID& ItemDefineID, int32Count) — 能否丢弃物品，能丢弃多少物品 可重载并自定义 DS、Client 被调用 能通过此事件，决定多少物品能被丢弃。 此接口针对具体实例，调用DropItemV2、调用DropItemByDefineIDV2等情形都可能触发此事件。 单次 调用 DropItemV2 可能触发多次针对不同实例的 CanDropItemV2 判断（单个堆叠数量不足时）。 即使此事件允许丢弃物品，也可能因为其它限制因素导致丢弃数量减少或丢弃失败。 部分情形下会跳过此事件。 return -允许丢弃的物品数量，如果等于 Count 表示允许丢弃所有需要的物品 params ItemDefineID -物品DefineID
- **OnDropItemV2**(FItemDefineID& ItemDefineID, int32Count) — 当丢弃物品后回调 可重载并自定义 DS 被调用 当物品被成功丢弃时，触发此事件。 此接口针对具体实例，调用DropItemV2、调用DropItemByDefineIDV2等情形都可能触发此事件。 单次 DropItemV2 可能触发多次针对不同实例的 OnDropItemV2 事件（单个堆叠数量不足时）。 params ItemDefineID -物品DefineID，丢弃后可能已不存在于背包 params Count - 已丢弃的物品数量
- **CanUseItemV2**(FItemDefineID &ItemDefineID) — 能否使用物品 可重载并自定义 DS、Client 被调用 DS 触发使用物品时，会触发并判断能否使用。 即使此事件允许使用物品，也可能因为其它限制因素导致使用失败。 部分情形下会跳过此事件。 Client 背包UI选中物品时，会触发并判断是否显示使用按钮。 return -物品是否能够被使用 params ItemDefineID -物品DefineID
- **OnUseItemV2**(FItemDefineID &ItemDefineID) — 当物品触发使用后回调 可重载并自定义 DS 被调用 params ItemDefineID -物品DefineID
- **OnDisuseItemV2**(FItemDefineID &ItemDefineID) — 当物品触发 DisUseItem 完成后回调 可重载并自定义 DS 被调用 params ItemDefineID -物品DefineID
- **CanAttachToSlot_Implementation**(FName& SlotName, FItemDefineID &ItemDefineID) — 其它物品是否能装备到此槽位 当物品尝试装备在背包槽位时触发 DS 被调用 开发者能通过此事件，决定调用 EquipItemV2 时，是否允许装备。 即使此事件允许装备物品，也可能因为其它限制因素导致物品装备失败。 部分强制装备物品的情形，会跳过此事件。 params SlotName -槽位名称 params ItemDefineID -即将装备在此槽位的物品
- **OnAttachToSlot_Implementation**(FName& SlotName, FItemDefineID &ItemDefineID) — 当其它物品装备到此槽位 当物品成功装备在背包槽位时触发 DS 被调用 params SlotName -槽位名称 params ItemDefineID -已装备在此槽位的物品
- **OnDetachBySlot_Implementation**(FName& SlotName, FItemDefineID &ItemDefineID) — 当物品成功从背包槽位卸下时触发 DS 被调用 params SlotName -槽位名称 params ItemDefineID -已从此槽位卸下的物品
- **CanAutoEquip**(FItemDefineID &ItemDefineID) — 物品能否自动装备 当配置了自动装备的物品尝试自动装备时触发 DS 被调用 开发者能通过此事件，阻止物品自动装备到背包或Attach到其它物品上。 手动装备或主动调用装备时，不受此函数影响。 params ItemDefineID -即将装备在此槽位的物品
- **HandleExceedCellCapacity**(FItemDefineID& ItemDefineID, int32Count) — 处理超过格子容量的物品 普通情况下，背包内容量已满时，无法添加物品。 但存在特殊情况，背包满容量时依然成功添加物品、原本不占格子的物品变为占用格子、背包容量发生变化。 超容量物品会被直接移除，移除后在此函数处理保底逻辑 默认保底逻辑为丢弃到地上 重写此事件时，请不要将超容量物品在此处重新添加到背包里 可重载并自定义 DS 被调用 params ItemDefineID -超过容量的物品ID CheckInitPersistCompleted 事件 CanAddItemV2 CanAddItemByDefineIDV2 OnAddItemV2 CanMergeItemV2 OnMergeItem

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

## UBaseMediaSource

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBaseMediaSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBaseMediaSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBaseMediaSource](https://developer.gp.qq.com/api/#/searchContent/UBaseMediaSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBaseMediaSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBaseMediaSource)

类

全文搜索

Base class for concrete media sources.

---


## 属性

- **of** — the desired native media player (Empty = find one automatically). Override native media player plug-ins per platform (Empty = find one automatically). PlayerName PlatformPlayerNames

## UBasicOverlays

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBasicOverlays?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBasicOverlays.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBasicOverlays](https://developer.gp.qq.com/api/#/searchContent/UBasicOverlays?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBasicOverlays.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBasicOverlays)

类

全文搜索

Implements an asset that contains a set of overlay data (which includes timing, text, and position) to be displayed for any given source (including, but not limited to, audio, dialog, and movies)

---


## 属性

- **overlay** — data held by this asset. Contains info on timing, position, and the subtitle to display UAssetImportData *AssetImportData The import data used to make this overlays asset Overlays AssetImportData

## UBehaviorTree

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBehaviorTree?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBehaviorTree.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBehaviorTree](https://developer.gp.qq.com/api/#/searchContent/UBehaviorTree?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBehaviorTree.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBehaviorTree)

类

全文搜索

---


## 属性

- **node** — of loaded tree UBlackboardData *BlackboardAsset blackboard asset for this tree root level decorators, used by subtrees logic operators for root level decorators, used by subtrees RootNode BlackboardAsset RootDecorators RootDecoratorOps

## UBehaviorTreeComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBehaviorTreeComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBehaviorTreeComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBehaviorTreeComponent](https://developer.gp.qq.com/api/#/searchContent/UBehaviorTreeComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBehaviorTreeComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBehaviorTreeComponent)

类

全文搜索

---


## 函数

- **GetTagCooldownEndTime**(FGameplayTagCooldownTag) — return -the cooldown tag end time, 0.0f if CooldownTag is not found
- **AddCooldownTagDuration**(FGameplayTag CooldownTag, float CooldownDuration, boolbAddToExistingDuration) — add to the cooldown tag's duration
- **SetDynamicSubtree**(FGameplayTag InjectTag, UBehaviorTree *BehaviorAsset) — assign subtree to RunBehaviorDynamic task specified by tag
- **GetUGCMobBTDebugInfo**(FUGCMobBTDebugInfo& OutTreeInfo, TArray < FUGCMobBTBlackBoardInfo > &OutBlackBoardInfo) — GetTagCooldownEndTime AddCooldownTagDuration SetDynamicSubtree GetUGCMobBTDebugInfo

## 属性

- **nodes** — NodeInstances

## UBehaviorTreeManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBehaviorTreeManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBehaviorTreeManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBehaviorTreeManager](https://developer.gp.qq.com/api/#/searchContent/UBehaviorTreeManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBehaviorTreeManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBehaviorTreeManager)

类

全文搜索

---


## 属性

- **for** — recording execution steps for debugger initialized tree templates MaxDebuggerSteps LoadedTemplates ActiveComponents

## UBillboardComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBillboardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBillboardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBillboardComponent](https://developer.gp.qq.com/api/#/searchContent/UBillboardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBillboardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBillboardComponent)

类

全文搜索

A 2d texture that will be rendered always facing the camera.

---


## 函数

- **SetSprite**(UTexture2D *NewSprite) — Change the sprite texture used by this component
- **SetUV**(int32 NewU, int32 NewUL, int32 NewV, int32NewVL) — Change the sprite's UVs
- **SetSpriteAndUV**(UTexture2D* NewSprite, int32 NewU, int32 NewUL, int32 NewV, int32NewVL) — Change the sprite texture and the UV's used by this component SetSprite SetUV SetSpriteAndUV

## 属性

- **category** — that the component belongs to. Value serves as a key into the localization file. Sprite category information regarding the component Whether to use in-editor arrow scaling (i.e. to be affected by the global arrow scale) Sprite bIsScreenSizeScaled ScreenSize U UL V VL SpriteCategoryName_DEPRECATED Sp

## UBlackboardComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlackboardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlackboardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlackboardComponent](https://developer.gp.qq.com/api/#/searchContent/UBlackboardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlackboardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlackboardComponent)

类

全文搜索

---


## 函数

- **GetValueAsObject**(FName &KeyName)
- **GetValueAsClass**(FName &KeyName)
- **GetValueAsEnum**(FName &KeyName)
- **GetValueAsInt**(FName &KeyName)
- **GetValueAsFloat**(FName &KeyName)
- **GetValueAsBool**(FName &KeyName)
- **StringGetValueAsString**(FName &KeyName)
- **NameGetValueAsName**(FName &KeyName)
- **VectorGetValueAsVector**(FName &KeyName)
- **RotatorGetValueAsRotator**(FName &KeyName)
- **SetValueAsObject**(FName& KeyName, UObject *ObjectValue)
- **SetValueAsClass**(FName& KeyName, UClass *ClassValue)
- **SetValueAsEnum**(FName& KeyName, uint8EnumValue)
- **SetValueAsInt**(FName& KeyName, int32IntValue)
- **SetValueAsFloat**(FName& KeyName, floatFloatValue)
- **SetValueAsBool**(FName& KeyName, boolBoolValue)
- **SetValueAsString**(FName& KeyName, FStringStringValue)
- **SetValueAsName**(FName& KeyName, FNameNameValue)
- **SetValueAsVector**(FName& KeyName, FVectorVectorValue)
- **SetValueAsRotator**(FName& KeyName, FRotatorVectorValue)
- **IsVectorValueSet**(FName &KeyName)
- **GetLocationFromEntry**(FName& KeyName, FVector &ResultLocation) — return false if call failed (most probably no such entry in BB)
- **GetRotationFromEntry**(FName& KeyName, FRotator &ResultRotation) — return false if call failed (most probably no such entry in BB)
- **ClearValue**(FName &KeyName) — GetValueAsObject GetValueAsClass GetValueAsEnum GetValueAsInt GetValueAsFloat GetValueAsBool GetValueAsString GetValueAsName GetValueAsVector GetValueAsRotator SetValueAsObject SetValueAsClass SetValueAsEnum SetValueAsInt SetValueAsFloat SetValueAsBool SetValueAsString SetValueAsName SetValueAsVecto

## 属性

- **behavior** — tree component UBlackboardData *BlackboardAsset data asset defining entries instanced keys with custom data allocations BrainComp BlackboardAsset KeyInstances

## UBlackboardData

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlackboardData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlackboardData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlackboardData](https://developer.gp.qq.com/api/#/searchContent/UBlackboardData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlackboardData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlackboardData)

类

全文搜索

---


## 属性

- **blackboard** — (keys can be overridden) blackboard keys Parent Keys bHasSynchronizedKeys

## UBlackboardKeyType_Enum

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlackboardKeyType_Enum?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlackboardKeyType_Enum.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlackboardKeyType_Enum](https://developer.gp.qq.com/api/#/searchContent/UBlackboardKeyType_Enum?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlackboardKeyType_Enum.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlackboardKeyType_Enum)

类

全文搜索

---


## 属性

- **of** — enum defined in c++ code, will take priority over asset from EnumType property set when EnumName override is valid and active EnumType EnumName bIsEnumNameValid

## UBlendProfile

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlendProfile?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlendProfile.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlendProfile](https://developer.gp.qq.com/api/#/searchContent/UBlendProfile?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlendProfile.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlendProfile)

类

全文搜索

A blend profile is a set of per-bone scales that can be used in transitions and blend lists to tweak the weights of specific bones. The scales are applied to the normal weight for that bone

---

## UBlendSpace

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlendSpace?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlendSpace.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlendSpace](https://developer.gp.qq.com/api/#/searchContent/UBlendSpace?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlendSpace.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlendSpace)

类

全文搜索

Contains a grid of data points with weights from sample points in the space

---


## 属性

- **you** — have input interpolation, which axis to drive animation speed (scale) - i.e. for locomotion animation, speed axis will drive animation speed (thus scale) AxisToScaleAnimation

## UBlendSpaceBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlendSpaceBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlendSpaceBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlendSpaceBase](https://developer.gp.qq.com/api/#/searchContent/UBlendSpaceBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlendSpaceBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlendSpaceBase)

类

全文搜索

Allows multiple animations to be blended between based on input parameters

---


## 属性

- **you** — use blend per bone, allows rotation to blend in mesh space. This only works if this does not contain additive animation samples This is more performance intensive This animation length changes based on current input (resulting in different blend time) Input interpolation parameter for all 3 axis, fo

## UBlueprint

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlueprint?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprint.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprint](https://developer.gp.qq.com/api/#/searchContent/UBlueprint?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprint.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprint)

类

全文搜索

Blueprints are special assets that provide an intuitive, node-based interface that can be used to create new types of Actors and script level events; giving designers and gameplay programmers the tools to quickly create and iterate gameplay from within Unreal Editor without ever needing to write a line of code.

---


## 属性

- **or** — not this blueprint should recompile itself on load Pointer to the parent class that the generated class should derive from. This can be null under rare circumstances, When the class generated by this blueprint is loaded, it will be recompiled the first time. After that initial recompile, subsequent
- **to** — show a warning when attempting to start in PIE and there is a compiler error on this Blueprint Guid key for finding searchable data for Blueprint in the DDC Deprecates the Blueprint, marking the generated class with the CLASS_Deprecated flag EBlueprintCompileModeCompileMode The mode that will be use

## UBlueprintCore

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlueprintCore?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintCore.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintCore](https://developer.gp.qq.com/api/#/searchContent/UBlueprintCore?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintCore.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintCore)

类

全文搜索

---


## 属性

- **to** — the skeleton class; this is regenerated any time a member variable or function is added but is usually incomplete (no code or hidden autogenerated variables are added to it) Pointer to the 'most recent' fully generated class BackCompat: Whether or not we need to purge references in this blueprint to

## UBlueprintGameplayTagLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlueprintGameplayTagLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintGameplayTagLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintGameplayTagLibrary](https://developer.gp.qq.com/api/#/searchContent/UBlueprintGameplayTagLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintGameplayTagLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintGameplayTagLibrary)

类

全文搜索

---


## 函数

- **MatchesTag**(FGameplayTag TagOne, FGameplayTag TagTwo, boolbExactMatch) — Determine if TagOne matches against TagTwo return -True if TagOne matches TagTwo params TagOne - Tag to check for match params TagTwo - Tag to check match against params bExactMatch -If true, the tag has to be exactly present, if false then TagOne will include it's parent tags while matching
- **MatchesAnyTags**(FGameplayTag TagOne, FGameplayTagContainer& OtherContainer, boolbExactMatch) — Determine if TagOne matches against any tag in OtherContainer return -True if TagOne matches any tags explicitly present in OtherContainer params TagOne - Tag to check for match params OtherContainer -Container to check against. params bExactMatch -If true, the tag has to be exactly present, if fals
- **EqualEqual_GameplayTag**(FGameplayTag A, FGameplayTagB) — Returns true if the values are equal (A == B)
- **NotEqual_GameplayTag**(FGameplayTag A, FGameplayTagB) — Returns true if the values are not equal (A != B)
- **IsGameplayTagValid**(FGameplayTagGameplayTag) — Returns true if the passed in gameplay tag is non-null
- **NameGetTagName**(FGameplayTag &GameplayTag) — Returns FName of this tag
- **GameplayTagMakeLiteralGameplayTag**(FGameplayTagValue) — Creates a literal FGameplayTag
- **GetNumGameplayTagsInContainer**(FGameplayTagContainer &TagContainer) — Get the number of gameplay tags in the specified container return -The number of tags in the specified container params TagContainer -Tag container to get the number of tags from
- **HasTag**(FGameplayTagContainer& TagContainer, FGameplayTag Tag, boolbExactMatch) — Check if the tag container has the specified tag return -True if the container has the specified tag, false if it does not params TagContainer - Container to check for the tag params Tag - Tag to check for in the container params bExactMatch - If true, the tag has to be exactly present, if false the
- **HasAnyTags**(FGameplayTagContainer& TagContainer, FGameplayTagContainer& OtherContainer, boolbExactMatch) — Check if the specified tag container has ANY of the tags in the other container return -True if the container has ANY of the tags in the other container params TagContainer - Container to check if it matches any of the tags in the other container params OtherContainer -Container to check against. pa
- **HasAllTags**(FGameplayTagContainer& TagContainer, FGameplayTagContainer& OtherContainer, boolbExactMatch) — Check if the specified tag container has ALL of the tags in the other container return -True if the container has ALL of the tags in the other container params TagContainer - Container to check if it matches all of the tags in the other container params OtherContainer -Container to check against. If
- **DoesContainerMatchTagQuery**(FGameplayTagContainer& TagContainer, FGameplayTagQuery &TagQuery) — Check if the specified tag container matches the given Tag Query return -True if the container matches the query, false otherwise. params TagContainer - Container to check if it matches all of the tags in the other container params TagQuery - Query to match against
- **GetAllActorsOfClassMatchingTagQuery**(UObject* WorldContextObject, TSubclassOf < AActor > ActorClass, FGameplayTagQuery& GameplayTagQuery, TArray < AActor* > &OutActors) — Get an array of all actors of a specific class (or subclass of that class) which match the specified gameplay tag query. params ActorClass - Class of actors to fetch params GameplayTagQuery -Query to match against
- **AddGameplayTag**(FGameplayTagContainer& TagContainer, FGameplayTagTag) — Adds a single tag to the passed in tag container params Tag - The tag to add to the container
- **RemoveGameplayTag**(FGameplayTagContainer& TagContainer, FGameplayTagTag) — Remove a single tag from the passed in tag container, returns true if found params Tag - The tag to add to the container
- **AppendGameplayTagContainers**(FGameplayTagContainer& InOutTagContainer, FGameplayTagContainer &InTagContainer) — Appends all tags in the InTagContainer to InOutTagContainer params InOutTagContainer -The container that will be appended too. params InTagContainer -The container to append.
- **EqualEqual_GameplayTagContainer**(FGameplayTagContainer& A, FGameplayTagContainer &B) — Returns true if the values are equal (A == B)
- **NotEqual_GameplayTagContainer**(FGameplayTagContainer& A, FGameplayTagContainer &B) — Returns true if the values are not equal (A != B)
- **GameplayTagContainerMakeLiteralGameplayTagContainer**(FGameplayTagContainerValue) — Creates a literal FGameplayTagContainer
- **GameplayTagContainerMakeGameplayTagContainerFromArray**(TArray < FGameplayTag > &GameplayTags) — Creates a FGameplayTagContainer from the array of passed in tags
- **GameplayTagContainerMakeGameplayTagContainerFromTag**(FGameplayTagSingleTag) — Creates a FGameplayTagContainer containing a single tag
- **BreakGameplayTagContainer**(FGameplayTagContainer& GameplayTagContainer, TArray < FGameplayTag > &GameplayTags) — Breaks tag container into explicit array of tags
- **GameplayTagQueryMakeGameplayTagQuery**(FGameplayTagQueryTagQuery) — Creates a literal FGameplayTagQuery return -The literal FGameplayTagQuery params TagQuery -value to set the FGameplayTagQuery to
- **HasAllMatchingGameplayTags**(TScriptInterface < IGameplayTagAssetInterface > TagContainerInterface, FGameplayTagContainer &OtherContainer) — Check Gameplay tags in the interface has all of the specified tags in the tag container (expands to include parents of asset tags) return -True if the tagcontainer in the interface has all the tags inside the container. params TagContainerInterface -An Interface to a tag container params OtherContai
- **DoesTagAssetInterfaceHaveTag**(TScriptInterface < IGameplayTagAssetInterface > TagContainerInterface, FGameplayTagTag) — Check if the specified tag container has the specified tag, using the specified tag matching types return -True if the container has the specified tag, false if it does not params TagContainerInterface -An Interface to a tag container params Tag - Tag to check for in the container
- **NotEqual_TagTag**(FGameplayTag A, FStringB) — Checks if a gameplay tag's name and a string are not equal to one another
- **NotEqual_TagContainerTagContainer**(FGameplayTagContainer A, FStringB) — Checks if a gameplay tag containers's name and a string are not equal to one another
- **StringGetDebugStringFromGameplayTagContainer**(FGameplayTagContainer &TagContainer) — Returns an FString listing all of the gameplay tags in the tag container for debugging purposes. params TagContainer -The tag container to get the debug string from.
- **StringGetDebugStringFromGameplayTag**(FGameplayTagGameplayTag) — Returns an FString representation of a gameplay tag for debugging purposes. params GameplayTag -The tag to get the debug string from. MatchesTag MatchesAnyTags EqualEqual_GameplayTag NotEqual_GameplayTag IsGameplayTagValid GetTagName MakeLiteralGameplayTag GetNumGameplayTagsInContainer HasTag HasAny

## UBlueprintMapLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlueprintMapLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintMapLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintMapLibrary](https://developer.gp.qq.com/api/#/searchContent/UBlueprintMapLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintMapLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintMapLibrary)

类

全文搜索

---


## 函数

- **Map_Add**(TMap < int32 , int32 >& TargetMap, int32& Key, int32 &Value) — Adds a key and value to the map. If something already uses the provided key it will be overwritten with the new value. After calling Key is guaranteed to be associated with Value until a subsequent mutation of the Map. return -True if a Value was added, or False if the Key was already present and ha
- **Map_Remove**(TMap < int32 , int32 >& TargetMap, int32 &Key) — Removes a key and its associated value from the map. return -True if an item was removed (False indicates nothing in the map uses the provided key) params TargetMap -The map to remove the key and its associated value from params Key - The key that will be used to look the value up
- **Map_Find**(TMap < int32 , int32 >& TargetMap, int32& Key, int32 &Value) — Finds the value associated with the provided Key return -True if an item was found (False indicates nothing in the map uses the provided key) params TargetMap -The map to perform the lookup on params Key - The key that will be used to look the value up params Value - The value associated with the ke
- **Map_Contains**(TMap < int32 , int32 >& TargetMap, int32 &Key) — Checks whether key is in a provided Map return -True if an item was found (False indicates nothing in the map uses the provided key) params TargetMap -The map to perform the lookup on params Key - The key that will be used to lookup
- **Map_Keys**(TMap < int32 , int32 >& TargetMap, TArray < int32 > &Keys) — Outputs an array of all keys present in the map params TargetMap -The map to get the list of keys from params Keys - All keys present in the map
- **Map_Values**(TMap < int32 , int32 >& TargetMap, TArray < int32 > &Values) — Outputs an array of all values present in the map params TargetMap -The map to get the list of values from params Values - All values present in the map
- **Map_Length**(TMap < int32 , int32 > &TargetMap) — Determines the number of entries in a provided Map return -The number of entries in the map params TargetMap -The map in question
- **Map_Clear**(TMap < int32 , int32 > &TargetMap) — Clears a map of all entries, resetting it to empty params TargetMap -The map to clear
- **SetMapPropertyByName**(UObject* Object, FName PropertyName, TMap < int32 , int32 > &Value) — Not exposed to users. Supports setting a map property on an object by name. Map_Add Map_Remove Map_Find Map_Contains Map_Keys Map_Values Map_Length Map_Clear SetMapPropertyByName

## UBlueprintPlatformLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlueprintPlatformLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintPlatformLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintPlatformLibrary](https://developer.gp.qq.com/api/#/searchContent/UBlueprintPlatformLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintPlatformLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintPlatformLibrary)

类

全文搜索

---


## 函数

- **ClearAllLocalNotifications**(Clear all pending local notifications. Typically this will be done before scheduling new notifications when going into the background)
- **ScheduleLocalNotificationAtTime**(FDateTime& FireDateTime, bool LocalTime, FText& Title, FText& Body, FText& Action, FString &ActivationEvent) — Schedule a local notification at a specific time, inLocalTime specifies the current local time or if UTC time should be used params FireDateTime -The time at which to fire the local notification params LocalTime -If true the provided time is in the local timezone, if false it is in UTC params Title
- **ScheduleLocalNotificationFromNow**(int32 inSecondsFromNow, FText& Title, FText& Body, FText& Action, FString &ActivationEvent) — Schedule a local notification to fire inSecondsFromNow from now params inSecondsFromNow -The seconds until the notification should fire params Title -The title of the notification params Body -The more detailed description of the notification params Action -The text to be displayed on the slider con
- **ScheduleLocalNotificationBadgeAtTime**(FDateTime& FireDateTime, bool LocalTime, FString &ActivationEvent) — Schedule a local notification badge at a specific time, inLocalTime specifies the current local time or if UTC time should be used params FireDateTime -The time at which to fire the local notification params LocalTime -If true the provided time is in the local timezone, if false it is in UTC params
- **ScheduleLocalNotificationBadgeFromNow**(int32 inSecondsFromNow, FString &ActivationEvent) — Schedule a local notification badge to fire inSecondsFromNow from now params inSecondsFromNow -The seconds until the notification should fire params ActivationEvent -A string that is passed in the delegate callback when the app is brought into the foreground from the user activating the notification
- **CancelLocalNotification**(FString &ActivationEvent) — Cancel a local notification given the ActivationEvent params ActivationEvent -The string passed into the Schedule call for the notification to be cancelled
- **GetLaunchNotification**(bool& NotificationLaunchedApp, FString& ActivationEvent, int32 &FireDate) — Get the local notification that was used to launch the app params NotificationLaunchedApp -Return true if a notification was used to launch the app params ActivationEvent -Returns the name of the ActivationEvent if a notification was used to launch the app params FireDate -Returns the time the notif

## UBlueprintSetLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlueprintSetLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintSetLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintSetLibrary](https://developer.gp.qq.com/api/#/searchContent/UBlueprintSetLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintSetLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintSetLibrary)

类

全文搜索

---


## 函数

- **Set_Add**(TSet < int32 >& TargetSet, int32 &NewItem) — Adds item to set. Output value indicates whether the item was successfully added, meaning an output of False indicates the item was already in the Set. return -True if NewItem was added to the set (False indicates an equivalent item was present) params TargetSet -The set to add item to params NewIte
- **Set_AddItems**(TSet < int32 >& TargetSet, TArray < int32 > &NewItems) — Adds all elements from an Array to a Set params TargetSet -The set to search for the item params NewItems -The items to add to the set
- **Set_Remove**(TSet < int32 >& TargetSet, int32 &Item) — Remove item from set. Output value indicates if something was actually removed. False indicates no equivalent item was found. return -True if an item was removed (False indicates no equivalent item was present) params TargetSet -The set to remove from params Item - The item to remove from the set
- **Set_RemoveItems**(TSet < int32 >& TargetSet, TArray < int32 > &Items) — Removes all elements in an Array from a set. params TargetSet -The set to remove from params Items - The items to remove from the set
- **Set_ToArray**(TSet < int32 >& A, TArray < int32 > &Result) — Outputs an Array containing copies of the entries of a Set. params A -Set params Result -Array
- **Set_Clear**(TSet < int32 > &TargetSet) — Clear a set, removes all content. params TargetSet -The set to clear
- **Set_Length**(TSet < int32 > &TargetSet) — Get the number of items in a set. return -The length of the set params TargetSet -The set to get the length of
- **Set_Contains**(TSet < int32 >& TargetSet, int32 &ItemToFind) — Returns true if the set contains the given item. return -True if the item was found within the set params TargetSet -The set to search for the item params ItemToFind -The item to look for
- **Set_Intersection**(TSet < int32 >& A, TSet < int32 >& B, TSet < int32 > &Result) — Assigns Result to the intersection of Set A and Set B. That is, Result will contain all elements that are in both Set A and Set B. To intersect with the empty set use Clear. params A -One set to intersect params B -Another set to intersect params Result -Set to store results in
- **Set_Union**(TSet < int32 >& A, TSet < int32 >& B, TSet < int32 > &Result) — Assigns Result to the union of two sets, A and B. That is, Result will contain all elements that are in Set A and in addition all elements in Set B. Note that a Set is a collection of unique elements, so duplicates will be eliminated. params A -One set to union params B -Another set to union params
- **Set_Difference**(TSet < int32 >& A, TSet < int32 >& B, TSet < int32 > &Result) — Assigns Result to the relative difference of two sets, A and B. That is, Result will contain all elements that are in Set A but are not found in Set B. Note that the difference between two sets is not commutative. The Set whose elements you wish to preserve should be the first (top) parameter. Also
- **SetSetPropertyByName**(UObject* Object, FName PropertyName, TSet < int32 > &Value) — Not exposed to users. Supports setting a set property on an object by name. Set_Add Set_AddItems Set_Remove Set_RemoveItems Set_ToArray Set_Clear Set_Length Set_Contains Set_Intersection Set_Union Set_Difference SetSetPropertyByName

## UBookMark

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBookMark?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBookMark.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBookMark](https://developer.gp.qq.com/api/#/searchContent/UBookMark?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBookMark.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBookMark)

类

全文搜索

A camera position the current level.

---


## 属性

- **position** — Camera rotation Array of levels that are hidden Location Rotation HiddenLevels

## UBorder

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBorder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBorder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBorder](https://developer.gp.qq.com/api/#/searchContent/UBorder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBorder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBorder)

类

全文搜索

A border is a container widget that can contain one child widget, providing an opportunity to surround it with a background image and adjustable padding. Single Child Image

---


## 函数

- **SetContentColorAndOpacity**(FLinearColorInContentColorAndOpacity)
- **SetResetBlendColor**(boolbResetBlendColor)
- **SetPadding**(FMarginInPadding)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment)
- **SetBrushColor**(FLinearColorInBrushColor)
- **SetBrush**(FSlateBrush &InBrush)
- **SetBrushFromAsset**(USlateBrushAsset *Asset)
- **SetBrushFromTexture**(UTexture2D *Texture)
- **SetBrushFromMaterial**(UMaterialInterface *Material)
- **GetDynamicMaterial**()
- **SetDesiredSizeScale**(FVector2DInScale) — Sets the DesireSizeScale of this border. params InScale - The X and Y multipliers for the desired size SetContentColorAndOpacity SetResetBlendColor SetPadding SetHorizontalAlignment SetVerticalAlignment SetBrushColor SetBrush SetBrushFromAsset SetBrushFromTexture SetBrushFromMaterial GetDynamicMater

## 属性

- **alignment** — of the content horizontally. The alignment of the content vertically. Whether or not to show the disabled effect when this border is disabled Color and opacity multiplier of content in the border A bindable delegate for the ContentColorAndOpacity. The padding area between the slot and the content it

## UBorderSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBorderSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBorderSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBorderSlot](https://developer.gp.qq.com/api/#/searchContent/UBorderSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBorderSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBorderSlot)

类

全文搜索

The Slot for the UBorderSlot, contains the widget displayed in a border's single slot

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment) — SetPadding SetHorizontalAlignment SetVerticalAlignment

## 属性

- **padding** — area between the slot and the content it contains. The alignment of the object horizontally. The alignment of the object vertically. Padding HorizontalAlignment VerticalAlignment

## UBoxComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBoxComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBoxComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBoxComponent](https://developer.gp.qq.com/api/#/searchContent/UBoxComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBoxComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBoxComponent)

类

全文搜索

A box generally used for simple collision. Bounds are rendered as lines in the editor.

---


## 函数

- **SetBoxExtent**(FVector InBoxExtent, boolbUpdateOverlaps) — Change the box extent size. This is the unscaled size, before component scale is applied.
- **VectorGetScaledBoxExtent**()
- **VectorGetUnscaledBoxExtent**(SetBoxExtent GetScaledBoxExtent GetUnscaledBoxExtent)

## 属性

- **extents** — (radii dimensions) of the box Used to control the line thickness when rendering BoxExtent LineThickness

## UBoxReflectionCaptureComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBoxReflectionCaptureComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBoxReflectionCaptureComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBoxReflectionCaptureComponent](https://developer.gp.qq.com/api/#/searchContent/UBoxReflectionCaptureComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBoxReflectionCaptureComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBoxReflectionCaptureComponent)

类

全文搜索

---


## 属性

- **capture** — transition distance UBoxComponent *PreviewInfluenceBox UBoxComponent *PreviewCaptureBox UStaticMeshComponent *PreviewVolumeBox BoxTransitionDistance PerformShapeTestOnMobile PreviewInfluenceBox PreviewCaptureBox bShowPreviewVolumeBox PreviewVolumeBox

## UBrainComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBrainComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBrainComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBrainComponent](https://developer.gp.qq.com/api/#/searchContent/UBrainComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBrainComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBrainComponent)

类

全文搜索

---


## 函数

- **RestartLogic**()
- **StopLogic**(FString &Reason)
- **PauseLogic**(FString &Reason)
- **TypeResumeLogic**(FString &Reason) — MUST be called by child implementations! return -indicates whether child class' ResumeLogic should be called (true) or has it been
- **IsRunning**()
- **IsPaused**(RestartLogic StopLogic PauseLogic ResumeLogic IsRunning IsPaused)

## 属性

- **component** — AAIController *AIOwner BlackboardComp AIOwner

## UBrushBuilder

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBrushBuilder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBrushBuilder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBrushBuilder](https://developer.gp.qq.com/api/#/searchContent/UBrushBuilder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBrushBuilder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBrushBuilder)

类

全文搜索

Base class of UnrealEd brush builders. Tips for writing brush builders: - Always validate the user-specified and call BadParameters function if anything is wrong, instead of actually building geometry. If you build an invalid brush due to bad user parameters, you'll cause an extraordinary amount of pain for the poor user. - When generating polygons with more than 3 vertices, BE SURE all the polygon's vertices are coplanar! Out-of-plane polygons will cause geometry to be corrupted.

---


## 属性

- **FString** — that will be displayed as the name of this brush builder in the editor If false, disabled the bad param notifications BitmapFilename ToolTip NotifyBadParams Vertices Polys Layer MergeCoplanars

## UBrushComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBrushComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBrushComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBrushComponent](https://developer.gp.qq.com/api/#/searchContent/UBrushComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBrushComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBrushComponent)

类

全文搜索

A brush component defines a shape that can be modified within the editor. They are used both as part of BSP building, and for volumes.

---


## 函数

- **SetMeshCollisionProvider**(UStaticMesh *Mesh) — SetMeshCollisionProvider

## 属性

- **of** — collision Local space translation UStaticMesh *MeshCollisionProvider Brush BrushBodySetup PrePivot_DEPRECATED MeshCollisionProvider

## UBTAttachment_LuaBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTAttachment_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTAttachment_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTAttachment_LuaBase](https://developer.gp.qq.com/api/#/searchContent/UBTAttachment_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTAttachment_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTAttachment_LuaBase)

类

全文搜索

Base class for lua based Attachment nodes. Do NOT use it for creating native c++ classes! When Attachment receives Deactivation event, all latent actions associated this instance are being removed. This prevents from resuming activity started by Activation, but does not handle external events. Please use them safely (unregister at abort) and call IsAttachmentActive() when in doubt.

---


## 函数

- **ReceiveTickAI**(AAIController* OwnerController, APawn* ControlledPawn, floatDeltaSeconds) — tick function
- **ReceiveSearchStartAI**(AAIController* OwnerController, APawn *ControlledPawn) — task search enters branch of tree
- **ReceiveActivationAI**(AAIController* OwnerController, APawn *ControlledPawn) — attachment became active
- **ReceiveDeactivationAI**(AAIController* OwnerController, APawn *ControlledPawn) — attachment became inactive
- **IsAttachmentActive**(check if attachment is currently being active ReceiveTickAI ReceiveSearchStartAI ReceiveActivationAI ReceiveDeactivationAI IsAttachmentActive)

## 属性

- **AIController** — owner of BehaviorTreeComponent. AIOwner

## UBTComposite_SimpleParallel

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTComposite_SimpleParallel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTComposite_SimpleParallel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTComposite_SimpleParallel](https://developer.gp.qq.com/api/#/searchContent/UBTComposite_SimpleParallel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTComposite_SimpleParallel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTComposite_SimpleParallel)

类

全文搜索

Simple Parallel composite node. Allows for running two children: one which must be a single task node (with optional decorators), and the other of which can be a complete subtree.

---


## 属性

- **background** — tree should be handled when main task finishes execution FinishMode

## UBTCondition_LuaBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTCondition_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTCondition_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTCondition_LuaBase](https://developer.gp.qq.com/api/#/searchContent/UBTCondition_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTCondition_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTCondition_LuaBase)

类

全文搜索

Base class for lua based condition nodes. Do NOT use it for creating native c++ classes! Unlike task and attachments, condition have two execution chains: ExecutionStart-ExecutionFinish and ObserverActivated-ObserverDeactivated which makes automatic latent action cleanup impossible. Keep in mind, that you HAVE TO verify is given chain is still active after resuming from any latent action (like Delay, Timelines, etc). Helper functions: - IsConditionExecutionActive (true after ExecutionStart, until ExecutionFinish) - IsConditionObserverActive (true after ObserverActivated, until ObserverDeactivated)

---


## 函数

- **ReceiveTickAI**(AAIController* OwnerController, APawn* ControlledPawn, floatDeltaSeconds) — tick function
- **ReceiveExecutionStartAI**(AAIController* OwnerController, APawn *ControlledPawn) — called on execution of underlying node
- **ReceiveExecutionFinishAI**(AAIController* OwnerController, APawn* ControlledPawn, EBTNodeResult :: TypeNodeResult) — called when execution of underlying node is finished
- **ReceiveObserverActivatedAI**(AAIController* OwnerController, APawn *ControlledPawn) — called when observer is activated (flow controller)
- **ReceiveObserverDeactivatedAI**(AAIController* OwnerController, APawn *ControlledPawn) — called when observer is deactivated (flow controller)
- **PerformConditionCheckAI**(AAIController* OwnerController, APawn *ControlledPawn) — called when testing if underlying node can be executed
- **IsConditionExecutionActive**(check if condition is part of currently active branch)
- **IsConditionObserverActive**(check if condition's observer is currently active ReceiveTickAI ReceiveExecutionStartAI ReceiveExecutionFinishAI ReceiveObserverActivatedAI ReceiveObserverDeactivatedAI PerformConditionCheckAI IsConditionExecutionActive IsConditionObserverActive)

## 属性

- **AIController** — owner of BehaviorTreeComponent. blackboard key names that should be observed Applies only if Condition has any FBlackboardKeySelector property and if condition is set to abort BT flow. Is set to true ReceiveConditionCheck will be called only on changes to observed BB keys. If false or no BB keys obs

## UBTDecorator

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator)

类

全文搜索

Decorators are supporting nodes placed on parent-child connection, that receive notification about execution flow and can be ticked Because some of them can be instanced for specific AI, following virtual functions are not marked as const: - OnNodeActivation - OnNodeDeactivation - OnNodeProcessed - OnBecomeRelevant (from UBTAuxiliaryNode) - OnCeaseRelevant (from UBTAuxiliaryNode) - TickNode (from UBTAuxiliaryNode) If your node is not being instanced (default behavior), DO NOT change any properties of object within those functions! Template nodes are shared across all behavior tree components using the same tree asset and must store their runtime properties in provided NodeMemory block (allocation size determined by GetInstanceMemorySize() )

---


## 属性

- **set** — , condition check result will be inversed flow controller settings bInverseCondition FlowAbortMode

## UBTDecorator_Blackboard

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_Blackboard?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_Blackboard.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_Blackboard](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_Blackboard?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_Blackboard.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_Blackboard)

类

全文搜索

Blackboard decorator node. A decorator node that bases its condition on a Blackboard key.

---


## 属性

- **for** — arithmetic operations value for arithmetic operations value for string operations cached description operation type when observer can try to request abort? IntValue FloatValue StringValue CachedDescription OperationType NotifyObserver

## UBTDecorator_BlueprintBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_BlueprintBase](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_BlueprintBase)

类

全文搜索

Base class for blueprint based decorator nodes. Do NOT use it for creating native c++ classes! Unlike task and services, decorator have two execution chains: ExecutionStart-ExecutionFinish and ObserverActivated-ObserverDeactivated which makes automatic latent action cleanup impossible. Keep in mind, that you HAVE TO verify is given chain is still active after resuming from any latent action (like Delay, Timelines, etc). Helper functions: - IsDecoratorExecutionActive (true after ExecutionStart, until ExecutionFinish) - IsDecoratorObserverActive (true after ObserverActivated, until ObserverDeactivated)

---


## 函数

- **ReceiveTick**(AActor* OwnerActor, floatDeltaSeconds) — tick function
- **ReceiveExecutionStart**(AActor *OwnerActor) — called on execution of underlying node
- **ReceiveExecutionFinish**(AActor* OwnerActor, EBTNodeResult :: TypeNodeResult) — called when execution of underlying node is finished
- **ReceiveObserverActivated**(AActor *OwnerActor) — called when observer is activated (flow controller)
- **ReceiveObserverDeactivated**(AActor *OwnerActor) — called when observer is deactivated (flow controller)
- **PerformConditionCheck**(AActor *OwnerActor) — called when testing if underlying node can be executed, must call FinishConditionCheck
- **ReceiveTickAI**(AAIController* OwnerController, APawn* ControlledPawn, floatDeltaSeconds) — Alternative AI version of ReceiveTick
- **ReceiveExecutionStartAI**(AAIController* OwnerController, APawn *ControlledPawn) — Alternative AI version of ReceiveExecutionStart
- **ReceiveExecutionFinishAI**(AAIController* OwnerController, APawn* ControlledPawn, EBTNodeResult :: TypeNodeResult) — Alternative AI version of ReceiveExecutionFinish
- **ReceiveObserverActivatedAI**(AAIController* OwnerController, APawn *ControlledPawn) — Alternative AI version of ReceiveObserverActivated
- **ReceiveObserverDeactivatedAI**(AAIController* OwnerController, APawn *ControlledPawn) — Alternative AI version of ReceiveObserverDeactivated
- **PerformConditionCheckAI**(AAIController* OwnerController, APawn *ControlledPawn) — Alternative AI version of ReceiveConditionCheck
- **IsDecoratorExecutionActive**(check if decorator is part of currently active branch)
- **IsDecoratorObserverActive**(check if decorator's observer is currently active ReceiveTick ReceiveExecutionStart ReceiveExecutionFinish ReceiveObserverActivated ReceiveObserverDeactivated PerformConditionCheck ReceiveTickAI ReceiveExecutionStartAI ReceiveExecutionFinishAI ReceiveObserverActivatedAI ReceiveObserverDeactivatedAI)

## 属性

- **AIController** — owner of BehaviorTreeComponent. Cached AIController owner of BehaviorTreeComponent. blackboard key names that should be observed show detailed information about properties Applies only if Decorator has any FBlackboardKeySelector property and if decorator is set to abort BT flow. Is set to true Recei

## UBTDecorator_CheckGameplayTagsOnActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_CheckGameplayTagsOnActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_CheckGameplayTagsOnActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_CheckGameplayTagsOnActor](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_CheckGameplayTagsOnActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_CheckGameplayTagsOnActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_CheckGameplayTagsOnActor)

类

全文搜索

GameplayTag decorator node. A decorator node that bases its condition on whether the specified Actor (in the blackboard) has a Gameplay Tag or Tags specified.

---


## 属性

- **description** — ActorToCheck TagsToMatch GameplayTags CachedDescription

## UBTDecorator_CompareBBEntries

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_CompareBBEntries?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_CompareBBEntries.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_CompareBBEntries](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_CompareBBEntries?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_CompareBBEntries.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_CompareBBEntries)

类

全文搜索

Blackboard comparison decorator node. A decorator node that bases its condition on a comparison between two Blackboard keys.

---


## 属性

- **type** — blackboard key selector blackboard key selector Operator BlackboardKeyA BlackboardKeyB

## UBTDecorator_ConeCheck

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_ConeCheck?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_ConeCheck.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_ConeCheck](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_ConeCheck?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_ConeCheck.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_ConeCheck)

类

全文搜索

Cone check decorator node. A decorator node that bases its condition on a cone check, using Blackboard entries to form the parameters of the check.

---


## 属性

- **between** — cone direction and code cone edge, or a half of the total cone angle blackboard key selector "None" means "use ConeOrigin's direction" blackboard key selector ConeHalfAngle ConeOrigin ConeDirection Observed

## UBTDecorator_Cooldown

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_Cooldown?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_Cooldown.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_Cooldown](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_Cooldown?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_Cooldown.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_Cooldown)

类

全文搜索

Cooldown decorator node. A decorator node that bases its condition on whether a cooldown timer has expired.

---


## 属性

- **allowed** — time for execution of underlying node CoolDownTime

## UBTDecorator_DoesPathExist

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_DoesPathExist?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_DoesPathExist.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_DoesPathExist](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_DoesPathExist?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_DoesPathExist.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_DoesPathExist)

类

全文搜索

Cooldown decorator node. A decorator node that bases its condition on whether a path exists between two points from the Blackboard.

---


## 属性

- **key** — selector blackboard key selector "None" will result in default filter being used BlackboardKeyA BlackboardKeyB bUseSelf PathQueryType FilterClass

## UBTDecorator_IsAtLocation

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_IsAtLocation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_IsAtLocation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_IsAtLocation](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_IsAtLocation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_IsAtLocation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_IsAtLocation)

类

全文搜索

Is At Location decorator node. A decorator node that checks if AI controlled pawn is at given location.

---


## 属性

- **threshold** — to accept as being at location if moving to an actor and this actor is a nav agent, then we will move to their nav agent location If true the result will be consistent with tests done while following paths. Set to false to use geometric distance as configured with DistanceType AcceptableRadius Param

## UBTDecorator_KeepInCone

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_KeepInCone?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_KeepInCone.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_KeepInCone](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_KeepInCone?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_KeepInCone.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_KeepInCone)

类

全文搜索

Cooldown decorator node. A decorator node that bases its condition on whether the observed position is still inside a cone. The cone's direction is calculated when the node first becomes relevant.

---


## 属性

- **allowed** — time for execution of underlying node blackboard key selector blackboard key selector ConeHalfAngle ConeOrigin Observed bUseSelfAsOrigin bUseSelfAsObserved

## UBTDecorator_Loop

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_Loop?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_Loop.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_Loop](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_Loop?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_Loop.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_Loop)

类

全文搜索

Loop decorator node. A decorator node that bases its condition on whether its loop counter has been exceeded.

---


## 属性

- **of** — executions infinite loop timeout (when looping infinitely, when we finish a loop we will check whether we have spent this time looping, if we have we will stop looping). A negative value means loop forever. NumLoops bInfiniteLoop InfiniteLoopTimeoutTime

## UBTDecorator_SetTagCooldown

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_SetTagCooldown?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_SetTagCooldown.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_SetTagCooldown](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_SetTagCooldown?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_SetTagCooldown.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_SetTagCooldown)

类

全文搜索

Set tag cooldown decorator node. A decorator node that sets a gameplay tag cooldown.

---


## 属性

- **tag** — that will be used for the cooldown. Value we will add or set to the Cooldown tag when this task runs. True if we are adding to any existing duration, false if we are setting the duration (potentially invalidating an existing end time). CooldownTag CooldownDuration bAddToExistingDuration

## UBTDecorator_TagCooldown

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_TagCooldown?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_TagCooldown.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_TagCooldown](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_TagCooldown?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_TagCooldown.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_TagCooldown)

类

全文搜索

Cooldown decorator node. A decorator node that bases its condition on whether a cooldown timer based on a gameplay tag has expired.

---


## 属性

- **tag** — that will be used for the cooldown. Value we will add or set to the Cooldown tag when this node is deactivated. True if we are adding to any existing duration, false if we are setting the duration (potentially invalidating an existing end time). Whether or not we are addingsetting to the cooldown ta

## UBTDecorator_TimeLimit

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_TimeLimit?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_TimeLimit.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_TimeLimit](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_TimeLimit?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_TimeLimit.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_TimeLimit)

类

全文搜索

Time Limit decorator node. A decorator node that bases its condition on whether a timer has exceeded a specified value. The timer is reset each time the node becomes relevant.

---


## 属性

- **allowed** — time for execution of underlying node TimeLimit

## UBTFunctionLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTFunctionLibrary](https://developer.gp.qq.com/api/#/searchContent/UBTFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTFunctionLibrary)

类

全文搜索

---


## 函数

- **GetOwnersBlackboard**(UBTNode *NodeOwner)
- **GetOwnerComponent**(UBTNode *NodeOwner)
- **GetBlackboardValueAsObject**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **GetBlackboardValueAsActor**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **GetBlackboardValueAsClass**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **GetBlackboardValueAsEnum**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **GetBlackboardValueAsInt**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **GetBlackboardValueAsFloat**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **GetBlackboardValueAsBool**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **StringGetBlackboardValueAsString**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **NameGetBlackboardValueAsName**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **VectorGetBlackboardValueAsVector**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **RotatorGetBlackboardValueAsRotator**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **SetBlackboardValueAsObject**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, UObject *Value)
- **SetBlackboardValueAsClass**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, UClass *Value)
- **SetBlackboardValueAsEnum**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, uint8Value)
- **SetBlackboardValueAsInt**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, int32Value)
- **SetBlackboardValueAsFloat**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, floatValue)
- **SetBlackboardValueAsBool**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, boolValue)
- **SetBlackboardValueAsString**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, FStringValue)
- **SetBlackboardValueAsName**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, FNameValue)
- **SetBlackboardValueAsVector**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, FVectorValue)
- **ClearBlackboardValueAsVector**(UBTNode* NodeOwner, FBlackboardKeySelector &Key) — (DEPRECATED) Use ClearBlackboardValue instead
- **SetBlackboardValueAsRotator**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, FRotatorValue)
- **ClearBlackboardValue**(UBTNode* NodeOwner, FBlackboardKeySelector &Key) — Resets indicated value to "not set" value, based on values type
- **StartUsingExternalEvent**(UBTNode* NodeOwner, AActor *OwningActor) — Initialize variables marked as "instance memory" and set owning actor for blackboard operations
- **StopUsingExternalEvent**(UBTNode *NodeOwner) — Save variables marked as "instance memory" and clear owning actor GetOwnersBlackboard GetOwnerComponent GetBlackboardValueAsObject GetBlackboardValueAsActor GetBlackboardValueAsClass GetBlackboardValueAsEnum GetBlackboardValueAsInt GetBlackboardValueAsFloat GetBlackboardValueAsBool GetBlackboardValu

## UBTService

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTService?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTService.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTService](https://developer.gp.qq.com/api/#/searchContent/UBTService?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTService.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTService)

类

全文搜索

Behavior Tree service nodes is designed to perform "background" tasks that update AI's knowledge. Services are being executed when underlying branch of behavior tree becomes active, but unlike tasks they don't return any results and can't directly affect execution flow. Usually they perform periodical checks (see TickNode) and often store results in blackboard. If any decorator node below requires results of check beforehand, use OnSearchStart function. Keep in mind that any checks performed there have to be instantaneous! Other typical use case is creating a marker when specific branch is being executed (see OnBecomeRelevant, OnCeaseRelevant), by setting a flag in blackboard. Because some of them can be instanced for specific AI, following virtual functions are not marked as const: - OnBecomeRelevant (from UBTAuxiliaryNode) - OnCeaseRelevant (from UBTAuxiliaryNode) - TickNode (from UBTAuxiliaryNode) - OnSearchStart If your node is not being instanced (default behavior), DO NOT change any properties of object within those functions! Template nodes are shared across all behavior tree components using the same tree asset and must store their runtime properties in provided NodeMemory block (allocation size determined by GetInstanceMemorySize() )

---


## 属性

- **time** — span between subsequent ticks of the service adds random range to service's Interval call Tick event when task search enters this node (SearchStart will be called as well) if set, next tick time will be always reset to service's interval when node is activated Interval RandomDeviation bCallTickOnSea

## UBTService_BlueprintBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTService_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTService_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTService_BlueprintBase](https://developer.gp.qq.com/api/#/searchContent/UBTService_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTService_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTService_BlueprintBase)

类

全文搜索

Base class for blueprint based service nodes. Do NOT use it for creating native c++ classes! When service receives Deactivation event, all latent actions associated this instance are being removed. This prevents from resuming activity started by Activation, but does not handle external events. Please use them safely (unregister at abort) and call IsServiceActive() when in doubt.

---


## 函数

- **ReceiveTick**(AActor* OwnerActor, floatDeltaSeconds) — tick function
- **ReceiveSearchStart**(AActor *OwnerActor) — task search enters branch of tree
- **ReceiveActivation**(AActor *OwnerActor) — service became active
- **ReceiveDeactivation**(AActor *OwnerActor) — service became inactive
- **ReceiveTickAI**(AAIController* OwnerController, APawn* ControlledPawn, floatDeltaSeconds) — Alternative AI version of ReceiveTick function.
- **ReceiveSearchStartAI**(AAIController* OwnerController, APawn *ControlledPawn) — Alternative AI version of ReceiveSearchStart function.
- **ReceiveActivationAI**(AAIController* OwnerController, APawn *ControlledPawn) — Alternative AI version of ReceiveActivation function.
- **ReceiveDeactivationAI**(AAIController* OwnerController, APawn *ControlledPawn) — Alternative AI version of ReceiveDeactivation function.
- **IsServiceActive**(check if service is currently being active ReceiveTick ReceiveSearchStart ReceiveActivation ReceiveDeactivation ReceiveTickAI ReceiveSearchStartAI ReceiveActivationAI ReceiveDeactivationAI IsServiceActive)

## 属性

- **AIController** — owner of BehaviorTreeComponent. Cached actor owner of BehaviorTreeComponent. show detailed information about properties show detailed information about implemented events AIOwner ActorOwner bShowPropertyDetails bShowEventDetails

## UBTService_DefaultFocus

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTService_DefaultFocus?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTService_DefaultFocus.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTService_DefaultFocus](https://developer.gp.qq.com/api/#/searchContent/UBTService_DefaultFocus?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTService_DefaultFocus.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTService_DefaultFocus)

类

全文搜索

Default Focus service node. A service node that automatically sets the AI controller's focus when it becomes active.

---

## UBTTask_BlueprintBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_BlueprintBase](https://developer.gp.qq.com/api/#/searchContent/UBTTask_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_BlueprintBase)

类

全文搜索

Base class for blueprint based task nodes. Do NOT use it for creating native c++ classes! When task receives Abort event, all latent actions associated this instance are being removed. This prevents from resuming activity started by Execute, but does not handle external events. Please use them safely (unregister at abort) and call IsTaskExecuting() when in doubt.

---


## 函数

- **ReceiveExecute**(AActor *OwnerActor) — entry point, task will stay active until FinishExecute is called.
- **ReceiveAbort**(AActor *OwnerActor) — if blueprint graph contains this event, task will stay active until FinishAbort is called
- **ReceiveTick**(AActor* OwnerActor, floatDeltaSeconds) — tick function
- **ReceiveExecuteAI**(AAIController* OwnerController, APawn *ControlledPawn) — Alternative AI version of ReceiveExecute
- **ReceiveAbortAI**(AAIController* OwnerController, APawn *ControlledPawn) — Alternative AI version of ReceiveAbort
- **ReceiveTickAI**(AAIController* OwnerController, APawn* ControlledPawn, floatDeltaSeconds) — Alternative AI version of tick function.
- **FinishExecute**(boolbSuccess) — finishes task execution with Success or Fail result
- **FinishAbort**(aborts task execution)
- **SetFinishOnMessage**(FNameMessageName) — task execution will be finished (with result 'Success') after receiving specified message
- **SetFinishOnMessageWithId**(FName MessageName, int32RequestID) — task execution will be finished (with result 'Success') after receiving specified message with indicated ID
- **IsTaskExecuting**(check if task is currently being executed)
- **IsTaskAborting**(check if task is currently being aborted ReceiveExecute ReceiveAbort ReceiveTick ReceiveExecuteAI ReceiveAbortAI ReceiveTickAI FinishExecute FinishAbort SetFinishOnMessage SetFinishOnMessageWithId IsTaskExecuting IsTaskAborting)

## 属性

- **AIController** — owner of BehaviorTreeComponent. Cached actor owner of BehaviorTreeComponent. show detailed information about properties AIOwner ActorOwner bShowPropertyDetails

## UBTTask_GameplayTaskBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_GameplayTaskBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_GameplayTaskBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_GameplayTaskBase](https://developer.gp.qq.com/api/#/searchContent/UBTTask_GameplayTaskBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_GameplayTaskBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_GameplayTaskBase)

类

全文搜索

Base class for managing gameplay tasks Since AITask doesn't have any kind of successfailed results, default implemenation will only return EBTNode::Succeeded In your ExecuteTask: - use NewBTAITask() helper to create task - initialize task with values if needed - use StartGameplayTask() helper to execute and get node result

---


## 属性

- **set** — , behavior tree task will wait until gameplay tasks finishes bWaitForGameplayTask

## UBTTask_LuaBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_LuaBase](https://developer.gp.qq.com/api/#/searchContent/UBTTask_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_LuaBase)

类

全文搜索

Base class for lua based task nodes. Do NOT use it for creating native c++ classes! When task receives Abort event, all latent actions associated this instance are being removed. This prevents from resuming activity started by Execute, but does not handle external events. Please use them safely (unregister at abort) and call IsTaskExecuting() when in doubt.

---


## 函数

- **ReceiveExecuteAI**(AAIController* OwnerController, APawn *ControlledPawn) — entry point, task will stay active until FinishExecute is called.
- **ReceiveAbortAI**(AAIController* OwnerController, APawn *ControlledPawn) — if blueprint graph contains this event, task will stay active until FinishAbort is called
- **ReceiveTickAI**(AAIController* OwnerController, APawn* ControlledPawn, floatDeltaSeconds) — tick function
- **FinishExecute**(boolbSuccess) — finishes task execution with Success or Fail result
- **FinishAbort**(aborts task execution)
- **SetFinishOnMessage**(FNameMessageName) — task execution will be finished (with result 'Success') after receiving specified message
- **SetFinishOnMessageWithId**(FName MessageName, int32RequestID) — task execution will be finished (with result 'Success') after receiving specified message with indicated ID
- **IsTaskExecuting**(check if task is currently being executed)
- **IsTaskAborting**(check if task is currently being aborted ReceiveExecuteAI ReceiveAbortAI ReceiveTickAI FinishExecute FinishAbort SetFinishOnMessage SetFinishOnMessageWithId IsTaskExecuting IsTaskAborting)

## 属性

- **AIController** — owner of BehaviorTreeComponent. show detailed information about properties AIOwner bShowPropertyDetails

## UBTTask_MoveDirectlyToward

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_MoveDirectlyToward?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_MoveDirectlyToward.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_MoveDirectlyToward](https://developer.gp.qq.com/api/#/searchContent/UBTTask_MoveDirectlyToward?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_MoveDirectlyToward.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_MoveDirectlyToward)

类

全文搜索

Move Directly Toward task node. Moves the AI pawn toward the specified Actor or Location (Vector) blackboard entry in a straight line, without regard to any navigation system. If you need the AI to navigate, use the "Move To" node instead.

---

## UBTTask_MoveTo

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_MoveTo?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_MoveTo.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_MoveTo](https://developer.gp.qq.com/api/#/searchContent/UBTTask_MoveTo?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_MoveTo.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_MoveTo)

类

全文搜索

Move To task node. Moves the AI pawn toward the specified Actor or Location blackboard entry using the navigation system.

---


## 属性

- **distance** — added to threshold between AI and goal location in destination reach test "None" will result in default filter being used if task is expected to react to changes to location represented by BB key this property can be used to tweak sensitivity of the mechanism. Value is recommended to be less then Ac

## UBTTask_PlayAnimation

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_PlayAnimation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_PlayAnimation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_PlayAnimation](https://developer.gp.qq.com/api/#/searchContent/UBTTask_PlayAnimation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_PlayAnimation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_PlayAnimation)

类

全文搜索

Play indicated AnimationAsset on Pawn controlled by BT Note that this node is generic and is handing multiple special cases, If you want a more efficient solution you'll need to implement it yourself (or wait for our BTTask_PlayCharacterAnimation)

---


## 属性

- **asset** — to play. Note that it needs to match the skeleton of pawn this BT is controlling if true the task will just trigger the animation and instantly finish. Fire and Forget. UBehaviorTreeComponent *MyOwnerComp USkeletalMeshComponent *CachedSkelMesh AnimationToPlay bLooping bNonBlocking MyOwnerComp Cached

## UBTTask_RunBehavior

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_RunBehavior?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_RunBehavior.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_RunBehavior](https://developer.gp.qq.com/api/#/searchContent/UBTTask_RunBehavior?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_RunBehavior.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_RunBehavior)

类

全文搜索

RunBehavior task allows pushing subtrees on execution stack. Subtree asset can't be changed in runtime! This limitation is caused by support for subtree's root level decorators, which are injected into parent tree, and structure of running tree cannot be modified in runtime (see: BTNode: ExecutionIndex, MemoryOffset) Use RunBehaviorDynamic task for subtrees that need to be changed in runtime.

---


## 属性

- **to** — run BehaviorAsset

## UBTTask_RunBehaviorDynamic

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_RunBehaviorDynamic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_RunBehaviorDynamic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_RunBehaviorDynamic](https://developer.gp.qq.com/api/#/searchContent/UBTTask_RunBehaviorDynamic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_RunBehaviorDynamic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_RunBehaviorDynamic)

类

全文搜索

RunBehaviorDynamic task allows pushing subtrees on execution stack. Subtree asset can be assigned at runtime with SetDynamicSubtree function of BehaviorTreeComponent. Does NOT support subtree's root level decorators!

---


## 属性

- **tag** — that will identify this task for subtree injection UBehaviorTree *DefaultBehaviorAsset default behavior to run UBehaviorTree *BehaviorAsset current subtree InjectionTag DefaultBehaviorAsset BehaviorAsset

## UBTTask_RunEQSQuery

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_RunEQSQuery?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_RunEQSQuery.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_RunEQSQuery](https://developer.gp.qq.com/api/#/searchContent/UBTTask_RunEQSQuery?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_RunEQSQuery.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_RunEQSQuery)

类

全文搜索

Run Environment Query System Query task node. Runs the specified environment query when executed.

---


## 属性

- **to** — run optional parameters for query determines which item will be stored (All = only first matching) blackboard key storing an EQS query template QueryTemplate QueryParams QueryConfig RunMode EQSQueryBlackboardKey bUseBBKey EQSRequest

## UBTTask_SetTagCooldown

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_SetTagCooldown?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_SetTagCooldown.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_SetTagCooldown](https://developer.gp.qq.com/api/#/searchContent/UBTTask_SetTagCooldown?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_SetTagCooldown.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_SetTagCooldown)

类

全文搜索

Cooldown task node. Sets a cooldown tag value. Use with cooldown tag decorators to prevent behavior tree execution.

---


## 属性

- **tag** — that will be used for the cooldown. True if we are adding to any existing duration, false if we are setting the duration (potentially invalidating an existing end time). Value we will add or set to the Cooldown tag when this task runs. CooldownTag bAddToExistingDuration CooldownDuration

## UBTTask_Wait

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_Wait?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_Wait.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_Wait](https://developer.gp.qq.com/api/#/searchContent/UBTTask_Wait?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_Wait.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_Wait)

类

全文搜索

Wait task node. Wait for the specified time when executed.

---


## 属性

- **time** — in seconds allows adding random time to wait time WaitTime RandomDeviation

## UBTTask_WaitBlackboardTime

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_WaitBlackboardTime?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_WaitBlackboardTime.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_WaitBlackboardTime](https://developer.gp.qq.com/api/#/searchContent/UBTTask_WaitBlackboardTime?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_WaitBlackboardTime.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_WaitBlackboardTime)

类

全文搜索

Wait task node. Wait for the time specified by a Blackboard key when executed.

---


## 属性

- **key** — selector BlackboardKey

## UBTTaskNode

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTaskNode?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTaskNode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTaskNode](https://developer.gp.qq.com/api/#/searchContent/UBTTaskNode?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTaskNode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTaskNode)

类

全文搜索

Task are leaf nodes of behavior tree, which perform actual actions Because some of them can be instanced for specific AI, following virtual functions are not marked as const: - ExecuteTask - AbortTask - TickTask - OnMessage If your node is not being instanced (default behavior), DO NOT change any properties of object within those functions! Template nodes are shared across all behavior tree components using the same tree asset and must store their runtime properties in provided NodeMemory block (allocation size determined by GetInstanceMemorySize() )

---


## 属性

- **nodes** — if set, task search will be discarded when this task is selected to execute but is already running Services bIgnoreRestartSelf

## UButton

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UButton?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUButton.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UButton](https://developer.gp.qq.com/api/#/searchContent/UButton?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUButton.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UButton)

类

全文搜索

The button is a click-able primitive widget to enable basic interaction, you can place any other widget inside a button to make a more complex and interesting click-able element in your UI. Single Child Clickable

---


## 函数

- **SetStyle**(FButtonStyle &InStyle) — Sets the color multiplier for the button background
- **SetColorAndOpacity**(FLinearColorInColorAndOpacity) — Sets the color multiplier for the button content
- **SetBackgroundColor**(FLinearColorInBackgroundColor) — Sets the color multiplier for the button background
- **IsPressed**(Returns true if the user is actively pressing the button. Do not use this for detecting 'Clicks', use the OnClicked event instead. return -true if the user is actively pressing the button otherwise false.)
- **Release**()
- **SetClickMethod**(EButtonClickMethod :: TypeInClickMethod)
- **SetTouchMethod**(EButtonTouchMethod :: TypeInTouchMethod)
- **GetReleasedReason**()
- **SetListenEscMethod**(EListenEscMethod :: TypeInListenEscMethod)
- **TypeGetListenEscMethod**()
- **SetShowHover**(boolInShowHover)
- **AddListenAction**(FName InActionName, EButtonListenActionEvent :: TypeInType)
- **RemoveListenAction**(FNameInActionName)
- **ClearListenActions**()
- **GetCacheLayerId**(return CacheLayerId only windows)
- **RespondEscape**()
- **GetButtonsFromAction**(TArray < UButton* >& OutButtons, FNameInAction)
- **ClearInvalidForListenActions**()
- **GetButtonsFromTipsBg**()
- **SetButtonClickedGlobalEvent**(FOnButtonClickedGlobalEventInEvent)
- **ClearButtonClickedGlobalEvent**()
- **SetIsFocusable**(boolInFocusable) — SetStyle SetColorAndOpacity SetBackgroundColor IsPressed Release SetClickMethod SetTouchMethod GetReleasedReason SetListenEscMethod GetListenEscMethod SetShowHover AddListenAction RemoveListenAction ClearListenActions GetCacheLayerId RespondEscape GetButtonsFromAction ClearInvalidForListenActions Ge

## 属性

- **template** — style asset, used to seed the mutable instance of the style. The button style used at runtime The color multiplier for the button content The color multiplier for the button background The type of mouse action required by the user to trigger the buttons 'Click' The type of touch action required by t

## 委托

- voidOnClicked()
- Called when the button is clicked
- voidOnPressed()
- Called when the button is pressed
- voidOnReleased()
- Called when the button is released
- voidOnHovered()
- voidOnUnhovered()
- voidOnPressedParam(FGeometryMyGeometry, const FPointerEvent&MouseEvent)
- voidOnReleasedParam(FGeometryMyGeometry, const FPointerEvent&MouseEvent)
- voidOnReplayRecordNotify(int32EventIndex)
- OnClicked
- OnPressed
- OnReleased
- OnHovered
- OnUnhovered
- OnPressedParam
- OnReleasedParam
- OnReplayRecordNotify

## UButtonSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UButtonSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUButtonSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UButtonSlot](https://developer.gp.qq.com/api/#/searchContent/UButtonSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUButtonSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UButtonSlot)

类

全文搜索

The Slot for the UButtonSlot, contains the widget displayed in a button's single slot

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment) — SetPadding SetHorizontalAlignment SetVerticalAlignment

## 属性

- **padding** — area between the slot and the content it contains. The alignment of the object horizontally. The alignment of the object vertically. Padding HorizontalAlignment VerticalAlignment

## UButtonStyleAsset

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UButtonStyleAsset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUButtonStyleAsset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UButtonStyleAsset](https://developer.gp.qq.com/api/#/searchContent/UButtonStyleAsset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUButtonStyleAsset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UButtonStyleAsset)

类

全文搜索

An asset describing a button's appearance. Just a wrapper for the struct with real data in it.style factory

---


## 属性

- **actual** — data describing the button's appearance. ButtonStyle

## UCameraAnim

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCameraAnim?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraAnim.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraAnim](https://developer.gp.qq.com/api/#/searchContent/UCameraAnim?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraAnim.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraAnim)

类

全文搜索

A predefined animation to be played on a camera

---


## 属性

- **UInterpGroup** — that holds our actual interpolation data. Length, in seconds. AABB in local space. If true, assume all transform keys are intended be offsets from the start of the animation. This allows the animation to be authored at any world location and be applied as a delta to the camera. If false, assume all

## UCameraAnimInst

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCameraAnimInst?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraAnimInst.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraAnimInst](https://developer.gp.qq.com/api/#/searchContent/UCameraAnimInst?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraAnimInst.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraAnimInst)

类

全文搜索

---


## 函数

- **SetCurrentTime**(floatNewTime) — Jumps he camera anim to the given (unscaled) time.
- **Stop**(boolbImmediate) — Stops this instance playing whatever animation it is playing.
- **SetDuration**(floatNewDuration) — Changes the running duration of this active anim, while maintaining playback position.
- **SetScale**(floatNewDuration) — Changes the scale of the animation while playing. SetCurrentTime Stop SetDuration SetScale

## 属性

- **CameraAnim** — this is an instance of UInterpGroupInst *InterpGroupInst the UInterpGroupInst used to do the interpolation Multiplier for playback rate. 1.0 = normal. UInterpTrackMove *MoveTrack cached movement track from the currently playing anim so we don't have to go find it every frame UInterpTrackInstMove *Mo

## UCameraComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCameraComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraComponent](https://developer.gp.qq.com/api/#/searchContent/UCameraComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraComponent)

类

全文搜索

Represents a camera viewpoint and settings, such as projection type, field of view, and post-process overrides. The default behavior for an actor used as the camera view target is to look for an attached camera component and use its location, rotation, and settings.

---


## 函数

- **SetFieldOfView**(floatInFieldOfView)
- **SetFirstPersonFieldOfView**(floatInFirstPersonFieldOfView)
- **SetFirstPersonScale**(floatInFirstPersonScale)
- **SetFirstPersonScaleParams**(float InFirstPersonScale, float InFPScaleCurveNearValue, float InFPScaleMaxLen, floatInFPScaleCurvePow)
- **SetEnableFirstPersonFieldOfView**(boolbInEnableFirstPersonFieldOfView)
- **SetEnableFirstPersonScale**(boolbInEnableFirstPersonScale)
- **SetActive**(bool bNewActive, boolbReset)
- **ApplyDrawDistanceOffset**(floatInFieldOfView)
- **SetOrthoWidth**(floatInOrthoWidth)
- **SetOrthoNearClipPlane**(floatInOrthoNearClipPlane)
- **SetOrthoFarClipPlane**(floatInOrthoFarClipPlane)
- **SetAspectRatio**(floatInAspectRatio)
- **SetWidthHeight**(FVector2DInWidthHeight)
- **SetConstraintAspectRatio**(boolbInConstrainAspectRatio)
- **SetUseFieldOfViewForLOD**(boolbInUseFieldOfViewForLOD)
- **SetProjectionMode**(ECameraProjectionMode :: TypeInProjectionMode)
- **SetPostProcessBlendWeight**(floatInPostProcessBlendWeight)
- **GetCameraView**(float DeltaTime, FMinimalViewInfo &DesiredView) — Returns camera's Point of View. Called by Camera class. Subclass and postprocess to add any effects.
- **AddOrUpdateBlendable**(TScriptInterface < IBlendableInterface > InBlendableObject, floatInWeight) — Adds an Blendable (implements IBlendableInterface) to the array of Blendables (if it doesn't exist) and update the weight
- **RemoveBlendable**(TScriptInterface < IBlendableInterface >InBlendableObject) — Removes a blendable.
- **SetbEnableModifyAdditiveOffset**(boolInEnable)
- **GetEnableModifyAdditiveOffset**()
- **AddAdditiveOffset**(FTransform& Transform, floatFOV) — Applies the given additive offset, preserving any existing offset
- **ClearAdditiveOffset**(Removes any additive offset.)
- **GetAddtiveInfo**(bool& OutIsAddtive, float& OutAddtiveOffset, FTransform &OutAddtiveTrans) — SetFieldOfView SetFirstPersonFieldOfView SetFirstPersonScale SetFirstPersonScaleParams SetEnableFirstPersonFieldOfView SetEnableFirstPersonScale SetActive ApplyDrawDistanceOffset SetOrthoWidth SetOrthoNearClipPlane SetOrthoFarClipPlane SetAspectRatio SetWidthHeight SetConstraintAspectRatio SetUseFie

## 属性

- **horizontal** — field of view (in degrees) in perspective mode (ignored in Orthographic mode) The horizontal field of view (in degrees) used for primitives tagged as "IsFirstPerson". The scale to apply to primitives tagged as "IsFirstPerson". This is used to scale down primitives towards the camera such that they a

## UCameraModifier

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCameraModifier?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraModifier.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraModifier](https://developer.gp.qq.com/api/#/searchContent/UCameraModifier?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraModifier.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraModifier)

类

全文搜索

A CameraModifier is a base class for objects that may adjust the final camera properties after being computed by the APlayerCameraManager (@see ModifyCamera). A CameraModifier can be stateful, and is associated uniquely with a specific APlayerCameraManager.

---


## 函数

- **BlueprintModifyCamera**(float DeltaTime, FVector ViewLocation, FRotator ViewRotation, float FOV, FVector& NewViewLocation, FRotator& NewViewRotation, float &NewFOV) — Called per tick that the modifier is active to allow Blueprinted modifiers to modify the camera's transform. Scaling by Alpha happens after this in code, so no need to deal with that in the blueprint. params DeltaTime -Change in time since last update params ViewLocation -The current camera location
- **BlueprintModifyPostProcess**(float DeltaTime, float& PostProcessBlendWeight, FPostProcessSettings &PostProcessSettings) — Called per tick that the modifier is active to allow Blueprinted modifiers to modify the camera's postprocess effects. Scaling by Alpha happens after this in code, so no need to deal with that in the blueprint. params DeltaTime - Change in time since last update params PostProcessBlendWeight -(out)
- **IsDisabled**(return -Returns true if modifier is disabled, false otherwise.)
- **GetViewTarget**(return -Returns the actor the camera is currently viewing.)
- **DisableModifier**(boolbImmediate) — Disables this modifier. params bImmediate -- true to disable with no blend out, false (default) to allow blend out
- **EnableModifier**(Enables this modifier. BlueprintModifyCamera BlueprintModifyPostProcess IsDisabled GetViewTarget DisableModifier EnableModifier)

## 属性

- **true** — , enables certain debug visualization features. If true, no other modifiers of same priority allowed. Priority value that determines the order in which modifiers are applied. 0 = highest priority, 255 = lowest. APlayerCameraManager *CameraOwner Camera this object is associated with. When blending in

## UCameraModifier_CameraShake

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCameraModifier_CameraShake?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraModifier_CameraShake.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraModifier_CameraShake](https://developer.gp.qq.com/api/#/searchContent/UCameraModifier_CameraShake?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraModifier_CameraShake.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraModifier_CameraShake)

类

全文搜索

A UCameraModifier_CameraShake is a camera modifier that can apply a UCameraShake to the owning camera.

---


## 属性

- **of** — active CameraShake instances Scaling factor applied to all camera shakes in when in splitscreen mode. Normally used to reduce shaking, since shakes feel more intense in a smaller viewport. ActiveShakes SplitScreenShakeScale CacheShakeInsMap

## UCameraShake

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCameraShake?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraShake.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraShake](https://developer.gp.qq.com/api/#/searchContent/UCameraShake?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraShake.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraShake)

类

全文搜索

A CameraShake is an asset that defines how to shake the camera in a particular way. CameraShakes can be authored as either oscillating shakes, animated shakes, or both. An oscillating shake will sinusoidally vibrate various camera parameters over time. Each location and rotation axis can be oscillated independently with different parameters to create complex and random-feeling shakes. These are easier to author and tweak, but can still feel mechanical and are limited to vibration-style shakes, such as earthquakes. Animated shakes play keyframed camera animations. These can take more effort to author, but enable more natural-feeling results and things like directional shakes. For instance, you can have an explosion to the camera's right push it primarily to the left.

---


## 函数

- **BlueprintUpdateCameraShake**(float DeltaTime, float Alpha, FMinimalViewInfo& POV, FMinimalViewInfo &ModifiedPOV) — Called every tick to let the shake modify the point of view
- **ReceivePlayShake**(floatScale) — Called when the shake starts playing
- **ReceiveIsFinished**(Called to allow a shake to decide when it's finished playing.)
- **ReceiveStopShake**(boolbImmediately) — Called when the shake is explicitly stopped. BlueprintUpdateCameraShake ReceivePlayShake ReceiveIsFinished ReceiveStopShake

## 属性

- **true** — to only allow a single instance of this shake class to play at any given time. Subsequent attempts to play this shake will simply restart the timer. Duration in seconds of current screen shake. Less than 0 means indefinite, 0 means no oscillation. Duration of the blend-in, where the oscillation scal
- **oscillation** — Parameters for defining CameraAnim-driven camera shakes Scalar defining how fast to play the anim. Scalar defining how "intense" to play the anim. Linear blend-in time. Linear blend-out time. When bRandomAnimSegment is true, this defines how long the anim should play. UCameraAnim *Anim Source camer

## UCanvas

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCanvas?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvas.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvas](https://developer.gp.qq.com/api/#/searchContent/UCanvas?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvas.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvas)

类

全文搜索

A drawing canvas.

---


## 函数

- **K2_DrawLine**(FVector2D ScreenPositionA, FVector2D ScreenPositionB, float Thickness, FLinearColorRenderColor) — Draws a line on the Canvas. params ScreenPositionA -Starting position of the line in screen space. params ScreenPositionB -Ending position of the line in screen space. params Thickness - How many pixels thick this line should be. params RenderColor - Color to render the line.
- **K2_DrawTexture**(UTexture* RenderTexture, FVector2D ScreenPosition, FVector2D ScreenSize, FVector2D CoordinatePosition, FVector2D CoordinateSize, FLinearColor RenderColor, EBlendMode BlendMode, float Rotation, FVecto) — Draws a texture on the Canvas. params RenderTexture - Texture to use when rendering. If no texture is set then this will use the default white texture. params ScreenPosition - Screen space position to render the texture. params ScreenSize - Screen space size to render the texture. params CoordinateP
- **K2_DrawMaterial**(UMaterialInterface* RenderMaterial, FVector2D ScreenPosition, FVector2D ScreenSize, FVector2D CoordinatePosition, FVector2D CoordinateSize, float Rotation, FVector2DPivotPoint) — Draws a material on the Canvas. params RenderMaterial - Material to use when rendering. Remember that only the emissive channel is able to be rendered as no lighting is performed when rendering to the Canvas. params ScreenPosition - Screen space position to render the texture. params ScreenSize - Sc
- **K2_DrawText**(UFont* RenderFont, FString& RenderText, FVector2D ScreenPosition, FLinearColor RenderColor, float Kerning, FLinearColor ShadowColor, FVector2D ShadowOffset, bool bCentreX, bool bCentreY, bool bOutli) — Draws text on the Canvas. params RenderFont - Font to use when rendering the text. If this is null, then a default engine font is used. params RenderText - Text to render on the Canvas. params ScreenPosition - Screen space position to render the text. params RenderColor - Color to render the text. p
- **K2_DrawBorder**(UTexture* BorderTexture, UTexture* BackgroundTexture, UTexture* LeftBorderTexture, UTexture* RightBorderTexture, UTexture* TopBorderTexture, UTexture* BottomBorderTexture, FVector2D ScreenPositi) — Draws a 3x3 grid border with tiled frame and tiled interior on the Canvas. params BorderTexture - Texture to use for border. params BackgroundTexture - Texture to use for border background. params LeftBorderTexture - Texture to use for the tiling left border. params RightBorderTexture -Texture to us
- **K2_DrawBox**(FVector2D ScreenPosition, FVector2D ScreenSize, floatThickness) — Draws an unfilled box on the Canvas. params ScreenPosition - Screen space position to render the text. params ScreenSize - Screen space size to render the texture. params Thickness - How many pixels thick the box lines should be.
- **K2_DrawTriangle**(UTexture* RenderTexture, TArray < FCanvasUVTri >Triangles) — Draws a set of triangles on the Canvas. params RenderTexture - Texture to use when rendering the triangles. If no texture is set, then the default white texture is used. params Triangles - Triangles to render.
- **K2_DrawMaterialTriangle**(UMaterialInterface* RenderMaterial, TArray < FCanvasUVTri >Triangles) — Draws a set of triangles on the Canvas. params RenderMaterial - Material to use when rendering. Remember that only the emissive channel is able to be rendered as no lighting is performed when rendering to the Canvas. params Triangles - Triangles to render.
- **K2_DrawPolygon**(UTexture* RenderTexture, FVector2D ScreenPosition, FVector2D Radius, int32 NumberOfSides, FLinearColorRenderColor) — Draws a polygon on the Canvas. params RenderTexture - Texture to use when rendering the triangles. If no texture is set, then the default white texture is used. params ScreenPosition - Screen space position to render the text. params Radius - How large in pixels this polygon should be. params Number
- **VectorK2_Project**(FVectorWorldLocation) — Performs a projection of a world space coordinates using the projection matrix set up for the Canvas. return - Returns a vector where X, Y defines a screen space position representing the world space location. params WorldLocation - World space location to project onto the Canvas rendering plane.
- **K2_Deproject**(FVector2D ScreenPosition, FVector& WorldOrigin, FVector &WorldDirection) — Performs a deprojection of a screen space coordinate using the projection matrix set up for the Canvas. params ScreenPosition - Screen space position to deproject to the World. params WorldOrigin - Vector which is the world position of the screen space position. params WorldDirection - Vector which
- **Vector2DK2_StrLen**(UFont* RenderFont, FString &RenderText) — Returns the wrapped text size in screen space coordinates. return - Returns the screen space size of the text. params RenderFont - Font to use when determining the size of the text. If this is null, then a default engine font is used. params RenderText - Text to determine the size of.
- **Vector2DK2_TextSize**(UFont* RenderFont, FString& RenderText, FVector2DScale) — Returns the clipped text size in screen space coordinates. return - Returns the screen space size of the text. params RenderFont - Font to use when determining the size of the text. If this is null, then a default engine font is used. params RenderText - Text to determine the size of. params Scale -

## 属性

- **class** — to render 2d graphs on canvas OrgX OrgY ClipX ClipY DrawColor bCenterX bCenterY bNoSmooth SizeX SizeY ColorModulate DefaultTexture GradientTexture0 ReporterGraph

## UCanvasPanel

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCanvasPanel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvasPanel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvasPanel](https://developer.gp.qq.com/api/#/searchContent/UCanvasPanel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvasPanel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvasPanel)

类

全文搜索

The canvas panel is a designer friendly panel that allows widgets to be laid out at arbitrary locations, anchored and z-ordered with other children of the canvas. The canvas is a great widget for manual layout, but bad when you want to procedurally just generate widgets and place them in a container (unless you want absolute layout). Many Children Absolute Layout Anchors

---


## 函数

- **AddChildToCanvas**(UWidget *Content) — AddChildToCanvas

## UCanvasPanelSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCanvasPanelSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvasPanelSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvasPanelSlot](https://developer.gp.qq.com/api/#/searchContent/UCanvasPanelSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvasPanelSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvasPanelSlot)

类

全文搜索

---


## 函数

- **SetLayout**(FAnchorData &InLayoutData) — Sets the layout data of the slot
- **AnchorDataGetLayout**(Gets the layout data of the slot)
- **SetPosition**(FVector2DInPosition) — Sets the position of the slot
- **Vector2DGetPosition**(Gets the position of the slot)
- **SetSize**(FVector2DInSize) — Sets the size of the slot
- **Vector2DGetSize**(Gets the size of the slot)
- **SetOffsets**(FMarginInOffset) — Sets the offset data of the slot, which could be position and size, or margins depending on the anchor points
- **MarginGetOffsets**(Gets the offset data of the slot, which could be position and size, or margins depending on the anchor points)
- **SetAnchors**(FAnchorsInAnchors) — Sets the anchors on the slot
- **AnchorsGetAnchors**(Gets the anchors on the slot)
- **SetAlignment**(FVector2DInAlignment) — Sets the alignment on the slot
- **Vector2DGetAlignment**(Gets the alignment on the slot)
- **SetAutoSize**(boolInbAutoSize) — Sets if the slot to be auto-sized
- **GetAutoSize**(Gets if the slot to be auto-sized)
- **SetZOrder**(int32InZOrder) — Sets the z-order on the slot
- **GetZOrder**(Gets the z-order on the slot)
- **SetAntiAdaptation**(boolInbAntiAdaptation) — Sets the bAntiAdaptation on the slot
- **GetAntiAdaptation**(Gets the bAntiAdaptation on the slot)
- **SetMinimum**(FVector2DInMinimumAnchors) — Sets the anchors on the slot
- **SetMaximum**(FVector2DInMaximumAnchors) — Sets the anchors on the slot
- **OnAntiAdaptationOffsetsChange**(SetLayout GetLayout SetPosition GetPosition SetSize GetSize SetOffsets GetOffsets SetAnchors GetAnchors SetAlignment GetAlignment SetAutoSize GetAutoSize SetZOrder GetZOrder SetAntiAdaptation GetAntiAdaptation SetMinimum SetMaximum OnAntiAdaptationOffsetsChange)

## 属性

- **anchoring** — information for the slot When AutoSize is true we use the widget's desired size The order priority this widget is rendered in. Higher values are rendered last (and so they will appear to be on top). LayoutData bAutoSize ZOrder bAntiAdaptation

## UCanvasRenderTarget2D

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCanvasRenderTarget2D?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvasRenderTarget2D.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvasRenderTarget2D](https://developer.gp.qq.com/api/#/searchContent/UCanvasRenderTarget2D?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvasRenderTarget2D.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvasRenderTarget2D)

类

全文搜索

CanvasRenderTarget2D is 2D render target which exposes a Canvas interface to allow you to draw elements onto it directly. Use CreateCanvasRenderTarget2D() to create a render target texture by unique name, then bind a function to the OnCanvasRenderTargetUpdate delegate which will be called when the render target is updated. If you need to repaint your canvas every single frame, simply call UpdateResource() on it from a Tick function. Also, remember to hold onto your new canvas render target with a reference so that it doesn't get garbage collected.

---


## 函数

- **UpdateResource**(Updates the the canvas render target texture's resource. This is where the render target will create or)
- **UpdateResourceImmediate**(from the deferred rendering list, to stop the texture from being cleared the next frame. From there it will ask the rendering thread to set up the RHI viewport. The canvas is then set up for rendering and then the user's update delegate is called. The canvas is then flushed and the RHI resolves the)
- **CreateCanvasRenderTarget2D**(UObject* WorldContextObject, TSubclassOf < UCanvasRenderTarget2D > CanvasRenderTarget2DClass, int32 Width, int32Height) — Creates a new canvas render target and initializes it to the specified dimensions return - Returns the instanced render target. params WorldContextObject -The world where this render target will be rendered for params CanvasRenderTarget2DClass -Class of the render target. Unless you want to use a sp
- **ReceiveUpdate**(UCanvas* Canvas, int32 Width, int32Height) — Allows a Blueprint to implement how this Canvas Render Target 2D should be updated. params Canvas - Canvas object that can be used to paint to the render target params Width - Width of the render target. params Height - Height of the render target.
- **GetSize**(int32& Width, int32 &Height) — Gets a specific render target's size from the global map of canvas render targets. params Width -Output variable for the render target's width params Height -Output variable for the render target's height UpdateResource CreateCanvasRenderTarget2D ReceiveUpdate GetSize

## 属性

- **world** — this render target will be used with World bShouldClearRenderTargetOnReceiveUpdate

## 委托

- voidOnCanvasRenderTargetUpdate(UCanvas*Canvas, int32Width, int32Height)
- Called when this Canvas Render Target is asked to update its texture resource.
- OnCanvasRenderTargetUpdate

## UCapsuleComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCapsuleComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCapsuleComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCapsuleComponent](https://developer.gp.qq.com/api/#/searchContent/UCapsuleComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCapsuleComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCapsuleComponent)

类

全文搜索

A capsule generally used for simple collision. Bounds are rendered as lines in the editor.

---


## 函数

- **SetCapsuleSize**(float InRadius, float InHalfHeight, boolbUpdateOverlaps) — Change the capsule size. This is the unscaled size, before component scale is applied. params InRadius -: radius of end-cap hemispheres and center cylinder. params InHalfHeight -: half-height, from capsule center to end of top or bottom hemisphere.
- **SetCapsuleRadius**(float Radius, boolbUpdateOverlaps) — Set the capsule radius. This is the unscaled radius, before component scale is applied. If this capsule collides, updates touching array for owner actor. params Radius -: radius of end-cap hemispheres and center cylinder.
- **SetCapsuleHalfHeight**(float HalfHeight, boolbUpdateOverlaps) — Set the capsule half-height. This is the unscaled half-height, before component scale is applied. If this capsule collides, updates touching array for owner actor. params HalfHeight -: half-height, from capsule center to end of top or bottom hemisphere.
- **GetScaledCapsuleRadius**(Returns the capsule radius scaled by the component scale. return -The capsule radius scaled by the component scale.)
- **GetScaledCapsuleHalfHeight**(Returns the capsule half-height scaled by the component scale. This includes both the cylinder and hemisphere cap. return -The capsule half-height scaled by the component scale.)
- **GetScaledCapsuleHalfHeight_WithoutHemisphere**(Returns the capsule half-height minus radius (to exclude the hemisphere), scaled by the component scale. From the center of the capsule this is the vertical distance along the straight cylindrical portion to the point just before the curve of top hemisphere begins. return -The capsule half-height mi)
- **GetScaledCapsuleSize**(float& OutRadius, float &OutHalfHeight) — Returns the capsule radius and half-height scaled by the component scale. Half-height includes the hemisphere end cap. return -The capsule radius and half-height scaled by the component scale. params OutRadius -Radius of the capsule, scaled by the component scale. params OutHalfHeight -Half-height o
- **GetScaledCapsuleSize_WithoutHemisphere**(float& OutRadius, float &OutHalfHeightWithoutHemisphere) — Returns the capsule radius and half-height scaled by the component scale. Half-height excludes the hemisphere end cap. return -The capsule radius and half-height scaled by the component scale. params OutRadius -Radius of the capsule, ignoring component scaling. params OutHalfHeightWithoutHemisphere
- **GetUnscaledCapsuleRadius**(Returns the capsule radius, ignoring component scaling. return -the capsule radius, ignoring component scaling.)
- **GetUnscaledCapsuleHalfHeight**(Returns the capsule half-height, ignoring component scaling. This includes the hemisphere end cap. return -The capsule radius, ignoring component scaling.)
- **GetUnscaledCapsuleHalfHeight_WithoutHemisphere**(Returns the capsule half-height minus radius (to exclude the hemisphere), ignoring component scaling. This excludes the hemisphere end cap. From the center of the capsule this is the vertical distance along the straight cylindrical portion to the point just before the curve of top hemisphere begins.)
- **GetUnscaledCapsuleSize**(float& OutRadius, float &OutHalfHeight) — Returns the capsule radius and half-height scaled by the component scale. Half-height includes the hemisphere end cap. return -The capsule radius and half-height scaled by the component scale. params OutRadius -Radius of the capsule, scaled by the component scale. params OutHalfHeight -Half-height o
- **GetUnscaledCapsuleSize_WithoutHemisphere**(float& OutRadius, float &OutHalfHeightWithoutHemisphere) — Returns the capsule radius and half-height, ignoring component scaling. Half-height excludes the hemisphere end cap. return -The capsule radius and half-height (excluding hemisphere end cap), ignoring component scaling. params OutRadius -Radius of the capsule, ignoring component scaling. params OutH
- **GetShapeScale**(Get the scale used by this shape. This is a uniform scale that is the minimum of any non-uniform scaling. return -the scale used by this shape. SetCapsuleSize SetCapsuleRadius SetCapsuleHalfHeight GetScaledCapsuleRadius GetScaledCapsuleHalfHeight GetScaledCapsuleHalfHeight_WithoutHemisphere GetScale)

## 属性

- **from** — center of capsule to the end of top or bottom hemisphere. This cannot be less than CapsuleRadius. Radius of cap hemispheres and center cylinder. This cannot be more than CapsuleHalfHeight. CapsuleHalfHeight CapsuleRadius UseDelayPhysicUpdated bTransformDataDirty CapsuleHeight_DEPRECATED

## UChannel

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UChannel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUChannel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UChannel](https://developer.gp.qq.com/api/#/searchContent/UChannel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUChannel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UChannel)

类

全文搜索

Base class of communication channels.

---

## UCharacterMovementComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCharacterMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCharacterMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCharacterMovementComponent](https://developer.gp.qq.com/api/#/searchContent/UCharacterMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCharacterMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCharacterMovementComponent)

类

全文搜索

CharacterMovementComponent handles movement logic for the associated Character owner. It supports various movement modes including: walking, falling, swimming, flying, custom. Movement is affected primarily by current Velocity and Acceleration. Acceleration is updated each frame based on the input vector accumulated thus far (see UPawnMovementComponent::GetPendingInputVector()). Networking is fully implemented, with server-client correction and prediction included. @see ACharacter, UPawnMovementComponent

---


## 函数

- **StringGetToString**()
- **SetAvoidanceGroup**(int32GroupFlags)
- **SetAvoidanceGroupMask**(FNavAvoidanceMask &GroupMask)
- **SetGroupsToAvoid**(int32GroupFlags)
- **SetGroupsToAvoidMask**(FNavAvoidanceMask &GroupMask)
- **SetGroupsToIgnore**(int32GroupFlags)
- **SetGroupsToIgnoreMask**(FNavAvoidanceMask &GroupMask)
- **SetAvoidanceEnabled**(boolbEnable) — Change avoidance state and registers in RVO manager if needed
- **GetCharacterOwner**(Get the Character that owns UpdatedComponent.)
- **SetMovementMode**(EMovementMode NewMovementMode, uint8NewCustomMode) — Change movement mode. params NewMovementMode -The new movement mode params NewCustomMode -The new custom sub-mode, only applicable if NewMovementMode is Custom.
- **SetGroundMovementMode**(EMovementModeNewGroundMovementMode) — Set movement mode to use when returning to walking movement (either MOVE_Walking or MOVE_NavWalking). If movement mode is currently one of Walking or NavWalking, this will also change the current movement mode (via SetMovementMode()) if the new mode is not the current ground mode. params NewGroundMo
- **MovementModeGetGroundMovementMode**(Get current GroundMovementMode value. return -current GroundMovementMode)
- **PackNetworkMovementMode**()
- **UnpackNetworkMovementMode**(uint8 ReceivedMode, TEnumAsByte < EMovementMode >& OutMode, uint8& OutCustomMode, TEnumAsByte < EMovementMode > &OutGroundMode)
- **ApplyNetworkMovementMode**(uint8ReceivedMode)
- **CheckBaseIsMoveable**(USceneComponent *MovementBase)
- **IsWalking**(return -true if the character is in the 'Walking' movement mode.)
- **DisableMovement**(Make movement impossible (sets movement mode to MOVE_None).)
- **HasValidData**(Return true if we have a valid CharacterOwner and UpdatedComponent.)
- **GetMovementBase**(Return PrimitiveComponent we are based on (standing and walking on).)
- **MaybeUpdateBasedMovement**(floatDeltaSeconds) — Update or defer updating of position based on Base movement
- **MaybeSaveBaseLocation**()
- **SaveBaseLocation**()
- **VectorGetImpartedMovementBaseVelocity**(If we have a movement base, get the velocity that should be imparted by that base, usually when jumping off of it. Only applies the components of the velocity enabled by bImpartBaseVelocityX, bImpartBaseVelocityY, bImpartBaseVelocityZ.)
- **CalcVelocity**(float DeltaTime, float Friction, bool bFluid, floatBrakingDeceleration) — Updates Velocity and Acceleration based on the current state, applying the effects of friction and acceleration or deceleration. Does not apply gravity. This is used internally during movement updates. Normally you don't need to call this from outside code, but you might want to use it for custom mo
- **GetMaxJumpHeight**(Compute the max jump height based on the JumpZVelocity velocity and gravity. This does not take into account the CharacterOwner's MaxJumpHoldTime.)
- **GetMaxJumpHeightWithJumpTime**(Compute the max jump height based on the JumpZVelocity velocity and gravity. This does take into account the CharacterOwner's MaxJumpHoldTime.)
- **GetMinAnalogSpeed**(return -Maximum acceleration for the current state.)
- **K2_GetModifiedMaxAcceleration**(return -Maximum acceleration for the current state, based on MaxAcceleration and any additional modifiers.)
- **GetMaxAcceleration**(return -Maximum acceleration for the current state.)
- **GetMaxBrakingDeceleration**(return -Maximum deceleration for the current state when braking (ie when there is no acceleration).)
- **VectorGetCurrentAcceleration**(return -Current acceleration, computed from input vector each update.)
- **GetAnalogInputModifier**(return -Modifier [0..1] based on the magnitude of the last input vector, which is used to modify the acceleration and max speed during movement.)
- **CanStepUp**(FHitResult &Hit) — return -true if we can step up on the actor in the given FHitResult.
- **SetBase**(UPrimitiveComponent* NewBase, FName BoneName, boolbNotifyActor) — Update the base of the character, which is the PrimitiveComponent we are standing on.
- **SetBaseFromFloor**(FFindFloorResult &FloorResult)
- **SetBase**()
- **ClearAccumulatedForces**()
- **AddImpulse**()
- **HasAccumulatedForcesOrLaunch**(Add by zoranouyang)
- **AddImpulse**()
- **AddImpulse**(FVector Impulse, boolbVelocityChange) — Add impulse to character. Impulses are accumulated each tick and applied together so multiple calls to this function will accumulate. An impulse is an instantaneous force, usually applied once. If you want to continually apply
- **AddForce**(Note that changing the momentum of characters like this can change the movement mode. Impulse to apply. Whether or not the impulse is relative to mass.)
- **AddForce**(FVectorForce) — Add force to character. Forces are accumulated each tick and applied together so multiple calls to this function will accumulate. Forces are scaled depending on timestep, so they can be applied each frame. If you want an instantaneous force, use AddImpulse. Adding a force always takes the actor's ma
- **GetPerchRadiusThreshold**(return -The distance from the edge of the capsule within which we don't allow the character to perch on the edge of a surface.)
- **GetValidPerchRadius**(Returns the radius within which we can stand on the edge of a surface without falling (if this is a walkable surface).)
- **GetPerchRadiusThreshold**()
- **IsWalkable**(FHitResult &Hit) — Return true if the hit result should be considered a walkable surface for the character.
- **K2_GetWalkableFloorAngle**(Get the max angle in degrees of a walkable surface for the character.)
- **SetWalkableFloorAngle**(floatInWalkableFloorAngle) — Set the max angle in degrees of a walkable surface for the character. Also computes WalkableFloorZ.
- **K2_GetWalkableFloorZ**(Get the Z component of the normal of the steepest walkable surface for the character. Any lower than this and it is not walkable.)
- **SetWalkableFloorZ**(floatInWalkableFloorZ) — Set the Z component of the normal of the steepest walkable surface for the character. Also computes WalkableFloorAngle.
- **K2_FindFloor**(FVector CapsuleLocation, FFindFloorResult &FloorResult)
- **ShouldComputePerchResult**(No floor will be found if collision is disabled on the capsule! Location where the capsule sweep should originate Result of the floor check)
- **K2_ComputeFloorDist**(FVector CapsuleLocation, float LineDistance, float SweepDistance, float SweepRadius, FFindFloorResult &FloorResult) — Compute distance to the floor from bottom sphere of capsule and store the result in FloorResult. This distance is the swept distance of the capsule to the first point impacted by the lower hemisphere, or distance from the bottom of the capsule in the case of a line trace. This function does not care
- **CapsuleTouched**(UPrimitiveComponent* OverlappedComp, AActor* Other, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, FHitResult &SweepResult) — Called when the collision capsule touches another primitive component
- **ResetPredictionData_Client**()
- **ResetPredictionData_Server**()
- **GetSmoothNetUpdateRotationTimeTemporaty**()
- **SetSmoothNetUpdateRotationTimeTemporaty**(floatInSmoothNetUpdateRotationTime) — Add by zoranouyang 临时的SmoothNetUpdateRotationTime，用于部分情况下需要一段时间内修改一下模拟端Rotation插值速度 主要还是以NetworkSimulatedSmoothRotationTime配置为主 注意：本值要记得还原到-1，表示不生效 params InSmoothNetUpdateRotationTime -模拟端的Rotation插值时间，默认值-1表示使用NetworkSimulatedSmoothRotationTime配置的值
- **ServerMove**(float TimeStamp, FVector_NetQuantize10 InAccel, FVector_NetQuantize100 ClientLoc, uint8 CompressedMoveFlags, uint8 ClientRoll, uint32 View, UPrimitiveComponent* ClientMovementBase, FName ClientBaseBo) — Replicated function sent by client to server - contains client movement and view info.
- **ServerMoveDual**(float TimeStamp0, FVector_NetQuantize10 InAccel0, uint8 PendingFlags, uint32 View0, float TimeStamp, FVector_NetQuantize10 InAccel, FVector_NetQuantize100 ClientLoc, uint8 NewFlags, uint8 ClientRoll,) — Replicated function sent by client to server - contains client movement and view info for two moves.
- **ServerMoveDualHybridRootMotion**(float TimeStamp0, FVector_NetQuantize10 InAccel0, uint8 PendingFlags, uint32 View0, float TimeStamp, FVector_NetQuantize10 InAccel, FVector_NetQuantize100 ClientLoc, uint8 NewFlags, uint8 ClientRoll,) — Replicated function sent by client to server - contains client movement and view info for two moves. First move is non root motion, second is root motion.
- **ServerMoveOld**(float OldTimeStamp, FVector_NetQuantize10 OldAccel, uint8OldMoveFlags) — Resending an (important) old move. Process it if not already processed.
- **ClientAckGoodMove**(floatTimeStamp)
- **ServerMove**()
- **OnGoodMoveAck**(floatTimeStamp)
- **ClientAdjustPosition**(float TimeStamp, FVector NewLoc, FVector NewVel, UPrimitiveComponent* NewBase, FName NewBaseBoneName, bool bHasBase, bool bBaseRelativePosition, uint8ServerMovementMode) — Replicate position correction to client, associated with a timestamped servermove. Client will replay subsequent moves after applying adjustment.
- **ClientVeryShortAdjustPosition**(float TimeStamp, FVector NewLoc, UPrimitiveComponent* NewBase, FName NewBaseBoneName, bool bHasBase, bool bBaseRelativePosition, uint8ServerMovementMode) — Bandwidth saving version, when velocity is zeroed
- **ClientAdjustRootMotionPosition**(float TimeStamp, float ServerMontageTrackPosition, FVector ServerLoc, FVector_NetQuantizeNormal ServerRotation, float ServerVelZ, UPrimitiveComponent* ServerBase, FName ServerBoneName, bool bHasBase,) — Replicate position correction to client when using root motion for movement. (animation root motion specific)
- **ClientAdjustRootMotionSourcePosition**(float TimeStamp, FRootMotionSourceGroup ServerRootMotion, bool bHasAnimRootMotion, float ServerMontageTrackPosition, FVector ServerLoc, FVector_NetQuantizeNormal ServerRotation, float ServerVelZ, UPri) — Replicate root motion source correction to client when using root motion for movement. GetToString SetAvoidanceGroup SetAvoidanceGroupMask SetGroupsToAvoid SetGroupsToAvoidMask SetGroupsToIgnore SetGroupsToIgnoreMask SetAvoidanceEnabled GetCharacterOwner SetMovementMode SetGroundMovementMode GetGrou

## 属性

- **movement** — component belongs to Apply gravity while the character is actively jumping (e.g. holding the jump key). Helps remove frame-rate dependent jump height, but may alter base jump height. Custom gravity scale. Gravity is multiplied by this amount for the character. Maximum height character can step up In

## UCheatManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCheatManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCheatManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCheatManager](https://developer.gp.qq.com/api/#/searchContent/UCheatManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCheatManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCheatManager)

类

全文搜索

---


## 函数

- **FreezeFrame**(floatDelay) — Pause the game for Delay seconds.
- **Teleport**(Teleport to surface player is looking at.)
- **ChangeSize**(floatF) — Scale the player's size to be F default size.
- **ChangeTickGroup**(int32 NewTickGroup, int32Num) — Change the tickgroup of aipawns near character
- **Fly**(Pawn can fly.)
- **Walk**(Return to walking movement mode from Fly or Ghost cheat.)
- **Ghost**(Pawn no longer collides with the world, and can fly)
- **God**(Invulnerability cheat.)
- **Slomo**(floatNewTimeDilation) — Modify time dilation to change apparent speed of passage of time. e.g. "Slomo 0.1" makes everything move very slowly, while "Slomo 10" makes everything move very fast.
- **DamageTarget**(floatDamageAmount) — Damage the actor you're looking at (sourced from the player).
- **DestroyTarget**(Destroy the actor you're looking at.)
- **DestroyAll**(TSubclassOf < AActor >aClass) — Destroy all actors of class aClass
- **DestroyAllPawnsExceptTarget**(Destroy all pawns except for the (pawn) target. If no (pawn) target is found we don't destroy anything.)
- **DestroyPawns**(TSubclassOf < APawn >aClass) — Destroys (by calling destroy directly) all non-player pawns of class aClass in the level
- **Summon**(FString &ClassName) — Load Classname and spawn an actor of that class
- **PlayersOnly**(Freeze everything in the level except for players.)
- **ViewSelf**(Make controlled pawn the viewtarget again.)
- **ViewPlayer**(FString &S) — View from the point of view of player with PlayerName S.
- **ViewActor**(FNameActorName) — View from the point of view of AActor with Name ActorName.
- **ViewClass**(TSubclassOf < AActor >DesiredClass) — View from the point of view of an AActor of class DesiredClass. Each subsequent ViewClass cycles through the list of actors of that class.
- **StreamLevelIn**(FNamePackageName) — Stream in the given level.
- **OnlyLoadLevel**(FNamePackageName) — Load the given level.
- **StreamLevelOut**(FNamePackageName) — Stream out the given level.
- **ToggleDebugCamera**(Toggle between debug cameraplayer camera without locking gameplay and with locking local player controller input.)
- **ToggleAILogging**(toggles AI logging)
- **ServerToggleAILogging**()
- **DebugCapsuleSweep**(Toggle capsule trace debugging. Will trace a capsule from current view point and show where it hits the world)
- **DebugCapsuleSweepSize**(float HalfHeight, floatRadius) — Change Trace capsule size
- **DebugCapsuleSweepChannel**(ECollisionChannelChannel) — Change Trace Channel
- **DebugCapsuleSweepComplex**(boolbTraceComplex) — Change Trace Complex setting
- **DebugCapsuleSweepCapture**(Capture current trace and add to persistent list)
- **DebugCapsuleSweepPawn**(Capture current local PC's pawn's location and add to persistent list)
- **DebugCapsuleSweepClear**(Clear persistent list for trace capture)
- **TestCollisionDistance**(Test all volumes in the world to the player controller's view location)
- **RebuildNavigation**(Builds the navigation mesh (or rebuilds it).)
- **SetNavDrawDistance**(floatDrawDistance) — Sets navigation drawing distance. Relevant only in non-editor modes.
- **DumpOnlineSessionState**(Dump online session information)
- **DumpPartyState**(Dump known party information)
- **DumpChatState**(Dump known chat information)
- **DumpVoiceMutingState**(Dump current state of voice chat)
- **BugItGo**(float X, float Y, float Z, float Pitch, float Yaw, floatRoll) — This will move the player and set their rotation to the passed in values. We have this version of the BugIt family as it is easier to type in just raw numbers in the console.
- **BugIt**(FString &ScreenShotDescription) — This function is used to print out the BugIt location. It prints out copy and paste versions for both IMing someone to type in and also a gameinfo ?options version so that you can append it to your launching url and be taken to the correct place. Additionally, it will take a screen shot so reporting
- **BugItStringCreator**(FVector ViewLocation, FRotator ViewRotation, FString& GoString, FString &LocString) — This will create a BugItGo string for us. Nice for calling form c++ where you just want the string and no Screenshots
- **FlushLog**(This will force a flush of the output log to file)
- **LogLoc**(Logs the current location in bugit format without taking screenshot and further routing.)
- **SetWorldOrigin**(Translate world origin to this player position)
- **SetMouseSensitivityToDefault**(Exec function to return the mouse sensitivity to its default value)
- **InvertMouse**(Backwards compatibility exec function for people used to it instead of using InvertAxisKey)
- **CheatScript**(FStringScriptName) — Executes commands listed in CheatScript.ScriptName ini section of DefaultGame.ini
- **ReceiveInitCheatManager**(BP implementable event for when CheatManager is created to allow any needed initialization.)
- **ReceiveEndPlay**(This is the End Play event for the CheatManager)
- **EnableDebugCamera**(Switch controller to debug camera without locking gameplay and with locking local player controller input)
- **DisableDebugCamera**(Switch controller from debug camera back to normal controller FreezeFrame Teleport ChangeSize ChangeTickGroup Fly Walk Ghost God Slomo DamageTarget DestroyTarget DestroyAll DestroyAllPawnsExceptTarget DestroyPawns Summon PlayersOnly ViewSelf ViewPlayer ViewActor ViewClass StreamLevelIn OnlyLoadLevel)

## 属性

- **camera** — - used to have independent camera without stopping gameplay Debug camera - used to have independent camera without stopping gameplay DebugCameraControllerRef DebugCameraControllerClass

## UCheckBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCheckBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCheckBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCheckBox](https://developer.gp.qq.com/api/#/searchContent/UCheckBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCheckBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCheckBox)

类

全文搜索

The checkbox widget allows you to display a toggled state of 'unchecked', 'checked' and 'indeterminable. You can use the checkbox for a classic checkbox, or as a toggle button, or as radio buttons. Single Child Toggle

---


## 函数

- **IsPressed**(Returns true if this button is currently pressed)
- **IsChecked**(Returns true if the checkbox is currently checked)
- **CheckBoxStateGetCheckedState**(return -the full current checked state.)
- **SetIsChecked**(boolInIsChecked) — Sets the checked state.
- **SetCheckedState**(ECheckBoxStateInCheckedState) — Sets the checked state. IsPressed IsChecked GetCheckedState SetIsChecked SetCheckedState

## 属性

- **the** — check box is currently in a checked state A bindable delegate for the IsChecked. The checkbox bar style USlateWidgetStyleAsset *Style_DEPRECATED Style of the check box USlateBrushAsset *UncheckedImage_DEPRECATED Image to use when the checkbox is unchecked USlateBrushAsset *UncheckedHoveredImage_DEPR

## 委托

- voidOnCheckStateChanged(boolbIsChecked)
- Called when the checked state has changed
- OnCheckStateChanged

## UCheckBoxStyleAsset

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCheckBoxStyleAsset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCheckBoxStyleAsset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCheckBoxStyleAsset](https://developer.gp.qq.com/api/#/searchContent/UCheckBoxStyleAsset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCheckBoxStyleAsset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCheckBoxStyleAsset)

类

全文搜索

An asset describing a CheckBox's appearance. Just a wrapper for the struct with real data in it.

---


## 属性

- **actual** — data describing the Check Box's appearance. CheckBoxStyle

## UChildActorComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UChildActorComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUChildActorComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UChildActorComponent](https://developer.gp.qq.com/api/#/searchContent/UChildActorComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUChildActorComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UChildActorComponent)

类

全文搜索

A component that spawns an Actor when registered, and destroys it when unregistered.

---


## 函数

- **SetChildActorClass**(TSubclassOf < AActor >InClass)
- **OnRep_ChildActor**()
- **CreateChildActor**(Create the child actor)
- **DestroyChildActor**(boolbNeedInstanceData) — Kill any currently present child actor SetChildActorClass OnRep_ChildActor CreateChildActor DestroyChildActor

## 属性

- **class** — of Actor to spawn The actor that we spawned and own Property to point to the template child actor for details panel purposes ChildActorClass ChildActor bAllowTemplateModification ChildActorTemplate IsDestoryChildActor bKeepChildActorComponet bEnableReplication bDumpChildActorLocation bRedirectComps

## 委托

- voidOnChildActorRep()
- OnChildActorRep

## UChunkLabel

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UChunkLabel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUChunkLabel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UChunkLabel](https://developer.gp.qq.com/api/#/searchContent/UChunkLabel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUChunkLabel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UChunkLabel)

类

全文搜索

---


## 属性

- **rules** — for this specific asset, if set it will override the type rules True to Label everything in this directory and sub directories Set to true if the label asset itself should be cooked and available at runtime. This does not affect the assets that are labeled, they are set with cook rule Rules LogicChu

## UCineCameraComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCineCameraComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCineCameraComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCineCameraComponent](https://developer.gp.qq.com/api/#/searchContent/UCineCameraComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCineCameraComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCineCameraComponent)

类

全文搜索

A specialized version of a camera component, geared toward cinematic usage.

---


## 函数

- **GetHorizontalFieldOfView**(Returns the horizonal FOV of the camera with current settings.)
- **GetVerticalFieldOfView**(Returns the vertical FOV of the camera with current settings.)
- **StringGetFilmbackPresetName**(Returns the filmback name of the camera with the current settings.)
- **SetFilmbackPresetByName**(FString &InPresetName) — Set the current preset settings by preset name.
- **StringGetLensPresetName**(Returns the lens name of the camera with the current settings.)
- **SetLensPresetByName**(FString &InPresetName) — Set the current lens settings by preset name. GetHorizontalFieldOfView GetVerticalFieldOfView GetFilmbackPresetName SetFilmbackPresetByName GetLensPresetName SetLensPresetByName

## 属性

- **the** — filmback of the camera. Controls the camera's lens. Controls the camera's focus. Current focal length of the camera (i.e. controls FoV, zoom) Current aperture, in terms of f-stop (e.g. 2.8 for f2.8) Read-only. Control this value via FocusSettings. List of available filmback presets List of available

## UCircularThrobber

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCircularThrobber?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCircularThrobber.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCircularThrobber](https://developer.gp.qq.com/api/#/searchContent/UCircularThrobber?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCircularThrobber.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCircularThrobber)

类

全文搜索

A throbber widget that orients images in a spinning circle. No Children Spinner Progress

---


## 函数

- **SetNumberOfPieces**(int32InNumberOfPieces) — Sets how many pieces there are.
- **SetPeriod**(floatInPeriod) — Sets the amount of time for a full circle (in seconds).
- **SetRadius**(floatInRadius) — Sets the radius of the circle. SetNumberOfPieces SetPeriod SetRadius

## 属性

- **many** — pieces there are The amount of time for a full circle (in seconds) The radius of the circle. If the throbber is a child of Canvas Panel, the 'Size to Content' option must be enabled in order to set Radius. USlateBrushAsset *PieceImage_DEPRECATED Image to use for each segment of the throbber NumberOf

## UClothingAsset

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UClothingAsset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUClothingAsset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UClothingAsset](https://developer.gp.qq.com/api/#/searchContent/UClothingAsset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUClothingAsset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UClothingAsset)

类

全文搜索

---


## 属性

- **data** — applied by the importer depending on where the asset was imported from PhysicsAsset ClothConfig LodData LodMap UsedBoneNames UsedBoneIndices ReferenceBoneIndex CustomData

## UClothingAssetBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UClothingAssetBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUClothingAssetBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UClothingAssetBase](https://developer.gp.qq.com/api/#/searchContent/UClothingAssetBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUClothingAssetBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UClothingAssetBase)

类

全文搜索

---


## 属性

- **to** — identify this asset. Will be embedded into chunks that are created using this asset ImportedFilePath AssetGuid

## UCloudStorageBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCloudStorageBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCloudStorageBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCloudStorageBase](https://developer.gp.qq.com/api/#/searchContent/UCloudStorageBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCloudStorageBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCloudStorageBase)

类

全文搜索

Base class for the various platform interface classes.

---


## 属性

- **using** — local storage (aka "cloud emulation"), this maintains a list of the file paths. If true, delegate callbacks should be skipped. LocalCloudFiles bSuppressDelegateCalls

## UCollisionProfile

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCollisionProfile?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCollisionProfile.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCollisionProfile](https://developer.gp.qq.com/api/#/searchContent/UCollisionProfile?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCollisionProfile.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCollisionProfile)

类

全文搜索

Set up and modify collision settings.

---

## UColorGradient

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UColorGradient?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUColorGradient.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UColorGradient](https://developer.gp.qq.com/api/#/searchContent/UColorGradient?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUColorGradient.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UColorGradient)

类

全文搜索

---


## 函数

- **GetNum**()
- **GetCellByIndex**(int Idx, float& OutPercent, FLinearColor &OutColorRGB)
- **FindIndexByPercent**(floatInPercent)
- **SetDatas**(TArray < FColorGradientCellInfo > &datas) — GetNum GetCellByIndex FindIndexByPercent SetDatas

## 委托

- TArray<FColorGradientCellInfo>ColorRGBsDelegate()
- ColorRGBsDelegate

## UColorGradientSlider

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UColorGradientSlider?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUColorGradientSlider.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UColorGradientSlider](https://developer.gp.qq.com/api/#/searchContent/UColorGradientSlider?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUColorGradientSlider.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UColorGradientSlider)

类

全文搜索

---


## 函数

- **GetCurSelectIndex**()
- **SetCurSelectIndex**(int32Idx)
- **SetDatas**(TArray < FColorGradientCellInfo > &datas) — GetCurSelectIndex SetCurSelectIndex SetDatas

## 委托

- voidOnPercentChanged(int32Idx, floatInPercent)
- voidOnChildSelected(int32Idx)
- OnPercentChanged
- OnChildSelected

## UColorPicker

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UColorPicker?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUColorPicker.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UColorPicker](https://developer.gp.qq.com/api/#/searchContent/UColorPicker?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUColorPicker.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UColorPicker)

类

全文搜索

---


## 函数

- **LinearColorGetColor**()
- **SetColor**(FLinearColorInColorHSV)
- **StringHandleHexSRGBBoxText**()
- **StringHandleHexLinearString**(GetColor SetColor HandleHexSRGBBoxText HandleHexLinearString)

## 委托

- voidOnValueChanged(FLinearColorInValue)
- voidOnMouseCaptureBegin()
- voidOnMouseCaptureEnd()
- OnValueChanged
- OnMouseCaptureBegin
- OnMouseCaptureEnd

## UColorSlider

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UColorSlider?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUColorSlider.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UColorSlider](https://developer.gp.qq.com/api/#/searchContent/UColorSlider?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUColorSlider.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UColorSlider)

类

全文搜索

---


## 函数

- **LinearColorGetColor**()
- **SetColor**(FLinearColorInColorHSV)
- **SetSliderHandleColor**(FLinearColorInSliderHandleColor)
- **ColorSliderChannelsGetColorSliderChannels**()
- **SetColorSliderChannels**(EColorSliderChannelsInChannel)
- **SetUseHandleColorOrCurrentColor**(boolbUse) — GetColor SetColor SetSliderHandleColor GetColorSliderChannels SetColorSliderChannels SetUseHandleColorOrCurrentColor

## 委托

- voidOnInteractiveChangeBegin()
- voidOnInteractiveChangeEnd()
- voidOnValueChanged(FLinearColorInValue)
- OnInteractiveChangeBegin
- OnInteractiveChangeEnd
- OnValueChanged

## UComboBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UComboBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUComboBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UComboBox](https://developer.gp.qq.com/api/#/searchContent/UComboBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUComboBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UComboBox)

类

全文搜索

The combobox allows you to display a list of options to the user in a dropdown menu for them to select one.

---


## 属性

- **list** — of items to be displayed on the combobox. Called when the widget is needed for the item. Items OnGenerateWidgetEvent bIsFocusable

## UComboBoxKey

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UComboBoxKey?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUComboBoxKey.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UComboBoxKey](https://developer.gp.qq.com/api/#/searchContent/UComboBoxKey?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUComboBoxKey.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UComboBoxKey)

类

全文搜索

The combobox allows you to display a list of options to the user in a dropdown menu for them to select one. Use OnGenerateConentWidgetEvent to return a custom built widget.

---


## 函数

- **AddOption**(FNameOption) — Add an element to the option list.
- **RemoveOption**(FNameOption) — Remove an element to the option list.
- **ClearOptions**(Remove all the elements of the option list.)
- **ClearSelection**(Clear the current selection.)
- **SetSelectedOption**(FNameOption) — Set the current selected option.
- **FNameGetSelectedOption**(Get the current selected option)
- **IsOpen**(Is the combobox menu opened.)
- **SetContentPadding**(FMarginInPadding) — Set the padding for content.
- **FMarginGetContentPadding**(Get the padding for content.)
- **IsEnableGamepadNavigationMode**(Is the combobox navigated by gamepad.)
- **SetEnableGamepadNavigationMode**(boolInEnableGamepadNavigationMode) — Set whether the combobox is navigated by gamepad.
- **IsHasDownArrow**(Is the combobox arrow showing.)
- **SetHasDownArrow**(boolInHasDownArrow) — Set whether the combobox arrow is showing.
- **GetMaxListHeight**(Get the maximum height of the combobox list.)
- **SetMaxListHeight**(floatInMaxHeight) — Set the maximum height of the combobox list.
- **GetWidgetStyle**(Get the style of the combobox.)
- **SetWidgetStyle**(FComboBoxStyle &InWidgetStyle) — Set the style of the combobox.
- **GetItemStyle**(Get the style of the items.)
- **SetItemStyle**(FTableRowStyle &InItemStyle) — Set the style of the items.
- **GetScrollBarStyle**(Get the style of the scrollbar.)
- **IsFocusable**(Is the combobox focusable.)
- **FSlateColorGetForegroundColor**(Get the foreground color of the button. AddOption RemoveOption ClearOptions ClearSelection SetSelectedOption GetSelectedOption IsOpen SetContentPadding GetContentPadding IsEnableGamepadNavigationMode SetEnableGamepadNavigationMode IsHasDownArrow SetHasDownArrow GetMaxListHeight SetMaxListHeight GetW)

## 属性

- **combobox** — style. The item row style. The scroll bar style. The foreground color to pass through the hierarchy. The max height of the combobox list that opens When false, the down arrow is not generated and it is up to the API consumer to make their own visual hint that this is a drop down. When false, directi

## 委托

- UWidget*OnGenerateContentWidget(FNameItem)
- Called when the widget is needed for the content.
- UWidget*OnGenerateItemWidget(FNameItem)
- Called when the widget is needed for the item.
- voidOnSelectionChanged(FNameSelectedItem, ESelectInfo::TypeSelectionType)
- Called when a new item is selected in the combobox.
- voidOnOpening()
- Called when the combobox is opening
- OnGenerateContentWidget
- OnGenerateItemWidget
- OnSelectionChanged
- OnOpening

## UComboBoxString

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UComboBoxString?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUComboBoxString.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UComboBoxString](https://developer.gp.qq.com/api/#/searchContent/UComboBoxString?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUComboBoxString.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UComboBoxString)

类

全文搜索

The combobox allows you to display a list of options to the user in a dropdown menu for them to select one.

---


## 函数

- **AddOption**(FString &Option)
- **RemoveOption**(FString &Option)
- **FindOptionIndex**(FString &Option)
- **StringGetOptionAtIndex**(int32Index)
- **ClearOptions**()
- **ClearSelection**()
- **RefreshOptions**(Refreshes the list of options. If you added new ones, and want to update the list even if it's currently being displayed use this.)
- **SetSelectedOption**(FStringOption)
- **StringGetSelectedOption**()
- **GetOptionCount**(return -The number of options AddOption RemoveOption FindOptionIndex GetOptionAtIndex ClearOptions ClearSelection RefreshOptions SetSelectedOption GetSelectedOption GetOptionCount)

## 属性

- **default** — list of items to be displayed on the combobox. The item in the combobox to select by default The style. The item row style. The scroll bar style. The max height of the combobox list that opens When false, the down arrow is not generated and it is up to the API consumer to make their own visual hint

## 委托

- voidOnSelectionChanged(FStringSelectedItem, ESelectInfo::TypeSelectionType)
- Called when a new item is selected in the combobox.
- voidOnOpening()
- Called when the combobox is opening
- voidOnClosing()
- Called when the combobox is closing
- OnSelectionChanged
- OnOpening
- OnClosing

## UCommandlet

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCommandlet?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCommandlet.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCommandlet](https://developer.gp.qq.com/api/#/searchContent/UCommandlet?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCommandlet.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCommandlet)

类

全文搜索

---


## 属性

- **of** — the commandlet's purpose Usage template to show for "ucc help" Hyperlink for more info The name of the parameter the commandlet takes The description of the parameter Whether to load objects required in server, client, and editor context. If IsEditor is set to false, then a UGameEngine (or whatever

## UCommonBattleItemHandleBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCommonBattleItemHandleBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCommonBattleItemHandleBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCommonBattleItemHandleBase](https://developer.gp.qq.com/api/#/searchContent/UCommonBattleItemHandleBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCommonBattleItemHandleBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCommonBattleItemHandleBase)

类

全文搜索

通用扩展 ItemHandle 基类

事件

boolCanCreateItemHandleV2()

能否创建物品 Handle

可重载并自定义

DS 被调用

return

-是否允许创建物品 Handle

voidOnCreateItemHandleV2()

当创建物品 Handle 后回调

可重载并自定义

DS 被调用

boolCanDestoryItemHandleV2()

能否销毁物品 Handle

可重载并自定义

DS 被调用

return

-是否允许销毁物品 Handle

voidOnDestoryItemHandleV2()

销毁物品 Handle 前回调

可重载并自定义

DS 被调用

boolCanUpdateItemCountV2(int32 NewItemCount, int32OldItemCount)

能否更新此物品实例的数量

可重载并自定义

DS 被调用

return

-是否允许物品数量更新

voidOnUpdateItemCountV2(int32 NewItemCount, int32OldItemCount)

物品数量更新后回调

可重载并自定义

DS 被调用

事件

CanCreateItemHandleV2

OnCreateItemHandleV2

CanDestoryItemHandleV2

OnDestoryItemHandleV2

CanUpdateItemCountV2

OnUpdateItemCountV2

---

## UCommonDeviceProfileMatchingRules

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCommonDeviceProfileMatchingRules?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCommonDeviceProfileMatchingRules.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCommonDeviceProfileMatchingRules](https://developer.gp.qq.com/api/#/searchContent/UCommonDeviceProfileMatchingRules?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCommonDeviceProfileMatchingRules.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCommonDeviceProfileMatchingRules)

类

全文搜索

---


## 属性

- **of** — rules to match Array of rules to match SwitcerMatchProfile ChangeQualityMatchProfile

## UCompositionGraphCaptureSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCompositionGraphCaptureSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCompositionGraphCaptureSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCompositionGraphCaptureSettings](https://developer.gp.qq.com/api/#/searchContent/UCompositionGraphCaptureSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCompositionGraphCaptureSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCompositionGraphCaptureSettings)

类

全文搜索

---


## 属性

- **list** — of render passes to include in the capture. Leave empty to export all available passes. Whether to capture the frames as HDR textures (.exr format) Compression Quality for HDR Frames (0 for no compression, 1 for default compression which can be slow) The color gamut to use when storing HDR captured

## UConfigOverriderFor120fps

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UConfigOverriderFor120fps?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUConfigOverriderFor120fps.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UConfigOverriderFor120fps](https://developer.gp.qq.com/api/#/searchContent/UConfigOverriderFor120fps?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUConfigOverriderFor120fps.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UConfigOverriderFor120fps)

类

全文搜索

---


## 函数

- **Enable120fpsConfigs**(boolbEnable)
- **EnableEnergySavingModeConfigs**(boolbEnergySaving)
- **RecoverConfigs**()
- **Recover120fpsConfigs**()
- **RecoverEnergySavingModeConfigs**()
- **EnableTextureFilterOverrider**(boolbEnable) — Enable120fpsConfigs EnableEnergySavingModeConfigs RecoverConfigs Recover120fpsConfigs RecoverEnergySavingModeConfigs EnableTextureFilterOverrider

## UConsole

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UConsole?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUConsole.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UConsole](https://developer.gp.qq.com/api/#/searchContent/UConsole?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUConsole.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UConsole)

类

全文搜索

A basic command line console that accepts most commands.

---


## 属性

- **player** — which the next console command should be executed in the context of. If nullptr, execute in the viewport. UTexture2D *DefaultTexture_Black UTexture2D *DefaultTexture_White Holds the history buffer, order is old to new ConsoleTargetPlayer DefaultTexture_Black DefaultTexture_White HistoryBuffer

## UConsoleSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UConsoleSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUConsoleSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UConsoleSettings](https://developer.gp.qq.com/api/#/searchContent/UConsoleSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUConsoleSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UConsoleSettings)

类

全文搜索

Implements the settings for the UConsole class.

---


## 属性

- **Console** — stuff Manual list of auto-complete commands and info specified in BaseInput.ini List of relative paths (e.g. ContentMaps) to search for map names for auto-complete usage. Specified in BaseInput.ini. Amount of transparency of the console background. Whether we legacy bottom-to-top ordering or regular

## UCopyMotionMathLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCopyMotionMathLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCopyMotionMathLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCopyMotionMathLibrary](https://developer.gp.qq.com/api/#/searchContent/UCopyMotionMathLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCopyMotionMathLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCopyMotionMathLibrary)

类

全文搜索

---


## 函数

- **QuatCopyMotionReOrientDeltaQuat**(FQuat DeltaQuat, FQuatNewOrientation) — Returns result of vector A rotated by AngleDeg around Axis CopyMotionReOrientDeltaQuat

## UCrowdFollowingComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCrowdFollowingComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCrowdFollowingComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCrowdFollowingComponent](https://developer.gp.qq.com/api/#/searchContent/UCrowdFollowingComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCrowdFollowingComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCrowdFollowingComponent)

类

全文搜索

---


## 函数

- **SuspendCrowdSteering**(boolbSuspend) — master switch for crowd steering & avoidance SuspendCrowdSteering

## 属性

- **Group** — mask for this agent - use property from CharacterMovementComponent instead DEPRECATED: Will avoid other agents if they are in one of specified groups - use property from CharacterMovementComponent instead DEPRECATED: Will NOT avoid other agents if they are in one of specified groups, higher priority

## UCrowdManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCrowdManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCrowdManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCrowdManager](https://developer.gp.qq.com/api/#/searchContent/UCrowdManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCrowdManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCrowdManager)

类

全文搜索

---


## 属性

- **avoidance** — params obstacle avoidance params max number of agents supported by crowd max radius of agent that can be added to crowd max number of neighbor agents for velocity avoidance max number of wall segments for velocity avoidance how often should agents check their position after moving off navmesh? how o

## UCurveBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCurveBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCurveBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCurveBase](https://developer.gp.qq.com/api/#/searchContent/UCurveBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCurveBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCurveBase)

类

全文搜索

Defines a curve of interpolated points to evaluate over a given range

---


## 函数

- **GetTimeRange**(float& MinTime, float &MaxTime) — Get the time range across all curves
- **GetValueRange**(float& MinValue, float &MaxValue) — Get the value range across all curves GetTimeRange GetValueRange

## UCurveFloat

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCurveFloat?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCurveFloat.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCurveFloat](https://developer.gp.qq.com/api/#/searchContent/UCurveFloat?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCurveFloat.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCurveFloat)

类

全文搜索

---


## 函数

- **GetFloatValue**(floatInTime) — Evaluate this float curve at the specified time GetFloatValue

## 属性

- **data** — Flag to represent event curve FloatCurve bIsEventCurve

## UCurveLinearColor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCurveLinearColor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCurveLinearColor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCurveLinearColor](https://developer.gp.qq.com/api/#/searchContent/UCurveLinearColor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCurveLinearColor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCurveLinearColor)

类

全文搜索

---


## 函数

- **LinearColorGetLinearColorValue**(floatInTime)
- **QuatGetRotationValue**(floatInTime) — GetLinearColorValue GetRotationValue

## 属性

- **data** — , one curve for red, green, blue, and alpha FloatCurves

## UCurveVector

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCurveVector?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCurveVector.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCurveVector](https://developer.gp.qq.com/api/#/searchContent/UCurveVector?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCurveVector.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCurveVector)

类

全文搜索

---


## 函数

- **FVectorGetVectorValue**(floatInTime) — Evaluate this float curve at the specified time GetVectorValue

## 属性

- **data** — , one curve for X, Y and Z FloatCurves

## UCustomActorMoveComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCustomActorMoveComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCustomActorMoveComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCustomActorMoveComponent](https://developer.gp.qq.com/api/#/searchContent/UCustomActorMoveComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCustomActorMoveComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCustomActorMoveComponent)

类

全文搜索

一个给ActivityBaseActor移动功能的组件，用于移动所挂载的ActivityBaseActor

---


## 函数

- **StartMove**(生效范围：S 开始移动)
- **StopMove**(生效范围：S 结束移动)
- **SetMoveSpeed**(floatInSpeed) — 生效范围：S 设置移动速度 params InSpeed -速度
- **SetGlideTime**(floatGlideTime) — 生效范围：S 设置固定的滑行时间, 而不是使用起始点到终点位置除以速度得到这个数值 params GlideTime -滑行时间
- **SetPosition**(FVector InStart, FVectorInEnd) — 生效范围：S 设置移动的起始点和终点 params InStart -起点 params InEnd -终点
- **IsMoving**(生效范围：SC 获取Actor是否在移动 return 是否在移动 StartMove StopMove SetMoveSpeed SetGlideTime SetPosition IsMoving)

## 委托

- voidActorMoveEvent(boolbIsMove)
- 移动状态改变事件委托
- params bIsMove
- -是否正在移动
- ActorMoveEvent

## UCustomInstancedStaticMeshComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCustomInstancedStaticMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCustomInstancedStaticMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCustomInstancedStaticMeshComponent](https://developer.gp.qq.com/api/#/searchContent/UCustomInstancedStaticMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCustomInstancedStaticMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCustomInstancedStaticMeshComponent)

类

全文搜索

A custom component that efficiently renders multiple instances of the same StaticMesh.

---


## 函数

- **AddInstance**(FTransform &InstanceTransform) — Add an instance to this component. Transform is given in local space of this component.
- **AddInstanceWorldSpace**(FTransform &WorldTransform) — Add an instance to this component. Transform is given in world space.
- **SetCustomDataValue**(int32 InstanceIndex, FVector4 CustomDataValue, FVector4 CustomDataAddValue, boolbMarkRenderStateDirty) — Update custom data for specific instance
- **GetInstanceTransform**(int32 InstanceIndex, FTransform& OutInstanceTransform, boolbWorldSpace) — Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set. Returns True on success.
- **UpdateInstanceTransform**(int32 InstanceIndex, FTransform& NewInstanceTransform, bool bWorldSpace, bool bMarkRenderStateDirty, boolbTeleport) — Update the transform for the instance specified. return - True on success. params InstanceIndex - The index of the instance to update params NewInstanceTransform -The new transform params bWorldSpace - If true, the new transform interpreted as a World Space transform, otherwise it is interpreted as
- **BatchUpdateInstancesData**(int32 StartInstanceIndex, int32 NumInstances, TArray < FVector4 >& StartCustomData, TArray < FVector4 >& StartCustomDataAdd, bool bMarkRenderStateDirty, boolbTeleport)
- **RemoveInstance**(int32InstanceIndex) — Remove the instance specified. Returns True on success. Note that this will leave the array in order, but may shrink it.
- **ClearInstances**(Clear all instances being rendered by this component.)
- **GetInstanceCount**(Get the number of instances in this component.)
- **SetCullDistances**(int32 StartCullDistance, int32EndCullDistance) — Sets the fading start and culling end distances for this component.
- **SetNearCullDistance**(int32CullDistance) — Sets the cull near distance for this component.
- **GetInstancesOverlappingSphere**(FVector& Center, float Radius, boolbSphereInWorldSpace) — Returns the instances with instance bounds overlapping the specified sphere. The return value is an array of instance indices.
- **GetInstancesOverlappingBox**(FBox& Box, boolbBoxInWorldSpace) — Returns the instances with instance bounds overlapping the specified box. The return value is an array of instance indices.
- **HideInstance**(TArray < int32 >& InstanceIndices, boolbForceLocalLocation) — Update the transform for the instance specified. return - True on success.
- **ShowInstance**(TArray < int32 > &InstanceIndices) — AddInstance AddInstanceWorldSpace SetCustomDataValue GetInstanceTransform UpdateInstanceTransform BatchUpdateInstancesData RemoveInstance ClearInstances GetInstanceCount SetCullDistances SetNearCullDistance GetInstancesOverlappingSphere GetInstancesOverlappingBox HideInstance ShowInstance

## 属性

- **of** — instances, bulk serialized. Array of custom data for instances. This will contains NumCustomDataFloatsInstanceCount entries. The entries are represented sequantially, in instance order. Can be read in a material and manipulated through Blueprints. Example: If NumCustomDataFloats is 1, then each entr

## UDamageType

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDamageType?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDamageType.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDamageType](https://developer.gp.qq.com/api/#/searchContent/UDamageType?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDamageType.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDamageType)

类

全文搜索

A DamageType is intended to define and describe a particular form of damage and to provide an avenue for customizing responses to damage from various sources. For example, a game could make a DamageType_Fire set it up to ignite the damaged actor. DamageTypes are never instanced and should be treated as immutable data holders with static code functionality. They should never be stateful.

---


## 函数

- **HasDamageTypeTags_DamageType**()
- **GetDamageTypeTags_DamageType**(TArray < FName > &OutTags) — HasDamageTypeTags_DamageType GetDamageTypeTags_DamageType

## 属性

- **if** — this damagetype is caused by the world (falling off level, into lava, etc). True to scale imparted momentum by the receiving pawn's mass for pawns using character movement When applying radial impulses, whether to treat as impulse or velocity change. The magnitude of impulse to apply to the Actors d

## UDataAsset

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDataAsset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDataAsset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDataAsset](https://developer.gp.qq.com/api/#/searchContent/UDataAsset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDataAsset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDataAsset)

类

全文搜索

Base class for a simple asset containing data. The editor will list this in the content browser if you inherit from this class

---

## UDataTable

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDataTable?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDataTable.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDataTable](https://developer.gp.qq.com/api/#/searchContent/UDataTable?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDataTable.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDataTable)

类

全文搜索

---


## 属性

- **to** — use for each row of the table, must inherit from FTableRowBase UAssetImportData *AssetImportData The filename imported to create this object. Relative to this object's package, BaseDir() or absolute The name of the RowStruct we were using when we were last saved 是否忽略空数据错误,added by fourthchen RowStru

## UDataTableFunctionLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDataTableFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDataTableFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDataTableFunctionLibrary](https://developer.gp.qq.com/api/#/searchContent/UDataTableFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDataTableFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDataTableFunctionLibrary)

类

全文搜索

---


## 函数

- **EvaluateCurveTableRow**(UCurveTable* CurveTable, FName RowName, float InXY, TEnumAsByte < EEvaluateCurveTableResult :: Type >& OutResult, float& OutXY, FString &ContextString)
- **GetDataTableRowNames**(UDataTable* Table, TArray < FName > &OutRowNames)
- **GetDataTableRowFromName**(UDataTable* Table, FName RowName, FTableRowBase &OutRow) — Get a Row from a DataTable given a RowName
- **FillDataTableFromCSVString**(UDataTable* DataTable, FString &CSVString) — Empty and fill a Data Table from CSV string. return -True if the operation succeeds, check the log for errors if it didn't succeed. params CSVString -The Data that representing the contents of a CSV file. EvaluateCurveTableRow GetDataTableRowNames GetDataTableRowFromName FillDataTableFromCSVString

## UDecalBakingParameterComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDecalBakingParameterComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDecalBakingParameterComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDecalBakingParameterComponent](https://developer.gp.qq.com/api/#/searchContent/UDecalBakingParameterComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDecalBakingParameterComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDecalBakingParameterComponent)

类

全文搜索

---


## 函数

- **FLinearColorGetUVScaleBias**()
- **FLinearColorGetCropUVScaleBias**()
- **BoxSphereBoundsGetDecalBounds**(GetUVScaleBias GetCropUVScaleBias GetDecalBounds)

## UDecalComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDecalComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDecalComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDecalComponent](https://developer.gp.qq.com/api/#/searchContent/UDecalComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDecalComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDecalComponent)

类

全文搜索

A material that is rendered onto the surface of a mesh. A kind of 'bumper sticker' for a model. @see UDecalActor

---


## 函数

- **GetFadeStartDelay**()
- **GetFadeDuration**()
- **SetFadeOut**(float StartDelay, float Duration, boolDestroyOwnerAfterFade) — Sets the decal's fade start time, duration and if the owning actor should be destroyed after the decal is fully faded out. The default value of 0 for FadeStartDelay and FadeDuration makes the decal persistent. See DecalLifetimeOpacity material node to control the look of "fading out." params StartDe
- **SetFadeScreenSize**(floatNewFadeScreenSize) — Set the FadeScreenSize for this decal component
- **SetSortOrder**(int32Value) — Sets the sort order for the decal component. Higher values draw later (on top). This will force the decal to reattach
- **SetDecalMaterial**(UMaterialInterface *NewDecalMaterial) — setting decal material on decal component. This will force the decal to reattach
- **GetDecalMaterial**(Accessor for decal material)
- **CreateDynamicMaterialInstance**(Utility to allocate a new Dynamic Material Instance, set its parent to the currently applied material, and assign it GetFadeStartDelay GetFadeDuration SetFadeOut SetFadeScreenSize SetSortOrder SetDecalMaterial GetDecalMaterial CreateDynamicMaterialInstance)

## 属性

- **material** — . Controls the order in which decal elements are rendered. Higher values draw later (on top). Setting many different sort orders on many different decals prevents sorting by state and can reduce performance. Time in seconds to wait before beginning to fade out the decal. Set fade duration and start

## UDefaultLevelSequenceInstanceData

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDefaultLevelSequenceInstanceData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDefaultLevelSequenceInstanceData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDefaultLevelSequenceInstanceData](https://developer.gp.qq.com/api/#/searchContent/UDefaultLevelSequenceInstanceData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDefaultLevelSequenceInstanceData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDefaultLevelSequenceInstanceData)

类

全文搜索

Default instance data class that level sequences understand. Implements IMovieSceneTransformOrigin.

---


## 属性

- **set** — , this actor's world position will be used as the transform origin for all absolute transform sections Specifies a transform that offsets all absolute transform sections in this sequence. Will compound with attach tracks. Scale is ignored. Not applied to Relative or Additive sections. TransformOrigi

## UDemoNetConnection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDemoNetConnection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDemoNetConnection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDemoNetConnection](https://developer.gp.qq.com/api/#/searchContent/UDemoNetConnection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDemoNetConnection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDemoNetConnection)

类

全文搜索

Simulated network connection for recording and playing back game sessions.

---

## UDemoNetDriver

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDemoNetDriver?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDemoNetDriver.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDemoNetDriver](https://developer.gp.qq.com/api/#/searchContent/UDemoNetDriver?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDemoNetDriver.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDemoNetDriver)

类

全文搜索

Simulated network driver for recording and playing back game sessions.

---


## 属性

- **startup** — actors that need to be rolled back during scrubbing by being destroyed and re-spawned NOTE - DeletedNetStartupActors will take precedence here, and destroy the actor instead Maximum time allowed each frame to spend on saving a checkpoint. If 0, it will save the checkpoint in a single frame, regardle

## UDeviceProfile

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDeviceProfile?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDeviceProfile.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDeviceProfile](https://developer.gp.qq.com/api/#/searchContent/UDeviceProfile?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDeviceProfile.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDeviceProfile)

类

全文搜索

---


## 属性

- **type** — of this profile, I.e. IOS, Windows, PS4 etc The name of the parent profile of this object The parent object of this profile, it is the object matching this DeviceType with the BaseProfileName The collection of CVars which is set from this profile DeviceType BaseProfileName Parent CVars

## UDialogueWave

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDialogueWave?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDialogueWave.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDialogueWave](https://developer.gp.qq.com/api/#/searchContent/UDialogueWave?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDialogueWave.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDialogueWave)

类

全文搜索

---


## 属性

- **if** — this dialogue is considered to contain matureadult content. A localized version of the text that is actually spoken phonetically in the audio. A localized version of the subtitle text that should be displayed for this audio. By default this will be the same as the Spoken Text. Mappings between dialo

## UDirectionalLightComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDirectionalLightComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDirectionalLightComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDirectionalLightComponent](https://developer.gp.qq.com/api/#/searchContent/UDirectionalLightComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDirectionalLightComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDirectionalLightComponent)

类

全文搜索

A light component that has parallel rays. Will provide a uniform lighting across any affected surface (eg. The Sun). This will affect all objects in the defined light-mass importance volume.

---


## 函数

- **SetCastPhotonPerObjectShadow**(boolInValue)
- **SetDynamicShadowDistanceMovableLight**(floatNewValue)
- **SetDynamicShadowDistanceStationaryLight**(floatNewValue)
- **SetDynamicShadowCascades**(int32NewValue)
- **SetCascadeDistributionExponent**(floatNewValue)
- **SetCascadeTransitionFraction**(floatNewValue)
- **SetShadowDistanceFadeoutFraction**(floatNewValue)
- **SetForwardShadingPriority**(int32NewValue)
- **SetEnableLightShaftOcclusion**(boolbNewValue)
- **SetOcclusionMaskDarkness**(floatNewValue)
- **SetLightShaftOverrideDirection**(FVectorNewValue)
- **SetCastsCloudShadow**(boolInValue)
- **SetCloudShadowTexture**(UTexture *InTexture)
- **SetCloudShadowTileSize**(floatInValue)
- **SetCloudShadowDensity**(floatInDensity)
- **SetCloudShadowWinSpeed**(FVector2D &InWinSpeed) — SetCastPhotonPerObjectShadow SetDynamicShadowDistanceMovableLight SetDynamicShadowDistanceStationaryLight SetDynamicShadowCascades SetCascadeDistributionExponent SetCascadeTransitionFraction SetShadowDistanceFadeoutFraction SetForwardShadingPriority SetEnableLightShaftOcclusion SetOcclusionMaskDarkn

## 属性

- **to** — occlude fog and atmosphere inscattering with screenspace blurred occlusion from this light. Controls how dark the occlusion masking is, a value of 1 results in no darkening term. Everything closer to the camera than this distance will occlude light shafts. Can be used to make light shafts come from

## UDistributionFloat

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDistributionFloat?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionFloat.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionFloat](https://developer.gp.qq.com/api/#/searchContent/UDistributionFloat?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionFloat.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionFloat)

类

全文搜索

---


## 属性

- **this** — variable be baked out to a FRawDistribution? Should be true 99% of the time bCanBeBaked bBakedDataSuccesfully

## UDistributionFloatParameterBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDistributionFloatParameterBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionFloatParameterBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionFloatParameterBase](https://developer.gp.qq.com/api/#/searchContent/UDistributionFloatParameterBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionFloatParameterBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionFloatParameterBase)

类

全文搜索

---


## 属性

- **document** — todo document todo document todo document todo document todo document ParameterName MinInput MaxInput MinOutput MaxOutput ParamMode

## UDistributionVector

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDistributionVector?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionVector.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionVector](https://developer.gp.qq.com/api/#/searchContent/UDistributionVector?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionVector.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionVector)

类

全文搜索

---


## 属性

- **this** — variable be baked out to a FRawDistribution? Should be true 99% of the time Set internally when the distribution is updated so that that FRawDistribution can know to update itself bCanBeBaked bIsDirty bBakedDataSuccesfully

## UDistributionVectorConstant

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDistributionVectorConstant?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionVectorConstant.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionVectorConstant](https://developer.gp.qq.com/api/#/searchContent/UDistributionVectorConstant?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionVectorConstant.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionVectorConstant)

类

全文搜索

---


## 属性

- **FVector** — will be returned for all input times. If true, X == Y == Z ie. only one degree of freedom. If false, each axis is picked independently. Constant bLockAxes LockedAxes

## UDistributionVectorConstantCurve

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDistributionVectorConstantCurve?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionVectorConstantCurve.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionVectorConstantCurve](https://developer.gp.qq.com/api/#/searchContent/UDistributionVectorConstantCurve?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionVectorConstantCurve.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionVectorConstantCurve)

类

全文搜索

---


## 属性

- **data** — for each component (X,Y,Z) over time. If true, X == Y == Z ie. only one degree of freedom. If false, each axis is picked independently. ConstantCurve bLockAxes LockedAxes

## UDistributionVectorUniform

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDistributionVectorUniform?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionVectorUniform.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionVectorUniform](https://developer.gp.qq.com/api/#/searchContent/UDistributionVectorUniform?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionVectorUniform.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionVectorUniform)

类

全文搜索

---


## 属性

- **end** — of FVector magnitude range. Lower end of FVector magnitude range. If true, X == Y == Z ie. only one degree of freedom. If false, each axis is picked independently. Max Min bLockAxes LockedAxes MirrorFlags bUseExtremes

## UDistributionVectorUniformCurve

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDistributionVectorUniformCurve?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionVectorUniformCurve.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionVectorUniformCurve](https://developer.gp.qq.com/api/#/searchContent/UDistributionVectorUniformCurve?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDistributionVectorUniformCurve.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDistributionVectorUniformCurve)

类

全文搜索

---


## 属性

- **data** — for how output constant varies over time. If true, X == Y == Z ie. only one degree of freedom. If false, each axis is picked independently. ConstantCurve bLockAxes1 bLockAxes2 LockedAxes MirrorFlags bUseExtremes

## UDragDropOperation

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDragDropOperation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDragDropOperation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDragDropOperation](https://developer.gp.qq.com/api/#/searchContent/UDragDropOperation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDragDropOperation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDragDropOperation)

类

全文搜索

This class is the base drag drop operation for UMG, extend it to add additional data and add new functionality.

---


## 函数

- **Drop**(FPointerEvent &PointerEvent)
- **DragCancelled**(FPointerEvent &PointerEvent)
- **Dragged**(FPointerEvent &PointerEvent) — Drop DragCancelled Dragged

## 属性

- **simple** — string tag you can optionally use to provide extra metadata about the operation. The payload of the drag operation. This can be any UObject that you want to pass along as dragged data. If you were building an inventory screen this would be the UObject representing the item being moved to another slo

## 委托

- voidOnDrop(UDragDropOperation*Operation)
- voidOnDragCancelled(UDragDropOperation*Operation)
- voidOnDragged(UDragDropOperation*Operation)
- OnDrop
- OnDragCancelled
- OnDragged

## UDrawFrustumComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDrawFrustumComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDrawFrustumComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDrawFrustumComponent](https://developer.gp.qq.com/api/#/searchContent/UDrawFrustumComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDrawFrustumComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDrawFrustumComponent)

类

全文搜索

Utility component for drawing a view frustum. Origin is at the component location, frustum points down position X axis.

---


## 属性

- **to** — draw the wireframe frustum. Angle of longest dimension of view shape. If the angle is 0 then an orthographic projection is used Ratio of horizontal size over vertical size. Distance from origin to start drawing the frustum. Distance from origin to stop drawing the frustum. UTexture *Texture optional

## UDynamicAtlasTexture2D

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDynamicAtlasTexture2D?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDynamicAtlasTexture2D.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDynamicAtlasTexture2D](https://developer.gp.qq.com/api/#/searchContent/UDynamicAtlasTexture2D?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDynamicAtlasTexture2D.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDynamicAtlasTexture2D)

类

全文搜索

---


## 函数

- **CreateAtlasTexture2D**(FAtlasTextures& MergedTexture, FAtlasTextures *StandardAtlas) — CreateAtlasTexture2D

## UDynamicInputBindingComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDynamicInputBindingComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDynamicInputBindingComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDynamicInputBindingComponent](https://developer.gp.qq.com/api/#/searchContent/UDynamicInputBindingComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDynamicInputBindingComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDynamicInputBindingComponent)

类

全文搜索

---


## 函数

- **BindAction**(FName& ActionName, EActorInputEvent ActorInputEvent, FName& FunctionName, boolbConsumeInput)
- **BindAxis**(FName& AxisName, FName& FunctionName, boolbConsumeInput)
- **RemoveActionBinding**(FName &ActionName)
- **RemoveAxisBinding**(FName &AxisName)
- **BindActionCluster**(int32Index)
- **BindAxisCluster**(int32Index)
- **RemoveActionClusterBinding**(int32Index)
- **RemoveAxisClusterBinding**(int32Index) — BindAction BindAxis RemoveActionBinding RemoveAxisBinding BindActionCluster BindAxisCluster RemoveActionClusterBinding RemoveAxisClusterBinding

## UEdGraph

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEdGraph?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEdGraph.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEdGraph](https://developer.gp.qq.com/api/#/searchContent/UEdGraph?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEdGraph.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEdGraph)

类

全文搜索

---


## 属性

- **schema** — that this graph obeys Set of all nodes in this graph If true, graph can be edited by the user If true, graph can be renamed; Note: Graph can also be renamed if bAllowDeletion is true currently Schema Nodes bEditable bAllowDeletion bAllowRenaming

## UEdGraphNode

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEdGraphNode?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEdGraphNode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEdGraphNode](https://developer.gp.qq.com/api/#/searchContent/UEdGraphNode?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEdGraphNode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEdGraphNode)

类

全文搜索

---


## 属性

- **of** — connector pins X position of node in the editor Y position of node in the editor Width of node in the editor; only used when the node can be resized Height of node in the editor; only used when the node can be resized Enum to indicate if a node has advanced-display-pins, and if they are shown ENodeE

## UEdGraphPin_Deprecated

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEdGraphPin_Deprecated?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEdGraphPin_Deprecated.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEdGraphPin_Deprecated](https://developer.gp.qq.com/api/#/searchContent/UEdGraphPin_Deprecated?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEdGraphPin_Deprecated.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEdGraphPin_Deprecated)

类

全文搜索

---


## 属性

- **of** — this pin The tool-tip describing this pin's purpose Direction of flow of this pin (input or output) The type of information carried on this pin Default value for this pin (used if the pin has no connections), stored as a string Initial default value (the autogenerated value, to identify if the user

## UEditableGameplayTagQuery

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEditableGameplayTagQuery?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEditableGameplayTagQuery.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEditableGameplayTagQuery](https://developer.gp.qq.com/api/#/searchContent/UEditableGameplayTagQuery?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEditableGameplayTagQuery.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEditableGameplayTagQuery)

类

全文搜索

This is an editor-only representation of a query, designed to be editable with a typical property window. To edit a query in the editor, an FGameplayTagQuery is converted to a set of UObjects and edited, When finished, the query struct is rewritten and these UObjects are discarded. This query representation is not intended for runtime use.

---


## 属性

- **description** — , shown in property details. Auto-generated description is shown if not supplied. UEditableGameplayTagQueryExpression *RootExpression The base expression of this query. Property to hold a gameplay tag query so we can use the exporttext path to get a string representation. UserDescription RootExpress

## UEditableText

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEditableText?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEditableText.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEditableText](https://developer.gp.qq.com/api/#/searchContent/UEditableText?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEditableText.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEditableText)

类

全文搜索

Editable text box widget

---


## 函数

- **TextGetText**(Gets the widget text return -The widget text)
- **SetText**(FTextInText) — Directly sets the widget text. Warning: This will wipe any binding created for the Text property! params InText -The text to assign to the widget
- **SetIsPassword**(boolInbIsPassword)
- **SetHintText**(FTextInHintText)
- **SetIsReadOnly**(boolInbIsReadyOnly)
- **SetFont**(FSlateFontInfoFont)
- **SetColorAndOpacity**(FSlateColorColor) — GetText SetText SetIsPassword SetHintText SetIsReadOnly SetFont SetColorAndOpacity

## 属性

- **text** — content for this editable text box widget A bindable delegate to allow logic to drive the text of the widget Hint text that appears when there is no text in the text box A bindable delegate to allow logic to drive the hint text of the widget The style USlateWidgetStyleAsset *Style_DEPRECATED Text st

## 委托

- voidOnTextChanged(const FText&Text)
- Called whenever the text is changed interactively by the user
- voidOnTextCommitted(const FText&Text, ETextCommit::TypeCommitMethod)
- Called whenever the text is committed. This happens when the user presses enter or the text box loses focus.
- voidOnTextBeginEditTransation()
- Called to begin an undoable editable text transaction
- voidOnTextEndEditTransaction(const FText&Text)
- Called to end an undoable editable text transaction
- voidOnTextFocusReceived()
- OnTextChanged
- OnTextCommitted
- OnTextBeginEditTransation
- OnTextEndEditTransaction
- OnTextFocusReceived

## UEditableTextBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEditableTextBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEditableTextBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEditableTextBox](https://developer.gp.qq.com/api/#/searchContent/UEditableTextBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEditableTextBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEditableTextBox)

类

全文搜索

Allows the user to type in custom text. Only permits a single line of text to be entered. No Children Text Entry

---


## 函数

- **TextGetText**(Provide a alternative mechanism for error reporting.)
- **SetText**(FTextInText)
- **SetHintText**(FTextInText)
- **SetError**(FTextInError)
- **SetIsReadOnly**(boolbReadOnly)
- **ClearError**()
- **HasError**(GetText SetText SetHintText SetError SetIsReadOnly ClearError HasError)

## 属性

- **text** — content for this editable text box widget A bindable delegate to allow logic to drive the text of the widget The style USlateWidgetStyleAsset *Style_DEPRECATED Style used for the text box Hint text that appears when there is no text in the text box A bindable delegate to allow logic to drive the hin

## 委托

- voidOnTextChanged(const FText&Text)
- Called whenever the text is changed interactively by the user
- voidOnTextCommitted(const FText&Text, ETextCommit::TypeCommitMethod)
- Called whenever the text is committed. This happens when the user presses enter or the text box loses focus.
- OnTextChanged
- OnTextCommitted

## UEndUserSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEndUserSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEndUserSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEndUserSettings](https://developer.gp.qq.com/api/#/searchContent/UEndUserSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEndUserSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEndUserSettings)

类

全文搜索

---


## 属性

- **whether** — the engine sends anonymous usage information about game sessions to Epic Games in order to improve Unreal Engine. Information will never be shared with 3rd parties. Determines whether the engine sends anonymous crashabnormal-shutdown data about game sessions to Epic Games in order to improve Unreal

## UEngine

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEngine?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEngine.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEngine](https://developer.gp.qq.com/api/#/searchContent/UEngine?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEngine.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEngine)

类

全文搜索

Abstract base class of all Engine classes, responsible for management of systems critical to editor or game systems. Also defines default classes for certain engine systems.

---


## 属性

- **document** — UFont *SmallFont @todo document @todo document UFont *MediumFont @todo document @todo document UFont *LargeFont @todo document @todo document UFont *SubtitleFont @todo document @todo document Any additional fonts that script may use without hard-referencing the font. @todo document The class to use

## UEngineMessage

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEngineMessage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEngineMessage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEngineMessage](https://developer.gp.qq.com/api/#/searchContent/UEngineMessage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEngineMessage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEngineMessage)

类

全文搜索

---


## 属性

- **displayed** — in message dialog when player pawn fails to spawn because no playerstart was available. Message when player join attempt is refused because the server is at capacity. Message when a new player enters the game. Message when a player leaves the game. Message when a player changes his name. Message whe

## UEnvQueryContext_BlueprintBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryContext_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryContext_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryContext_BlueprintBase](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryContext_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryContext_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryContext_BlueprintBase)

类

全文搜索

---


## 函数

- **ProvideSingleActor**(UObject* QuerierObject, AActor* QuerierActor, AActor* &ResultingActor)
- **ProvideSingleLocation**(UObject* QuerierObject, AActor* QuerierActor, FVector &ResultingLocation)
- **ProvideActorsSet**(UObject* QuerierObject, AActor* QuerierActor, TArray < AActor* > &ResultingActorsSet)
- **ProvideLocationsSet**(UObject* QuerierObject, AActor* QuerierActor, TArray < FVector > &ResultingLocationSet) — ProvideSingleActor ProvideSingleLocation ProvideActorsSet ProvideLocationsSet

## UEnvQueryGenerator

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator)

类

全文搜索

---


## 属性

- **of** — generated items if set, tests will be automatically sorted for best performance before running query OptionName ItemType bAutoSortTests

## UEnvQueryGenerator_ActorsOfClass

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_ActorsOfClass?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_ActorsOfClass.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_ActorsOfClass](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_ActorsOfClass?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_ActorsOfClass.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_ActorsOfClass)

类

全文搜索

---


## 属性

- **true** — , this will only returns actors of the specified class within the SearchRadius of the SearchCenter context. If false, it will return ALL actors of the specified class in the world. Max distance of path between point and context. NOTE: Zero and negative values will never return any results if UseRadi

## UEnvQueryGenerator_BlueprintBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_BlueprintBase](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_BlueprintBase)

类

全文搜索

---


## 函数

- **DoItemGeneration**(TArray < FVector > &ContextLocations)
- **AddGeneratedVector**(FVectorGeneratedVector)
- **AddGeneratedActor**(AActor *GeneratedActor)
- **GetQuerier**(DoItemGeneration AddGeneratedVector AddGeneratedActor GetQuerier)

## 属性

- **short** — description of what test does, like "Generate pawn named Joe" context @todo this should show up only in the generator's BP, but due to the way EQS editor is generating widgets it's there as well It's a bug and we'll fix it GeneratorsActionDescription Context GeneratedItemType

## UEnvQueryGenerator_Composite

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_Composite?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_Composite.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_Composite](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_Composite?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_Composite.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_Composite)

类

全文搜索

Composite generator allows using multiple generators in single query option All child generators must produce exactly the same item type!

---


## 属性

- **generators** — with different item types, use at own risk! WARNING: generator will use ForcedItemType for raw data, you MUST ensure proper memory layout child generators will be writing to memory block through their own item types: - data must fit info block allocated by ForcedItemType - tests will read item locat

## UEnvQueryGenerator_Cone

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_Cone?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_Cone.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_Cone](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_Cone?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_Cone.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_Cone)

类

全文搜索

---


## 属性

- **between** — each point of the same angle Maximum degrees of the generated cone The step of the angle increase. Angle step must be >=1 Smaller values generate less items Generation distance The actor (or actors) that will generate a cone in their facing direction Whether to include CenterActors' locations when g

## UEnvQueryGenerator_Donut

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_Donut?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_Donut.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_Donut](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_Donut?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_Donut.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_Donut)

类

全文搜索

---


## 属性

- **distance** — between point and context max distance between point and context number of rings to generate number of items to generate for each ring If you generate items on a piece of circle you define direction of Arc cut here If you generate items on a piece of circle you define angle of Arc cut here If true,

## UEnvQueryGenerator_OnCircle

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_OnCircle?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_OnCircle.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_OnCircle](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_OnCircle?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_OnCircle.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_OnCircle)

类

全文搜索

---


## 属性

- **distance** — of path between point and context items will be generated on a circle this much apart this many items will be generated on a circle EPointOnCircleSpacingMethodPointOnCircleSpacingMethod how we are choosing where the points are in the circle If you generate items on a piece of circle you define direc

## UEnvQueryGenerator_PathingGrid

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_PathingGrid?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_PathingGrid.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_PathingGrid](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_PathingGrid?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_PathingGrid.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_PathingGrid)

类

全文搜索

Navigation grid, generates points on navmesh with paths tofrom context no further than given limit

---


## 属性

- **direction** — navigation filter to use in pathfinding multiplier for max distance between point and context PathToItem NavigationFilter ScanRangeMultiplier

## UEnvQueryGenerator_SimpleGrid

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_SimpleGrid?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_SimpleGrid.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_SimpleGrid](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_SimpleGrid?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_SimpleGrid.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_SimpleGrid)

类

全文搜索

Simple grid, generates points in 2D square around context

---


## 属性

- **of** — square's extent, like a radius generation density context GridSize SpaceBetween GenerateAround

## UEnvQueryInstanceBlueprintWrapper

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryInstanceBlueprintWrapper?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryInstanceBlueprintWrapper.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryInstanceBlueprintWrapper](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryInstanceBlueprintWrapper?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryInstanceBlueprintWrapper.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryInstanceBlueprintWrapper)

类

全文搜索

---


## 函数

- **GetItemScore**(int32ItemIndex)
- **GetResultsAsActors**(return an array filled with resulting actors. Note that it makes sense only if ItemType is a EnvQueryItemType_ActorBase-derived type)
- **GetResultsAsLocations**(returns an array of locations generated by the query. If the query generated Actors the the array is filled with their locations)
- **SetNamedParam**(FName ParamName, floatValue) — GetItemScore GetResultsAsActors GetResultsAsLocations SetNamedParam

## 属性

- **of** — query option, that generated items QueryID ItemType OptionIndex

## 委托

- voidOnQueryFinishedEvent(UEnvQueryInstanceBlueprintWrapper*QueryInstance, EEnvQueryStatus::TypeQueryStatus)
- OnQueryFinishedEvent

## UEnvQueryManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryManager](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryManager)

类

全文搜索

---


## 函数

- **RunEQSQuery**(UObject* WorldContextObject, UEnvQuery* QueryTemplate, UObject* Querier, TEnumAsByte < EEnvQueryRunMode :: Type > RunMode, TSubclassOf < UEnvQueryInstanceBlueprintWrapper >WrapperClass) — RunEQSQuery

## 属性

- **of** — instances local cache of context objects for managing BP based objects how long are we allowed to test per update, in seconds. whether we update EQS queries based on: or test an entire query before moving to the next one (depth). if greater than zero, we will warn once when the number of queries is

## UEnvQueryTest

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryTest?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryTest.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryTest](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryTest?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryTest.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryTest)

类

全文搜索

---


## 属性

- **of** — test as defined in data asset The purpose of this test. Should it be used for filtering possible results, scoring them, or both? Optional comment or explanation about what this test is for. Useful when the purpose of tests may not be clear, especially when there are multiple tests of the same type.

## UEnvQueryTest_Dot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryTest_Dot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryTest_Dot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryTest_Dot](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryTest_Dot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryTest_Dot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryTest_Dot)

类

全文搜索

---


## 属性

- **direction** — of first line used by test defines direction of second line used by test EEnvTestDotTestMode If true, this test uses the absolute value of the dot product rather than the dot product itself. Useful when you want to compare "how lateral" something is. I.E. values closer to zero are further to the sid

## UEnvQueryTest_Pathfinding

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryTest_Pathfinding?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryTest_Pathfinding.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryTest_Pathfinding](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryTest_Pathfinding?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryTest_Pathfinding.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryTest_Pathfinding)

类

全文搜索

---


## 属性

- **mode** — context: other end of pathfinding test pathfinding direction if set, items with failed path will be invalidated (PathCost, PathLength) navigation filter to use in pathfinding TestMode Context PathFromContext SkipUnreachable FilterClass

## UEnvQueryTest_Project

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryTest_Project?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryTest_Project.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryTest_Project](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryTest_Project?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryTest_Project.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryTest_Project)

类

全文搜索

Projects points on navigation or geometry, will modify value of projected items. Works only on item type: point

---


## 属性

- **params** — ProjectionData

## UEnvQueryTest_Trace

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryTest_Trace?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryTest_Trace.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryTest_Trace](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryTest_Trace?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryTest_Trace.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryTest_Trace)

类

全文搜索

---


## 属性

- **data** — trace direction Z offset from item Z offset from querier context: other end of trace test TraceData TraceFromContext ItemHeightOffset ContextHeightOffset Context

## UExpandableArea

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UExpandableArea?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUExpandableArea.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UExpandableArea](https://developer.gp.qq.com/api/#/searchContent/UExpandableArea?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUExpandableArea.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UExpandableArea)

类

全文搜索

---


## 函数

- **GetIsExpanded**()
- **SetIsExpanded**(boolIsExpanded)
- **SetIsExpanded_Animated**(boolIsExpanded) — GetIsExpanded SetIsExpanded SetIsExpanded_Animated

## 属性

- **maximum** — height of the area UWidget *HeaderContent UWidget *BodyContent Style BorderBrush BorderColor bIsExpanded MaxHeight HeaderPadding AreaPadding HeaderContent BodyContent

## 委托

- voidOnExpansionChanged(UExpandableArea*Area, boolbIsExpanded)
- A bindable delegate for the IsChecked.
- OnExpansionChanged

## UExponentialHeightFogComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UExponentialHeightFogComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUExponentialHeightFogComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UExponentialHeightFogComponent](https://developer.gp.qq.com/api/#/searchContent/UExponentialHeightFogComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUExponentialHeightFogComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UExponentialHeightFogComponent)

类

全文搜索

Used to create fogging effects such as clouds but with a density that is related to the height of the fog.

---


## 函数

- **SetFogDensity**(floatValue)
- **SetCustomFogHeight**(float Value, int32index)
- **SetCustomFogDensityCoefficient**(float Value, int32index)
- **SetCustomFogInscatteringColor**(FLinearColor Value, int32index)
- **SetFogInscatteringColor**(FLinearColorValue)
- **SetInscatteringColorCubemap**(UTextureCube *Value)
- **SetInscatteringColorCubemapAngle**(floatValue)
- **SetFullyDirectionalInscatteringColorDistance**(floatValue)
- **SetNonDirectionalInscatteringColorDistance**(floatValue)
- **SetInscatteringTextureTint**(FLinearColorValue)
- **SetDirectionalInscatteringExponent**(floatValue)
- **SetDirectionalInscatteringStartDistance**(floatValue)
- **SetDirectionalInscatteringColor**(FLinearColorValue)
- **SetFogHeightFalloff**(floatValue)
- **SetFogMaxOpacity**(floatValue)
- **SetStartDistance**(floatValue)
- **SetFogCutoffDistance**(floatValue)
- **SetVolumetricFog**(boolbNewValue)
- **SetVolumetricFogScatteringDistribution**(floatNewValue)
- **SetVolumetricFogExtinctionScale**(floatNewValue)
- **SetVolumetricFogAlbedo**(FColorNewValue)
- **SetVolumetricFogEmissive**(FLinearColorNewValue)
- **SetVolumetricFogDistance**(floatNewValue)
- **SetVolumetricFogStartDistance**(floatNewValue)
- **SetVolumetricFogNoiseTexture**(UTexture2D *NewValue)
- **SetVolumetricFogNoiseTransform**(FTransformTransform) — SetFogDensity SetCustomFogHeight SetCustomFogDensityCoefficient SetCustomFogInscatteringColor SetFogInscatteringColor SetInscatteringColorCubemap SetInscatteringColorCubemapAngle SetFullyDirectionalInscatteringColorDistance SetNonDirectionalInscatteringColorDistance SetInscatteringTextureTint SetDir

## 属性

- **density** — factor. UTextureCube *InscatteringColorCubemap Cubemap that can be specified for fog color, which is useful to make distant, heavily fogged scene elements match the sky. When the cubemap is specified, FogInscatteringColor is ignored and Directional inscattering is disabled. Angle to rotate the Insca

## UExporter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UExporter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUExporter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UExporter](https://developer.gp.qq.com/api/#/searchContent/UExporter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUExporter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UExporter)

类

全文搜索

---


## 属性

- **class** — of this exporter The root scope of objects to be exported, only used if PPF_ExportsNotFullyQualfied is set Objects being exported that are contained within ExportRootScope will use just their name instead of a full path The root scope of objects to be exported, only used if PPF_ExportsNotFullyQualfi

## UHeadMountedDisplayFunctionLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UHeadMountedDisplayFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHeadMountedDisplayFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHeadMountedDisplayFunctionLibrary](https://developer.gp.qq.com/api/#/searchContent/UHeadMountedDisplayFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHeadMountedDisplayFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHeadMountedDisplayFunctionLibrary)

类

全文搜索

---


## 函数

- **IsHeadMountedDisplayEnabled**(Returns whether or not we are currently using the head mounted display. return -(Boolean) status of HMD)
- **IsHeadMountedDisplayConnected**(Returns whether or not the HMD hardware is connected and ready to use. It may or may not actually be in use. return -(Boolean) status whether the HMD hardware is connected and ready to use. It may or may not actually be in use.)
- **EnableHMD**(boolbEnable) — Switches tofrom using HMD and stereo rendering. return -(Boolean) True, if the request was successful. params bEnable - (in) 'true' to enable HMD stereo; 'false' otherwise
- **NameGetHMDDeviceName**(Returns the name of the device, so scripts can modify their behaviour appropriately return -FName specific to the currently active HMD device type. "None" implies no device, "Unknown" implies a device with no description.)
- **TypeGetHMDWornState**(Returns the worn state of the device. return -Unknown, Worn, NotWorn. If the platform does not detect this it will always return Unknown.)
- **GetOrientationAndPosition**(FRotator& DeviceRotation, FVector &DevicePosition) — Grabs the current orientation and position for the HMD. If positional tracking is not available, DevicePosition will be a zero vector params DeviceRotation -(out) The device's current rotation params DevicePosition -(out) The device's current position, in its own tracking space
- **HasValidTrackingPosition**(If the HMD supports positional tracking, whether or not we are currently being tracked)
- **GetNumOfTrackingSensors**(If the HMD has multiple positional tracking sensors, return a total number of them currently connected.)
- **GetTrackingSensorParameters**(FVector& Origin, FRotator& Rotation, float& LeftFOV, float& RightFOV, float& TopFOV, float& BottomFOV, float& Distance, float& NearPlane, float& FarPlane, bool& IsActive, int32Index) — If the HMD has a positional sensor, this will return the game-world location of it, as well as the parameters for the bounding region of tracking. This allows an in-game representation of the legal positional tracking range. All values will be zeroed if the sensor is not available or the HMD does no
- **GetPositionalTrackingCameraParameters**(FVector& CameraOrigin, FRotator& CameraRotation, float& HFOV, float& VFOV, float& CameraDistance, float& NearPlane, float &FarPlane) — If the HMD has a positional sensor, this will return the game-world location of it, as well as the parameters for the bounding region of tracking. This allows an in-game representation of the legal positional tracking range. All values will be zeroed if the sensor is not available or the HMD does no
- **IsInLowPersistenceMode**(Returns true, if HMD is in low persistence mode. 'false' otherwise.)
- **EnableLowPersistenceMode**(boolbEnable) — Switches between low and full persistence modes. params bEnable - (in) 'true' to enable low persistence mode; 'false' otherwise
- **ResetOrientationAndPosition**(float Yaw, EOrientPositionSelector :: TypeOptions) — Resets orientation by setting roll and pitch to 0, assuming that current yaw is forward direction and assuming current position as a 'zero-point' (for positional tracking). params Yaw - (in) the desired yaw to be set after orientation reset. params Options - (in) specifies either position, orientati
- **SetClippingPlanes**(float Near, floatFar) — Sets near and far clipping planes (NCP and FCP) for stereo rendering. Similar to 'stereo ncp= fcp' console command, but NCP and FCP set by this call won't be saved in .ini file. params Near - (in) Near clipping plane, in centimeters params Far - (in) Far clipping plane, in centimeters
- **GetScreenPercentage**(Returns screen percentage to be used in VR mode. return -(float) The screen percentage to be used in VR mode.)
- **SetWorldToMetersScale**(UObject* WorldContext, floatNewScale) — Sets the World to Meters scale, which changes the scale of the world as perceived by the player params NewScale -Specifies how many Unreal units correspond to one meter in the real world
- **GetWorldToMetersScale**(UObject *WorldContext) — Returns the World to Meters scale, which corresponds to the scale of the world as perceived by the player return -How many Unreal units correspond to one meter in the real world
- **SetTrackingOrigin**(TEnumAsByte < EHMDTrackingOrigin :: Type >Origin) — Sets current tracking origin type (eye level or floor level).
- **GetTrackingOrigin**(Returns current tracking origin type (eye level or floor level).)
- **GetVRFocusState**(bool& bUseFocus, bool &bHasFocus) — Returns current state of VR focus. params bUseFocus -(out) if set to true, then this App does use VR focus. params bHasFocus -(out) if set to true, then this App currently has VR focus.
- **IsSpectatorScreenModeControllable**(Return true if spectator screen mode control is available.)
- **SetSpectatorScreenMode**(ESpectatorScreenModeMode) — Sets the social screen mode. params Mode - (in) The social screen Mode.
- **SetSpectatorScreenTexture**(UTexture *InTexture) — Change the texture displayed on the social screen
- **SetSpectatorScreenModeTexturePlusEyeLayout**(FVector2D EyeRectMin, FVector2D EyeRectMax, FVector2D TextureRectMin, FVector2D TextureRectMax, bool bDrawEyeFirst, boolbClearBlack) — Setup the layout for ESpectatorScreenMode::TexturePlusEye. IsHeadMountedDisplayEnabled IsHeadMountedDisplayConnected EnableHMD GetHMDDeviceName GetHMDWornState GetOrientationAndPosition HasValidTrackingPosition GetNumOfTrackingSensors GetTrackingSensorParameters GetPositionalTrackingCameraParameters

## UHierarchicalInstancedStaticMeshComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UHierarchicalInstancedStaticMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHierarchicalInstancedStaticMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHierarchicalInstancedStaticMeshComponent](https://developer.gp.qq.com/api/#/searchContent/UHierarchicalInstancedStaticMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHierarchicalInstancedStaticMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHierarchicalInstancedStaticMeshComponent)

类

全文搜索

---


## 函数

- **RemoveInstances**(TArray < int32 > &InstancesToRemove) — Removes all the instances with indices specified in the InstancesToRemove array. Returns true on success. RemoveInstances

## 属性

- **by** — Num Culling by Num For Optimization FClusterTree Mark Use OptimiMinInstancesToSplitNode With FClusterTree SortedInstances NumBuiltInstances BuiltInstanceBounds UnbuiltInstanceBounds UnbuiltInstanceBoundsList UnbuiltInstanceIndexList bEnableDensityScaling OcclusionLayerNumNodes CacheMeshExtendedBound

## UHierarchicalLODSetup

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UHierarchicalLODSetup?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHierarchicalLODSetup.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHierarchicalLODSetup](https://developer.gp.qq.com/api/#/searchContent/UHierarchicalLODSetup?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHierarchicalLODSetup.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHierarchicalLODSetup)

类

全文搜索

---


## 属性

- **LOD** — Setup HierarchicalLODSetup OverrideBaseMaterial

## UHLODProxy

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UHLODProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHLODProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHLODProxy](https://developer.gp.qq.com/api/#/searchContent/UHLODProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHLODProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHLODProxy)

类

全文搜索

This asset acts as a proxy to a static mesh for ALODActors to display

---


## 属性

- **the** — mesh proxies we contain Keep hold of the level in the editor to allow for package cleaning etc. ProxyMeshes OwningMap

## UHorizontalBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UHorizontalBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHorizontalBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHorizontalBox](https://developer.gp.qq.com/api/#/searchContent/UHorizontalBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHorizontalBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHorizontalBox)

类

全文搜索

Allows widgets to be laid out in a flow horizontally. Many Children Flow Horizontal

---


## 函数

- **AddChildToHorizontalBox**(UWidget *Content) — AddChildToHorizontalBox

## UHorizontalBoxSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UHorizontalBoxSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHorizontalBoxSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHorizontalBoxSlot](https://developer.gp.qq.com/api/#/searchContent/UHorizontalBoxSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHorizontalBoxSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHorizontalBoxSlot)

类

全文搜索

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetSize**(FSlateChildSizeInSize)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment) — SetPadding SetSize SetHorizontalAlignment SetVerticalAlignment

## 属性

- **amount** — of padding between the slots parent and the content. How much space this slot should occupy in the direction of the panel. Padding Size HorizontalAlignment VerticalAlignment

## UHudSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UHudSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHudSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHudSettings](https://developer.gp.qq.com/api/#/searchContent/UHudSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHudSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHudSettings)

类

全文搜索

---


## 属性

- **the** — HUD is visible at all. Collection of names specifying what debug info to display for ViewTarget actor. bShowHUD DebugDisplay

## ULandscapeAOTextureDataAsset

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULandscapeAOTextureDataAsset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeAOTextureDataAsset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeAOTextureDataAsset](https://developer.gp.qq.com/api/#/searchContent/ULandscapeAOTextureDataAsset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeAOTextureDataAsset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeAOTextureDataAsset)

类

全文搜索

---


## 属性

- **Data** — where don't support texture sampling in vertex buffer DataSize LandscapeAOPlatformData

## ULandscapeComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULandscapeComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeComponent](https://developer.gp.qq.com/api/#/searchContent/ULandscapeComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeComponent)

类

全文搜索

---


## 属性

- **offset** — from global components grid origin (in quads) Y offset from global components grid origin (in quads) Total number of quads for this component, has to be >0 Number of quads for a subsection of the component. SubsectionSizeQuads+1 must be a power of two. Number of subsections in X or Y axis UMaterialI

## ULandscapeHeightfieldCollisionComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULandscapeHeightfieldCollisionComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeHeightfieldCollisionComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeHeightfieldCollisionComponent](https://developer.gp.qq.com/api/#/searchContent/ULandscapeHeightfieldCollisionComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeHeightfieldCollisionComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeHeightfieldCollisionComponent)

类

全文搜索

---


## 属性

- **of** — layers painted on this component. Matches the WeightmapLayerAllocations array in the LandscapeComponent. Offset of component in landscape quads Size of component in collision quads Collision scale: (ComponentSizeQuads) (CollisionSizeQuads) Size of component's "simple collision" in collision quads Th

## ULandscapeLayerInfoObject

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULandscapeLayerInfoObject?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeLayerInfoObject.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeLayerInfoObject](https://developer.gp.qq.com/api/#/searchContent/ULandscapeLayerInfoObject?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeLayerInfoObject.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeLayerInfoObject)

类

全文搜索

---


## 属性

- **color** — to use for layer usage debug LayerName PhysMaterial Hardness LayerUsageDebugColor

## ULandscapeMeshProxyComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULandscapeMeshProxyComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeMeshProxyComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeMeshProxyComponent](https://developer.gp.qq.com/api/#/searchContent/ULandscapeMeshProxyComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeMeshProxyComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeMeshProxyComponent)

类

全文搜索

---


## 属性

- **landscape** — this proxy was generated for The components this proxy was generated for LOD level proxy was generated for LandscapeGuid ProxyComponentBases ProxyLOD

## ULandscapeSplineControlPoint

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULandscapeSplineControlPoint?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeSplineControlPoint.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeSplineControlPoint](https://developer.gp.qq.com/api/#/searchContent/ULandscapeSplineControlPoint?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeSplineControlPoint.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeSplineControlPoint)

类

全文搜索

---


## 属性

- **in** — Landscape-space Rotation of tangent vector at this point (in landscape-space) Width of the spline at this point. Falloff at the sides of the spline at this point. Falloff at the startend of the spline (if this point is a start or end point, otherwise ignored). Spline points Bounds of points UControl

## ULandscapeSplinesComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULandscapeSplinesComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeSplinesComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeSplinesComponent](https://developer.gp.qq.com/api/#/searchContent/ULandscapeSplinesComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeSplinesComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeSplinesComponent)

类

全文搜索

---


## 属性

- **of** — the spline, in distance per point Color to use to draw the splines UTexture2D *ControlPointSprite Sprite used to draw control points UStaticMesh *SplineEditorMesh Mesh used to draw splines that have no mesh Whether we are in-editor and showing spline editor meshes ControlPoints Segments CookedForeig

## ULandscapeSplineSegment

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULandscapeSplineSegment?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeSplineSegment.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeSplineSegment](https://developer.gp.qq.com/api/#/searchContent/ULandscapeSplineSegment?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULandscapeSplineSegment.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULandscapeSplineSegment)

类

全文搜索

---


## 属性

- **data** — for spline. Spline points Bounds of points Spline meshes Name of blend layer to paint when applying spline to landscape If "none", no layer is painted If the spline is above the terrain, whether to raise the terrain up to the level of the spline when applying it to the landscape. If the spline is be

## ULayer

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULayer](https://developer.gp.qq.com/api/#/searchContent/ULayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULayer)

类

全文搜索

---


## 属性

- **display** — name of the layer Whether actors associated with the layer are visible in the viewport Basic stats regarding the number of Actors and their types currently assigned to the Layer LayerName bIsVisible ActorStats

## ULevel

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevel](https://developer.gp.qq.com/api/#/searchContent/ULevel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevel)

类

全文搜索

A Level is a collection of Actors (lights, volumes, mesh instances etc.). Multiple Levels can be loaded and unloaded into the World to create a streaming experience. @see UActor

---


## 属性

- **World** — that has this level in its Levels array. This is not the same as GetOuter(), because GetOuter() for a streaming level is a vestigial world that is not used. It should not be accessed during BeginDestroy(), just like any other UObject references, since GC may occur in any order. UModel *Model BSP UMo

## ULevelCapture

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevelCapture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelCapture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelCapture](https://developer.gp.qq.com/api/#/searchContent/ULevelCapture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelCapture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelCapture)

类

全文搜索

---


## 属性

- **whether** — the capture should start immediately, or whether it will be invoked externally (through StartMovieCaptureStopMovieCapture exec commands) Copy of the ID from PrerequisiteActor. Required because JSON serialization exports the path of the object, rather that its GUID bAutoStartCapture PrerequisiteActor

## ULevelScriptBlueprint

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevelScriptBlueprint?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelScriptBlueprint.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelScriptBlueprint](https://developer.gp.qq.com/api/#/searchContent/ULevelScriptBlueprint?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelScriptBlueprint.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelScriptBlueprint)

类

全文搜索

A level blueprint is a specialized type of blueprint. It is used to house global, level-wide logic. In a level blueprint, you can operate on specific level-actor instances through blueprint's node-based interface. UE3 users should be familiar with this concept, as it is very similar to Kismet. @see UBlueprint @see ALevelScriptActor

---


## 属性

- **friendly** — name to use for UI FriendlyName

## ULevelSequence

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevelSequence?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelSequence.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelSequence](https://developer.gp.qq.com/api/#/searchContent/ULevelSequence?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelSequence.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelSequence)

类

全文搜索

Movie scene animation for Actors.

---


## 属性

- **to** — the movie scene that controls this animation. Legacy object references - should be read-only. Not deprecated because they need to still be saved References to bound objects. Deprecated property housing old possessed object bindings UClass *DirectorClass The class that is used to spawn this level seq

## ULevelSequenceBurnIn

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevelSequenceBurnIn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelSequenceBurnIn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelSequenceBurnIn](https://developer.gp.qq.com/api/#/searchContent/ULevelSequenceBurnIn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelSequenceBurnIn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelSequenceBurnIn)

类

全文搜索

Base class for level sequence burn ins

---


## 函数

- **SetSettings**(UObject *InSettings) — Called when this burn in is receiving its settings
- **GetSettingsClass**(Get the settings class to use for this burn in SetSettings GetSettingsClass)

## 属性

- **of** — frame information. ALevelSequenceActor *LevelSequenceActor The actor to get our burn in frames from FrameInformation LevelSequenceActor

## ULevelSequenceDirector

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevelSequenceDirector?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelSequenceDirector.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelSequenceDirector](https://developer.gp.qq.com/api/#/searchContent/ULevelSequenceDirector?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelSequenceDirector.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelSequenceDirector)

类

全文搜索

---


## 函数

- **OnCreated**(Called when this director is created OnCreated)

## 属性

- **to** — the player that's playing back this director's sequence Player

## ULevelSequencePlayer

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevelSequencePlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelSequencePlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelSequencePlayer](https://developer.gp.qq.com/api/#/searchContent/ULevelSequencePlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelSequencePlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelSequencePlayer)

类

全文搜索

ULevelSequencePlayer is used to actually "play" an level sequence asset at runtime. This class keeps track of playback state and provides functions for manipulating an level sequence while its playing.

---


## 函数

- **CreateLevelSequencePlayer**(UObject* WorldContextObject, ULevelSequence* LevelSequence, FMovieSceneSequencePlaybackSettings Settings, ALevelSequenceActor* &OutActor) — Create a new level sequence player. params WorldContextObject -Context object from which to retrieve a UWorld. params LevelSequence -The level sequence to play. params Settings -The desired playback settings params OutActor -The level sequence actor created to play this sequence.
- **GetEventReceivers**(CreateLevelSequencePlayer GetEventReceivers)

## 属性

- **of** — additional event receivers AdditionalEventReceivers

## 委托

- voidOnCameraCut(UCameraComponent*CameraComponent)
- Event triggered when there is a camera cut
- OnCameraCut

## ULevelStreaming

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevelStreaming?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelStreaming.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelStreaming](https://developer.gp.qq.com/api/#/searchContent/ULevelStreaming?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelStreaming.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelStreaming)

类

全文搜索

Abstract base class of container object encapsulating data required for streaming and providing interface for when a level should be streamed in and out of memory.

---


## 函数

- **FNameGetWorldAssetPackageFName**(Gets the package name for the world asset referred to by this level streaming as an FName)
- **GetLoadedLevel**(Gets a pointer to the LoadedLevel value)
- **IsLevelVisible**(Returns whether streaming level is visible)
- **IsLevelLoaded**(Returns whether streaming level is loaded)
- **IsStreamingStatePending**(Returns whether level has streaming state change pending)
- **CreateInstance**(FStringUniqueInstanceName) — Creates a new instance of this streaming level with a provided unique instance name
- **GetLevelScriptActor**(Returns the Level Script Actor of the level if the level is loaded and valid GetWorldAssetPackageFName GetLoadedLevel IsLevelVisible IsLevelLoaded IsStreamingStatePending CreateInstance GetLevelScriptActor)

## 属性

- **name** — of the package containing the level to load. Use GetWorldAsset() or GetWorldAssetPackageFName() instead. The reference to the world containing the level to load If this isn't Name_None, then we load from this package on disk to the new package named PackageName LOD versions of this level Transform a

## 委托

- voidOnLevelLoaded()
- Called when level is streamed in
- voidOnLevelUnloaded()
- Called when level is streamed out
- voidOnLevelShown()
- Called when level is added to the world
- voidOnLevelHidden()
- Called when level is removed from the world
- OnLevelLoaded
- OnLevelUnloaded
- OnLevelShown
- OnLevelHidden

## ULevelStreamingKismet

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevelStreamingKismet?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelStreamingKismet.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelStreamingKismet](https://developer.gp.qq.com/api/#/searchContent/ULevelStreamingKismet?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelStreamingKismet.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelStreamingKismet)

类

全文搜索

---


## 函数

- **LoadLevelInstance**(UObject* WorldContextObject, FString& LevelName, FVector& Location, FRotator& Rotation, bool &bOutSuccess) — Stream in a level with a specific location and rotation. You can create multiple instances of the same level! The level to be loaded does not have to be in the persistent map's Levels list, however to ensure that the .umap does get packaged, please be sure to include the .umap in your Packaging Sett
- **CreateLevelInstanceWithLevelName**(UObject* WorldContextObject, FString& LevelName, FString& UniqueName, FTransform& Trans, bool &bOutSuccess)
- **CreateLevelInstanceWithLevel**(ULevelStreaming* OriStreamingLevel, FString& UniqueName, FTransform& Trans, bool &bOutSuccess) — LoadLevelInstance CreateLevelInstanceWithLevelName CreateLevelInstanceWithLevel

## 属性

- **the** — level should be loaded at startup Whether the level should be visible at startup if it is loaded bInitiallyLoaded bInitiallyVisible

## ULightComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULightComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULightComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULightComponent](https://developer.gp.qq.com/api/#/searchContent/ULightComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULightComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULightComponent)

类

全文搜索

---


## 函数

- **SetIntensity**(floatNewIntensity) — Set intensity of the light
- **SetIndirectLightingIntensity**(floatNewIntensity)
- **SetVolumetricScatteringIntensity**(floatNewIntensity)
- **SetLightColor**(FLinearColor NewLightColor, boolbSRGB) — Set color of the light
- **SetTemperature**(floatNewTemperature)
- **SetLightFunctionMaterial**(UMaterialInterface *NewLightFunctionMaterial)
- **SetLightFunctionScale**(FVectorNewLightFunctionScale)
- **SetLightFunctionFadeDistance**(floatNewLightFunctionFadeDistance)
- **SetLightFunctionDisabledBrightness**(floatNewValue)
- **SetAffectDynamicIndirectLighting**(boolbNewValue)
- **SetAffectTranslucentLighting**(boolbNewValue)
- **SetEnableLightShaftBloom**(boolbNewValue)
- **SetBloomScale**(floatNewValue)
- **SetBloomThreshold**(floatNewValue)
- **SetBloomTint**(FColorNewValue)
- **SetIESTexture**(UTextureLightProfile *NewValue)
- **SetShadowBias**(floatNewValue)
- **ForceUpdateShadowState**()
- **SetSpecularScale**(floatNewValue)
- **SetLocalLightDisableDiffuse**(boolNewValue) — SetIntensity SetIndirectLightingIntensity SetVolumetricScatteringIntensity SetLightColor SetTemperature SetLightFunctionMaterial SetLightFunctionScale SetLightFunctionFadeDistance SetLightFunctionDisabledBrightness SetAffectDynamicIndirectLighting SetAffectTranslucentLighting SetEnableLightShaftBloo

## 属性

- **temperature** — in Kelvin of the blackbody illuminant. White (D65) is 6500K. false: use white (D65) as illuminant. Legacy shadowmap channel from the lighting build, now stored in FLightComponentMapBuildData. Min roughness effective for this light. Used for softening specular highlights. Multiplier on specular highl

## ULightComponentBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULightComponentBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULightComponentBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULightComponentBase](https://developer.gp.qq.com/api/#/searchContent/ULightComponentBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULightComponentBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULightComponentBase)

类

全文搜索

---


## 函数

- **SetCastShadows**(boolbNewValue) — Sets whether this light casts shadows
- **LinearColorGetLightColor**(Gets the light color as a linear color)
- **SetCastVolumetricShadow**(boolbNewValue) — SetCastShadows GetLightColor SetCastVolumetricShadow

## 属性

- **used** — to associate a light component with precomputed shadowing information across levels. The GUID changes whenever the light position changes. Total energy that the light emits. For pointspot lights with inverse squared falloff, this is in units of lumens. 1700 lumens corresponds to a 100W lightbulb. Fo

## ULightmappedSurfaceCollection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULightmappedSurfaceCollection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULightmappedSurfaceCollection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULightmappedSurfaceCollection](https://developer.gp.qq.com/api/#/searchContent/ULightmappedSurfaceCollection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULightmappedSurfaceCollection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULightmappedSurfaceCollection)

类

全文搜索

---


## 属性

- **UModel** — these surfaces come from. An array of the surface indices grouped into a single static lighting mapping. SourceModel Surfaces

## UListView

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UListView?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUListView.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UListView](https://developer.gp.qq.com/api/#/searchContent/UListView?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUListView.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UListView)

类

全文搜索

Allows thousands of items to be displayed in a list. Generates widgets dynamically for each item.

---


## 属性

- **height** — of each widget The list of items to generate widgets for The selection method for the list Called when a widget needs to be generated ItemHeight Items SelectionMode OnGenerateRowEvent

## ULocalizedOverlays

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULocalizedOverlays?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULocalizedOverlays.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULocalizedOverlays](https://developer.gp.qq.com/api/#/searchContent/ULocalizedOverlays?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULocalizedOverlays.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULocalizedOverlays)

类

全文搜索

Implements an asset that contains a set of Basic Overlays that will be displayed in accordance with the current locale, or a default set if an appropriate locale is not found

---


## 属性

- **overlays** — to use if no overlays are found for the current culture Maps a set of cultures to specific BasicOverlays assets. Cultures are comprised of three hyphen-separated parts: A two-letter ISO 639-1 language code (e.g., "zh") An optional four-letter ISO 15924 script code (e.g., "Hans") An optional two-lett

## ULocalPlayer

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULocalPlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULocalPlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULocalPlayer](https://developer.gp.qq.com/api/#/searchContent/ULocalPlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULocalPlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULocalPlayer)

类

全文搜索

Each player that is active on the current client has a LocalPlayer. It stays active across maps There may be several spawned in the case of splitscreencoop. There may be 0 spawned on servers.

---


## 属性

- **master** — viewport containing this player's view. How to constrain perspective viewport FOV The class of PlayerController to spawn for players logging in. set when we've sent a split join request The controller ID which this player accepts input from. ViewportClient AspectRatioAxisConstraint PendingLevelPlaye

## UnrealNetwork

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UnrealNetwork?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUnrealNetwork.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UnrealNetwork](https://developer.gp.qq.com/api/#/searchContent/UnrealNetwork?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUnrealNetwork.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UnrealNetwork)

类

全文搜索

虚幻网络库

---


## 函数

- **LazyProperty**(AActor) — UActorComponent @属性所在的Actor或ComponentTargetObject, stringPropertyName
- **UnrealRPC**(APlayerControllerTargetPlayerController, AActor) — UActorComponent @目标Actor或ComponentTargetObject, stringFunctionName
- **UnrealRPC_Unreliable**(APlayerControllerTargetPlayerController, AActor) — UActorComponent @目标Actor或ComponentTargetObject, stringFunctionName
- **UnrealRPC_Multicast**(AActor) — UActorComponent @目标Actor或ComponentTargetObject, stringFunctionName
- **UnrealRPC_Multicast_Unreliable**(AActor) — UActorComponent @目标Actor或ComponentTargetObject, stringFunctionName

## UObject

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UObject?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUObject.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UObject](https://developer.gp.qq.com/api/#/searchContent/UObject?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUObject.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UObject)

类

全文搜索

Object: The base class all objects. This is a built-in Unreal class and it shouldn't be modified by mod authors. The full C++ class is located here: Engine\Source\Runtime\CoreUObject\Public\UObject\UObject.h

---


## 函数

- **ExecuteUbergraph**(int32EntryPoint) — Executes some portion of the ubergraph. params EntryPoint -The entry point to start code execution at. ExecuteUbergraph

## UObjectLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UObjectLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUObjectLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UObjectLibrary](https://developer.gp.qq.com/api/#/searchContent/UObjectLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUObjectLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UObjectLibrary)

类

全文搜索

Class that holds a library of Objects

---


## 属性

- **that** — Objects must be of. If ContainsBlueprints is true, this is the native class that the blueprints are instances of and not UClass True if this library holds blueprint classes, false if it holds other objects List of Objects in library Weak pointers to objects If this library should use weak pointers T

## UOceanCDLODMeshComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UOceanCDLODMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUOceanCDLODMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UOceanCDLODMeshComponent](https://developer.gp.qq.com/api/#/searchContent/UOceanCDLODMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUOceanCDLODMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UOceanCDLODMeshComponent)

类

全文搜索

---


## 属性

- **material** — used to rendering ocean . amplitude of wave have to fade as 0 for edge quads,this is the fade radius . FFT texture sampled by world position, used as normalize sample position . X influence the foam shape . Y : Z of normal vector of FFT wave, at this moment this normal vector haven't be normalize, a

## UOceanFFTComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UOceanFFTComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUOceanFFTComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UOceanFFTComponent](https://developer.gp.qq.com/api/#/searchContent/UOceanFFTComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUOceanFFTComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UOceanFFTComponent)

类

全文搜索

---


## 函数

- **Update**(floatDeltaTime) — Update

## 属性

- **of** — grid for FFT Speed of time for FFT DisTexture NormalMapTexture WaveAmplitude FetchLength WaveSwell WindSpeed SamplePatch WaveSpeed XYDisplaceFactor JacobianFactor FoamDissipationSpeed FoamFalloffSpeed FoamGenerationAmount FoamGenerationThreshold DisplaceTextureArray NormalTextureArray Frameinterval

## UOceanMeshComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UOceanMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUOceanMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UOceanMeshComponent](https://developer.gp.qq.com/api/#/searchContent/UOceanMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUOceanMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UOceanMeshComponent)

类

全文搜索

---


## 属性

- **matarial** — used to rendering ocean OceanMaterial ProjectorMaxWaveSize Lod0size ShapeUniformValue

## UOverlapCheckAreaComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UOverlapCheckAreaComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUOverlapCheckAreaComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UOverlapCheckAreaComponent](https://developer.gp.qq.com/api/#/searchContent/UOverlapCheckAreaComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUOverlapCheckAreaComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UOverlapCheckAreaComponent)

类

全文搜索

区域重叠检测组件，能够检测到某个范围内开启重叠检测的Actor

---


## 函数

- **CheckOverlapActor**(floatDeltaTime) — 生效范围：S 触发一次区域重叠检测
- **StartCheck**(TArray < AActor* > InIgnoreActorList, boolbStopIfStarted) — 生效范围：S 开始检测
- **StopCheck**(生效范围：S 停止检测)
- **AddIgnoreActors**(TArray < AActor* >Ignores) — 生效范围：S 添加要忽略的Actor列表 params Ignores -要添加的Actor列表
- **RemoveIgnoreActor**(AActor *Ignore) — 生效范围：S 移除忽略的Actor列表 CheckOverlapActor StartCheck StopCheck AddIgnoreActors RemoveIgnoreActor

## UOverlaySlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UOverlaySlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUOverlaySlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UOverlaySlot](https://developer.gp.qq.com/api/#/searchContent/UOverlaySlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUOverlaySlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UOverlaySlot)

类

全文搜索

Slot for the UOverlay panel. Allows content to be hover above other content.

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment) — SetPadding SetHorizontalAlignment SetVerticalAlignment

## 属性

- **padding** — area between the slot and the content it contains. The alignment of the object horizontally. The alignment of the object vertically. Padding HorizontalAlignment VerticalAlignment

## UUGCBackpackAvatarHandle

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUGCBackpackAvatarHandle?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUGCBackpackAvatarHandle.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUGCBackpackAvatarHandle](https://developer.gp.qq.com/api/#/searchContent/UUGCBackpackAvatarHandle?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUGCBackpackAvatarHandle.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUGCBackpackAvatarHandle)

类

全文搜索

外显装备基类

事件

voidOnDurabilityChanged(float OriginDurability, floatChangedDurability)

当物品耐久度变化时执行

可重载并自定义

DS 被调用

params OriginDurability

-原始耐久度

params ChangedDurability

-改变后的耐久度

事件

OnDurabilityChanged

---

## UUGCCommonProduceDropItemComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUGCCommonProduceDropItemComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUGCCommonProduceDropItemComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUGCCommonProduceDropItemComponent](https://developer.gp.qq.com/api/#/searchContent/UUGCCommonProduceDropItemComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUGCCommonProduceDropItemComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUGCCommonProduceDropItemComponent)

类

全文搜索

掉落组件

---


## 函数

- **StartDrop**(AActor* DropItemActor, AController* Killer, TArray < AActor* > TraceIgnoreActors, USceneComponent *AttachComponent) — 按照配置进行一次掉落行为 生效范围：服务器 params DropItemActor -需要掉落物资的Actor，一般为配置掉落物组件的Actor本身 params Killer -击杀者或交互者，当掉落物类型为直接进入背包时或者掉落方向为面相玩家时必须，其他时候可以为Null params TraceIgnoreActors -掉落检测射线忽略的Actor数组
- **StartDropByProduceID**(int32 ProduceID, int32 ProduceGroupID, EUGCGenerateItemEntityType EntityType, ACharacter *RelatedPlayer) — 指定掉落方案进行一次 Wrapper 掉落 生效范围：服务器 params ProduceID -掉落方案ID params ProduceGroupID -掉落组方案ID(掉落组ID不为-1，掉落组ID生效。掉落组ID为-1,则掉落ID生效) params EntityType -掉落物类型 params RelatedPlayer -当掉落物方向为面相玩家时必须，当掉落物类型为进入背包时必须，其他时候可以为Null
- **SetBluePrintDropItemConfig**(TArray < FUGCGenerateDropItemInfo > ConfigItem, EUGCGenerateItemEntityType EntityType, int32ConfigID) — 动态设置掉落物组，会强制将掉落物列表生成方式改为蓝图配置 生效范围：服务器 params ConfigItem -需要动态修改的掉落物蓝图配置 params EntityType -掉落物类型 params ConfigID -需要修改的配置项索引，索引无效时修改失败
- **SetProduceIDConfig**(int32 InProduceID, int32 ProduceGroupID, EUGCGenerateItemEntityType EntityType, int32ConfigID) — 动态设置掉落串，会强制将掉落物列表生成方式改为读表 生效范围：服务器 params InProduceID -需要动态修改的掉落方案ID params ProduceGroupID -需要动态修改的掉落方案组ID params EntityType -掉落物类型 params ConfigID -需要修改的配置项索引，索引无效时修改失败
- **AddDropConfig**(int32 InProduceID, int32 ProduceGroupID, TArray < FUGCGenerateDropItemInfo > ConfigItem, EUGCGenerateItemEntityTypeEntityType) — 动态添加掉落，按照选择类型添加 生效范围：服务器 params InProduceID -需要添加的掉落方案ID，如果不需要添加读表配置方案请传参-1 params ProduceGroupID -需要添加的掉落方案组ID，如果不需要添加读表配置方案请传参-1 params ConfigItem -需要添加的掉落物蓝图配置 params EntityType -掉落物类型
- **ClearDropConfig**(EUGCDropItemListGeneratorTypeSelectType) — 动态清空配置，蓝图或读表 生效范围：服务器 params SelectType -需要清空的配置
- **SetGeneratorType**(EUGCDropItemListGeneratorTypeSelectType) — 动态修改掉落物列表生成方式 生效范围：服务器 params SelectType -生成方式
- **SetDynamicCenterOffset**(FVectorInDynamicCenterOffset) — 动态设置掉落圆环偏移 生效范围：服务器 params InDynamicCenterOffset -偏移量 StartDrop StartDropByProduceID SetBluePrintDropItemConfig SetProduceIDConfig AddDropConfig ClearDropConfig SetGeneratorType SetDynamicCenterOffset

## 委托

- voidOnDropOver()
- 当前掉落结束后触发
- 最后一个拾取物被创建时就触发，不会等抛物线动效走完
- 广播范围：DS
- OnDropOver

## UUGCGamePartConfig

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUGCGamePartConfig?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUGCGamePartConfig.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUGCGamePartConfig](https://developer.gp.qq.com/api/#/searchContent/UUGCGamePartConfig?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUGCGamePartConfig.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUGCGamePartConfig)

类

全文搜索

GamePart配置基类

---


## 属性

- **PlayerComponent** — 配置列表 GamePartName DependentGameParts GlobalActorClass PlayerComponentConfigs

## UUGCItemWarehouseBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUGCItemWarehouseBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUGCItemWarehouseBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUGCItemWarehouseBase](https://developer.gp.qq.com/api/#/searchContent/UUGCItemWarehouseBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUGCItemWarehouseBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUGCItemWarehouseBase)

类

全文搜索

仓库对象

---


## 委托

- voidItemChangeDelegate(const EUGCItemChangeType&ChangeType, const FItemDefineID&DefineID)
- 当仓库物品实例数据发生改变时广播
- 广播范围：服务端 & 客户端
- voidItemAddDelegate(const FItemDefineID&DefineID)
- 当仓库新增物品实例时广播
- 广播范围：服务端 & 客户端
- voidItemUpdateDelegate(const FItemDefineID&DefineID)
- 当物品实例数据更新时广播
- 广播范围：服务端 & 客户端
- voidItemRemoveDelegate(const FItemDefineID&DefineID)
- 当移除物品实例时广播
- 广播范围：服务端 & 客户端
- ItemChangeDelegate
- ItemAddDelegate
- ItemUpdateDelegate
- ItemRemoveDelegate

## UUGCMotionComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUGCMotionComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUGCMotionComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUGCMotionComponent](https://developer.gp.qq.com/api/#/searchContent/UUGCMotionComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUGCMotionComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUGCMotionComponent)

类

全文搜索

运动器组件

---


## 函数

- **StartMotion**(intConfigID) — 开始运行特定运动器 生效范围S params ConfigID -运动器索引，默认参数-1(所有运动器)
- **PauseMotion**(intConfigID) — 停止特定运动器 生效范围S params ConfigID -运动器索引，默认参数-1(所有运动器)
- **ResetMotion**(intConfigID) — 重置特定运动器 生效范围S params ConfigID -运动器索引，默认参数-1(所有运动器) StartMotion PauseMotion ResetMotion

## UUniformGridPanel

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUniformGridPanel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUniformGridPanel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUniformGridPanel](https://developer.gp.qq.com/api/#/searchContent/UUniformGridPanel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUniformGridPanel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUniformGridPanel)

类

全文搜索

A panel that evenly divides up available space between all of its children.

---


## 函数

- **SetSlotPadding**(FMarginInSlotPadding)
- **SetMinDesiredSlotWidth**(floatInMinDesiredSlotWidth)
- **SetMinDesiredSlotHeight**(floatInMinDesiredSlotHeight)
- **AddChildToUniformGrid**(UWidget *Content) — SetSlotPadding SetMinDesiredSlotWidth SetMinDesiredSlotHeight AddChildToUniformGrid

## 属性

- **given** — to each slot The minimum desired width of the slots The minimum desired height of the slots SlotPadding MinDesiredSlotWidth MinDesiredSlotHeight

## UUniformGridSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUniformGridSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUniformGridSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUniformGridSlot](https://developer.gp.qq.com/api/#/searchContent/UUniformGridSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUniformGridSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUniformGridSlot)

类

全文搜索

A slot for UUniformGridPanel, these slots all share the same size as the largest slot in the grid.

---


## 函数

- **SetRow**(int32InRow) — Sets the row index of the slot, this determines what cell the slot is in the panel
- **SetColumn**(int32InColumn) — Sets the column index of the slot, this determines what cell the slot is in the panel
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment) — SetRow SetColumn SetHorizontalAlignment SetVerticalAlignment

## 属性

- **alignment** — of the object horizontally. The alignment of the object vertically. The row index of the cell this slot is in The column index of the cell this slot is in HorizontalAlignment VerticalAlignment Row Column

## UUniversalProjectileFilter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUniversalProjectileFilter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUniversalProjectileFilter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUniversalProjectileFilter](https://developer.gp.qq.com/api/#/searchContent/UUniversalProjectileFilter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUniversalProjectileFilter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUniversalProjectileFilter)

类

全文搜索

过滤器

事件

boolFilter(AActor * InActor, AActor * Causer, AController *Instigator)

过滤器的过滤方法

生效范围：SC

return

-bool 过滤结果

params InActor

-当前判断过滤的对象

params Causer

-发起过滤的对象（可能为抛体，法术场等）

params Instigator

-发起过滤的对象的Controller（一般在服务端使用）

事件

Filter

---

## UUserDefinedEnum

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUserDefinedEnum?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUserDefinedEnum.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUserDefinedEnum](https://developer.gp.qq.com/api/#/searchContent/UUserDefinedEnum?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUserDefinedEnum.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUserDefinedEnum)

类

全文搜索

An Enumeration is a list of named values.

---


## 属性

- **display** — names for enum entries mapped against their raw enum name (UEnum::GetNameByIndex). To sync DisplayNameMap use FEnumEditorUtils::EnsureAllDisplayNamesExist. DisplayNameMap

## UUserInterfaceSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUserInterfaceSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUserInterfaceSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUserInterfaceSettings](https://developer.gp.qq.com/api/#/searchContent/UUserInterfaceSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUserInterfaceSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUserInterfaceSettings)

类

全文搜索

User Interface settings that control Slate and UMG.

---


## 属性

- **to** — determine if we should render the Focus Brush for widgets that have user focus. An optional application scale to apply on top of the custom scaling rules. So if you want to expose a property in your game title, you can modify this underlying value to scale the entire UI. EUIScalingRuleUIScaleRule Th

## UUserWidget

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUserWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUserWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUserWidget](https://developer.gp.qq.com/api/#/searchContent/UUserWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUserWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUserWidget)

类

全文搜索

The user widget is extensible by users through the WidgetBlueprint.

---


## 函数

- **AddToViewport**(int32ZOrder) — Adds it to the game's viewport and fills the entire screen, unless SetDesiredSizeInViewport is called to explicitly set the size. params ZOrder -The higher the number, the more on top this widget will be.
- **AddToPlayerScreen**(int32ZOrder) — Adds the widget to the game's viewport in a section dedicated to the player. This is valuable in a split screen game where you need to only show a widget over a player's portion of the viewport. params ZOrder -The higher the number, the more on top this widget will be.
- **RemoveFromViewport**(Removes the widget from the viewport.)
- **GetZOrderOfViewportWidget**(Get Z-order of Viewport Widget, added by fourthchen)
- **SetPositionInViewport**(FVector2D Position, boolbRemoveDPIScale) — Sets the widgets position in the viewport. params Position -The 2D position to set the widget to in the viewport. params bRemoveDPIScale -If you've already calculated inverse DPI, set this to false.
- **SetDesiredSizeInViewport**(FVector2DSize)
- **SetOffsetsInViewport**(FMarginMargin)
- **SetAnchorsInViewport**(FAnchorsAnchors)
- **SetAlignmentInViewport**(FVector2DAlignment)
- **AnchorsGetAnchorsInViewport**()
- **Vector2DGetAlignmentInViewport**()
- **GetIsVisible**()
- **IsInViewport**(return -true if the widget was added to the viewport using AddToViewport.)
- **GetOwningLocalPlayer**(Gets the local player associated with this UI. return -The owning local player.)
- **SetOwningLocalPlayer**(ULocalPlayer *LocalPlayer) — Sets the player associated with this UI via LocalPlayer reference. params LocalPlayer -The local player you want to be the conceptual owner of this UI.
- **GetOwningPlayer**(Gets the player controller associated with this UI. return -The player controller that owns the UI.)
- **SetOwningPlayer**(APlayerController *LocalPlayerController) — Sets the local player associated with this UI via PlayerController reference. params LocalPlayerController -The PlayerController of the local player you want to be the conceptual owner of this UI.
- **GetOwningPlayerPawn**(Gets the player pawn associated with this UI. return -Gets the owning player pawn that's owned by the player controller assigned to this widget.)
- **PreConstruct**(boolIsDesignTime) — Called by both the game and the editor. Allows users to run initial setup for their widgets to better preview the setup in the designer and since generally that same setup code is required at runtime, it's called there as well. WARNING This is intended purely for cosmetic updates using locally owned
- **Construct**(Called after the underlying slate widget is constructed. Depending on how the slate object is used this event may be called multiple times due to adding and removing from the hierarchy.)
- **ConstructForLua**()
- **Destruct**(Called when a widget is no longer referenced causing the slate resource to destroyed. Just like Construct this event can be called multiple times.)
- **Tick**(FGeometry MyGeometry, floatInDeltaTime) — Ticks this widget. Override in derived classes, but always call the parent implementation. params MyGeometry -The space allotted for this widget params InDeltaTime -Real time passed since last tick
- **OnPaint**(FPaintContext &Context)
- **IsInteractable**(Gets a value indicating if the widget is interactive.)
- **EventReplyOnFocusReceived**(FGeometry MyGeometry, FFocusEventInFocusEvent) — Called when keyboard focus is given to this widget. This event does not bubble. return - Returns whether the event was handled, along with other possible actions params MyGeometry -The Geometry of the widget receiving the event params InFocusEvent -FocusEvent
- **OnFocusLost**(FFocusEventInFocusEvent) — Called when this widget loses focus. This event does not bubble. params InFocusEvent -FocusEvent
- **OnAddedToFocusPath**(FFocusEventInFocusEvent) — If focus is gained on on this widget or on a child widget and this widget is added to the focus path, and wasn't previously part of it, this event is called. params InFocusEvent -FocusEvent
- **OnRemovedFromFocusPath**(FFocusEventInFocusEvent) — If focus is lost on on this widget or on a child widget and this widget is no longer part of the focus path. params InFocusEvent -FocusEvent
- **EventReplyOnKeyChar**(FGeometry MyGeometry, FCharacterEventInCharacterEvent) — Called after a character is entered while this widget has focus return - Returns whether the event was handled, along with other possible actions params MyGeometry -The Geometry of the widget receiving the event params InCharacterEvent -Character event
- **EventReplyOnPreviewKeyDown**(FGeometry MyGeometry, FKeyEventInKeyEvent) — Called after a key (keyboard, controller, ...) is pressed when this widget or a child of this widget has focus If a widget handles this event, OnKeyDown will not be passed to the focused widget. This event is primarily to allow parent widgets to consume an event before a child widget processes it an
- **EventReplyOnKeyDown**(FGeometry MyGeometry, FKeyEventInKeyEvent) — Called after a key (keyboard, controller, ...) is pressed when this widget has focus (this event bubbles if not handled) return - Returns whether the event was handled, along with other possible actions params MyGeometry -The Geometry of the widget receiving the event params InKeyEvent -Key event
- **EventReplyOnKeyUp**(FGeometry MyGeometry, FKeyEventInKeyEvent) — Called after a key (keyboard, controller, ...) is released when this widget has focus return - Returns whether the event was handled, along with other possible actions params MyGeometry -The Geometry of the widget receiving the event params InKeyEvent -Key event
- **EventReplyOnAnalogValueChanged**(FGeometry MyGeometry, FAnalogInputEventInAnalogInputEvent) — Called when an analog value changes on a button that supports analog return - Returns whether the event was handled, along with other possible actions params MyGeometry -The Geometry of the widget receiving the event params InAnalogInputEvent -Analog Event
- **EventReplyOnMouseButtonDown**(FGeometry MyGeometry, FPointerEvent &MouseEvent) — The system calls this method to notify the widget that a mouse button was pressed within it. This event is bubbled. return -Whether the event was handled along with possible requests for the system to take action. params MyGeometry -The Geometry of the widget receiving the event params MouseEvent -I
- **EventReplyOnPreviewMouseButtonDown**(FGeometry MyGeometry, FPointerEvent &MouseEvent) — Just like OnMouseButtonDown, but tunnels instead of bubbling. If this even is handled, OnMouseButtonDown will not be sent. Use this event sparingly as preview events generally make UIs more difficult to reason about. return -Whether the event was handled along with possible requests for the system t
- **EventReplyOnMouseButtonUp**(FGeometry MyGeometry, FPointerEvent &MouseEvent) — The system calls this method to notify the widget that a mouse button was release within it. This event is bubbled. return -Whether the event was handled along with possible requests for the system to take action. params MyGeometry -The Geometry of the widget receiving the event params MouseEvent -I
- **EventReplyOnMouseMove**(FGeometry MyGeometry, FPointerEvent &MouseEvent) — The system calls this method to notify the widget that a mouse moved within it. This event is bubbled. return -Whether the event was handled along with possible requests for the system to take action. params MyGeometry -The Geometry of the widget receiving the event params MouseEvent -Information ab
- **OnMouseEnter**(FGeometry MyGeometry, FPointerEvent &MouseEvent) — The system will use this event to notify a widget that the cursor has entered it. This event is NOT bubbled. params MyGeometry -The Geometry of the widget receiving the event params MouseEvent -Information about the input event
- **OnMouseLeave**(FPointerEvent &MouseEvent) — The system will use this event to notify a widget that the cursor has left it. This event is NOT bubbled. params MouseEvent -Information about the input event
- **EventReplyOnMouseWheel**(FGeometry MyGeometry, FPointerEvent &MouseEvent) — Called when the mouse wheel is spun. This event is bubbled. return - Returns whether the event was handled, along with other possible actions params MouseEvent -Mouse event
- **EventReplyOnMouseButtonDoubleClick**(FGeometry InMyGeometry, FPointerEvent &InMouseEvent) — Called when a mouse button is double clicked. Override this in derived classes. return - Returns whether the event was handled, along with other possible actions params InMyGeometry -Widget geometry params InMouseEvent -Mouse button event
- **OnDragDetected**(FGeometry MyGeometry, FPointerEvent& PointerEvent, UDragDropOperation* &Operation) — Called when Slate detects that a widget started to be dragged. params PointerEvent -MouseMove that triggered the drag params Operation - The drag operation that was detected.
- **OnDragCancelled**(FPointerEvent& PointerEvent, UDragDropOperation *Operation) — Called when the user cancels the drag operation, typically when they simply release the mouse button after beginning a drag operation, but failing to complete the drag. params PointerEvent -Last mouse event from when the drag was canceled. params Operation - The drag operation that was canceled.
- **OnDragEnter**(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation *Operation) — Called during drag and drop when the drag enters the widget. params MyGeometry - The geometry of the widget receiving the event. params PointerEvent - The mouse event from when the drag entered the widget. params Operation - The drag operation that entered the widget.
- **OnDragLeave**(FPointerEvent PointerEvent, UDragDropOperation *Operation) — Called during drag and drop when the drag leaves the widget. params PointerEvent - The mouse event from when the drag left the widget. params Operation - The drag operation that entered the widget.
- **OnDragOver**(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation *Operation) — Called during drag and drop when the the mouse is being dragged over a widget. return -'true' to indicate that you handled the drag over operation. Returning 'false' will cause the operation to continue to bubble up. params MyGeometry - The geometry of the widget receiving the event. params PointerE
- **OnDrop**(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation *Operation) — Called when the user is dropping something onto a widget. Ends the drag and drop operation, even if no widget handles this. return -'true' to indicate you handled the drop operation. params MyGeometry - The geometry of the widget receiving the event. params PointerEvent - The mouse event from when t
- **EventReplyOnTouchGesture**(FGeometry MyGeometry, FPointerEvent &GestureEvent) — Called when the user performs a gesture on trackpad. This event is bubbled. return - Returns whether the event was handled, along with other possible actions params MyGeometry - The geometry of the widget receiving the event. params GestureEvent -gesture event
- **EventReplyOnTouchStarted**(FGeometry MyGeometry, FPointerEvent &InTouchEvent) — Called when a touchpad touch is started (finger down) params MyGeometry - The geometry of the widget receiving the event. params InTouchEvent -The touch event generated
- **EventReplyOnTouchMoved**(FGeometry MyGeometry, FPointerEvent &InTouchEvent) — Called when a touchpad touch is moved (finger moved) params MyGeometry - The geometry of the widget receiving the event. params InTouchEvent -The touch event generated
- **EventReplyOnTouchEnded**(FGeometry MyGeometry, FPointerEvent &InTouchEvent) — Called when a touchpad touch is ended (finger lifted) params MyGeometry - The geometry of the widget receiving the event. params InTouchEvent -The touch event generated
- **EventReplyOnMotionDetected**(FGeometry MyGeometry, FMotionEventInMotionEvent) — Called when motion is detected (controller or device) e.g. Someone tilts or shakes their controller. params MyGeometry - The geometry of the widget receiving the event.
- **OnMouseCaptureLost**(Called when mouse capture is lost if it was owned by this widget.)
- **GetAllChildrenOfType**(FString Type, TArray < UWidget* > &Children)
- **GetTypedChildrenOfWidget**(UWidget* Parent, FString Type, TArray < UWidget* > &Children)
- **BindToAnimationStarted**(UWidgetAnimation* Animation, FWidgetAnimationDynamicEventDelegate) — Bind an animation started delegate. params Animation -the animation to listen for starting or finishing. params Delegate -the delegate to call when the animation's state changes
- **UnbindFromAnimationStarted**(UWidgetAnimation* Animation, FWidgetAnimationDynamicEventDelegate) — Unbind an animation started delegate. params Animation -the animation to listen for starting or finishing. params Delegate -the delegate to call when the animation's state changes
- **UnbindAllFromAnimationStarted**(UWidgetAnimation *Animation)
- **BindToAnimationFinished**(UWidgetAnimation* Animation, FWidgetAnimationDynamicEventDelegate) — Bind an animation finished delegate. params Animation -the animation to listen for starting or finishing. params Delegate -the delegate to call when the animation's state changes
- **UnbindFromAnimationFinished**(UWidgetAnimation* Animation, FWidgetAnimationDynamicEventDelegate) — Unbind an animation finished delegate. params Animation -the animation to listen for starting or finishing. params Delegate -the delegate to call when the animation's state changes
- **UnbindAllFromAnimationFinished**(UWidgetAnimation *Animation)
- **BindToAnimationEvent**(UWidgetAnimation* Animation, FWidgetAnimationDynamicEvent Delegate, EWidgetAnimationEvent AnimationEvent, FNameUserTag) — Allows binding to a specific animation's event. params Animation -the animation to listen for starting or finishing. params Delegate -the delegate to call when the animation's state changes params AnimationEvent -the event to watch for. params UserTag -Scopes the delegate to only be called when the
- **OnAnimationStarted**(UWidgetAnimation *Animation) — Called when an animation is started. params Animation -the animation that started
- **OnAnimationFinished**(UWidgetAnimation *Animation) — Called when an animation has either played all the way through or is stopped params Animation -The animation that has finished playing
- **SetColorAndOpacity**(FLinearColorInColorAndOpacity) — Sets the tint of the widget, this affects all child widgets. params InColorAndOpacity -The tint to apply to all child widgets.
- **SetForegroundColor**(FSlateColorInForegroundColor) — Sets the foreground color of the widget, this is inherited by sub widgets. Any color property that is marked as inherit will use this color. params InForegroundColor -The foreground color.
- **SetPadding**(FMarginInPadding)
- **PlayAnimation**(UWidgetAnimation* InAnimation, float StartAtTime, int32 NumLoopsToPlay, EUMGSequencePlayMode :: Type PlayMode, floatPlaybackSpeed) — Plays an animation in this widget a specified number of times params InAnimation -The animation to play params StartAtTime -The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playback of the animation. params
- **PlayAnimationTo**(UWidgetAnimation* InAnimation, float StartAtTime, float EndAtTime, int32 NumLoopsToPlay, EUMGSequencePlayMode :: Type PlayMode, floatPlaybackSpeed) — Plays an animation in this widget a specified number of times stoping at a specified time params InAnimation -The animation to play params StartAtTime -The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playba
- **StopAnimation**(UWidgetAnimation *InAnimation) — Stops an already running animation in this widget
- **JumpAnimation**(UWidgetAnimation* InAnimation, floatJumpAtTime) — Stop and jump to the specified time in this widget params InAnimation -The animation to jump params JumpAtTime -specified time
- **PauseAnimation**(UWidgetAnimation *InAnimation) — Pauses an already running animation in this widget return -the time point the animation was at when it was paused, relative to its start position. Use this as the StartAtTime when you trigger PlayAnimation.
- **GetAnimationCurrentTime**(UWidgetAnimation *InAnimation) — Gets the current time of the animation in this widget return -the current time of the animation.
- **IsAnimationPlaying**(UWidgetAnimation *InAnimation) — Gets whether an animation is currently playing on this widget. return -True if the animation is currently playing params InAnimation -The animation to check the playback status of
- **IsAnyAnimationPlaying**(return -True if any animation is currently playing)
- **SetNumLoopsToPlay**(UWidgetAnimation* InAnimation, int32NumLoopsToPlay) — Changes the number of loops to play given a playing animation params InAnimation -The animation that is already playing params NumLoopsToPlay -The number of loops to play. (0 to loop indefinitely)
- **SetPlaybackSpeed**(UWidgetAnimation* InAnimation, floatPlaybackSpeed) — Changes the playback rate of a playing animation params InAnimation -The animation that is already playing
- **ReverseAnimation**(UWidgetAnimation *InAnimation) — If an animation is playing, this function will reverse the playback. params InAnimation -The playing animation that we want to reverse
- **IsAnimationPlayingForward**(UWidgetAnimation *InAnimation) — returns true if the animation is currently playing forward, false otherwise. params InAnimation -The playing animation that we want to know about
- **PlaySound**(USoundBase *SoundToPlay) — Plays a sound through the UI
- **GetWidgetFromName**(FName &Name) — return - The uobject widget corresponding to a given name
- **GetVariableWidgetFromName**(FName &Name)
- **IsPlayingAnimation**(Are we currently playing any animations?)
- **NewWidgetObjectBP**(UObject* Outer, UClass *UserWidgetClass)
- **GetCacheLayerId**(return CacheLayerId only windows)
- **ListenForInputAction**(FName ActionName, TEnumAsByte < EInputEvent > EventType, bool bConsume, FOnInputActionCallback) — Listens for a particular Player Input Action by name. This requires that those actions are being executed, and that we're not currently in UI-Only Input Mode.
- **StopListeningForInputAction**(FName ActionName, TEnumAsByte < EInputEvent >EventType) — Removes the binding for a particular action's callback.
- **StopListeningForAllInputActions**(Stops listening to all input actions, and unregisters the input component with the player controller.)
- **RegisterInputComponent**(ListenForInputAction will automatically Register an Input Component with the player input system. If you however, want to Pause and Resume, listening for a set of actions, the best way is to use UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.)
- **UnregisterInputComponent**(StopListeningForAllInputActions will automatically Register an Input Component with the player input system. If you however, want to Pause and Resume, listening for a set of actions, the best way is to use UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.)
- **IsListeningForInputAction**(FNameActionName) — Checks if the action has a registered callback with the input component.
- **SetInputActionPriority**(int32NewPriority)
- **SetInputActionBlocking**(boolbShouldBlock) — AddToViewport AddToPlayerScreen RemoveFromViewport GetZOrderOfViewportWidget SetPositionInViewport SetDesiredSizeInViewport SetOffsetsInViewport SetAnchorsInViewport SetAlignmentInViewport GetAnchorsInViewport GetAlignmentInViewport GetIsVisible IsInViewport GetOwningLocalPlayer SetOwningLocalPlayer

## 属性

- **color** — and opacity of this widget. Tints all child widgets. The foreground color of the widget, this is inherited by sub widgets. Any color property that is marked as inherit will use this color. The padding area around the content. All the sequence players currently playing List of sequence players to cac

## UUserWidgetSkin

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUserWidgetSkin?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUserWidgetSkin.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUserWidgetSkin](https://developer.gp.qq.com/api/#/searchContent/UUserWidgetSkin?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUserWidgetSkin.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUserWidgetSkin)

类

全文搜索

The user widget skin

---


## 函数

- **PreReceiveApply**()
- **ReceiveApply**()
- **PreReceiveRevert**()
- **ReceiveRevert**()
- **ReceiveCleanup**()
- **ReceiveShow**()
- **ReceiveHide**()
- **GetMountedWidgetByIndex**(int32MountInfoIndex) — PreReceiveApply ReceiveApply PreReceiveRevert ReceiveRevert ReceiveCleanup ReceiveShow ReceiveHide GetMountedWidgetByIndex

## 属性

- **skin** — data. WidgetSkin

## UUserWidgetUI

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUserWidgetUI?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUserWidgetUI.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUserWidgetUI](https://developer.gp.qq.com/api/#/searchContent/UUserWidgetUI?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUserWidgetUI.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUserWidgetUI)

类

全文搜索

The user widget UI

---


## 函数

- **ReceiveApply**()
- **ReceiveRevert**()
- **ReceiveCleanup**(ReceiveApply ReceiveRevert ReceiveCleanup)

## 属性

- **Main** — UI. LayoutDataList WidgetType WidgetUIBlueprintType

## UUTSkillManagerComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUTSkillManagerComponent?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E6%8A%80%E8%83%BD%2FUUTSkillManagerComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUTSkillManagerComponent](https://developer.gp.qq.com/api/#/searchContent/UUTSkillManagerComponent?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E6%8A%80%E8%83%BD%2FUUTSkillManagerComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUTSkillManagerComponent)

类

全文搜索

技能组件

---


## 委托

- voidUGC_SkillActiveDelegate(FStringSkillPath)
- 技能激活
- 生效范围：SC
- params SkillPath
- -技能路径
- voidUGC_SkillStartDelegate(FStringSkillPath)
- 技能开始
- 生效范围：SC
- params SkillPath
- -技能路径
- voidUGC_SkillEndDelegate(FStringSkillPath)
- 技能结束
- 生效范围：SC
- params SkillPath
- -技能路径
- voidUGC_SkillCDDelegate(FStringSkillPath)
- 技能进入冷却
- 生效范围：SC
- params SkillPath
- -技能路径
- UGC_SkillActiveDelegate
- UGC_SkillStartDelegate
- UGC_SkillEndDelegate
- UGC_SkillCDDelegate

