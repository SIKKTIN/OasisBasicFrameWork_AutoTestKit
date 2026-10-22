# UBTTaskNode

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTaskNode?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTaskNode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTaskNode](https://developer.gp.qq.com/api/#/searchContent/UBTTaskNode?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTaskNode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTaskNode)

类

全文搜索

Task are leaf nodes of behavior tree, which perform actual actions Because some of them can be instanced for specific AI, following virtual functions are not marked as const: - ExecuteTask - AbortTask - TickTask - OnMessage If your node is not being instanced (default behavior), DO NOT change any properties of object within those functions! Template nodes are shared across all behavior tree components using the same tree asset and must store their runtime properties in provided NodeMemory block (allocation size determined by GetInstanceMemorySize() )

---

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| service | **nodes** |  if set, task search will be discarded when this task is selected to execute but is already running Services bIgnoreRestartSelf |

