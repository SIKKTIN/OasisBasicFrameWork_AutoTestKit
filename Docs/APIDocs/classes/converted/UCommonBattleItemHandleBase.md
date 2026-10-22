# UCommonBattleItemHandleBase

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