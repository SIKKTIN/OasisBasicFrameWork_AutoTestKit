# UCapsuleComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCapsuleComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCapsuleComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCapsuleComponent](https://developer.gp.qq.com/api/#/searchContent/UCapsuleComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCapsuleComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCapsuleComponent)

类

全文搜索

A capsule generally used for simple collision. Bounds are rendered as lines in the editor.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetCapsuleSize** | float InRadius, float InHalfHeight, boolbUpdateOverlaps | Change the capsule size. This is the unscaled size, before component scale is applied. params InRadius -: radius of end-cap hemispheres and center cylinder. params InHalfHeight -: half-height, from capsule center to end of top or bottom hemisphere. |
| void | **SetCapsuleRadius** | float Radius, boolbUpdateOverlaps | Set the capsule radius. This is the unscaled radius, before component scale is applied. If this capsule collides, updates touching array for owner actor. params Radius -: radius of end-cap hemispheres and center cylinder. |
| void | **SetCapsuleHalfHeight** | float HalfHeight, boolbUpdateOverlaps | Set the capsule half-height. This is the unscaled half-height, before component scale is applied. If this capsule collides, updates touching array for owner actor. params HalfHeight -: half-height, from capsule center to end of top or bottom hemisphere. |
| float | **GetScaledCapsuleRadius** |  | Returns the capsule radius scaled by the component scale. return -The capsule radius scaled by the component scale. |
| float | **GetScaledCapsuleHalfHeight** |  | Returns the capsule half-height scaled by the component scale. This includes both the cylinder and hemisphere cap. return -The capsule half-height scaled by the component scale. |
| float | **GetScaledCapsuleHalfHeight_WithoutHemisphere** |  | Returns the capsule half-height minus radius (to exclude the hemisphere), scaled by the component scale. From the center of the capsule this is the vertical distance along the straight cylindrical portion to the point just before the curve of top hemisphere begins. return -The capsule half-height mi |
| void | **GetScaledCapsuleSize** | float & OutRadius, float &OutHalfHeight | Returns the capsule radius and half-height scaled by the component scale. Half-height includes the hemisphere end cap. return -The capsule radius and half-height scaled by the component scale. params OutRadius -Radius of the capsule, scaled by the component scale. params OutHalfHeight -Half-height o |
| void | **GetScaledCapsuleSize_WithoutHemisphere** | float & OutRadius, float &OutHalfHeightWithoutHemisphere | Returns the capsule radius and half-height scaled by the component scale. Half-height excludes the hemisphere end cap. return -The capsule radius and half-height scaled by the component scale. params OutRadius -Radius of the capsule, ignoring component scaling. params OutHalfHeightWithoutHemisphere  |
| float | **GetUnscaledCapsuleRadius** |  | Returns the capsule radius, ignoring component scaling. return -the capsule radius, ignoring component scaling. |
| float | **GetUnscaledCapsuleHalfHeight** |  | Returns the capsule half-height, ignoring component scaling. This includes the hemisphere end cap. return -The capsule radius, ignoring component scaling. |
| float | **GetUnscaledCapsuleHalfHeight_WithoutHemisphere** |  | Returns the capsule half-height minus radius (to exclude the hemisphere), ignoring component scaling. This excludes the hemisphere end cap. From the center of the capsule this is the vertical distance along the straight cylindrical portion to the point just before the curve of top hemisphere begins. |
| void | **GetUnscaledCapsuleSize** | float & OutRadius, float &OutHalfHeight | Returns the capsule radius and half-height scaled by the component scale. Half-height includes the hemisphere end cap. return -The capsule radius and half-height scaled by the component scale. params OutRadius -Radius of the capsule, scaled by the component scale. params OutHalfHeight -Half-height o |
| void | **GetUnscaledCapsuleSize_WithoutHemisphere** | float & OutRadius, float &OutHalfHeightWithoutHemisphere | Returns the capsule radius and half-height, ignoring component scaling. Half-height excludes the hemisphere end cap. return -The capsule radius and half-height (excluding hemisphere end cap), ignoring component scaling. params OutRadius -Radius of the capsule, ignoring component scaling. params OutH |
| float | **GetShapeScale** |  | Get the scale used by this shape. This is a uniform scale that is the minimum of any non-uniform scaling. return -the scale used by this shape. SetCapsuleSize SetCapsuleRadius SetCapsuleHalfHeight GetScaledCapsuleRadius GetScaledCapsuleHalfHeight GetScaledCapsuleHalfHeight_WithoutHemisphere GetScale |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Half-height, | **from** | center of capsule to the end of top or bottom hemisphere. This cannot be less than CapsuleRadius. Radius of cap hemispheres and center cylinder. This cannot be more than CapsuleHalfHeight. CapsuleHalfHeight CapsuleRadius UseDelayPhysicUpdated bTransformDataDirty CapsuleHeight_DEPRECATED |

