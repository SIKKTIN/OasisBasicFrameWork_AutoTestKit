# UExponentialHeightFogComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UExponentialHeightFogComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUExponentialHeightFogComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UExponentialHeightFogComponent](https://developer.gp.qq.com/api/#/searchContent/UExponentialHeightFogComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUExponentialHeightFogComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UExponentialHeightFogComponent)

类

全文搜索

Used to create fogging effects such as clouds but with a density that is related to the height of the fog.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetFogDensity** | floatValue |  |
| void | **SetCustomFogHeight** | float Value, int32index |  |
| void | **SetCustomFogDensityCoefficient** | float Value, int32index |  |
| void | **SetCustomFogInscatteringColor** | FLinearColor Value, int32index |  |
| void | **SetFogInscatteringColor** | FLinearColorValue |  |
| void | **SetInscatteringColorCubemap** | UTextureCube *Value |  |
| void | **SetInscatteringColorCubemapAngle** | floatValue |  |
| void | **SetFullyDirectionalInscatteringColorDistance** | floatValue |  |
| void | **SetNonDirectionalInscatteringColorDistance** | floatValue |  |
| void | **SetInscatteringTextureTint** | FLinearColorValue |  |
| void | **SetDirectionalInscatteringExponent** | floatValue |  |
| void | **SetDirectionalInscatteringStartDistance** | floatValue |  |
| void | **SetDirectionalInscatteringColor** | FLinearColorValue |  |
| void | **SetFogHeightFalloff** | floatValue |  |
| void | **SetFogMaxOpacity** | floatValue |  |
| void | **SetStartDistance** | floatValue |  |
| void | **SetFogCutoffDistance** | floatValue |  |
| void | **SetVolumetricFog** | boolbNewValue |  |
| void | **SetVolumetricFogScatteringDistribution** | floatNewValue |  |
| void | **SetVolumetricFogExtinctionScale** | floatNewValue |  |
| void | **SetVolumetricFogAlbedo** | FColorNewValue |  |
| void | **SetVolumetricFogEmissive** | FLinearColorNewValue |  |
| void | **SetVolumetricFogDistance** | floatNewValue |  |
| void | **SetVolumetricFogStartDistance** | floatNewValue |  |
| void | **SetVolumetricFogNoiseTexture** | UTexture2D *NewValue |  |
| void | **SetVolumetricFogNoiseTransform** | FTransformTransform | SetFogDensity SetCustomFogHeight SetCustomFogDensityCoefficient SetCustomFogInscatteringColor SetFogInscatteringColor SetInscatteringColorCubemap SetInscatteringColorCubemapAngle SetFullyDirectionalInscatteringColorDistance SetNonDirectionalInscatteringColorDistance SetInscatteringTextureTint SetDir |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Global | **density** | factor. UTextureCube *InscatteringColorCubemap Cubemap that can be specified for fog color, which is useful to make distant, heavily fogged scene elements match the sky. When the cubemap is specified, FogInscatteringColor is ignored and Directional inscattering is disabled. Angle to rotate the Insca |

