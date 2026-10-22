# UUGCItemWarehouseBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUGCItemWarehouseBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUGCItemWarehouseBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUGCItemWarehouseBase](https://developer.gp.qq.com/api/#/searchContent/UUGCItemWarehouseBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUGCItemWarehouseBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUGCItemWarehouseBase)

类

全文搜索

仓库对象

---

## 委托

- voidItemChangeDelegate(const EUGCItemChangeType&ChangeType, const FItemDefineID&DefineID)
- 当仓库物品实例数据发生改变时广播
- 广播范围：服务端 & 客户端
- voidItemAddDelegate(const FItemDefineID&DefineID)
- 当仓库新增物品实例时广播
- 广播范围：服务端 & 客户端
- voidItemUpdateDelegate(const FItemDefineID&DefineID)
- 当物品实例数据更新时广播
- 广播范围：服务端 & 客户端
- voidItemRemoveDelegate(const FItemDefineID&DefineID)
- 当移除物品实例时广播
- 广播范围：服务端 & 客户端
- ItemChangeDelegate
- ItemAddDelegate
- ItemUpdateDelegate
- ItemRemoveDelegate

