# UMaterialInterface

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialInterface?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialInterface.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialInterface](https://developer.gp.qq.com/api/#/searchContent/UMaterialInterface?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialInterface.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialInterface)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| ENGINE_API UMaterial * | **GetBaseMaterial** |  |  |
| Walks up parent chain and finds the base Material that this is an instance of. Just calls the virtual | **GetMaterial** |  |  |
| UPhysicalMaterial * | **GetPhysicalMaterial** |  | Return a pointer to the physical material used by this material instance. return -The physical material. |
| ENGINE_API virtual void | **SetForceMipLevelsToBeResident** | bool OverrideForceMiplevelsToBeResident, bool bForceMiplevelsToBeResidentValue, float ForceDuration, int32CinematicTextureGroups | Force the streaming system to disregard the normal logic for the specified duration and instead always load all mip-levels for all textures used by this material. params OverrideForceMiplevelsToBeResident -- Whether to use (true) or ignore (false) the bForceMiplevelsToBeResidentValue parameter. para |
| ENGINE_API virtual void | **SetStreamingTextureMipOffset** | int32 NewMipOffset, boolSizeLimited | GetBaseMaterial GetPhysicalMaterial SetForceMipLevelsToBeResident SetStreamingTextureMipOffset |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| SubsurfaceProfile, | **for** | Screen Space Subsurface Scattering The Lightmass settings for this object. Data used by the texture streaming to know how each texture is sampled by the material. Sorted by names for quick access. Because of redirector, the texture names need to be resorted at each load in case they changed. The mes |

