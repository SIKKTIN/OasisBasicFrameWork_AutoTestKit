# UBlackboardComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlackboardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlackboardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlackboardComponent](https://developer.gp.qq.com/api/#/searchContent/UBlackboardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlackboardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlackboardComponent)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| UObject * | **GetValueAsObject** | FName &KeyName |  |
| UClass * | **GetValueAsClass** | FName &KeyName |  |
| uint8 | **GetValueAsEnum** | FName &KeyName |  |
| int32 | **GetValueAsInt** | FName &KeyName |  |
| float | **GetValueAsFloat** | FName &KeyName |  |
| bool | **GetValueAsBool** | FName &KeyName |  |
| F | **StringGetValueAsString** | FName &KeyName |  |
| F | **NameGetValueAsName** | FName &KeyName |  |
| F | **VectorGetValueAsVector** | FName &KeyName |  |
| F | **RotatorGetValueAsRotator** | FName &KeyName |  |
| void | **SetValueAsObject** | FName & KeyName, UObject *ObjectValue |  |
| void | **SetValueAsClass** | FName & KeyName, UClass *ClassValue |  |
| void | **SetValueAsEnum** | FName & KeyName, uint8EnumValue |  |
| void | **SetValueAsInt** | FName & KeyName, int32IntValue |  |
| void | **SetValueAsFloat** | FName & KeyName, floatFloatValue |  |
| void | **SetValueAsBool** | FName & KeyName, boolBoolValue |  |
| void | **SetValueAsString** | FName & KeyName, FStringStringValue |  |
| void | **SetValueAsName** | FName & KeyName, FNameNameValue |  |
| void | **SetValueAsVector** | FName & KeyName, FVectorVectorValue |  |
| void | **SetValueAsRotator** | FName & KeyName, FRotatorVectorValue |  |
| bool | **IsVectorValueSet** | FName &KeyName |  |
| bool | **GetLocationFromEntry** | FName & KeyName, FVector &ResultLocation | return false if call failed (most probably no such entry in BB) |
| bool | **GetRotationFromEntry** | FName & KeyName, FRotator &ResultRotation | return false if call failed (most probably no such entry in BB) |
| void | **ClearValue** | FName &KeyName | GetValueAsObject GetValueAsClass GetValueAsEnum GetValueAsInt GetValueAsFloat GetValueAsBool GetValueAsString GetValueAsName GetValueAsVector GetValueAsRotator SetValueAsObject SetValueAsClass SetValueAsEnum SetValueAsInt SetValueAsFloat SetValueAsBool SetValueAsString SetValueAsName SetValueAsVecto |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| cached | **behavior** | tree component UBlackboardData *BlackboardAsset data asset defining entries instanced keys with custom data allocations BrainComp BlackboardAsset KeyInstances |

