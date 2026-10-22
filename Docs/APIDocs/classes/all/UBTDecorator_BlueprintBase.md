# UBTDecorator_BlueprintBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_BlueprintBase](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator_BlueprintBase)

类

全文搜索

Base class for blueprint based decorator nodes. Do NOT use it for creating native c++ classes! Unlike task and services, decorator have two execution chains: ExecutionStart-ExecutionFinish and ObserverActivated-ObserverDeactivated which makes automatic latent action cleanup impossible. Keep in mind, that you HAVE TO verify is given chain is still active after resuming from any latent action (like Delay, Timelines, etc). Helper functions: - IsDecoratorExecutionActive (true after ExecutionStart, until ExecutionFinish) - IsDecoratorObserverActive (true after ObserverActivated, until ObserverDeactivated)

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **ReceiveTick** | AActor * OwnerActor, floatDeltaSeconds | tick function |
| void | **ReceiveExecutionStart** | AActor *OwnerActor | called on execution of underlying node |
| void | **ReceiveExecutionFinish** | AActor * OwnerActor, EBTNodeResult :: TypeNodeResult | called when execution of underlying node is finished |
| void | **ReceiveObserverActivated** | AActor *OwnerActor | called when observer is activated (flow controller) |
| void | **ReceiveObserverDeactivated** | AActor *OwnerActor | called when observer is deactivated (flow controller) |
| bool | **PerformConditionCheck** | AActor *OwnerActor | called when testing if underlying node can be executed, must call FinishConditionCheck |
| void | **ReceiveTickAI** | AAIController * OwnerController, APawn * ControlledPawn, floatDeltaSeconds | Alternative AI version of ReceiveTick |
| void | **ReceiveExecutionStartAI** | AAIController * OwnerController, APawn *ControlledPawn | Alternative AI version of ReceiveExecutionStart |
| void | **ReceiveExecutionFinishAI** | AAIController * OwnerController, APawn * ControlledPawn, EBTNodeResult :: TypeNodeResult | Alternative AI version of ReceiveExecutionFinish |
| void | **ReceiveObserverActivatedAI** | AAIController * OwnerController, APawn *ControlledPawn | Alternative AI version of ReceiveObserverActivated |
| void | **ReceiveObserverDeactivatedAI** | AAIController * OwnerController, APawn *ControlledPawn | Alternative AI version of ReceiveObserverDeactivated |
| bool | **PerformConditionCheckAI** | AAIController * OwnerController, APawn *ControlledPawn | Alternative AI version of ReceiveConditionCheck |
| bool | **IsDecoratorExecutionActive** |  | check if decorator is part of currently active branch |
| bool | **IsDecoratorObserverActive** |  | check if decorator's observer is currently active ReceiveTick ReceiveExecutionStart ReceiveExecutionFinish ReceiveObserverActivated ReceiveObserverDeactivated PerformConditionCheck ReceiveTickAI ReceiveExecutionStartAI ReceiveExecutionFinishAI ReceiveObserverActivatedAI ReceiveObserverDeactivatedAI  |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Cached | **AIController** | owner of BehaviorTreeComponent. Cached AIController owner of BehaviorTreeComponent. blackboard key names that should be observed show detailed information about properties Applies only if Decorator has any FBlackboardKeySelector property and if decorator is set to abort BT flow. Is set to true Recei |

