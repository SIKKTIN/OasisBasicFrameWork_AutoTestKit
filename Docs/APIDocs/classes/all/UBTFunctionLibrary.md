# UBTFunctionLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTFunctionLibrary](https://developer.gp.qq.com/api/#/searchContent/UBTFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTFunctionLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| UBlackboardComponent * | **GetOwnersBlackboard** | UBTNode *NodeOwner |  |
| UBehaviorTreeComponent * | **GetOwnerComponent** | UBTNode *NodeOwner |  |
| UObject * | **GetBlackboardValueAsObject** | UBTNode * NodeOwner, FBlackboardKeySelector &Key |  |
| AActor * | **GetBlackboardValueAsActor** | UBTNode * NodeOwner, FBlackboardKeySelector &Key |  |
| UClass * | **GetBlackboardValueAsClass** | UBTNode * NodeOwner, FBlackboardKeySelector &Key |  |
| uint8 | **GetBlackboardValueAsEnum** | UBTNode * NodeOwner, FBlackboardKeySelector &Key |  |
| int32 | **GetBlackboardValueAsInt** | UBTNode * NodeOwner, FBlackboardKeySelector &Key |  |
| float | **GetBlackboardValueAsFloat** | UBTNode * NodeOwner, FBlackboardKeySelector &Key |  |
| bool | **GetBlackboardValueAsBool** | UBTNode * NodeOwner, FBlackboardKeySelector &Key |  |
| F | **StringGetBlackboardValueAsString** | UBTNode * NodeOwner, FBlackboardKeySelector &Key |  |
| F | **NameGetBlackboardValueAsName** | UBTNode * NodeOwner, FBlackboardKeySelector &Key |  |
| F | **VectorGetBlackboardValueAsVector** | UBTNode * NodeOwner, FBlackboardKeySelector &Key |  |
| F | **RotatorGetBlackboardValueAsRotator** | UBTNode * NodeOwner, FBlackboardKeySelector &Key |  |
| void | **SetBlackboardValueAsObject** | UBTNode * NodeOwner, FBlackboardKeySelector & Key, UObject *Value |  |
| void | **SetBlackboardValueAsClass** | UBTNode * NodeOwner, FBlackboardKeySelector & Key, UClass *Value |  |
| void | **SetBlackboardValueAsEnum** | UBTNode * NodeOwner, FBlackboardKeySelector & Key, uint8Value |  |
| void | **SetBlackboardValueAsInt** | UBTNode * NodeOwner, FBlackboardKeySelector & Key, int32Value |  |
| void | **SetBlackboardValueAsFloat** | UBTNode * NodeOwner, FBlackboardKeySelector & Key, floatValue |  |
| void | **SetBlackboardValueAsBool** | UBTNode * NodeOwner, FBlackboardKeySelector & Key, boolValue |  |
| void | **SetBlackboardValueAsString** | UBTNode * NodeOwner, FBlackboardKeySelector & Key, FStringValue |  |
| void | **SetBlackboardValueAsName** | UBTNode * NodeOwner, FBlackboardKeySelector & Key, FNameValue |  |
| void | **SetBlackboardValueAsVector** | UBTNode * NodeOwner, FBlackboardKeySelector & Key, FVectorValue |  |
| void | **ClearBlackboardValueAsVector** | UBTNode * NodeOwner, FBlackboardKeySelector &Key | (DEPRECATED) Use ClearBlackboardValue instead |
| void | **SetBlackboardValueAsRotator** | UBTNode * NodeOwner, FBlackboardKeySelector & Key, FRotatorValue |  |
| void | **ClearBlackboardValue** | UBTNode * NodeOwner, FBlackboardKeySelector &Key | Resets indicated value to "not set" value, based on values type |
| void | **StartUsingExternalEvent** | UBTNode * NodeOwner, AActor *OwningActor | Initialize variables marked as "instance memory" and set owning actor for blackboard operations |
| void | **StopUsingExternalEvent** | UBTNode *NodeOwner | Save variables marked as "instance memory" and clear owning actor GetOwnersBlackboard GetOwnerComponent GetBlackboardValueAsObject GetBlackboardValueAsActor GetBlackboardValueAsClass GetBlackboardValueAsEnum GetBlackboardValueAsInt GetBlackboardValueAsFloat GetBlackboardValueAsBool GetBlackboardValu |

