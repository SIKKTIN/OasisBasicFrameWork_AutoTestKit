# UKismetMaterialLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetMaterialLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetMaterialLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetMaterialLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetMaterialLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetMaterialLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetMaterialLibrary)

类

全文搜索

---


## 函数

- **SetScalarParameterValue**(UObject* WorldContextObject, UMaterialParameterCollection* Collection, FName ParameterName, floatParameterValue) — Sets a scalar parameter value on the material collection instance. Logs if ParameterName is invalid.
- **SetVectorParameterValue**(UObject* WorldContextObject, UMaterialParameterCollection* Collection, FName ParameterName, FLinearColor &ParameterValue) — Sets a vector parameter value on the material collection instance. Logs if ParameterName is invalid.
- **GetScalarParameterValue**(UObject* WorldContextObject, UMaterialParameterCollection* Collection, FNameParameterName) — Gets a scalar parameter value from the material collection instance. Logs if ParameterName is invalid.
- **FLinearColorGetVectorParameterValue**(UObject* WorldContextObject, UMaterialParameterCollection* Collection, FNameParameterName) — Gets a vector parameter value from the material collection instance. Logs if ParameterName is invalid.
- **CreateDynamicMaterialInstance**(UObject* WorldContextObject, UMaterialInterface *Parent) — Creates a Dynamic Material Instance which you can modify during gameplay. SetScalarParameterValue SetVectorParameterValue GetScalarParameterValue GetVectorParameterValue CreateDynamicMaterialInstance