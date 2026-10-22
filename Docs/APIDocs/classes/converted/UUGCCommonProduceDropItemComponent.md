# UUGCCommonProduceDropItemComponent

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