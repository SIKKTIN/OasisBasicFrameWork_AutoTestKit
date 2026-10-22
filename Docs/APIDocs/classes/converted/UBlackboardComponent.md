# UBlackboardComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlackboardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlackboardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlackboardComponent](https://developer.gp.qq.com/api/#/searchContent/UBlackboardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlackboardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlackboardComponent)

类

全文搜索

---


## 函数

- **GetValueAsObject**(FName &KeyName)
- **GetValueAsClass**(FName &KeyName)
- **GetValueAsEnum**(FName &KeyName)
- **GetValueAsInt**(FName &KeyName)
- **GetValueAsFloat**(FName &KeyName)
- **GetValueAsBool**(FName &KeyName)
- **StringGetValueAsString**(FName &KeyName)
- **NameGetValueAsName**(FName &KeyName)
- **VectorGetValueAsVector**(FName &KeyName)
- **RotatorGetValueAsRotator**(FName &KeyName)
- **SetValueAsObject**(FName& KeyName, UObject *ObjectValue)
- **SetValueAsClass**(FName& KeyName, UClass *ClassValue)
- **SetValueAsEnum**(FName& KeyName, uint8EnumValue)
- **SetValueAsInt**(FName& KeyName, int32IntValue)
- **SetValueAsFloat**(FName& KeyName, floatFloatValue)
- **SetValueAsBool**(FName& KeyName, boolBoolValue)
- **SetValueAsString**(FName& KeyName, FStringStringValue)
- **SetValueAsName**(FName& KeyName, FNameNameValue)
- **SetValueAsVector**(FName& KeyName, FVectorVectorValue)
- **SetValueAsRotator**(FName& KeyName, FRotatorVectorValue)
- **IsVectorValueSet**(FName &KeyName)
- **GetLocationFromEntry**(FName& KeyName, FVector &ResultLocation) — return false if call failed (most probably no such entry in BB)
- **GetRotationFromEntry**(FName& KeyName, FRotator &ResultRotation) — return false if call failed (most probably no such entry in BB)
- **ClearValue**(FName &KeyName) — GetValueAsObject GetValueAsClass GetValueAsEnum GetValueAsInt GetValueAsFloat GetValueAsBool GetValueAsString GetValueAsName GetValueAsVector GetValueAsRotator SetValueAsObject SetValueAsClass SetValueAsEnum SetValueAsInt SetValueAsFloat SetValueAsBool SetValueAsString SetValueAsName SetValueAsVecto

## 属性

- **behavior** — tree component UBlackboardData *BlackboardAsset data asset defining entries instanced keys with custom data allocations BrainComp BlackboardAsset KeyInstances