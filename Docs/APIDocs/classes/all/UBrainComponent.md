# UBrainComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBrainComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBrainComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBrainComponent](https://developer.gp.qq.com/api/#/searchContent/UBrainComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBrainComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBrainComponent)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **RestartLogic** |  |  |
| void | **StopLogic** | FString &Reason |  |
| void | **PauseLogic** | FString &Reason |  |
| EAILogicResuming :: | **TypeResumeLogic** | FString &Reason | MUST be called by child implementations! return -indicates whether child class' ResumeLogic should be called (true) or has it been |
| bool | **IsRunning** |  |  |
| bool | **IsPaused** |  | RestartLogic StopLogic PauseLogic ResumeLogic IsRunning IsPaused |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| blackboard | **component** |  AAIController *AIOwner BlackboardComp AIOwner |

