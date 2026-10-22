# UAtmosphericFogComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAtmosphericFogComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAtmosphericFogComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAtmosphericFogComponent](https://developer.gp.qq.com/api/#/searchContent/UAtmosphericFogComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAtmosphericFogComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAtmosphericFogComponent)

类

全文搜索

Used to create fogging effects such as clouds.

---


## 函数

- **SetDefaultBrightness**(floatNewBrightness) — Set brightness of the light
- **SetDefaultLightColor**(FLinearColorNewLightColor) — Set color of the light
- **SetSunMultiplier**(floatNewSunMultiplier) — Set SunMultiplier
- **SetFogMultiplier**(floatNewFogMultiplier) — Set FogMultiplier
- **SetDensityMultiplier**(floatNewDensityMultiplier) — Set DensityMultiplier
- **SetDensityOffset**(floatNewDensityOffset) — Set DensityOffset
- **SetDistanceScale**(floatNewDistanceScale) — Set DistanceScale
- **SetAltitudeScale**(floatNewAltitudeScale) — Set AltitudeScale
- **SetStartDistance**(floatNewStartDistance) — Set StartDistance
- **SetDistanceOffset**(floatNewDistanceOffset) — Set DistanceOffset
- **DisableSunDisk**(boolNewSunDisk) — Set DisableSunDisk
- **DisableGroundScattering**(boolNewGroundScattering) — Set DisableGroundScattering
- **SetPrecomputeParams**(float DensityHeight, int32 MaxScatteringOrder, int32InscatterAltitudeSampleNum) — Set PrecomputeParams, only valid in Editor mode
- **StartPrecompute**(SetDefaultBrightness SetDefaultLightColor SetSunMultiplier SetFogMultiplier SetDensityMultiplier SetDensityOffset SetDistanceScale SetAltitudeScale SetStartDistance SetDistanceOffset DisableSunDisk DisableGroundScattering SetPrecomputeParams StartPrecompute)

## 属性

- **scattering** — factor. Scattering factor on object. Fog density control factor. Fog density offset to control opacity [-1.f ~ 1.f]. Distance scale. Altitude scale (only Z scale). Distance offset, in km (to handle large distance) Ground offset. Start Distance. Distance offset, in km (to handle large distance) Defau