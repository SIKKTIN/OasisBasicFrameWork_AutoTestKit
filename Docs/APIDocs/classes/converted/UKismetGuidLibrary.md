# UKismetGuidLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetGuidLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetGuidLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetGuidLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetGuidLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetGuidLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetGuidLibrary)

类

全文搜索

---


## 函数

- **EqualEqual_GuidGuid**(FGuid& A, FGuid &B) — Returns true if the values are equal (A == B)
- **NotEqual_GuidGuid**(FGuid& A, FGuid &B) — Returns true if the values are not equal (A != B)
- **IsValid_Guid**(FGuid &InGuid) — Checks whether the given GUID is valid
- **Invalidate_Guid**(FGuid &InGuid) — Invalidates the given GUID
- **GuidNewGuid**(Returns a new unique GUID)
- **StringConv_GuidToString**(FGuid &InGuid) — Converts a GUID value to a string, in the form 'A-B-C-D'
- **Parse_StringToGuid**(FString& GuidString, FGuid& OutGuid, bool &Success) — Converts a String of format EGuidFormats to a Guid. Returns Guid OutGuid, Returns bool Success EqualEqual_GuidGuid NotEqual_GuidGuid IsValid_Guid Invalidate_Guid NewGuid Conv_GuidToString Parse_StringToGuid