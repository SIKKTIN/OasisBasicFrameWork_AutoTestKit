# UBTTask_GameplayTaskBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_GameplayTaskBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_GameplayTaskBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_GameplayTaskBase](https://developer.gp.qq.com/api/#/searchContent/UBTTask_GameplayTaskBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_GameplayTaskBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_GameplayTaskBase)

类

全文搜索

Base class for managing gameplay tasks Since AITask doesn't have any kind of successfailed results, default implemenation will only return EBTNode::Succeeded In your ExecuteTask: - use NewBTAITask() helper to create task - initialize task with values if needed - use StartGameplayTask() helper to execute and get node result

---


## 属性

- **set** — , behavior tree task will wait until gameplay tasks finishes bWaitForGameplayTask