UGCItemSystem
道具系统接口库
函数
numberGetItemType(numberItemID)
获取物品ItemType
对应表格数据：和平精英\表格\物品表中ItemType列
生效范围：服务器&客户端
return  
-物品类型
params ItemID 
-物品ID
numberGetItemSubType(numberItemID)
获取ItemSubType
对应表格数据：和平精英\表格\物品表中ItemSubType列
生效范围：服务器&客户端
return  
-物品子类型
params ItemID 
-物品ID
FBattleItem_TabResGetItemData(numberItemID)
获取道具数据
生效范围：服务器&客户端
return  
-物品数据
params ItemID 
-物品ID
booleanIsUGCItem(numberItemID)
是否为绿洲物品（物资编辑器中自定义物品）
生效范围：服务器&客户端
return  
-是否为绿洲物品
params ItemID 
-物品ID
booleanIsCanUseInBackpack(numberItemID)
返回道具在背包中是否可以使用
生效范围：服务器&客户端
return  
-是否可以使用
params ItemID 
-物品ID
stringGetPickupWrapperClassPath(numberItemID)
通过ItemID获取Wrapper路径
生效范围：服务器
return  
-Wrapper路径
params ItemID 
-物品ID
booleanSetWrapperToGround(APickUpWrapperActorWrapperActor)
将Wrapper设置贴在地面
Wrapper.bDropedByPlayer为True时，贴地功能生效
生效范围：服务器
params WrapperActor 
-可拾取物
numberGetWrapperItemID(APickUpWrapperActorWrapperActor)
获取Wrapper关联的ItemID
生效范围：服务器&客户端
return  
-物品ID
params WrapperActor 
-可拾取物
booleanModifyWrapperItemCount(APickUpWrapperActorWrapperActor, numberCount)
修改Wrpaaer中物品的数量
生效范围：服务器
params WrapperActor 
-可拾取物
params Count 
-修改后的数量
booleanDoPickWrapper(PlayerPawnPlayerPawn, APickUpWrapperActorWrapperActor)
拾取Wrapper
生效范围：服务器&客户端
params WrapperActor 
-可拾取物
booleanIsWrapperDropedByPlayer(APickUpWrapperActorWrapperActor)
Wrapper是否是由玩家丢弃生成
生效范围：服务器&客户端
params WrapperActor 
-可拾取物
booleanSetWrapperPickUpRadius(APickUpWrapperActorWrapperActor, numberRadius)
设置Wrapper的可拾取范围
生效范围：服务器
params WrapperActor 
-可拾取物
params Radius 
-可拾取范围，单位厘米
stringGetQualityTexturePath(numberQualityRank)
获取品质色的128*128纹理路径
生效范围：服务器&客户端
return  
-品质纹理路径
params QualityRank 
-品质等级
stringGetBigQualityTexturePath(numberQualityRank)
获取品质色的128*256纹理路径
生效范围：服务器&客户端
return  
-品质纹理路径string
params QualityRank 
-品质等级
stringGetQualityBarTexturePath(numberQualityRank)
获取品质色条纹理路径
生效范围：服务器&客户端
return  
-品质纹理路径string
params QualityRank 
-品质等级