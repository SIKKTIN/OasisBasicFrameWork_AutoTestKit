# UAIPerceptionStimuliSourceComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionStimuliSourceComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionStimuliSourceComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionStimuliSourceComponent](https://developer.gp.qq.com/api/#/searchContent/UAIPerceptionStimuliSourceComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAIPerceptionStimuliSourceComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAIPerceptionStimuliSourceComponent)

类

全文搜索

Gives owning actor a way to auto-register as perception system's sense stimuli source

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **RegisterWithPerceptionSystem** |  | Registers owning actor as source of stimuli for senses specified in RegisterAsSourceForSenses. Note that you don't have to do it if bAutoRegisterAsSource == true |
| void | **RegisterForSense** | TSubclassOf < UAISense >SenseClass | Registers owning actor as source for specified sense class |
| void | **UnregisterFromPerceptionSystem** |  | Unregister owning actor from being a source of sense stimuli |
| void | **UnregisterFromSense** | TSubclassOf < UAISense >SenseClass | Unregisters owning actor from sources list of a specified sense class RegisterWithPerceptionSystem RegisterForSense UnregisterFromPerceptionSystem UnregisterFromSense |

