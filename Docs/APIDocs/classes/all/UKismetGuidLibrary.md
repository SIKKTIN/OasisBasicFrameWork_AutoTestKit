# UKismetGuidLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetGuidLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetGuidLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetGuidLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetGuidLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetGuidLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetGuidLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| bool | **EqualEqual_GuidGuid** | FGuid & A, FGuid &B | Returns true if the values are equal (A == B) |
| bool | **NotEqual_GuidGuid** | FGuid & A, FGuid &B | Returns true if the values are not equal (A != B) |
| bool | **IsValid_Guid** | FGuid &InGuid | Checks whether the given GUID is valid |
| void | **Invalidate_Guid** | FGuid &InGuid | Invalidates the given GUID |
| F | **GuidNewGuid** |  | Returns a new unique GUID |
| F | **StringConv_GuidToString** | FGuid &InGuid | Converts a GUID value to a string, in the form 'A-B-C-D' |
| void | **Parse_StringToGuid** | FString & GuidString, FGuid & OutGuid, bool &Success | Converts a String of format EGuidFormats to a Guid. Returns Guid OutGuid, Returns bool Success EqualEqual_GuidGuid NotEqual_GuidGuid IsValid_Guid Invalidate_Guid NewGuid Conv_GuidToString Parse_StringToGuid |

