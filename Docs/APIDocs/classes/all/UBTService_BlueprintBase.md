# UBTService_BlueprintBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTService_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTService_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTService_BlueprintBase](https://developer.gp.qq.com/api/#/searchContent/UBTService_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTService_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTService_BlueprintBase)

类

全文搜索

Base class for blueprint based service nodes. Do NOT use it for creating native c++ classes! When service receives Deactivation event, all latent actions associated this instance are being removed. This prevents from resuming activity started by Activation, but does not handle external events. Please use them safely (unregister at abort) and call IsServiceActive() when in doubt.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **ReceiveTick** | AActor * OwnerActor, floatDeltaSeconds | tick function |
| void | **ReceiveSearchStart** | AActor *OwnerActor | task search enters branch of tree |
| void | **ReceiveActivation** | AActor *OwnerActor | service became active |
| void | **ReceiveDeactivation** | AActor *OwnerActor | service became inactive |
| void | **ReceiveTickAI** | AAIController * OwnerController, APawn * ControlledPawn, floatDeltaSeconds | Alternative AI version of ReceiveTick function. |
| void | **ReceiveSearchStartAI** | AAIController * OwnerController, APawn *ControlledPawn | Alternative AI version of ReceiveSearchStart function. |
| void | **ReceiveActivationAI** | AAIController * OwnerController, APawn *ControlledPawn | Alternative AI version of ReceiveActivation function. |
| void | **ReceiveDeactivationAI** | AAIController * OwnerController, APawn *ControlledPawn | Alternative AI version of ReceiveDeactivation function. |
| bool | **IsServiceActive** |  | check if service is currently being active ReceiveTick ReceiveSearchStart ReceiveActivation ReceiveDeactivation ReceiveTickAI ReceiveSearchStartAI ReceiveActivationAI ReceiveDeactivationAI IsServiceActive |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Cached | **AIController** | owner of BehaviorTreeComponent. Cached actor owner of BehaviorTreeComponent. show detailed information about properties show detailed information about implemented events AIOwner ActorOwner bShowPropertyDetails bShowEventDetails |

