# UBTTask_LuaBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_LuaBase](https://developer.gp.qq.com/api/#/searchContent/UBTTask_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_LuaBase)

类

全文搜索

Base class for lua based task nodes. Do NOT use it for creating native c++ classes! When task receives Abort event, all latent actions associated this instance are being removed. This prevents from resuming activity started by Execute, but does not handle external events. Please use them safely (unregister at abort) and call IsTaskExecuting() when in doubt.

---


## 函数

- **ReceiveExecuteAI**(AAIController* OwnerController, APawn *ControlledPawn) — entry point, task will stay active until FinishExecute is called.
- **ReceiveAbortAI**(AAIController* OwnerController, APawn *ControlledPawn) — if blueprint graph contains this event, task will stay active until FinishAbort is called
- **ReceiveTickAI**(AAIController* OwnerController, APawn* ControlledPawn, floatDeltaSeconds) — tick function
- **FinishExecute**(boolbSuccess) — finishes task execution with Success or Fail result
- **FinishAbort**(aborts task execution)
- **SetFinishOnMessage**(FNameMessageName) — task execution will be finished (with result 'Success') after receiving specified message
- **SetFinishOnMessageWithId**(FName MessageName, int32RequestID) — task execution will be finished (with result 'Success') after receiving specified message with indicated ID
- **IsTaskExecuting**(check if task is currently being executed)
- **IsTaskAborting**(check if task is currently being aborted ReceiveExecuteAI ReceiveAbortAI ReceiveTickAI FinishExecute FinishAbort SetFinishOnMessage SetFinishOnMessageWithId IsTaskExecuting IsTaskAborting)

## 属性

- **AIController** — owner of BehaviorTreeComponent. show detailed information about properties AIOwner bShowPropertyDetails