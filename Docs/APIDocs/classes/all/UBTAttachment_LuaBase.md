# UBTAttachment_LuaBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTAttachment_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTAttachment_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTAttachment_LuaBase](https://developer.gp.qq.com/api/#/searchContent/UBTAttachment_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTAttachment_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTAttachment_LuaBase)

类

全文搜索

Base class for lua based Attachment nodes. Do NOT use it for creating native c++ classes! When Attachment receives Deactivation event, all latent actions associated this instance are being removed. This prevents from resuming activity started by Activation, but does not handle external events. Please use them safely (unregister at abort) and call IsAttachmentActive() when in doubt.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **ReceiveTickAI** | AAIController * OwnerController, APawn * ControlledPawn, floatDeltaSeconds | tick function |
| void | **ReceiveSearchStartAI** | AAIController * OwnerController, APawn *ControlledPawn | task search enters branch of tree |
| void | **ReceiveActivationAI** | AAIController * OwnerController, APawn *ControlledPawn | attachment became active |
| void | **ReceiveDeactivationAI** | AAIController * OwnerController, APawn *ControlledPawn | attachment became inactive |
| bool | **IsAttachmentActive** |  | check if attachment is currently being active ReceiveTickAI ReceiveSearchStartAI ReceiveActivationAI ReceiveDeactivationAI IsAttachmentActive |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Cached | **AIController** | owner of BehaviorTreeComponent. AIOwner |

