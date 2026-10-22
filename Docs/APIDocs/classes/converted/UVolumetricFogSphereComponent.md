# UVolumetricFogSphereComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UVolumetricFogSphereComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVolumetricFogSphereComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVolumetricFogSphereComponent](https://developer.gp.qq.com/api/#/searchContent/UVolumetricFogSphereComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUVolumetricFogSphereComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UVolumetricFogSphereComponent)

类

全文搜索

Used to create local volumetric fog.

---


## 函数

- **SetVolumetricFogExtinctionScale**(floatNewValue)
- **SetVolumetricFogAlbedo**(FColorNewValue)
- **SetVolumetricFogEmissive**(FLinearColorNewValue) — SetVolumetricFogExtinctionScale SetVolumetricFogAlbedo SetVolumetricFogEmissive

## 属性

- **height** — fog particle reflectiveness used by volumetric fog. Water particles in air have an albedo near white, while dust has slightly darker value. Light emitted by height fog. This is a density so more light is emitted the further you are looking through the fog. In most cases skylight is a better choice,