# UGC_Backpack_Item_UIBP

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGC_Backpack_Item_UIBP?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGC_Backpack_Item_UIBP.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGC_Backpack_Item_UIBP](https://developer.gp.qq.com/api/#/searchContent/UGC_Backpack_Item_UIBP?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGC_Backpack_Item_UIBP.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGC_Backpack_Item_UIBP)

类

全文搜索

背包格子控件 @class UGC_Backpack_Item_UIBP_C:UUserWidget @field CanvasPanel_Lock UCanvasPanel @field CanvasPanel_Replace UCanvasPanel @field UGC_Common_Item_UIBP UUGC_Common_Item_UIBP_C @field CanvasPanel_New UCanvasPanel @field UGCCommonDragDropItem UUGCCommonDragDropItem_C @field HorizontalBox_Unlock UHorizontalBox @field Text_UnlockCurrencyNum UTextBlock @field TextBlock_Num UTextBlock @field Image_Currency UImage

---


## 函数

- **Selected**(booleanbSelect) — 格子显示选中状态 params bSelect -是否选中
- **ItemData**(ItemDefineIDItemDefineID, numberCount, tableAdditionData) — 更新格子数据(!!!) params ItemDefineID -物品DefineID params Count -数量 params AdditionData -控件额外数据, 选中数据/拖拽数据都会包含
- **DragData**(stringDragType, EDragDropDirectionModeDragDirectionMode, functionDragClickCallback, functionDragStartCallback, functionDragCancelCallback) — 更新格子拖拽数据(!!!) params DragType -拖拽类型，用于区分不同的拖拽处理 params DragDirectionMode -默认自由拖拽，若处于滚动列表中，需与滚动方向相反设置 params DragClickCallback -拖拽点击回调 params DragStartCallback -拖拽开始回调 params DragCancelCallback -拖拽取消回调
- **ItemState**(EBackpackItemStateState) — 更新格子解锁状态 params State -格子状态, 默认为Unlock
- **CustomUIList**(FSoftClassPath[]SoftWidgetPaths, functionPostCallback) — 设置格子叠加UI params SoftWidgetPaths -叠加UI路径列表 params PostCallback -叠加UI加载完成回调 {UISlot:挂点Slot, CustomUI:叠加控件}
- **UnlockInfo**(booleanbShow, numberCoinID, numberCostNum) — 显示解锁信息 params bShow -是否显示解锁信息 params CoinID -代币物品ID params CostNum -解锁所需代币数量
- **GetUIData**(控件的UI数据 return -UI数据)
- **IsNewItem**(booleanbNew) — 显示 新 标记 params bNew -是否显示 新 标记 ShowSelected UpdateItemData UpdateDragData UpdateItemState SetCustomUIList SetUnlockInfo GetUIData SetIsNewItem