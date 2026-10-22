# UBrainComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBrainComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBrainComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBrainComponent](https://developer.gp.qq.com/api/#/searchContent/UBrainComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBrainComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBrainComponent)

类

全文搜索

---


## 函数

- **RestartLogic**()
- **StopLogic**(FString &Reason)
- **PauseLogic**(FString &Reason)
- **TypeResumeLogic**(FString &Reason) — MUST be called by child implementations! return -indicates whether child class' ResumeLogic should be called (true) or has it been
- **IsRunning**()
- **IsPaused**(RestartLogic StopLogic PauseLogic ResumeLogic IsRunning IsPaused)

## 属性

- **component** — AAIController *AIOwner BlackboardComp AIOwner