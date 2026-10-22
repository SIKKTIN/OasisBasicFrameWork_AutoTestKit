# UGCBackPackSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCBackPackSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCBackPackSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCBackPackSystem](https://developer.gp.qq.com/api/#/searchContent/UGCBackPackSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCBackPackSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCBackPackSystem)

类

全文搜索

背包系统接口库

---


## 函数

- **BackpackComponentGetBackpackComponent**(PlayerPawnPlayerPawn) — 获取背包组件(客户端仅能获取到自己的） 生效范围：服务器&客户端 return -背包组件 params PlayerPawn -玩家角色
- **AddItem**(PlayerPawnPlayerPawn, numberItemID, numberCount) — 添加道具 生效范围：服务器 params PlayerPawn -玩家角色 params ItemID -物品ID params Count -数量
- **DropItem**(PlayerPawnPlayerPawn, numberItemID, numberCount, booleanIsDestroy) — 掉落道具（入参为ItemID，不关心具体哪个道具） 生效范围：服务器 params PlayerPawn -玩家角色 params ItemID -物品ID params Count -数量 params IsDestroy -是否直接销毁，不掉落地面
- **UseItem**(PlayerPawnPlayerPawn, numberItemID) — 使用道具（入参为ItemID，不关心具体哪个道具） 生效范围：服务器 params PlayerPawn -玩家角色 params ItemID -物品ID
- **DisuseItem**(PlayerPawnPlayerPawn, numberItemID) — 停止使用物品（入参为ItemID，默认选择同ID第一个，仅对物资编辑器生成的绷带，饮料类物资生效） 生效范围：服务器 params PlayerPawn -玩家角色 params ItemID -物品ID
- **DropItemByInstanceID**(PlayerPawnPlayerPawn, numberInstanceID, numberCount, booleanIsDestroy) — 根据InstanceID（物品实例ID）掉落道具 生效范围：服务器 params PlayerPawn -玩家角色 params InstanceID -物品实例ID（唯一） params Count -数量 params IsDestroy -是否直接销毁，不掉落地面
- **UseItemByInstanceID**(PlayerPawnPlayerPawn, numberInstanceID) — 根据InstanceID（物品实例ID）使用道具 生效范围：服务器 params PlayerPawn -玩家角色 params InstanceID -物品实例ID（唯一）
- **DisuseItemByInstanceID**(PlayerPawnPlayerPawn, numberInstanceID) — 根据InstanceID（物品实例ID）停止使用道具（仅对物资编辑器生成的绷带，饮料类物资生效） 生效范围：服务器 params PlayerPawn -玩家角色 params InstanceID -物品实例ID（唯一）
- **GetItemCount**(PlayerPawnPlayerPawn, numberItemID) — 获取道具数量 生效范围：服务器&客户端 return -背包内物品数量 params PlayerPawn -玩家角色 params ItemID -物品ID
- **GetAllItemData**(PlayerPawnPlayerPawn) — 获取背包里所有道具数据 生效范围：服务器&客户端 return table -ItemData结构：ItemID,InstanceID,Count,Type,SubType,IsAvatar params PlayerPawn -玩家角色
- **GetAllItemDataByItemID**(PlayerPawnPlayerPawn, numberItemID) — 获取ItemData列表 生效范围：服务器&客户端 return -LuaTable<FBattleItemData> params PlayerPawn -玩家角色 params ItemID -物品ID
- **BattleItemDataGetItemDataByInstanceID**(PlayerPawnPlayerPawn, numberInstanceID) — 根据InstanceID（物品实例ID）获取ItemData 生效范围：服务器 return -战斗物品数据 params PlayerPawn -玩家角色 params InstanceID -物品实例ID（唯一）
- **GetCapacity**(PlayerPawnPlayerPawn) — 获取背包剩余容量 生效范围：服务器&客户端 return -剩余容量 params PlayerPawn -玩家角色
- **GetMaxCapacity**(PlayerPawnPlayerPawn) — 获取背包最大剩余容量 生效范围：服务器&客户端 return -最大剩余容量 params PlayerPawn -玩家角色
- **HasItemBySubType**(PlayerPawnPlayerPawn, numberItemSubType) — 是否拥有某类物品 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params ItemSubType -道具字类型
- **GetWeaponsInBackpack**(PlayerPawnPlayerPawn) — 获取背包中的武器 生效范围：服务器&客户端 return -FBattleItemData params PlayerPawn -玩家角色
- **GetWeaponAttachmentsInBackpack**(PlayerPawnPlayerPawn) — 获取背包中的武器配件 生效范围：服务器&客户端 return -FBattleItemData params PlayerPawn -玩家角色
- **BattleItemDataGetArmorInBackpack**(PlayerPawnPlayerPawn) — 获取当前防弹衣 生效范围：服务器&客户端 return -物品数据 params PlayerPawn -玩家角色
- **BattleItemDataGetHelmetInBackpack**(PlayerPawnPlayerPawn) — 获取当前头盔 生效范围：服务器&客户端 return -物品数据 params PlayerPawn -玩家角色
- **GetConsumablesInBackpack**(PlayerPawnPlayerPawn) — 获取背包中的所有消耗品 生效范围：服务器&客户端 return -FBattleItemData params PlayerPawn -玩家角色
- **IsAttachItemType**(numberItemID) — 通过传入物品ID判断是否拥有某类物品，例：可传入AKM的物品ID，判断是否拥有枪械 生效范围：服务器&客户端 params ItemID -物品ID
- **IsGunItemType**(numberItemID) — 传入物品ID判断是否为枪械 生效范围：服务器&客户端 params ItemID -物品ID
- **GetPickupWrapperClassPath**(numberItemID) — 获取PickupWrapperClass路径 生效范围：服务器&客户端 params ItemID -物品ID
- **GetAllAttachmentDefineIDInBackpack**(PlayerPawnPlayerPawn) — 获取背包内所有枪械配件DefineID 生效范围：服务端 return -AttachmentDefineID列表 LuaTable<ItemDefineID> params PlayerPawn -玩家角色
- **GetAllUnEquipedAttachmentDefineIDInBackpack**(PlayerPawnPlayerPawn) — 获取背包内所有未装备的枪械配件DefineID 生效范围：服务端 return -AttachmentDefineID列表 LuaTable<ItemDefineID> params PlayerPawn -玩家角色 GetBackpackComponent AddItem DropItem UseItem DisuseItem DropItemByInstanceID UseItemByInstanceID DisuseItemByInstanceID GetItemCount GetAllItemData GetAllItemDataByItemID GetItemDataByInstan