# UDirectionalLightComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDirectionalLightComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDirectionalLightComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDirectionalLightComponent](https://developer.gp.qq.com/api/#/searchContent/UDirectionalLightComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDirectionalLightComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDirectionalLightComponent)

类

全文搜索

A light component that has parallel rays. Will provide a uniform lighting across any affected surface (eg. The Sun). This will affect all objects in the defined light-mass importance volume.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetCastPhotonPerObjectShadow** | boolInValue |  |
| void | **SetDynamicShadowDistanceMovableLight** | floatNewValue |  |
| void | **SetDynamicShadowDistanceStationaryLight** | floatNewValue |  |
| void | **SetDynamicShadowCascades** | int32NewValue |  |
| void | **SetCascadeDistributionExponent** | floatNewValue |  |
| void | **SetCascadeTransitionFraction** | floatNewValue |  |
| void | **SetShadowDistanceFadeoutFraction** | floatNewValue |  |
| void | **SetForwardShadingPriority** | int32NewValue |  |
| void | **SetEnableLightShaftOcclusion** | boolbNewValue |  |
| void | **SetOcclusionMaskDarkness** | floatNewValue |  |
| void | **SetLightShaftOverrideDirection** | FVectorNewValue |  |
| void | **SetCastsCloudShadow** | boolInValue |  |
| void | **SetCloudShadowTexture** | UTexture *InTexture |  |
| void | **SetCloudShadowTileSize** | floatInValue |  |
| void | **SetCloudShadowDensity** | floatInDensity |  |
| void | **SetCloudShadowWinSpeed** | FVector2D &InWinSpeed | SetCastPhotonPerObjectShadow SetDynamicShadowDistanceMovableLight SetDynamicShadowDistanceStationaryLight SetDynamicShadowCascades SetCascadeDistributionExponent SetCascadeTransitionFraction SetShadowDistanceFadeoutFraction SetForwardShadingPriority SetEnableLightShaftOcclusion SetOcclusionMaskDarkn |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Whether | **to** | occlude fog and atmosphere inscattering with screenspace blurred occlusion from this light. Controls how dark the occlusion masking is, a value of 1 results in no darkening term. Everything closer to the camera than this distance will occlude light shafts. Can be used to make light shafts come from  |

