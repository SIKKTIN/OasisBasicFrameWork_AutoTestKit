# UGCItemSystemV2

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCItemSystemV2?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCItemSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCItemSystemV2](https://developer.gp.qq.com/api/#/searchContent/UGCItemSystemV2?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCItemSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCItemSystemV2)

类

全文搜索

V2道具系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| U | **BattleItemHandleBaseGetConfigItemHandle** | numberItemID | 获取物品 ItemHandle 配置 可以通过它取得所有物品中配置的数据（只读） 生效范围：服务器&客户端 return -配置数据 params ItemID -物品 ID |
| U | **UGCBattleItemInstanceDataManagerGetItemInstanceDataManager** |  | 获取物品实例数据管理器 生效范围：服务器&客户端 return -实例数据管理器 |
| boolean | **IsUGCItemV2** | numberItemID | 是否为绿洲物品（物资编辑器中自定义物品） 生效范围：服务器&客户端 return -是否为绿洲物品 params ItemID -物品 ID |
| boolean | **IsShouldPersist** | numberItemID | 是否持久化 生效范围：服务器&客户端 return -是否持久化 params ItemID -物品 ID |
| boolean | **IsObjEditorItemV2** | numberItemID | 是否为V2版本物编创建的物品 生效范围：服务器&客户端 return -是否为V2版本物编创建的物品 params ItemID -物品 ID |
| string | **GetItemNameV2** | numberItemID | 返回物品名称 生效范围：服务器&客户端 return -物品名称 params ItemID -物品 ID |
| number | **GetItemSubTypeV2** | numberItemID | 返回物品子类型SubType，(比如武器类别为1，M146子类型为101) 生效范围：服务器&客户端 return -物品子类型 params ItemID -物品 ID |
| F | **SoftObjectPathGetItemIconTextureV2** | numberItemID | 返回物品图标路径 生效范围：服务器&客户端 return -物品图标路径 params ItemID -物品 ID |
| Backpack | **ComponentV2GetOwnBackpackComponent** | UBattleItemHandleBaseItemHandle | 读取物品所在背包 生效范围：服务器&客户端 return -V2背包组件 params ItemHandle -物品 Handle |
| F | **SoftObjectPathGetItemIconWithPlayerSkinV2** | numberItemID, PlayerControllerPlayerController | 返回物品图标路径(带玩家皮肤) 生效范围：服务器&客户端 return -物品图标路径 params ItemID -物品 ID params PlayerController -玩家 PlayerController |
| F | **SoftObjectPathGetWhiteIconTextureV2** | numberItemID | 返回物品剪影图标路径 生效范围：服务器&客户端 return -剪影图标路径 params ItemID -物品 ID |
| F | **SoftObjectPathGetBigIconTextureV2** | numberItemID | 返回物品装备栏图标路径 生效范围：服务器&客户端 return -装备栏图标路径 params ItemID -物品 ID |
| F | **SoftObjectPathGetBigIconTextureWithPlayerSkinV2** | numberItemID, PlayerControllerPlayerController | 返回物品装备栏图标路径(带玩家皮肤) 生效范围：服务器&客户端 return -装备栏图标路径 params ItemID -物品 ID params PlayerController -玩家 PlayerController |
| string | **GetItemDetailV2** | numberItemID | 返回物品详情 生效范围：服务器&客户端 return -物品详情 params ItemID -物品 ID |
| string | **GetItemPickupDetailV2** | numberItemID | 返回物品拾取描述 生效范围：服务器&客户端 return -物品拾取描述 params ItemID -物品 ID |
| boolean | **ItemHasTagV2** | numberItemID, stringTag | 是否含有某个 Tag 生效范围：服务器&客户端 return -是否含有 Tag params ItemID -物品 ID params Tag -物品 Tag |
| string[] | **GetItemTagsV2** | numberItemID | 返回物品所有 Tag 生效范围：服务器&客户端 return -物品所有 Tag params ItemID -物品 ID |
| boolean | **ItemCanDropV2** | numberItemID | 返回物品是否可丢弃 生效范围：服务器&客户端 return -物品是否可丢弃 params ItemID -物品 ID |
| boolean | **ItemCanRemoveV2** | numberItemID | 返回物品是否可销毁 生效范围：服务器&客户端 return -物品是否可销毁 params ItemID -物品 ID |
| boolean | **IsCanUseV2** | numberItemID | 返回物品在背包中是否可以使用 生效范围：服务器&客户端 return -是否可以使用 params ItemID -物品 ID |
| number | **GetItemMaxNumberOfStacksV2** | numberItemID | 返回物品最大堆叠数量 生效范围：服务器&客户端 return -物品最大堆叠数量 params ItemID -物品 ID |
| number | **GetItemQualityV2** | numberItemID | 返回物品品质 生效范围：服务器&客户端 return -物品品质 params ItemID -物品 ID |
| string | **GetItemCustomizedTypeV2** | numberItemID | 返回物品自定义类型 生效范围：服务器&客户端 return -物品自定义类型 params ItemID -物品 ID |
| table | **LoadItemCustomData** | FItemDefineIDItemDefineID | 获取物品自定义实例化数据 生效范围：服务器&客户端 return -物品自定义实例化数据table params ItemDefineID -物品DefineID |
| boolean | **SaveItemCustomData** | FItemDefineIDItemDefineID, tableItemCustomData | 保存物品自定义实例化数据 注意: 实例数据也包含了和平内置数据，应避免直接覆盖，采用下述方式添加数据 local CustomData = UGCItemSystemV2.LoadItemCustomData(ItemDefineID) CustomData.NewKey = NewTableData -- 填充新的数据 |
| UGCItemSystemV2. | **SaveItemCustomData** | ItemDefineID, CustomData | 生效范围：服务器 return -保存成功or失败 params ItemDefineID -物品DefineID params ItemCustomData -物品自定义实例化数据table |
| F | **ItemDefineIDGetItemDefineID** | numberItemID | 通过物品ID创建一个全新的物品实例，并返回 DefineID 生效范围：服务器 return -物品 DefineID params ItemID -物品 ID |
| Set | **ItemCommonReason** | FItemDefineIDItemDefineID, numberReason | 设置物品通用 Reason 用于操作物品时指定其中一些行为 生效范围：服务器 params ItemDefineID -物品 DefineID params Reason -Reason |
| number | **GetItemCommonReason** | FItemDefineIDItemDefineID | 获取物品通用 Reason 用于操作物品时指定其中一些行为 生效范围：服务器 return -Reason params ItemDefineID -物品 DefineID |
| string[] | **GetEquipTargetSlots** | numberItemID | 获取装备物品拥有的槽位列表 生效范围：服务器&客户端 return -物品拥有的所有槽位 params ItemID -物品ID |
| string | **GetDisplayNameBySlotName** | numberItemID, stringSlotName | 获取槽位对应的展示名 生效范围：服务器&客户端 return -物品槽位的展示名称 params ItemID -物品ID params SlotName -槽位名 |
| bool,ItemDefineID, | **FNameGetAttachTargetItem** | ItemDefineIDItemDefineID | 获取物品附加在哪个物品上 生效范围：服务器&客户端 return -物品是否正附加在另一个物品上,物品附加的目标物品 DefineID,物品附加的目标物品槽位 params ItemDefineID -物品 DefineID |
| Item | **DefineIDGetAttachChildItem** | ItemDefineIDAttachParentID, stringAttachSlot | 获取附加在物品上的子物品 生效范围：服务器&客户端 return -附加在此槽位上的子物品 DefineID params AttachParentID -父物品的 DefineID params AttachSlot -父物品的槽位名 |
| ItemDefineID[] | **GetAttachChildrenItem** | ItemDefineIDAttachParentID | 获取所有附加在物品上的子物品 生效范围：服务器&客户端 return -所有子物品 DefineID, 数组元素与父物品槽位一一对应，可能存在无效的 ItemDefineID params AttachParentID -父物品的 DefineID |
| string[] | **GetAttachAllowSlots** | numberAttachParentID, numberAttachChildID | 获取子物品可以 Attach 到父物品的哪些 Slot(不考虑槽位启用状态) 生效范围：服务器&客户端 return -所有可装备槽位 FName params AttachParentID -父物品的 ItemID params AttachChildID -子物品的 ItemID |
| string[] | **GetAttachAllowSlotsByDefineID** | PlayerPawnPlayer, ItemDefineIDAttachParentDefineID, numberAttachChildID | 获取子物品可以 Attach 到父物品`实例` 的哪些 Slot(考虑槽位启用状态) 生效范围：服务器&客户端 return -所有可装备槽位 FName params Player -玩家 params AttachParentDefineID -父物品的 ItemDefineID params AttachChildID -子物品的 ItemID |
| string | **GetQualityTexturePath** | numberQualityRank | 获取品质色的128*128纹理路径 生效范围：服务器&客户端 return -品质纹理路径 params QualityRank -品质等级 |
| string | **GetBackpackSimpleNameV2** | numberItemID | 返回物品背包简述 生效范围：服务器&客户端 return -物品背包简写 params ItemID -物品 ID |
| string | **GetBigQualityTexturePath** | numberQualityRank | 获取品质色的128*256纹理路径(废弃，结果同GetQualityTexturePath) 生效范围：服务器&客户端 return -品质纹理路径string params QualityRank -品质等级 |
| string | **GetQualityBarTexturePath** | numberQualityRank | 获取品质色条纹理路径 生效范围：服务器&客户端 return -品质纹理路径string params QualityRank -品质等级 |
| string | **GetEquipmentQualityTexturePath** | numberQualityRank | 获取装备品质色条纹理路径 生效范围：服务器&客户端 return -品质纹理路径string params QualityRank -品质等级 |
| number[] | **GetWeaponSlotAttachItemIDs** | numberItemID, stringSlotName | 获取武器配件槽位可用配件的物品ID 生效范围：服务器&客户端 return -可用的配件物品ID params ItemID -武器的物品ID params SlotName -武器槽位名 |
| AUGCPickUpWrapperActor[] | **GetPickupWrapperListByItemID** | numberItemID | 根据物品ID查询拾取物 生效范围：服务器&客户端, 客户端仅查询本地生成的 return -拾取物列表 params ItemID -物品ID |
| AUGCPickUpWrapperActor[] | **GetPickupWrapperListByCustomType** | stringCustomType | 根据自定义类型查询拾取物 生效范围：服务器&客户端, 客户端仅查询本地生成的 return -拾取物列表 params CustomType -自定义类型 |
| AUGCPickUpWrapperActor[] | **GetPickupWrapperListByItemTag** | stringItemTag | 根据物品Tag查询拾取物 生效范围：服务器&客户端, 客户端仅查询本地生成的 return -拾取物列表 params ItemTag -物品Tag |
| Set | **EquipSlotEnable** | FItemDefineIDDefineID, stringSlotName | 启用物品槽位 生效范围：服务器 params DefineID -物品DefineID params SlotName -槽位名 |
| boolean | **GetEquipSlotEnable** | FItemDefineIDDefineID, stringSlotName | 获取物品槽位是否启用 生效范围：服务器&客户端 return -是否启用 params DefineID -物品DefineID params SlotName -槽位名 |
| Start | **CustomizeDrop** | FVectorDropLocation, numberProduceID, numberProduceGroupID, EUGCGenerateItemEntityTypeEntityType, PlayerPawnRelatedPlayer, UClassDropActorClass | 指定掉落方案进行一次 Wrapper 掉落 生效范围：服务器 params DropLocation -掉落中心点 params ProduceID -掉落方案ID params ProduceGroupID -掉落组方案ID(掉落组ID不为-1，掉落组ID生效。掉落组ID为-1,则掉落ID生效) params EntityType -掉落物类型(可缺省，默认为Wrapper) params RelatedPlayer -当掉落物方向为面相玩家时必须，当掉落物类型为进入背包时必须，其他时候可以为nil params DropActorClass -掉落主体Actor类型，应继承自 UGCDro |
| FUGCPickupItemData[] | **FindAllNearPickupItemData** | PlayerPawnPlayerPawn | 找到所有玩家角色附近的地面拾取物 生效范围：客户端 return -地面拾取物信息 params PlayerPawn -玩家角色 |
| APickUpWrapperActor[] | **FindPickupWrapperActorByRange** | FVectorCenter, numberDistanceRange | 查找指定距离范围内的地面拾取物 生效范围：服务器 return -地面拾取物Actor params Center -中心点坐标 params DistanceRange -查找距离 |
| Try | **PickupWrapperItem** | PlayerPawnPlayerPawn, AActorTargetWrapper, FItemDefineIDItemDefineID, numberPickupCount, booleanCheckPickupCondition | 玩家角色尝试拾取地面物品（不播拾取动作） 生效范围：服务器 params PlayerPawn -玩家角色 params TargetWrapper -目标地面拾取物 params ItemDefineID -要拾取的物品 DefineID，可缺省，默认取 TargetWrapper 中的物品实例数据 params PickupCount -拾取数量，可缺省，默认拾取1个 params CheckPickupCondition -是否检查拾取条件(距离、是否穿墙等)，可缺省，默认为 true |
| A | **PickUpWrapperActorSpawnPickupWrapper** | FVectorLocation, numberItemID, numberCount, tableCustomData | 创建地面拾取物 生效范围：服务器 return -地面拾取物Actor params Location -创建位置 params ItemID -拾取物物品ID params Count -拾取物物品数量 params CustomData -物品自定义实例化数据(可缺省，默认无自定义实例化数据) |
| @ | **UUGCPickUpListComponentGetUGCPickUpListComponent** | PlayerPawn | PlayerController @玩家角色或者玩家控制器Player | 获取拾取组件(客户端） 生效范围：客户端 return -UGC拾取组件组件 params Player -玩家角色或者玩家控制器 |
| Pause | **AutoPick** | numberItemID, PlayerPawn | PlayerController | nil @可选，玩家角色或控制器，不传则自动获取InPlayer | 暂停指定物品的自动拾取 生效范围：客户端 params ItemID -物品 ID params InPlayer -可选，玩家角色或控制器，不传则自动获取 |
| Stop | **Pick** | PlayerPawn | PlayerController | nil @可选，玩家角色或控制器，不传则自动获取InPlayer | 停止拾取（清空拾取列表，关闭数据更新） 生效范围：客户端 params InPlayer -可选，玩家角色或控制器，不传则自动获取 |
| Start | **Pick** | PlayerPawn | PlayerController | nil @可选，玩家角色或控制器，不传则自动获取InPlayer | 开始拾取（开启数据更新） 生效范围：客户端 params InPlayer -可选，玩家角色或控制器，不传则自动获取 GetConfigItemHandle GetItemInstanceDataManager IsUGCItemV2 IsShouldPersist IsObjEditorItemV2 GetItemNameV2 GetItemSubTypeV2 GetItemIconTextureV2 GetOwnBackpackComponent GetItemIconWithPlayerSkinV2 GetWhiteIconTextureV2 GetBigIconTextureV2 Ge |

