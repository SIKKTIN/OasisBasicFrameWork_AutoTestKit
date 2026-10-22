# UBTFunctionLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTFunctionLibrary](https://developer.gp.qq.com/api/#/searchContent/UBTFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTFunctionLibrary)

类

全文搜索

---


## 函数

- **GetOwnersBlackboard**(UBTNode *NodeOwner)
- **GetOwnerComponent**(UBTNode *NodeOwner)
- **GetBlackboardValueAsObject**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **GetBlackboardValueAsActor**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **GetBlackboardValueAsClass**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **GetBlackboardValueAsEnum**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **GetBlackboardValueAsInt**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **GetBlackboardValueAsFloat**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **GetBlackboardValueAsBool**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **StringGetBlackboardValueAsString**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **NameGetBlackboardValueAsName**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **VectorGetBlackboardValueAsVector**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **RotatorGetBlackboardValueAsRotator**(UBTNode* NodeOwner, FBlackboardKeySelector &Key)
- **SetBlackboardValueAsObject**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, UObject *Value)
- **SetBlackboardValueAsClass**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, UClass *Value)
- **SetBlackboardValueAsEnum**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, uint8Value)
- **SetBlackboardValueAsInt**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, int32Value)
- **SetBlackboardValueAsFloat**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, floatValue)
- **SetBlackboardValueAsBool**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, boolValue)
- **SetBlackboardValueAsString**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, FStringValue)
- **SetBlackboardValueAsName**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, FNameValue)
- **SetBlackboardValueAsVector**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, FVectorValue)
- **ClearBlackboardValueAsVector**(UBTNode* NodeOwner, FBlackboardKeySelector &Key) — (DEPRECATED) Use ClearBlackboardValue instead
- **SetBlackboardValueAsRotator**(UBTNode* NodeOwner, FBlackboardKeySelector& Key, FRotatorValue)
- **ClearBlackboardValue**(UBTNode* NodeOwner, FBlackboardKeySelector &Key) — Resets indicated value to "not set" value, based on values type
- **StartUsingExternalEvent**(UBTNode* NodeOwner, AActor *OwningActor) — Initialize variables marked as "instance memory" and set owning actor for blackboard operations
- **StopUsingExternalEvent**(UBTNode *NodeOwner) — Save variables marked as "instance memory" and clear owning actor GetOwnersBlackboard GetOwnerComponent GetBlackboardValueAsObject GetBlackboardValueAsActor GetBlackboardValueAsClass GetBlackboardValueAsEnum GetBlackboardValueAsInt GetBlackboardValueAsFloat GetBlackboardValueAsBool GetBlackboardValu