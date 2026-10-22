# UBTTask_RunBehavior

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_RunBehavior?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_RunBehavior.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_RunBehavior](https://developer.gp.qq.com/api/#/searchContent/UBTTask_RunBehavior?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_RunBehavior.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_RunBehavior)

类

全文搜索

RunBehavior task allows pushing subtrees on execution stack. Subtree asset can't be changed in runtime! This limitation is caused by support for subtree's root level decorators, which are injected into parent tree, and structure of running tree cannot be modified in runtime (see: BTNode: ExecutionIndex, MemoryOffset) Use RunBehaviorDynamic task for subtrees that need to be changed in runtime.

---


## 属性

- **to** — run BehaviorAsset