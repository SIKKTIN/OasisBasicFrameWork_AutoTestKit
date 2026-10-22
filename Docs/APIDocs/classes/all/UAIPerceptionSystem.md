# UAIPerceptionSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionSystem](https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionSystem)

类

全文搜索

By design checks perception between hostile teams

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **ReportEvent** | UAISenseEvent *PerceptionEvent |  |
| void | **ReportPerceptionEvent** | UObject * WorldContextObject, UAISenseEvent *PerceptionEvent |  |
| bool | **RegisterPerceptionStimuliSource** | UObject * WorldContextObject, TSubclassOf < UAISense > Sense, AActor *Target |  |
| TSubclassOf < UAISense > | **GetSenseClassForStimulus** | UObject * WorldContextObject, FAIStimulus &Stimulus |  |
| void | **OnPerceptionStimuliSourceEndPlay** | AActor * Actor, EEndPlayReason :: TypeEndPlayReason | ReportEvent ReportPerceptionEvent RegisterPerceptionStimuliSource GetSenseClassForStimulus OnPerceptionStimuliSourceEndPlay |

