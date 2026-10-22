# UAtmosphericFogComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAtmosphericFogComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAtmosphericFogComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAtmosphericFogComponent](https://developer.gp.qq.com/api/#/searchContent/UAtmosphericFogComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAtmosphericFogComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAtmosphericFogComponent)

类

全文搜索

Used to create fogging effects such as clouds.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| ENGINE_API void | **SetDefaultBrightness** | floatNewBrightness | Set brightness of the light |
| ENGINE_API void | **SetDefaultLightColor** | FLinearColorNewLightColor | Set color of the light |
| ENGINE_API void | **SetSunMultiplier** | floatNewSunMultiplier | Set SunMultiplier |
| ENGINE_API void | **SetFogMultiplier** | floatNewFogMultiplier | Set FogMultiplier |
| ENGINE_API void | **SetDensityMultiplier** | floatNewDensityMultiplier | Set DensityMultiplier |
| ENGINE_API void | **SetDensityOffset** | floatNewDensityOffset | Set DensityOffset |
| ENGINE_API void | **SetDistanceScale** | floatNewDistanceScale | Set DistanceScale |
| ENGINE_API void | **SetAltitudeScale** | floatNewAltitudeScale | Set AltitudeScale |
| ENGINE_API void | **SetStartDistance** | floatNewStartDistance | Set StartDistance |
| ENGINE_API void | **SetDistanceOffset** | floatNewDistanceOffset | Set DistanceOffset |
| ENGINE_API void | **DisableSunDisk** | boolNewSunDisk | Set DisableSunDisk |
| ENGINE_API void | **DisableGroundScattering** | boolNewGroundScattering | Set DisableGroundScattering |
| ENGINE_API void | **SetPrecomputeParams** | float DensityHeight, int32 MaxScatteringOrder, int32InscatterAltitudeSampleNum | Set PrecomputeParams, only valid in Editor mode |
| void | **StartPrecompute** |  | SetDefaultBrightness SetDefaultLightColor SetSunMultiplier SetFogMultiplier SetDensityMultiplier SetDensityOffset SetDistanceScale SetAltitudeScale SetStartDistance SetDistanceOffset DisableSunDisk DisableGroundScattering SetPrecomputeParams StartPrecompute |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Global | **scattering** | factor. Scattering factor on object. Fog density control factor. Fog density offset to control opacity [-1.f ~ 1.f]. Distance scale. Altitude scale (only Z scale). Distance offset, in km (to handle large distance) Ground offset. Start Distance. Distance offset, in km (to handle large distance) Defau |

