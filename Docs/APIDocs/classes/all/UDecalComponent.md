# UDecalComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDecalComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDecalComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDecalComponent](https://developer.gp.qq.com/api/#/searchContent/UDecalComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDecalComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDecalComponent)

类

全文搜索

A material that is rendered onto the surface of a mesh. A kind of 'bumper sticker' for a model. @see UDecalActor

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| float | **GetFadeStartDelay** |  |  |
| float | **GetFadeDuration** |  |  |
| void | **SetFadeOut** | float StartDelay, float Duration, boolDestroyOwnerAfterFade | Sets the decal's fade start time, duration and if the owning actor should be destroyed after the decal is fully faded out. The default value of 0 for FadeStartDelay and FadeDuration makes the decal persistent. See DecalLifetimeOpacity material node to control the look of "fading out." params StartDe |
| void | **SetFadeScreenSize** | floatNewFadeScreenSize | Set the FadeScreenSize for this decal component |
| void | **SetSortOrder** | int32Value | Sets the sort order for the decal component. Higher values draw later (on top). This will force the decal to reattach |
| void | **SetDecalMaterial** | UMaterialInterface *NewDecalMaterial | setting decal material on decal component. This will force the decal to reattach |
| UMaterialInterface * | **GetDecalMaterial** |  | Accessor for decal material |
| UMaterialInstanceDynamic * | **CreateDynamicMaterialInstance** |  | Utility to allocate a new Dynamic Material Instance, set its parent to the currently applied material, and assign it GetFadeStartDelay GetFadeDuration SetFadeOut SetFadeScreenSize SetSortOrder SetDecalMaterial GetDecalMaterial CreateDynamicMaterialInstance |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Decal | **material** | . Controls the order in which decal elements are rendered. Higher values draw later (on top). Setting many different sort orders on many different decals prevents sorting by state and can reduce performance. Time in seconds to wait before beginning to fade out the decal. Set fade duration and start  |

