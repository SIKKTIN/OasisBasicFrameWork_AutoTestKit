# VirtualItemManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/VirtualItemManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FVirtualItemManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=VirtualItemManager](https://developer.gp.qq.com/api/#/searchContent/VirtualItemManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FVirtualItemManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=VirtualItemManager)

类

全文搜索

UGC虚拟物品全局管理器

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| boolean | **AddVirtualItems** | UUGCPlayerControllerPlayerController, tableItemList, stringRequestMark | 添加多种虚拟物品 生效范围：服务端 return -是否添加成功 params PlayerController -玩家控制器 params ItemList -物品列表，key为物品ID，value为数量 params RequestMark -发起请求标记。会传回AddItemResultDelegate的Result中，可以省略 |
| boolean | **AddVirtualItem** | UUGCPlayerControllerPlayerController, numberItemID, numberNum, stringRequestMark | 添加虚拟物品 生效范围：服务端 return -是否添加成功 params PlayerController -玩家控制器 params ItemID -虚拟物品ID params Num -添加的物品数量 params RequestMark -发起请求标记。会传回AddItemResultDelegate的Result中，可以省略 |
| Remove | **VirtualItem** | UUGCPlayerControllerPlayerController, numberItemID, numberNum, DelegateCallback | 移除虚拟物品 生效范围：服务端 params PlayerController -玩家控制器 params ItemID -虚拟物品ID params Num -移除的物品数量 params Callback -回调，可不传参 |
| Remove | **Item** | UUGCPlayerControllerPlayerController, numberItemID, numberNum, Delegate|functionCallback | 移除虚拟物品，如果物品配置了到背包的映射，则只以背包中的数量为准 生效范围：服务端 params PlayerController -玩家控制器 params ItemID -虚拟物品ID params Num -移除的物品数量 params Callback -回调，可不传参 |
| number | **GetVirtualItemNum** | numberItemID, UUGCPlayerControllerPlayerController | 获取虚拟物品数量（不包含已转移背包的数量） 生效范围：客户端&&服务器 params ItemID -物品ID params PlayerController -玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |
| number | **GetItemNum** | numberItemID, UUGCPlayerControllerPlayerController | 获取虚拟物品数量（包括已转移到背包的物品） 生效范围：客户端&&服务器 params ItemID -物品ID params PlayerController -玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |
| number | **GetFreeItemNum** | numberItemID, UUGCPlayerControllerPlayerController | 获取非绿洲币购买的物品数量 生效范围：客户端&&服务器 params ItemID -物品ID params PlayerController -玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |
| number | **GetOasisItemNum** | numberItemID, UUGCPlayerControllerPlayerController | 获取绿洲币购买的物品数量 生效范围：客户端&&服务器 params ItemID -物品ID params PlayerController -玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |
| number | **GetMappedItemNum** | numberItemID, UUGCPlayerControllerPlayerController | 获取已映射到背包的物品数量 生效范围：客户端&&服务器 params ItemID -物品ID params PlayerController -玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |
| Transfer | **ToBackpack** | PlayerControllerPlayerController, numberItemID, numberItemNum, booleanbPartial | 将虚拟物品转移到背包（需配置映射表UGCObjectMapping） 生效范围：服务器 params PlayerController -玩家控制器 params ItemID -物品ID params ItemNum -数量, 不传则默认全部转移 params bPartial -是否在背包空间不足时部分转移, 默认false |
| table | **GetItemDatas** |  | 获取所有虚拟物品ID的信息 生效范围：客户端&&服务器 |
| table | **GetItemData** | numberItemID | 获取虚拟物品ID的信息 生效范围：客户端&&服务器 return -如果没有对应的值则返回nil |
| number | **GetClassicItemID** | numberItemID | 【废弃】请使用 GetMappedItemID 获取经典物品ID 生效范围：客户端&&服务器 return -如果没有对应的值则返回nil params ItemID -虚拟物品ID |
| number | **GetMappedItemID** | numberItemID | 获取虚拟物品ID对应的背包物品ID 生效范围：客户端&&服务器 return -背包物品ID，如果没有配置虚拟物品ID到UGCObjectMapping表中，则返回nil params ItemID -虚拟物品ID |
| table | **GetReverseMappingDatas** |  | 获取所有经典物品ID到虚拟物品ID映射数据 生效范围：客户端&&服务器 |
| boolean | **GetIsEnableMappingItem** |  | 获取是否已启用虚拟物品到背包物品的映射 生效范围：客户端&&服务器 |
| number | **GetVirtualItemID** | numberClassicItemID | 获取虚拟物品ID 生效范围：客户端&&服务器 return -如果没有对应的值则返回nil params ClassicItemID -经典物品ID |
| table | **GetOwnedVirtualItems** | UUGCPlayerControllerPlayerController | 获取所有已持有的虚拟物品 生效范围：客户端&&服务器 params PlayerController -玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |
| table | **GetOwnedItems** | UUGCPlayerControllerPlayerController | 获取所有已持有的物品（包括已映射到背包的经典物品） 生效范围：客户端&&服务器 params PlayerController -玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |
| table | **GetUntransferredItems** | UUGCPlayerControllerPlayerController | 获取未转移到背包的物品 生效范围：客户端&&服务器 params PlayerController -玩家控制器，客户端调用可以不传参，即默认主控玩家控制器 |
| Set | **AutoTransferActive** | booleanbActive | 设置是否开启自动转移背包 生效范围：服务器 params bActive -是否开启自动转移 |
| Set | **GetItemUIActive** | boolbShow | 设置是否显示获得物品弹窗 如果在已显示弹窗后设置为不显示，则在当前所有弹窗显示结束后再生效 params bShow -是否显示 AddVirtualItems AddVirtualItem RemoveVirtualItem RemoveItem GetVirtualItemNum GetItemNum GetFreeItemNum GetOasisItemNum GetMappedItemNum TransferToBackpack GetItemDatas GetItemData GetClassicItemID GetMappedItemID GetReverseMappingData |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| @param | **Result** | VirtualItemAddItemResult @添加结果 VirtualItemManager.RemoveItemResultDelegate 移除物品后触发 生效范围：客户端&&服务器 @param Result VirtualItemRemoveItemResult @移除结果 VirtualItemManager.TransferToBackpackResultDelegate 转移虚拟物品到背包时触发 生效范围：客户端&&服务器 @param Result VirtualItemTransferResult @转移结果 VirtualItemManager.TableDataRe |

