# Foliage / 植被相关  (前缀: UF)
_共 12 个类_
---
## UFileMediaSource

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFileMediaSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFileMediaSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFileMediaSource](https://developer.gp.qq.com/api/#/searchContent/UFileMediaSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFileMediaSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFileMediaSource)

类

全文搜索

---


## 函数

- **SetFilePath**(FString &Path) — Set the path to the media file that this source represents. Automatically converts full paths to media sources that reside in the Engine's or project's ContentMovies directory into relative paths. params Path -The path to set. SetFilePath

## 属性

- **path** — to the media file to be played. @see SetFilePath Load entire media file into memory and play from there (if possible). FilePath PrecacheFile

## UFloatingPawnMovement

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFloatingPawnMovement?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFloatingPawnMovement.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFloatingPawnMovement](https://developer.gp.qq.com/api/#/searchContent/UFloatingPawnMovement?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFloatingPawnMovement.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFloatingPawnMovement)

类

全文搜索

FloatingPawnMovement is a movement component that provides simple movement for any Pawn class. Limits on speed and acceleration are provided, while gravity is not implemented. Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()). During swept (non-teleporting) movement only collision of UpdatedComponent is considered, attached components will teleport to the end location ignoring collision.

---


## 属性

- **velocity** — magnitude allowed for the controlled Pawn. Acceleration applied by input (rate of change of velocity) Deceleration applied when there is no input (rate of change of velocity) Setting affecting extra force applied when changing direction, making turns have less drift and become more responsive. Veloc

## UFoliageInstancedStaticMeshComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFoliageInstancedStaticMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFoliageInstancedStaticMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFoliageInstancedStaticMeshComponent](https://developer.gp.qq.com/api/#/searchContent/UFoliageInstancedStaticMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFoliageInstancedStaticMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFoliageInstancedStaticMeshComponent)

类

全文搜索

---


## 委托

- voidOnInstanceTakePointDamage(int32InstanceIndex, floatDamage, AController*InstigatedBy, FVectorHitLocation, FVectorShotFromDirection, const class UDamageType*DamageType, AActor*DamageCauser)
- voidOnInstanceTakeRadialDamage(const TArray<int32>&Instances, const TArray<float>&Damages, AController*InstigatedBy, FVectorOrigin, floatMaxRadius, const class UDamageType*DamageType, AActor*DamageCauser)
- OnInstanceTakePointDamage
- OnInstanceTakeRadialDamage

## UFoliageStatistics

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFoliageStatistics?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFoliageStatistics.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFoliageStatistics](https://developer.gp.qq.com/api/#/searchContent/UFoliageStatistics?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFoliageStatistics.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFoliageStatistics)

类

全文搜索

---


## 函数

- **FoliageOverlappingSphereCount**(UObject* WorldContextObject, UStaticMesh* StaticMesh, FVector CenterPosition, floatRadius) — Counts how many foliage instances overlap a given sphere params CenterPosition -The center position of the sphere params Radius - The radius of the sphere.
- **FoliageOverlappingBoxCount**(UObject* WorldContextObject, UStaticMesh* StaticMesh, FBoxBox) — Gets the number of instances overlapping a provided box params StaticMesh -Mesh to count params Box -Box to overlap FoliageOverlappingSphereCount FoliageOverlappingBoxCount

## UFoliageType

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFoliageType?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFoliageType.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFoliageType](https://developer.gp.qq.com/api/#/searchContent/UFoliageType?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFoliageType.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFoliageType)

类

全文搜索

---


## 属性

- **GUID** — that is updated every time the foliage type is modified, so foliage placed in the level can detect the FoliageType has changed. Foliage instances will be placed at this density, specified in instances per 1000x1000 unit area The factor by which to adjust the density of instances. Values >1 will incr

## UFoliageType_InstancedStaticMesh

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFoliageType_InstancedStaticMesh?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFoliageType_InstancedStaticMesh.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFoliageType_InstancedStaticMesh](https://developer.gp.qq.com/api/#/searchContent/UFoliageType_InstancedStaticMesh?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFoliageType_InstancedStaticMesh.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFoliageType_InstancedStaticMesh)

类

全文搜索

---


## 属性

- **component** — class to use for foliage instances. You can make a Blueprint subclass of FoliageInstancedStaticMeshComponent to implement custom behavior and assign that class here. Mesh OverrideMaterials ComponentClass

## UFont

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFont?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFont.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFont](https://developer.gp.qq.com/api/#/searchContent/UFont?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFont.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFont)

类

全文搜索

A font object, for use by Slate, UMG, and Canvas. A font can either be: Runtime cached - The font contains a series of TTF files that combine to form a composite font. The glyphs are cached on demand when required at runtime. Offline cached - The font contains a series of textures containing pre-baked cached glyphs and their associated texture coordinates.

---


## 属性

- **kind** — of font caching should we use? This controls which options we see List of characters in the font. For a MultiFont, this will include all characters in all sub-fonts! Thus, the number of characters in this array isn't necessary the number of characters available in the font Textures that store this f

## UFontFace

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFontFace?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFontFace.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFontFace](https://developer.gp.qq.com/api/#/searchContent/UFontFace?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFontFace.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFontFace)

类

全文搜索

A font face asset contains the raw payload data for a source TTFOTF file as used by FreeType. During cook this asset type generates a ".ufont" file containing the raw payload data (unless loaded "Inline").

---


## 属性

- **filename** — of the font face we were created from. This may not always exist on disk, as we may have previously loaded and cached the font data inside this asset. EFontHintingHinting The hinting algorithm to use with the font face. EFontLoadingPolicyLoadingPolicy Enum controlling how this font face should be lo

## UFontImportOptions

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFontImportOptions?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFontImportOptions.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFontImportOptions](https://developer.gp.qq.com/api/#/searchContent/UFontImportOptions?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFontImportOptions.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFontImportOptions)

类

全文搜索

Holds options for importing fonts.

---


## 属性

- **actual** — data for this object. We wrap it in a struct so that we can copy it around between objects. Data

## UForceFeedbackAttenuation

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UForceFeedbackAttenuation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUForceFeedbackAttenuation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UForceFeedbackAttenuation](https://developer.gp.qq.com/api/#/searchContent/UForceFeedbackAttenuation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUForceFeedbackAttenuation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UForceFeedbackAttenuation)

类

全文搜索

Wrapper class that can be created as an asset for force feedback attenuation properties which allows reuse of the properties for multiple attenuation components

---

## UForceFeedbackComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UForceFeedbackComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUForceFeedbackComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UForceFeedbackComponent](https://developer.gp.qq.com/api/#/searchContent/UForceFeedbackComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUForceFeedbackComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UForceFeedbackComponent)

类

全文搜索

ForceFeedbackComponent allows placing a rumble effect in to the world and having it apply to player characters who come near it

---


## 函数

- **SetForceFeedbackEffect**(UForceFeedbackEffect *NewForceFeedbackEffect) — Set what force feedback effect is played by this component
- **Play**(floatStartTime) — Start a feedback effect playing
- **Stop**(Stop playing the feedback effect)
- **SetIntensityMultiplier**(floatNewIntensityMultiplier) — Set a new intensity multiplier
- **AdjustAttenuation**(FForceFeedbackAttenuationSettings &InAttenuationSettings) — Modify the attenuation settings of the component
- **BP_GetAttenuationSettingsToApply**(FForceFeedbackAttenuationSettings &OutAttenuationSettings) — SetForceFeedbackEffect Play Stop SetIntensityMultiplier AdjustAttenuation BP_GetAttenuationSettingsToApply

## 属性

- **feedback** — effect to be played Auto destroy this component on completion Stop effect when owner is destroyed Should the playback of the forcefeedback pattern ignore time dilation and use the app's delta time Should the Attenuation Settings asset be used (false) or should the properties set directly on the comp

## 委托

- voidOnForceFeedbackFinished(UForceFeedbackComponent*ForceFeedbackComponent)
- called when we finish playing audio, either because it played to completion or because a Stop() call turned it off early
- OnForceFeedbackFinished

## UForceFeedbackEffect

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UForceFeedbackEffect?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUForceFeedbackEffect.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UForceFeedbackEffect](https://developer.gp.qq.com/api/#/searchContent/UForceFeedbackEffect?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUForceFeedbackEffect.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UForceFeedbackEffect)

类

全文搜索

A predefined force-feedback effect to be played on a controller

---


## 属性

- **of** — force feedback pattern in seconds. ChannelDetails Duration

