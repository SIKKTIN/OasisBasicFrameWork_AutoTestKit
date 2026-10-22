# UMaterialInstanceDynamic

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialInstanceDynamic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialInstanceDynamic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialInstanceDynamic](https://developer.gp.qq.com/api/#/searchContent/UMaterialInstanceDynamic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialInstanceDynamic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialInstanceDynamic)

类

全文搜索

---


## 函数

- **SetScalarParameterValue**(FName ParameterName, floatValue) — Set a MID scalar (float) parameter value
- **K2_GetScalarParameterValue**(FNameParameterName) — Get the current scalar (float) parameter value from an MID
- **SetTextureParameterValue**(FName ParameterName, UTexture *Value) — Set an MID texture parameter value
- **K2_GetTextureParameterValue**(FNameParameterName) — Get the current MID texture parameter value
- **SetVectorParameterValue**(FName ParameterName, FLinearColorValue) — Set an MID vector parameter value
- **LinearColorK2_GetVectorParameterValue**(FNameParameterName) — Get the current MID vector parameter value
- **K2_InterpolateMaterialInstanceParams**(UMaterialInstance* SourceA, UMaterialInstance* SourceB, floatAlpha) — Interpolates the scalar and vector parameters of this material instance based on two other material instances, and an alpha blending factor The output is the object itself (this). Supports the case SourceA==this
- **K2_CopyMaterialInstanceParameters**(UMaterialInterface *Source) — Copies over parameters given a material interface (copy each instance following the hierarchy)
- **CopyInterpParameters**(The output is the object itself (this).)
- **CopyInterpParameters**(UMaterialInstance *Source) — Copies over parameters given a material instance (only copy from the instance, not following the hierarchy)
- **K2_CopyMaterialInstanceParameters**(The output is the object itself (this). ignores the call if 0)
- **CopyParameterOverrides**(UMaterialInstance *MaterialInstance) — Copy parameter values from another material instance. This will copy only parameters explicitly overridden in that material instance!! SetScalarParameterValue K2_GetScalarParameterValue SetTextureParameterValue K2_GetTextureParameterValue SetVectorParameterValue K2_GetVectorParameterValue K2_Interpo