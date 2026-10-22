# UBTCondition_LuaBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTCondition_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTCondition_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTCondition_LuaBase](https://developer.gp.qq.com/api/#/searchContent/UBTCondition_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTCondition_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTCondition_LuaBase)

类

全文搜索

Base class for lua based condition nodes. Do NOT use it for creating native c++ classes! Unlike task and attachments, condition have two execution chains: ExecutionStart-ExecutionFinish and ObserverActivated-ObserverDeactivated which makes automatic latent action cleanup impossible. Keep in mind, that you HAVE TO verify is given chain is still active after resuming from any latent action (like Delay, Timelines, etc). Helper functions: - IsConditionExecutionActive (true after ExecutionStart, until ExecutionFinish) - IsConditionObserverActive (true after ObserverActivated, until ObserverDeactivated)

---


## 函数

- **ReceiveTickAI**(AAIController* OwnerController, APawn* ControlledPawn, floatDeltaSeconds) — tick function
- **ReceiveExecutionStartAI**(AAIController* OwnerController, APawn *ControlledPawn) — called on execution of underlying node
- **ReceiveExecutionFinishAI**(AAIController* OwnerController, APawn* ControlledPawn, EBTNodeResult :: TypeNodeResult) — called when execution of underlying node is finished
- **ReceiveObserverActivatedAI**(AAIController* OwnerController, APawn *ControlledPawn) — called when observer is activated (flow controller)
- **ReceiveObserverDeactivatedAI**(AAIController* OwnerController, APawn *ControlledPawn) — called when observer is deactivated (flow controller)
- **PerformConditionCheckAI**(AAIController* OwnerController, APawn *ControlledPawn) — called when testing if underlying node can be executed
- **IsConditionExecutionActive**(check if condition is part of currently active branch)
- **IsConditionObserverActive**(check if condition's observer is currently active ReceiveTickAI ReceiveExecutionStartAI ReceiveExecutionFinishAI ReceiveObserverActivatedAI ReceiveObserverDeactivatedAI PerformConditionCheckAI IsConditionExecutionActive IsConditionObserverActive)

## 属性

- **AIController** — owner of BehaviorTreeComponent. blackboard key names that should be observed Applies only if Condition has any FBlackboardKeySelector property and if condition is set to abort BT flow. Is set to true ReceiveConditionCheck will be called only on changes to observed BB keys. If false or no BB keys obs