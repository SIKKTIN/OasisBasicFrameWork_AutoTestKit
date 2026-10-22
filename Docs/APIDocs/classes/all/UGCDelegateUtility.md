# UGCDelegateUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCDelegateUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCDelegateUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCDelegateUtility](https://developer.gp.qq.com/api/#/searchContent/UGCDelegateUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCDelegateUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCDelegateUtility)

类

全文搜索

UGC 委托工具库 Lua 委托工具 - 使用 New() 创建委托 - 使用 Add(callable, obj) 绑定可调用对象 - 使用 Remove(callable, obj) 解绑可调用对象 - 使用 Broadcast(...) 触发委托

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| @ | **LuaCreateLuaDelegate** |  | 创建 Lua 委托（纯 Lua 实现） return UGCLuaDelegate -委托 |
| U | **GCLuaDelegateCopyLuaDelegate** | UGCLuaDelegateDelegate | 复制 Lua 委托 return -复制出来的新 Lua 委托 params Delegate -被复制的 Lua 委托 |
| U | **LuaSingleDelegateCreateUEDelegate** | UObjectOuter | 创建虚幻兼容单播委托 return -虚幻兼容单播委托 params Outer -Outer 对象（GC 相关） |
| Destroy | **UEDelegate** | ULuaSingleDelegateUEDelegate | 销毁虚幻兼容单播委托 params UEDelegate -虚幻兼容单播委托 CreateLuaDelegate CopyLuaDelegate CreateUEDelegate DestroyUEDelegate |

