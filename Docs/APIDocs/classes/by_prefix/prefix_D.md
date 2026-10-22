# 委托 / Delegate  (前缀: D)
_共 1 个类_
---
## Delegate

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/Delegate?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FDelegate.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=Delegate](https://developer.gp.qq.com/api/#/searchContent/Delegate?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FDelegate.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=Delegate)

类

全文搜索

Lua代理 Lua代理 - 使用 Add(callable, obj) 绑定可调用对象 - 使用 Remove(callable, obj) 解绑可调用对象 - 使用 Broadcast(...) 触发委托

---


## 函数

- **Remove**(移除可调用对象 第一个参数为可调用对象（函数），第二个参数为定义了对应函数的表实例 例：Delegate:Remove(self.foo, self) 生效范围：服务器&客户端)
- **All**(functionCallable) — 移除可调用对象（函数）上绑定的所有监听函数 例：Delegate:RemoveAll() 生效范围：服务器&客户端 params Callable -【可选】可调用对象（函数） Broadcast() 广播调用监听此委托的所有函数 例：Delegate:Broadcast(param1, param2 ...) 生效范围：服务器&客户端 Add Remove RemoveAll Broadcast

