# UGameplayTasksComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTasksComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTasksComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTasksComponent](https://developer.gp.qq.com/api/#/searchContent/UGameplayTasksComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTasksComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTasksComponent)

类

全文搜索

The core ActorComponent for interfacing with the GameplayAbilities System

---


## 函数

- **OnRep_SimulatedTasks**()
- **OnRep_AutonomousTasks**()
- **GameplayTaskRunResultK2_RunGameplayTask**(TScriptInterface < IGameplayTaskOwnerInterface > TaskOwner, UGameplayTask* Task, uint8 Priority, TArray < TSubclassOf < UGameplayTaskResource > > AdditionalRequiredResources, TArray < TSubclassOf < U) — OnRep_SimulatedTasks OnRep_AutonomousTasks K2_RunGameplayTask

## 属性

- **that** — run on simulated proxies Array of currently active UGameplayTask that require ticking All known tasks (processed by this component) referenced for GC SimulatedTasks AutonomousTasks TaskPriorityQueue TickingTasks KnownTasks

## 委托

- voidOnClaimedResourcesChange(FGameplayResourceSetNewlyClaimed, FGameplayResourceSetFreshlyReleased)
- OnClaimedResourcesChange