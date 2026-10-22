# UExponentialHeightFogComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UExponentialHeightFogComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUExponentialHeightFogComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UExponentialHeightFogComponent](https://developer.gp.qq.com/api/#/searchContent/UExponentialHeightFogComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUExponentialHeightFogComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UExponentialHeightFogComponent)

类

全文搜索

Used to create fogging effects such as clouds but with a density that is related to the height of the fog.

---


## 函数

- **SetFogDensity**(floatValue)
- **SetCustomFogHeight**(float Value, int32index)
- **SetCustomFogDensityCoefficient**(float Value, int32index)
- **SetCustomFogInscatteringColor**(FLinearColor Value, int32index)
- **SetFogInscatteringColor**(FLinearColorValue)
- **SetInscatteringColorCubemap**(UTextureCube *Value)
- **SetInscatteringColorCubemapAngle**(floatValue)
- **SetFullyDirectionalInscatteringColorDistance**(floatValue)
- **SetNonDirectionalInscatteringColorDistance**(floatValue)
- **SetInscatteringTextureTint**(FLinearColorValue)
- **SetDirectionalInscatteringExponent**(floatValue)
- **SetDirectionalInscatteringStartDistance**(floatValue)
- **SetDirectionalInscatteringColor**(FLinearColorValue)
- **SetFogHeightFalloff**(floatValue)
- **SetFogMaxOpacity**(floatValue)
- **SetStartDistance**(floatValue)
- **SetFogCutoffDistance**(floatValue)
- **SetVolumetricFog**(boolbNewValue)
- **SetVolumetricFogScatteringDistribution**(floatNewValue)
- **SetVolumetricFogExtinctionScale**(floatNewValue)
- **SetVolumetricFogAlbedo**(FColorNewValue)
- **SetVolumetricFogEmissive**(FLinearColorNewValue)
- **SetVolumetricFogDistance**(floatNewValue)
- **SetVolumetricFogStartDistance**(floatNewValue)
- **SetVolumetricFogNoiseTexture**(UTexture2D *NewValue)
- **SetVolumetricFogNoiseTransform**(FTransformTransform) — SetFogDensity SetCustomFogHeight SetCustomFogDensityCoefficient SetCustomFogInscatteringColor SetFogInscatteringColor SetInscatteringColorCubemap SetInscatteringColorCubemapAngle SetFullyDirectionalInscatteringColorDistance SetNonDirectionalInscatteringColorDistance SetInscatteringTextureTint SetDir

## 属性

- **density** — factor. UTextureCube *InscatteringColorCubemap Cubemap that can be specified for fog color, which is useful to make distant, heavily fogged scene elements match the sky. When the cubemap is specified, FogInscatteringColor is ignored and Directional inscattering is disabled. Angle to rotate the Insca