# UBTTask_BlueprintBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_BlueprintBase](https://developer.gp.qq.com/api/#/searchContent/UBTTask_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_BlueprintBase)

类

全文搜索

Base class for blueprint based task nodes. Do NOT use it for creating native c++ classes! When task receives Abort event, all latent actions associated this instance are being removed. This prevents from resuming activity started by Execute, but does not handle external events. Please use them safely (unregister at abort) and call IsTaskExecuting() when in doubt.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **ReceiveExecute** | AActor *OwnerActor | entry point, task will stay active until FinishExecute is called. |
| void | **ReceiveAbort** | AActor *OwnerActor | if blueprint graph contains this event, task will stay active until FinishAbort is called |
| void | **ReceiveTick** | AActor * OwnerActor, floatDeltaSeconds | tick function |
| void | **ReceiveExecuteAI** | AAIController * OwnerController, APawn *ControlledPawn | Alternative AI version of ReceiveExecute |
| void | **ReceiveAbortAI** | AAIController * OwnerController, APawn *ControlledPawn | Alternative AI version of ReceiveAbort |
| void | **ReceiveTickAI** | AAIController * OwnerController, APawn * ControlledPawn, floatDeltaSeconds | Alternative AI version of tick function. |
| void | **FinishExecute** | boolbSuccess | finishes task execution with Success or Fail result |
| void | **FinishAbort** |  | aborts task execution |
| void | **SetFinishOnMessage** | FNameMessageName | task execution will be finished (with result 'Success') after receiving specified message |
| void | **SetFinishOnMessageWithId** | FName MessageName, int32RequestID | task execution will be finished (with result 'Success') after receiving specified message with indicated ID |
| bool | **IsTaskExecuting** |  | check if task is currently being executed |
| bool | **IsTaskAborting** |  | check if task is currently being aborted ReceiveExecute ReceiveAbort ReceiveTick ReceiveExecuteAI ReceiveAbortAI ReceiveTickAI FinishExecute FinishAbort SetFinishOnMessage SetFinishOnMessageWithId IsTaskExecuting IsTaskAborting |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Cached | **AIController** | owner of BehaviorTreeComponent. Cached actor owner of BehaviorTreeComponent. show detailed information about properties AIOwner ActorOwner bShowPropertyDetails |

