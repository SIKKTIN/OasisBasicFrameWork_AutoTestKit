# UGameplayTask_TimeLimitedExecution

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTask_TimeLimitedExecution?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTask_TimeLimitedExecution.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTask_TimeLimitedExecution](https://developer.gp.qq.com/api/#/searchContent/UGameplayTask_TimeLimitedExecution?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTask_TimeLimitedExecution.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTask_TimeLimitedExecution)

类

全文搜索

Adds time limit for running a child task - child task needs to be created with UGameplayTask_TimeLimitedExecution passed as TaskOwner - activations are tied together and when either UGameplayTask_TimeLimitedExecution or child task is activated, other one starts as well - OnFinished and OnTimeExpired are mutually exclusive

---


## 委托

- voidOnFinished()
- called when child task finishes execution before time runs out
- voidOnTimeExpired()
- called when time runs out
- OnFinished
- OnTimeExpired