# UGCInputSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCInputSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCInputSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCInputSystem](https://developer.gp.qq.com/api/#/searchContent/UGCInputSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCInputSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCInputSystem)

类

全文搜索

输入系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| int32 | **BindInputMapping** | UObjectBindingOwner, UGCGameplayTag|string|FGameplayTagInputTag, ETriggerEventTriggerEvent, fun(InputValue:float, ElapsedTime:float, TriggeredTime:float, InputTag:FGameplayTag | 绑定指定InputTag事件的回调函数 生效范围：客户端 return -输入事件绑定的索引，-1时为绑定失败 params BindingOwner -绑定输入事件的对象 params InputTag -由Tag标识的输入事件 params TriggerEvent -输入事件类型 params CallbackFunction -事件触发回调函数 |
| Remove | **BindingToObject** | UObjectBindingOwner | 解除与目标Object所有相关的输入事件绑定 生效范围：客户端 params BindingOwner -绑定输入事件的对象 |
| Remove | **Binding** | UObjectWorldContext, int32InputBindingHandle | 解除指定索引的输入事件绑定 生效范围：客户端 params WorldContext -世界上下文对象 params InputBindingHandle -输入事件绑定的索引 |
| Inject | **InputMapping** | UObjectWorldContext, UGCGameplayTag|string|FGameplayTagInputTag, floatValue | 通过脚本手动触发某个InputTag 生效范围：客户端 params WorldContext -世界上下文对象 params InputTag -由Tag标识的输入事件 params Value -输入事件的值 |
| Set | **BindingConsumeInput** | UObjectWorldContext, int32InputBindingHandle, boolbConsumeInput | 设置某个输入事件绑定是否消耗输入，消耗输入后，后续的其他输入事件绑定将不被触发 生效范围：客户端 params WorldContext -世界上下文对象 params InputBindingHandle -输入事件绑定的索引 params bConsumeInput -是否消耗Input |
| float | **GetInputValue** | UObjectWorldContext, UGCGameplayTag|string|FGameplayTagInputTag | 获取指定InputTag对应Input的当前值 生效范围：客户端 return -Input当前值，未找到时返回0 params WorldContext -世界上下文对象 params InputTag -由Tag标识的输入事件 BindInputMapping RemoveBindingToObject RemoveBinding InjectInputMapping SetBindingConsumeInput GetInputValue |

