# UKismetMetaDataLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetMetaDataLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetMetaDataLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetMetaDataLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetMetaDataLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetMetaDataLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetMetaDataLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| bool | **HasMetaData** | UField * Field, FName Key, int32NameIndex |  |
| const FString & | **GetMetaData** | UField * Field, FName Key, int32NameIndex |  |
| UEnum * | **GetEnum** | UEnumProperty *EnumProperty |  |
| UEnum * | **GetEnumFromByte** | UByteProperty *ByteProperty |  |
| int32 | **GetNumOfEnum** | UEnum *Enum |  |
| F | **NameGetEnumName** | UEnum * Enum, int32NameIndex |  |
| int64 | **GetEnumValue** | UEnum * Enum, int32NameIndex |  |
| int32 | **GetEnumIndexByValue** | UEnum * Enum, int64Value |  |
| UScriptStruct * | **GetScriptStructOfStructProperty** | UStructProperty *StructProperty |  |
| UClass * | **GetClassOfObjectPropertyBase** | UObjectPropertyBase *ObjectPropertyBase |  |
| TArray < UObject * > | **GetObjectsWithOuter** | UObject * Outer, bool bIncludeNestedObjects, int32 ExclusionFlags, int32ExclusionInternalFlags | HasMetaData GetMetaData GetEnum GetEnumFromByte GetNumOfEnum GetEnumName GetEnumValue GetEnumIndexByValue GetScriptStructOfStructProperty GetClassOfObjectPropertyBase GetObjectsWithOuter |

