# 异步 / Promise  (前缀: P)
_共 1 个类_
---
## PromiseFuture

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/PromiseFuture?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FPromiseFuture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=PromiseFuture](https://developer.gp.qq.com/api/#/searchContent/PromiseFuture?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FPromiseFuture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=PromiseFuture)

类

全文搜索

提供处理异步操作的类，支持链式调用和状态管理 说明： - 创建实例: 使用 PromiseFuture.New() 创建新的 PromiseFuture 实例。 - 设置回调: 使用 Then 和 Else 方法设置成功和失败的回调函数。 - 执行逻辑: 使用 Set 方法定义 PromiseFuture 的执行逻辑，可以在其中使用 Yield 暂停执行。 - 前置条件: 可以将其他 PromiseFuture 实例作为前置条件，确保在执行当前 PromiseFuture 之前，所有前置条件都已完成。 - 自动恢复: 可以设置自动恢复功能，监控对象的状态并在需要时自动恢复执行。

---


## 函数

- **Resume**(any...) — 手动恢复 PromiseFuture 的执行 return -当 IsPrerequisitesEstablished() && IsEstablished() 时返回 true，否则返回 false params ... -可选的参数，将传递给恢复的协程
- **IsPrerequisitesEstablished**(检查所有先决条件是否已建立 return -如果所有先决条件都已建立则返回 true，否则返回 false)
- **IsAnyPrerequisiteCancellationRequested**(检查任意先决条件是否已被取消 return -如果任意先决条件已被取消则返回 true，否则返回 false)
- **IsEstablished**(检查当前 PromiseFuture 是否已建立 return -如果已建立则返回 true，否则返回 false)
- **FutureWaitForPrerequisites**(等待所有前置条件变为已建立状态 如果前置条件未完成，则会自动 Yield 只能在 Set 回调函数中使用 return -当前 PromiseFuture 实例，以支持链式调用)
- **FutureAddPrerequisites**(PromiseFuturePrerequisite) — 添加前置条件 return -当前 PromiseFuture 实例，以支持链式调用 params Prerequisite -前置条件
- **IsCancellationRequested**(检查当前 PromiseFuture 是否已被取消 return -如果已被取消则返回 true，否则返回 false)
- **FutureCancel**(取消当前 PromiseFuture 的执行 return -当前 PromiseFuture 实例，以支持链式调用)
- **FutureCancelAll**(取消当前 PromiseFuture 及其所有前置条件的执行 return -当前 PromiseFuture 实例，以支持链式调用)
- **Get**(获取 Set 回调函数的返回值 只能在 Set、Then 回调函数中使用 return -返回 Set 回调函数的所有返回值)
- **FutureThen**(functionCallable, any...) — 设置成功回调函数 return -当前 PromiseFuture 实例，以支持链式调用 params Callable -回调函数 params ... -可选的参数，将传递给回调函数
- **FutureElse**(functionCallable, any...) — 设置失败回调函数 return -当前 PromiseFuture 实例，以支持链式调用 params Callable -回调函数 params ... -可选的参数，将传递给回调函数
- **FutureSet**(functionSetter, anySetterValue, any...) — 设置执行逻辑 return -当前 PromiseFuture 实例，以支持链式调用 params Setter -回调函数 params ... -其他可选参数
- **FutureYield**(any...) — 暂停当前 PromiseFuture 的执行 只能在 Set 回调函数中使用 return -当前 PromiseFuture 实例，以支持链式调用 params ... -可选的参数，将传递给 yield(...) 方法
- **FutureAutoResume**(UObjectWatchedObject, numberInterval, numberTimeout) — 设置自动恢复功能 return -当前 PromiseFuture 实例，以支持链式调用 params WatchedObject -监控的对象，如果对象被销毁则停止自动恢复 params Interval -自动恢复的间隔，单位为秒 params Timeout -自动恢复的超时时间，单位为秒 Resume IsPrerequisitesEstablished IsAnyPrerequisiteCancellationRequested IsEstablished WaitForPrerequisites AddPrerequisites IsCancellationRequested Ca

