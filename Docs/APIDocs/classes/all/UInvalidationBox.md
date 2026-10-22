# UInvalidationBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInvalidationBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInvalidationBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInvalidationBox](https://developer.gp.qq.com/api/#/searchContent/UInvalidationBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInvalidationBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInvalidationBox)

类

全文搜索

Invalidate Single Child Caching Performance

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **InvalidateCache** |  |  |
| bool | **GetCanCache** |  |  |
| void | **SetCanCache** | boolCanCache | InvalidateCache GetCanCache SetCanCache |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Should | **the** | invalidation panel cache the widgets? Making this false makes it so the invalidation panel stops acting like an invalidation panel, just becomes a simple container widget. Caches the locations for child draw elements relative to the invalidation box, this adds extra overhead to drawing them every fr |

