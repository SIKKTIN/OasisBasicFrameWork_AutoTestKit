# UAIPerceptionSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionSystem](https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionSystem)

类

全文搜索

By design checks perception between hostile teams

---


## 函数

- **ReportEvent**(UAISenseEvent *PerceptionEvent)
- **ReportPerceptionEvent**(UObject* WorldContextObject, UAISenseEvent *PerceptionEvent)
- **RegisterPerceptionStimuliSource**(UObject* WorldContextObject, TSubclassOf < UAISense > Sense, AActor *Target)
- **GetSenseClassForStimulus**(UObject* WorldContextObject, FAIStimulus &Stimulus)
- **OnPerceptionStimuliSourceEndPlay**(AActor* Actor, EEndPlayReason :: TypeEndPlayReason) — ReportEvent ReportPerceptionEvent RegisterPerceptionStimuliSource GetSenseClassForStimulus OnPerceptionStimuliSourceEndPlay