# UDirectionalLightComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDirectionalLightComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDirectionalLightComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDirectionalLightComponent](https://developer.gp.qq.com/api/#/searchContent/UDirectionalLightComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDirectionalLightComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDirectionalLightComponent)

类

全文搜索

A light component that has parallel rays. Will provide a uniform lighting across any affected surface (eg. The Sun). This will affect all objects in the defined light-mass importance volume.

---


## 函数

- **SetCastPhotonPerObjectShadow**(boolInValue)
- **SetDynamicShadowDistanceMovableLight**(floatNewValue)
- **SetDynamicShadowDistanceStationaryLight**(floatNewValue)
- **SetDynamicShadowCascades**(int32NewValue)
- **SetCascadeDistributionExponent**(floatNewValue)
- **SetCascadeTransitionFraction**(floatNewValue)
- **SetShadowDistanceFadeoutFraction**(floatNewValue)
- **SetForwardShadingPriority**(int32NewValue)
- **SetEnableLightShaftOcclusion**(boolbNewValue)
- **SetOcclusionMaskDarkness**(floatNewValue)
- **SetLightShaftOverrideDirection**(FVectorNewValue)
- **SetCastsCloudShadow**(boolInValue)
- **SetCloudShadowTexture**(UTexture *InTexture)
- **SetCloudShadowTileSize**(floatInValue)
- **SetCloudShadowDensity**(floatInDensity)
- **SetCloudShadowWinSpeed**(FVector2D &InWinSpeed) — SetCastPhotonPerObjectShadow SetDynamicShadowDistanceMovableLight SetDynamicShadowDistanceStationaryLight SetDynamicShadowCascades SetCascadeDistributionExponent SetCascadeTransitionFraction SetShadowDistanceFadeoutFraction SetForwardShadingPriority SetEnableLightShaftOcclusion SetOcclusionMaskDarkn

## 属性

- **to** — occlude fog and atmosphere inscattering with screenspace blurred occlusion from this light. Controls how dark the occlusion masking is, a value of 1 results in no darkening term. Everything closer to the camera than this distance will occlude light shafts. Can be used to make light shafts come from