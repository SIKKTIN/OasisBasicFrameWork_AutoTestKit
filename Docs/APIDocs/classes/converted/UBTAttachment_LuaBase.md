# UBTAttachment_LuaBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTAttachment_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTAttachment_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTAttachment_LuaBase](https://developer.gp.qq.com/api/#/searchContent/UBTAttachment_LuaBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTAttachment_LuaBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTAttachment_LuaBase)

类

全文搜索

Base class for lua based Attachment nodes. Do NOT use it for creating native c++ classes! When Attachment receives Deactivation event, all latent actions associated this instance are being removed. This prevents from resuming activity started by Activation, but does not handle external events. Please use them safely (unregister at abort) and call IsAttachmentActive() when in doubt.

---


## 函数

- **ReceiveTickAI**(AAIController* OwnerController, APawn* ControlledPawn, floatDeltaSeconds) — tick function
- **ReceiveSearchStartAI**(AAIController* OwnerController, APawn *ControlledPawn) — task search enters branch of tree
- **ReceiveActivationAI**(AAIController* OwnerController, APawn *ControlledPawn) — attachment became active
- **ReceiveDeactivationAI**(AAIController* OwnerController, APawn *ControlledPawn) — attachment became inactive
- **IsAttachmentActive**(check if attachment is currently being active ReceiveTickAI ReceiveSearchStartAI ReceiveActivationAI ReceiveDeactivationAI IsAttachmentActive)

## 属性

- **AIController** — owner of BehaviorTreeComponent. AIOwner