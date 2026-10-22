# UVisualLoggerKismetLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UVisualLoggerKismetLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVisualLoggerKismetLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVisualLoggerKismetLibrary](https://developer.gp.qq.com/api/#/searchContent/UVisualLoggerKismetLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVisualLoggerKismetLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVisualLoggerKismetLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **LogText** | UObject * WorldContextObject, FString Text, FNameLogCategory | Logs simple text string with Visual Logger - recording for Visual Logs has to be enabled to record this data |
| void | **LogLocation** | UObject * WorldContextObject, FVector Location, FString Text, FLinearColor ObjectColor, float Radius, FNameLogCategory | Logs location as sphere with given radius - recording for Visual Logs has to be enabled to record this data |
| void | **LogBox** | UObject * WorldContextObject, FBox BoxShape, FString Text, FLinearColor ObjectColor, FNameLogCategory | Logs box shape - recording for Visual Logs has to be enabled to record this data LogText LogLocation LogBox |

