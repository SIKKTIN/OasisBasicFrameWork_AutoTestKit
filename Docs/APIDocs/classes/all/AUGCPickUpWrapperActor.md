# AUGCPickUpWrapperActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCPickUpWrapperActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCPickUpWrapperActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCPickUpWrapperActor](https://developer.gp.qq.com/api/#/searchContent/AUGCPickUpWrapperActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCPickUpWrapperActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCPickUpWrapperActor)

类

全文搜索

地面拾取物Actor

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| F | **ItemDefineIDGetDefineID** |  | 获取拾取物物品的实例ID DS & 客户端 可调用 return -实例ID |
| int32 | **GetItemCount** |  | 获取拾取物物品的物品数量 DS & 客户端 可调用 return -物品数量 事件 |
| void | **OnInitPickupWrapper** |  | 当地面拾取物初始化后回调 可重载并自定义 DS & 客户端 被调用 能通过此事件，实现自定义的初始化逻辑 |
| void | **OnItemPickup** | ASTExtraBaseCharacter * PickupCharacter, int32 PickupCount, int32NewItemCount | 当地面拾取物被拾取后回调 可重载并自定义 DS 被调用 能通过此事件，实现自定义的被拾取后处理逻辑 params PickupCharacter -拾取物品的角色 params PickupCount -拾取数量 params NewItemCount -拾取后的物品数量 |
| void | **OnItemCountChange** | int32 OldItemCount, int32NewItemCount | 当地面拾取物物品数量改变时回调(拾取物销毁时也会有回调) 如果是拾取导致的改变，时机略晚于 OnItemPickup 可重载并自定义 DS & 客户端 被调用 能通过此事件，实现自定义的物品数量改变处理逻辑 params OldItemCount -改变前的物品数量 params NewItemCount -改变后的物品数量 |
| void | **OnUnInitPickupWrapper** |  | 当地面拾取物销毁前回调 可重载并自定义 DS & 客户端 被调用 能通过此事件，实现自定义的反初始化逻辑 GetDefineID GetItemCount 事件 OnInitPickupWrapper OnItemPickup OnItemCountChange OnUnInitPickupWrapper |

