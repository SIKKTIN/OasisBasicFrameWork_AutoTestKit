# ULevelSequenceBurnIn

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevelSequenceBurnIn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelSequenceBurnIn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelSequenceBurnIn](https://developer.gp.qq.com/api/#/searchContent/ULevelSequenceBurnIn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelSequenceBurnIn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelSequenceBurnIn)

类

全文搜索

Base class for level sequence burn ins

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetSettings** | UObject *InSettings | Called when this burn in is receiving its settings |
| TSubclassOf < ULevelSequenceBurnInInitSettings > | **GetSettingsClass** |  | Get the settings class to use for this burn in SetSettings GetSettingsClass |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Snapshot | **of** | frame information. ALevelSequenceActor *LevelSequenceActor The actor to get our burn in frames from FrameInformation LevelSequenceActor |

