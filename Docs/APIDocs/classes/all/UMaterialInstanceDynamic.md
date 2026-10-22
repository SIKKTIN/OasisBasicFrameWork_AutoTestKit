# UMaterialInstanceDynamic

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialInstanceDynamic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialInstanceDynamic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialInstanceDynamic](https://developer.gp.qq.com/api/#/searchContent/UMaterialInstanceDynamic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialInstanceDynamic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialInstanceDynamic)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetScalarParameterValue** | FName ParameterName, floatValue | Set a MID scalar (float) parameter value |
| float | **K2_GetScalarParameterValue** | FNameParameterName | Get the current scalar (float) parameter value from an MID |
| void | **SetTextureParameterValue** | FName ParameterName, UTexture *Value | Set an MID texture parameter value |
| UTexture * | **K2_GetTextureParameterValue** | FNameParameterName | Get the current MID texture parameter value |
| void | **SetVectorParameterValue** | FName ParameterName, FLinearColorValue | Set an MID vector parameter value |
| F | **LinearColorK2_GetVectorParameterValue** | FNameParameterName | Get the current MID vector parameter value |
| void | **K2_InterpolateMaterialInstanceParams** | UMaterialInstance * SourceA, UMaterialInstance * SourceB, floatAlpha | Interpolates the scalar and vector parameters of this material instance based on two other material instances, and an alpha blending factor The output is the object itself (this). Supports the case SourceA==this || SourceB==this Both material have to be from the same base material params SourceA -va |
| void | **K2_CopyMaterialInstanceParameters** | UMaterialInterface *Source | Copies over parameters given a material interface (copy each instance following the hierarchy) |
| Very slow implementation, avoid using at runtime. Hopefully we can replace ity later with something like | **CopyInterpParameters** |  | The output is the object itself (this). |
| void | **CopyInterpParameters** | UMaterialInstance *Source | Copies over parameters given a material instance (only copy from the instance, not following the hierarchy) |
| much faster than | **K2_CopyMaterialInstanceParameters** |  | The output is the object itself (this). params Source -ignores the call if 0 |
| void | **CopyParameterOverrides** | UMaterialInstance *MaterialInstance | Copy parameter values from another material instance. This will copy only parameters explicitly overridden in that material instance!! SetScalarParameterValue K2_GetScalarParameterValue SetTextureParameterValue K2_GetTextureParameterValue SetVectorParameterValue K2_GetVectorParameterValue K2_Interpo |

