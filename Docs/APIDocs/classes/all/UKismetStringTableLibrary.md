# UKismetStringTableLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetStringTableLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetStringTableLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetStringTableLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetStringTableLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetStringTableLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetStringTableLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| bool | **IsRegisteredTableId** | FNameTableId | Returns true if the given table ID corresponds to a registered string table. |
| bool | **IsRegisteredTableEntry** | FName TableId, FString &Key | Returns true if the given table ID corresponds to a registered string table, and that table has. |
| F | **StringGetTableNamespace** | FNameTableId | Returns the namespace of the given string table. |
| F | **StringGetTableEntrySourceString** | FName TableId, FString &Key | Returns the source string of the given string table entry (or an empty string). |
| F | **StringGetTableEntryMetaData** | FName TableId, FString & Key, FNameMetaDataId | Returns the specified meta-data of the given string table entry (or an empty string). |
| TArray < FName > | **GetRegisteredStringTables** |  | Returns an array of all registered string table IDs |
| TArray < FString > | **GetKeysFromStringTable** | FNameTableId | Returns an array of all keys within the given string table |
| TArray < FName > | **GetMetaDataIdsFromStringTableEntry** | FName TableId, FString &Key | Returns an array of all meta-data IDs within the given string table entry IsRegisteredTableId IsRegisteredTableEntry GetTableNamespace GetTableEntrySourceString GetTableEntryMetaData GetRegisteredStringTables GetKeysFromStringTable GetMetaDataIdsFromStringTableEntry |

