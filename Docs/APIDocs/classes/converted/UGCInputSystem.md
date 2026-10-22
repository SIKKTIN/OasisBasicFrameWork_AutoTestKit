# UGCInputSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCInputSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCInputSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCInputSystem](https://developer.gp.qq.com/api/#/searchContent/UGCInputSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCInputSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCInputSystem)

类

全文搜索

输入系统接口库

---


## 函数

- **BindInputMapping**(UObjectBindingOwner, UGCGameplayTag) — string
- **BindingToObject**(UObjectBindingOwner) — 解除与目标Object所有相关的输入事件绑定 生效范围：客户端 params BindingOwner -绑定输入事件的对象
- **Binding**(UObjectWorldContext, int32InputBindingHandle) — 解除指定索引的输入事件绑定 生效范围：客户端 params WorldContext -世界上下文对象 params InputBindingHandle -输入事件绑定的索引
- **InputMapping**(UObjectWorldContext, UGCGameplayTag) — string
- **BindingConsumeInput**(UObjectWorldContext, int32InputBindingHandle, boolbConsumeInput) — 设置某个输入事件绑定是否消耗输入，消耗输入后，后续的其他输入事件绑定将不被触发 生效范围：客户端 params WorldContext -世界上下文对象 params InputBindingHandle -输入事件绑定的索引 params bConsumeInput -是否消耗Input
- **GetInputValue**(UObjectWorldContext, UGCGameplayTag) — string