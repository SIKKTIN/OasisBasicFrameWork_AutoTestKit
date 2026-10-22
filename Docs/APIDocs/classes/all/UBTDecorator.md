# UBTDecorator

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTDecorator?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator](https://developer.gp.qq.com/api/#/searchContent/UBTDecorator?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTDecorator.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTDecorator)

类

全文搜索

Decorators are supporting nodes placed on parent-child connection, that receive notification about execution flow and can be ticked Because some of them can be instanced for specific AI, following virtual functions are not marked as const: - OnNodeActivation - OnNodeDeactivation - OnNodeProcessed - OnBecomeRelevant (from UBTAuxiliaryNode) - OnCeaseRelevant (from UBTAuxiliaryNode) - TickNode (from UBTAuxiliaryNode) If your node is not being instanced (default behavior), DO NOT change any properties of object within those functions! Template nodes are shared across all behavior tree components using the same tree asset and must store their runtime properties in provided NodeMemory block (allocation size determined by GetInstanceMemorySize() )

---

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| if | **set** | , condition check result will be inversed flow controller settings bInverseCondition FlowAbortMode |

