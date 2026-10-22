# UnrealNetwork

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UnrealNetwork?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUnrealNetwork.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UnrealNetwork](https://developer.gp.qq.com/api/#/searchContent/UnrealNetwork?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUnrealNetwork.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UnrealNetwork)

类

全文搜索

虚幻网络库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Rep | **LazyProperty** | AActor | UActorComponent @属性所在的Actor或ComponentTargetObject, stringPropertyName | 对声明为复制的Lazy属性执行复制 params TargetObject -属性所在的Actor或Component params PropertyName -属性名或路径 |
| Call | **UnrealRPC** | APlayerControllerTargetPlayerController, AActor | UActorComponent @目标Actor或ComponentTargetObject, stringFunctionName | 发送可靠单播RPC params TargetPlayerController -目标玩家 params TargetObject -目标Actor或Component params FunctionName -RPC函数名 |
| Call | **UnrealRPC_Unreliable** | APlayerControllerTargetPlayerController, AActor | UActorComponent @目标Actor或ComponentTargetObject, stringFunctionName | 发送不可靠单播RPC params TargetPlayerController -目标玩家 params TargetObject -目标Actor或Component params FunctionName -RPC函数名 |
| Call | **UnrealRPC_Multicast** | AActor | UActorComponent @目标Actor或ComponentTargetObject, stringFunctionName | 发送可靠广播RPC params TargetObject -目标Actor或Component params FunctionName -RPC函数名 |
| Call | **UnrealRPC_Multicast_Unreliable** | AActor | UActorComponent @目标Actor或ComponentTargetObject, stringFunctionName | 发送不可靠广播RPC params TargetObject -目标Actor或Component params FunctionName -RPC函数名 RepLazyProperty CallUnrealRPC CallUnrealRPC_Unreliable CallUnrealRPC_Multicast CallUnrealRPC_Multicast_Unreliable |

