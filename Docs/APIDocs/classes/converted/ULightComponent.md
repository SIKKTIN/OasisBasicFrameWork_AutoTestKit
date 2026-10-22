# ULightComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULightComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULightComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULightComponent](https://developer.gp.qq.com/api/#/searchContent/ULightComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULightComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULightComponent)

类

全文搜索

---


## 函数

- **SetIntensity**(floatNewIntensity) — Set intensity of the light
- **SetIndirectLightingIntensity**(floatNewIntensity)
- **SetVolumetricScatteringIntensity**(floatNewIntensity)
- **SetLightColor**(FLinearColor NewLightColor, boolbSRGB) — Set color of the light
- **SetTemperature**(floatNewTemperature)
- **SetLightFunctionMaterial**(UMaterialInterface *NewLightFunctionMaterial)
- **SetLightFunctionScale**(FVectorNewLightFunctionScale)
- **SetLightFunctionFadeDistance**(floatNewLightFunctionFadeDistance)
- **SetLightFunctionDisabledBrightness**(floatNewValue)
- **SetAffectDynamicIndirectLighting**(boolbNewValue)
- **SetAffectTranslucentLighting**(boolbNewValue)
- **SetEnableLightShaftBloom**(boolbNewValue)
- **SetBloomScale**(floatNewValue)
- **SetBloomThreshold**(floatNewValue)
- **SetBloomTint**(FColorNewValue)
- **SetIESTexture**(UTextureLightProfile *NewValue)
- **SetShadowBias**(floatNewValue)
- **ForceUpdateShadowState**()
- **SetSpecularScale**(floatNewValue)
- **SetLocalLightDisableDiffuse**(boolNewValue) — SetIntensity SetIndirectLightingIntensity SetVolumetricScatteringIntensity SetLightColor SetTemperature SetLightFunctionMaterial SetLightFunctionScale SetLightFunctionFadeDistance SetLightFunctionDisabledBrightness SetAffectDynamicIndirectLighting SetAffectTranslucentLighting SetEnableLightShaftBloo

## 属性

- **temperature** — in Kelvin of the blackbody illuminant. White (D65) is 6500K. false: use white (D65) as illuminant. Legacy shadowmap channel from the lighting build, now stored in FLightComponentMapBuildData. Min roughness effective for this light. Used for softening specular highlights. Multiplier on specular highl