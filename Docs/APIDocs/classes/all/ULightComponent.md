# ULightComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULightComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULightComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULightComponent](https://developer.gp.qq.com/api/#/searchContent/ULightComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULightComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULightComponent)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetIntensity** | floatNewIntensity | Set intensity of the light |
| void | **SetIndirectLightingIntensity** | floatNewIntensity |  |
| void | **SetVolumetricScatteringIntensity** | floatNewIntensity |  |
| void | **SetLightColor** | FLinearColor NewLightColor, boolbSRGB | Set color of the light |
| void | **SetTemperature** | floatNewTemperature |  |
| void | **SetLightFunctionMaterial** | UMaterialInterface *NewLightFunctionMaterial |  |
| void | **SetLightFunctionScale** | FVectorNewLightFunctionScale |  |
| void | **SetLightFunctionFadeDistance** | floatNewLightFunctionFadeDistance |  |
| void | **SetLightFunctionDisabledBrightness** | floatNewValue |  |
| void | **SetAffectDynamicIndirectLighting** | boolbNewValue |  |
| void | **SetAffectTranslucentLighting** | boolbNewValue |  |
| void | **SetEnableLightShaftBloom** | boolbNewValue |  |
| void | **SetBloomScale** | floatNewValue |  |
| void | **SetBloomThreshold** | floatNewValue |  |
| void | **SetBloomTint** | FColorNewValue |  |
| void | **SetIESTexture** | UTextureLightProfile *NewValue |  |
| void | **SetShadowBias** | floatNewValue |  |
| void | **ForceUpdateShadowState** |  |  |
| void | **SetSpecularScale** | floatNewValue |  |
| void | **SetLocalLightDisableDiffuse** | boolNewValue | SetIntensity SetIndirectLightingIntensity SetVolumetricScatteringIntensity SetLightColor SetTemperature SetLightFunctionMaterial SetLightFunctionScale SetLightFunctionFadeDistance SetLightFunctionDisabledBrightness SetAffectDynamicIndirectLighting SetAffectTranslucentLighting SetEnableLightShaftBloo |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Color | **temperature** | in Kelvin of the blackbody illuminant. White (D65) is 6500K. false: use white (D65) as illuminant. Legacy shadowmap channel from the lighting build, now stored in FLightComponentMapBuildData. Min roughness effective for this light. Used for softening specular highlights. Multiplier on specular highl |

