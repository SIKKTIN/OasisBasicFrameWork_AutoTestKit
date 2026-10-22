# AUGCGameModeBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCGameModeBase?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E6%B8%B8%E6%88%8F%E6%A8%A1%E5%BC%8F%E7%B1%BB%EF%BC%88GameMode%EF%BC%89%2FAUGCGameModeBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCGameModeBase](https://developer.gp.qq.com/api/#/searchContent/AUGCGameModeBase?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E6%B8%B8%E6%88%8F%E6%A8%A1%E5%BC%8F%E7%B1%BB%EF%BC%88GameMode%EF%BC%89%2FAUGCGameModeBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCGameModeBase)

类

全文搜索

游戏模式类

事件

voidUGC_PlayerPreLoadingEvent(int64 UID, int64 PlayerKey, int32TeamID)

玩家预加载事件，此时玩家还在Loading中，尚未触发PostLogin，PlayerController尚未创建。

生效范围S

params UID

-UID

params PlayerKey

-PlayerKey

params TeamID

-队伍ID

voidUGC_PlayerLoginEvent(APlayerController *PlayerController)

玩家Loading结束，进入游戏，PlayerController创建完毕，且数据初始化完成。

生效范围S

params PlayerController

-玩家控制器

voidUGC_PlayerExitEvent(APlayerController *PlayerController)

玩家离开，PlayerController，PlayerPawn，PlayerState等玩家信息即将销毁。

生效范围S

params PlayerController

-玩家控制器

voidUGC_PlayerKilledEvent(AController * Killer, AController * VictimPlayer, APawn * VictimPawn, EDamageType :: DamageTypeDamageType)

玩家被淘汰事件。

生效范围S

params Killer

-淘汰对方的玩家

params VictimPlayer

-被淘汰玩家

params VictimPawn

-被淘汰玩家Pawn

params DamageType

-伤害类型

voidUGC_PlayerRespawnEvent(AController *RespawnedController)

玩家复活事件。

生效范围S

params RespawnedController

-被复活的Controller

voidUGC_SpawnedAIEvent(AAIController *NewAIController)

AI创建事件，此时AIController创建完毕，且数据初始化完成。

生效范围S

params NewAIController

-新创建的AIController

voidUGC_PlayerPickUpEvent(ASTExtraPlayerController * PlayerController, AActor * Target, int32 ItemResId, int32PickCount)

玩家拾取事件

生效范围S

params PlayerController

-玩家控制器

params Target

-拾取的目标,盒子Actor或者单个掉落物

params ItemResId

-拾取到的物品资源id

params PickCount

-拾取的数量

事件

UGC_PlayerPreLoadingEvent

UGC_PlayerLoginEvent

UGC_PlayerExitEvent

UGC_PlayerKilledEvent

UGC_PlayerRespawnEvent

UGC_SpawnedAIEvent

UGC_PlayerPickUpEvent

---

