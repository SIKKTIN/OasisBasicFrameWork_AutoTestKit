# UGCItemSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCItemSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCItemSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCItemSystem](https://developer.gp.qq.com/api/#/searchContent/UGCItemSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCItemSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCItemSystem)

类

全文搜索

道具系统接口库

---


## 函数

- **GetItemType**(numberItemID) — 获取物品ItemType 对应表格数据：和平精英\表格\物品表中ItemType列 生效范围：服务器&客户端 return -物品类型 params ItemID -物品ID
- **GetItemSubType**(numberItemID) — 获取ItemSubType 对应表格数据：和平精英\表格\物品表中ItemSubType列 生效范围：服务器&客户端 return -物品子类型 params ItemID -物品ID
- **BattleItem_TabResGetItemData**(numberItemID) — 获取道具数据 生效范围：服务器&客户端 return -物品数据 params ItemID -物品ID
- **IsUGCItem**(numberItemID) — 是否为绿洲物品（物资编辑器中自定义物品） 生效范围：服务器&客户端 return -是否为绿洲物品 params ItemID -物品ID
- **IsCanUseInBackpack**(numberItemID) — 返回道具在背包中是否可以使用 生效范围：服务器&客户端 return -是否可以使用 params ItemID -物品ID
- **GetPickupWrapperClassPath**(numberItemID) — 通过ItemID获取Wrapper路径 生效范围：服务器 return -Wrapper路径 params ItemID -物品ID
- **SetWrapperToGround**(APickUpWrapperActorWrapperActor) — 将Wrapper设置贴在地面 Wrapper.bDropedByPlayer为True时，贴地功能生效 生效范围：服务器 params WrapperActor -可拾取物
- **GetWrapperItemID**(APickUpWrapperActorWrapperActor) — 获取Wrapper关联的ItemID 生效范围：服务器&客户端 return -物品ID params WrapperActor -可拾取物
- **ModifyWrapperItemCount**(APickUpWrapperActorWrapperActor, numberCount) — 修改Wrpaaer中物品的数量 生效范围：服务器 params WrapperActor -可拾取物 params Count -修改后的数量
- **DoPickWrapper**(PlayerPawnPlayerPawn, APickUpWrapperActorWrapperActor) — 拾取Wrapper 生效范围：服务器&客户端 params WrapperActor -可拾取物
- **IsWrapperDropedByPlayer**(APickUpWrapperActorWrapperActor) — Wrapper是否是由玩家丢弃生成 生效范围：服务器&客户端 params WrapperActor -可拾取物
- **SetWrapperPickUpRadius**(APickUpWrapperActorWrapperActor, numberRadius) — 设置Wrapper的可拾取范围 生效范围：服务器 params WrapperActor -可拾取物 params Radius -可拾取范围，单位厘米
- **GetQualityTexturePath**(numberQualityRank) — 获取品质色的128*128纹理路径 生效范围：服务器&客户端 return -品质纹理路径 params QualityRank -品质等级
- **GetBigQualityTexturePath**(numberQualityRank) — 获取品质色的128*256纹理路径 生效范围：服务器&客户端 return -品质纹理路径string params QualityRank -品质等级
- **GetQualityBarTexturePath**(numberQualityRank) — 获取品质色条纹理路径 生效范围：服务器&客户端 return -品质纹理路径string params QualityRank -品质等级 GetItemType GetItemSubType GetItemData IsUGCItem IsCanUseInBackpack GetPickupWrapperClassPath SetWrapperToGround GetWrapperItemID ModifyWrapperItemCount DoPickWrapper IsWrapperDropedByPlayer SetWrapperPickUpRadius GetQualityTextur