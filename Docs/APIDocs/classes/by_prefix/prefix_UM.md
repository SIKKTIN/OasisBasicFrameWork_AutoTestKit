# Material / 材质  (前缀: UM)
_共 124 个类_
---
## UManagementRuleSetting

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UManagementRuleSetting?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUManagementRuleSetting.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UManagementRuleSetting](https://developer.gp.qq.com/api/#/searchContent/UManagementRuleSetting?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUManagementRuleSetting.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UManagementRuleSetting)

类

全文搜索

ManagementRule逻辑规则的.ini文件配置版本，减少结构体和容器嵌套，方便.ini配置和阅读

---

## UMaterial

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterial?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterial.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterial](https://developer.gp.qq.com/api/#/searchContent/UMaterial?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterial.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterial)

类

全文搜索

A Material is an asset which can be applied to a mesh to control the visual look of the scene. When light from the scene hits the surface, the shading model of the material is used to calculate how that light interacts with the surface. Warning: Creating new materials directly increases shader compile times! Consider creating a Material Instance off of an existing material instead.

---


## 属性

- **material** — to use for this graphics material. Used for sounds, effects etc. UMaterialInterface *ReplaceMaterial The domain that the material's attributes will be evaluated in. Certain pieces of material functionality are only valid in certain domains, for example vertex normal is only valid on a surface. Deter

## UMaterialBillboardComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialBillboardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialBillboardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialBillboardComponent](https://developer.gp.qq.com/api/#/searchContent/UMaterialBillboardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialBillboardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialBillboardComponent)

类

全文搜索

A 2d material that will be rendered always facing the camera.

---


## 函数

- **SetElements**(TArray < FMaterialSpriteElement > &NewElements) — Set all elements of this material billboard component
- **AddElement**(UMaterialInterface* Material, UCurveFloat* DistanceToOpacityCurve, bool bSizeIsInScreenSpace, float BaseSizeX, float BaseSizeY, UCurveFloat *DistanceToSizeCurve) — Adds an element to the sprite. SetElements AddElement

## 属性

- **array** — of material billboard elements Elements

## UMaterialExpression

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpression?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpression.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpression](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpression?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpression.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpression)

类

全文搜索

---


## 属性

- **material** — that this expression is currently being compiled in. This is not necessarily the object which owns this expression, for example a preview material compiling a material function's expressions. UMaterialFunction *Function The material function that this expression is being used with, if any. This will

## UMaterialExpressionBumpOffset

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionBumpOffset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionBumpOffset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionBumpOffset](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionBumpOffset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionBumpOffset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionBumpOffset)

类

全文搜索

---


## 属性

- **used** — if Coordinate is not hooked up Coordinate Height HeightRatioInput HeightRatio ReferencePlane ConstCoordinate

## UMaterialExpressionCollectionParameter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionCollectionParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionCollectionParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionCollectionParameter](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionCollectionParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionCollectionParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionCollectionParameter)

类

全文搜索

---


## 属性

- **Parameter** — Collection to use. Name of the parameter being referenced. Id that is set from the name, and used to handle renaming of collection parameters. Collection ParameterName ParameterId

## UMaterialExpressionComment

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionComment?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionComment.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionComment](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionComment?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionComment.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionComment)

类

全文搜索

---


## 属性

- **to** — style comment with Size of the text in the comment box SizeX SizeY Text CommentColor FontSize

## UMaterialExpressionDecalMipmapLevel

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionDecalMipmapLevel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionDecalMipmapLevel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionDecalMipmapLevel](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionDecalMipmapLevel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionDecalMipmapLevel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionDecalMipmapLevel)

类

全文搜索

---


## 属性

- **texture** — 's size only used if TextureSize is not hooked up TextureSize ConstWidth ConstHeight

## UMaterialExpressionDepthFade

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionDepthFade?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionDepthFade.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionDepthFade](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionDepthFade?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionDepthFade.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionDepthFade)

类

全文搜索

---


## 属性

- **opacity** — which will be scaled by the result of the fade. World space distance over which the fade should take place. Opacity which will be scaled by the result of the fade. This is used when InOpacity is unconnected. World space distance over which the fade should take place. This is used when FadeDistance i

## UMaterialExpressionDepthOfFieldFunction

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionDepthOfFieldFunction?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionDepthOfFieldFunction.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionDepthOfFieldFunction](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionDepthOfFieldFunction?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionDepthOfFieldFunction.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionDepthOfFieldFunction)

类

全文搜索

---


## 属性

- **the** — mapping place to use on the terrain. usually nothing or PixelDepth FunctionValue Depth

## UMaterialExpressionDivide

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionDivide?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionDivide.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionDivide](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionDivide?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionDivide.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionDivide)

类

全文搜索

---


## 属性

- **used** — if A is not hooked up only used if B is not hooked up A B ConstA ConstB

## UMaterialExpressionDynamicInstancingParameter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionDynamicInstancingParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionDynamicInstancingParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionDynamicInstancingParameter](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionDynamicInstancingParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionDynamicInstancingParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionDynamicInstancingParameter)

类

全文搜索

---


## 属性

- **names** — of the parameter. ParameterName DefaultValue ParameterIndex

## UMaterialExpressionDynamicParameter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionDynamicParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionDynamicParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionDynamicParameter](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionDynamicParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionDynamicParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionDynamicParameter)

类

全文搜索

---


## 属性

- **names** — of the parameters. These will show up in Cascade when editing a particle system that uses the material it is in... ParamNames DefaultValue

## UMaterialExpressionFeatureLevelSwitch

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionFeatureLevelSwitch?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionFeatureLevelSwitch.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionFeatureLevelSwitch](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionFeatureLevelSwitch?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionFeatureLevelSwitch.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionFeatureLevelSwitch)

类

全文搜索

---


## 属性

- **connection** — , used when a certain feature level doesn't have an override. Default Inputs

## UMaterialExpressionFontSampleParameter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionFontSampleParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionFontSampleParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionFontSampleParameter](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionFontSampleParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionFontSampleParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionFontSampleParameter)

类

全文搜索

---


## 属性

- **to** — be referenced when we want to find and set thsi parameter GUID that should be unique within the material, this is used for parameter renaming. The name of the parameter Group to display in MaterialInstance Editor. Default is None group ParameterName ExpressionGUID Group

## UMaterialExpressionFresnel

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionFresnel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionFresnel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionFresnel](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionFresnel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionFresnel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionFresnel)

类

全文搜索

---


## 属性

- **exponent** — to pass into the pow() function Specifies the fraction of specular reflection when the surfaces is viewed from straight on. A value of 1 effectively disables Fresnel. The normal to dot with the camera FVector ExponentIn Exponent BaseReflectFractionIn BaseReflectFraction Normal

## UMaterialExpressionFunctionInput

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionFunctionInput?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionFunctionInput.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionFunctionInput](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionFunctionInput?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionFunctionInput.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionFunctionInput)

类

全文搜索

---


## 属性

- **for** — previewing when editing the function, or when bUsePreviewValueAsDefault is enabled. The input's name, which will be drawn on the connector in function call expressions that use this function. The input's description, which will be used as a tooltip on the connector in function call expressions that

## UMaterialExpressionFunctionOutput

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionFunctionOutput?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionFunctionOutput.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionFunctionOutput](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionFunctionOutput?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionFunctionOutput.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionFunctionOutput)

类

全文搜索

---


## 属性

- **output** — 's name, which will be drawn on the connector in function call expressions that use this function. The output's description, which will be used as a tooltip on the connector in function call expressions that use this function. Controls where the output is displayed relative to the other outputs. Sto

## UMaterialExpressionGIReplace

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionGIReplace?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionGIReplace.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionGIReplace](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionGIReplace?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionGIReplace.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionGIReplace)

类

全文搜索

---


## 属性

- **for** — direct lighting computations e.g. real-time shaders Used for baked indirect lighting e.g. Lightmass Used for dynamic indirect lighting e.g. Light Propagation Volumes Default StaticIndirect DynamicIndirect

## UMaterialExpressionIBLSwitch

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionIBLSwitch?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionIBLSwitch.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionIBLSwitch](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionIBLSwitch?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionIBLSwitch.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionIBLSwitch)

类

全文搜索

---


## 属性

- **used** — if A is not hooked up only used if B is not hooked up IBLOn IBLOff ConstA ConstB

## UMaterialExpressionIf

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionIf?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionIf.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionIf](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionIf?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionIf.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionIf)

类

全文搜索

---


## 属性

- **used** — if B is not hooked up A B AGreaterThanB AEqualsB ALessThanB EqualsThreshold ConstB ConstAEqualsB_DEPRECATED

## UMaterialExpressionLandscapeBlendTA

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeBlendTA?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeBlendTA.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeBlendTA](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeBlendTA?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeBlendTA.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeBlendTA)

类

全文搜索

---


## 属性

- **used** — if Coordinates is not hooked up GUID that should be unique within the material, this is used for parameter renaming. UV DiffuseTexture NormalTexture HeightTexture RoughnessTexture Layers ConstCoordinate ExpressionGUID

## UMaterialExpressionLandscapeLayerBlend

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeLayerBlend?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeLayerBlend.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeLayerBlend](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeLayerBlend?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeLayerBlend.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeLayerBlend)

类

全文搜索

---


## 属性

- **that** — should be unique within the material, this is used for parameter renaming. Layers ExpressionGUID

## UMaterialExpressionLandscapeLayerCoords

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeLayerCoords?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeLayerCoords.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeLayerCoords](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeLayerCoords?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeLayerCoords.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeLayerCoords)

类

全文搜索

---


## 属性

- **the** — mapping place to use on the terrain. Determines the mapping place to use on the terrain. Uniform scale to apply to the mapping. Rotation to apply to the mapping. Offset to apply to the mapping along U. Offset to apply to the mapping along V. MappingType CustomUVType MappingScaleOverride MappingScale

## UMaterialExpressionLandscapeLayerSample

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeLayerSample?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeLayerSample.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeLayerSample](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeLayerSample?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeLayerSample.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeLayerSample)

类

全文搜索

---


## 属性

- **that** — should be unique within the material, this is used for parameter renaming. ParameterName PreviewWeight ExpressionGUID

## UMaterialExpressionLandscapeLayerSwitch

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeLayerSwitch?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeLayerSwitch.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeLayerSwitch](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeLayerSwitch?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeLayerSwitch.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeLayerSwitch)

类

全文搜索

---


## 属性

- **that** — should be unique within the material, this is used for parameter renaming. LayerUsed LayerNotUsed ParameterName PreviewUsed ExpressionGUID

## UMaterialExpressionLandscapeLayerWeight

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeLayerWeight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeLayerWeight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeLayerWeight](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeLayerWeight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeLayerWeight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeLayerWeight)

类

全文搜索

---


## 属性

- **used** — if Base is not hooked up GUID that should be unique within the material, this is used for parameter renaming. Base Layer ParameterName PreviewWeight ConstBase ExpressionGUID

## UMaterialExpressionLandscapeVisibilityMask

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeVisibilityMask?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeVisibilityMask.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeVisibilityMask](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLandscapeVisibilityMask?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLandscapeVisibilityMask.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLandscapeVisibilityMask)

类

全文搜索

---


## 属性

- **that** — should be unique within the material, this is used for parameter renaming. ExpressionGUID

## UMaterialExpressionLinearInterpolate

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLinearInterpolate?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLinearInterpolate.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLinearInterpolate](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionLinearInterpolate?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionLinearInterpolate.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionLinearInterpolate)

类

全文搜索

---


## 属性

- **used** — if A is not hooked up only used if B is not hooked up only used if Alpha is not hooked up A B Alpha ConstA ConstB ConstAlpha

## UMaterialExpressionMaterialFunctionCall

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionMaterialFunctionCall?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionMaterialFunctionCall.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionMaterialFunctionCall](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionMaterialFunctionCall?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionMaterialFunctionCall.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionMaterialFunctionCall)

类

全文搜索

---


## 函数

- **SetMaterialFunction**(UMaterialFunction *NewMaterialFunction) — SetMaterialFunction

## 属性

- **function** — to call. Array of all the function inputs that this function exposes. Array of all the function outputs that this function exposes. MaterialFunction FunctionInputs FunctionOutputs

## UMaterialExpressionMultiply

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionMultiply?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionMultiply.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionMultiply](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionMultiply?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionMultiply.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionMultiply)

类

全文搜索

---


## 属性

- **used** — if A is not hooked up only used if B is not hooked up A B ConstA ConstB

## UMaterialExpressionNoise

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionNoise?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionNoise.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionNoise](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionNoise?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionNoise.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionNoise)

类

全文搜索

---


## 属性

- **to** — 3 dimensional vector scalar, to clamp the Levels at pixel level, can be computed like this: max(length(ddx(Position)), length(ddy(Position)) can also be done with a multiply on the Position Lower numbers are faster and lower quality, higher numbers are slower and higher quality Noise function, affec

## UMaterialExpressionPanner

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionPanner?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionPanner.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionPanner](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionPanner?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionPanner.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionPanner)

类

全文搜索

---


## 属性

- **used** — if Coordinate is not hooked up Coordinate Time Speed SpeedX SpeedY ConstCoordinate bFractionalPart

## UMaterialExpressionParameter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionParameter](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionParameter)

类

全文搜索

---


## 属性

- **name** — of the parameter GUID that should be unique within the material, this is used for parameter renaming. The name of the parameter Group to display in MaterialInstance Editor. Default is None group Controls where the this parameter is displayed in a material instance parameter list. The lower the numbe

## UMaterialExpressionQualitySwitch

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionQualitySwitch?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionQualitySwitch.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionQualitySwitch](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionQualitySwitch?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionQualitySwitch.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionQualitySwitch)

类

全文搜索

---


## 属性

- **connection** — , used when a specific quality level input is missing. Only used during serialization. Default Inputs SerializationVersion

## UMaterialExpressionReflectionVectorWS

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionReflectionVectorWS?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionReflectionVectorWS.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionReflectionVectorWS](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionReflectionVectorWS?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionReflectionVectorWS.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionReflectionVectorWS)

类

全文搜索

---


## 属性

- **world** — normal to reflect the camera view vector about. If unconnected, pixel normal is used (true): The specified world normal will be normalized. (false): WorldNormal will just be used as is, faster but possible artifacts if normal length isn't 1 CustomWorldNormal bNormalizeCustomWorldNormal

## UMaterialExpressionRotator

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionRotator?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionRotator.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionRotator](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionRotator?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionRotator.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionRotator)

类

全文搜索

---


## 属性

- **used** — if Coordinate is not hooked up Coordinate Time CenterX CenterY Speed ConstCoordinate

## UMaterialExpressionScalarParameter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionScalarParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionScalarParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionScalarParameter](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionScalarParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionScalarParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionScalarParameter)

类

全文搜索

---


## 属性

- **the** — lower bound for the slider on this parameter in the material instance editor. Sets the upper bound for the slider on this parameter in the material instance editor. The slider will be disabled if SliderMax <= SliderMin. DefaultValue SliderMin SliderMax

## UMaterialExpressionSceneColor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSceneColor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSceneColor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSceneColor](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSceneColor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSceneColor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSceneColor)

类

全文搜索

---


## 属性

- **on** — the input mode the input will be treated as either: UV coordinates to apply to the scene color lookup or an offset to apply to the scene color lookup, in a 2d fraction of the screen. only used if Input is not hooked up InputMode Input OffsetFraction_DEPRECATED ConstInput

## UMaterialExpressionSceneDepth

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSceneDepth?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSceneDepth.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSceneDepth](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSceneDepth?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSceneDepth.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSceneDepth)

类

全文搜索

---


## 属性

- **on** — the input mode the input will be treated as either: UV coordinates to apply to the scene depth lookup or an offset to apply to the scene depth lookup, in a 2d fraction of the screen. only used if Input is not hooked up InputMode Input Coordinates_DEPRECATED ConstInput

## UMaterialExpressionSceneDepthWithoutWater

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSceneDepthWithoutWater?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSceneDepthWithoutWater.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSceneDepthWithoutWater](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSceneDepthWithoutWater?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSceneDepthWithoutWater.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSceneDepthWithoutWater)

类

全文搜索

---


## 属性

- **on** — the input mode the input will be treated as either: UV coordinates to apply to the scene depth lookup or an offset to apply to the scene depth lookup, in a 2d fraction of the screen. only used if Input is not hooked up Depth to fall back to in case the needed texture isn't available on a particular

## UMaterialExpressionSceneTexture

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSceneTexture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSceneTexture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSceneTexture](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSceneTexture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSceneTexture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSceneTexture)

类

全文搜索

---


## 属性

- **in** — 0..1 range Which scene texture (screen aligned texture) we want to make a lookup into Clamps texture coordinates to the range 0 to 1. Incurs a performance cost. Whether to use point sampled texture lookup (default) or using [bi-linear] filtered (can be slower, avoid faceted lock with distortions), s

## UMaterialExpressionSingleLayerWaterMaterialOutput

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSingleLayerWaterMaterialOutput?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSingleLayerWaterMaterialOutput.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSingleLayerWaterMaterialOutput](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSingleLayerWaterMaterialOutput?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSingleLayerWaterMaterialOutput.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSingleLayerWaterMaterialOutput)

类

全文搜索

Material output expression for writing single layer water volume material properties.

---


## 属性

- **for** — scattering coefficient describing how light scatter around and is absorbed. Valid range is [0,+inf[. Unit is 1cm. Input for scattering coefficient describing how light bounce is absorbed. Valid range is [0,+inf[. Unit is 1cm. Input for phase function 'g' parameter describing how much forward(g>0) or

## UMaterialExpressionSobol

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSobol?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSobol.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSobol](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSobol?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSobol.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSobol)

类

全文搜索

---


## 属性

- **integer** — cell in 256x256 grid. Uses cell (0,0) if not connected Cell Index Seed ConstIndex ConstSeed

## UMaterialExpressionSphereMask

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSphereMask?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSphereMask.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSphereMask](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSphereMask?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSphereMask.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSphereMask)

类

全文搜索

---


## 属性

- **to** — 4 dimensional vector, should be the same type as B 1 to 4 dimensional vector, should be the same type as A in the units that A and B are measured, if not hooked up the internal constant is used 0..1 for the range of 0\% to 100\%, if not hooked up the internal constant is used in the unit that A and

## UMaterialExpressionSphericalParticleOpacity

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSphericalParticleOpacity?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSphericalParticleOpacity.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSphericalParticleOpacity](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSphericalParticleOpacity?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSphericalParticleOpacity.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSphericalParticleOpacity)

类

全文搜索

---


## 属性

- **of** — the particle sphere. Constant density of the particle sphere. Will be overridden if Density is connected. Density ConstantDensity

## UMaterialExpressionSubtract

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSubtract?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSubtract.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSubtract](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionSubtract?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionSubtract.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionSubtract)

类

全文搜索

---


## 属性

- **used** — if A is not hooked up only used if B is not hooked up A B ConstA ConstB

## UMaterialExpressionTerrainBlend

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTerrainBlend?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTerrainBlend.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTerrainBlend](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTerrainBlend?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTerrainBlend.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTerrainBlend)

类

全文搜索

---


## 属性

- **used** — if Coordinates is not hooked up UV Inputs ConstCoordinate

## UMaterialExpressionTerrainBlendDesert

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTerrainBlendDesert?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTerrainBlendDesert.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTerrainBlendDesert](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTerrainBlendDesert?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTerrainBlendDesert.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTerrainBlendDesert)

类

全文搜索

---


## 属性

- **used** — if Coordinates is not hooked up UV Inputs ConstCoordinate

## UMaterialExpressionTerrainBlendHeight

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTerrainBlendHeight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTerrainBlendHeight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTerrainBlendHeight](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTerrainBlendHeight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTerrainBlendHeight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTerrainBlendHeight)

类

全文搜索

---


## 属性

- **used** — if Coordinates is not hooked up UV CameraWeight bUseHPTerrainHeight Inputs ConstCoordinate

## UMaterialExpressionTerrainBlendHeightBlend

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTerrainBlendHeightBlend?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTerrainBlendHeightBlend.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTerrainBlendHeightBlend](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTerrainBlendHeightBlend?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTerrainBlendHeightBlend.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTerrainBlendHeightBlend)

类

全文搜索

---


## 属性

- **used** — if Coordinates is not hooked up UV CameraWeight HeightGlobal Inputs ConstCoordinate

## UMaterialExpressionTexcoordAddressing

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTexcoordAddressing?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTexcoordAddressing.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTexcoordAddressing](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTexcoordAddressing?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTexcoordAddressing.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTexcoordAddressing)

类

全文搜索

---


## 属性

- **used** — if Coordinates is not hooked up Coordinates ConstCoordinate

## UMaterialExpressionTextureBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTextureBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTextureBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTextureBase](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTextureBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTextureBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTextureBase)

类

全文搜索

---


## 属性

- **default** — selected texture when using mesh paint mode texture painting Texture SamplerType IsDefaultMeshpaintTexture

## UMaterialExpressionTextureCoordinate

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTextureCoordinate?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTextureCoordinate.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTextureCoordinate](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTextureCoordinate?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTextureCoordinate.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTextureCoordinate)

类

全文搜索

---


## 属性

- **coordinate** — index Controls how much the texture tiles horizontally, by scaling the U component of the vertex UVs by the specified amount. Controls how much the texture tiles vertically, by scaling the V component of the vertex UVs by the specified amount. Would like to unmirror U or V - if the texture is mirror

## UMaterialExpressionTextureProperty

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTextureProperty?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTextureProperty.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTextureProperty](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTextureProperty?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTextureProperty.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTextureProperty)

类

全文搜索

---


## 属性

- **property** — to be accessed TextureObject Property

## UMaterialExpressionTextureSample

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTextureSample?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTextureSample.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTextureSample](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTextureSample?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTextureSample.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTextureSample)

类

全文搜索

---


## 属性

- **object** — input which overrides Texture if specified. This only shows up in material functions and is used to implement texture parameters without actually putting the texture parameter in the function. Meaning depends on MipValueMode, a single unit is one mip level Enabled only if MipValueMode == TMVM_Deriva

## UMaterialExpressionTextureSampleParameter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTextureSampleParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTextureSampleParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTextureSampleParameter](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTextureSampleParameter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTextureSampleParameter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTextureSampleParameter)

类

全文搜索

---


## 属性

- **that** — should be unique within the material, this is used for parameter renaming. The name of the parameter Group to display in MaterialInstance Editor. Default is None group Controls where the this parameter is displayed in a material instance parameter list. The lower the number the higher up in the para

## UMaterialExpressionTime

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTime?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTime.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTime](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTime?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTime.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTime)

类

全文搜索

---


## 属性

- **time** — continues advancing regardless of whether the game is paused. Enables or disables the Period value. Time will loop around once it gets to Period. bIgnorePause bOverride_Period Period

## UMaterialExpressionTransform

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTransform?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTransform.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTransform](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTransform?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTransform.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTransform)

类

全文搜索

---


## 属性

- **expression** — for this transform Source coordinate space of the FVector Destination coordinate space of the FVector Input TransformSourceType TransformType

## UMaterialExpressionTransformPosition

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTransformPosition?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTransformPosition.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTransformPosition](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionTransformPosition?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionTransformPosition.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionTransformPosition)

类

全文搜索

---


## 属性

- **expression** — for this transform source format of the position that will be transformed type of transform to apply to the input expression Input TransformSourceType TransformType

## UMaterialExpressionVectorNoise

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionVectorNoise?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionVectorNoise.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionVectorNoise](https://developer.gp.qq.com/api/#/searchContent/UMaterialExpressionVectorNoise?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialExpressionVectorNoise.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialExpressionVectorNoise)

类

全文搜索

---


## 属性

- **to** — 3 dimensional vector Noise function, affects performance and look For noise functions where applicable, lower numbers are faster and lower quality, higher numbers are slower and higher quality Whether tile the noise pattern, useful for baking to seam-free repeating textures How many units in each ti

## UMaterialFunction

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialFunction?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialFunction.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialFunction](https://developer.gp.qq.com/api/#/searchContent/UMaterialFunction?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialFunction.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialFunction)

类

全文搜索

A Material Function is a collection of material expressions that can be reused in different materials

---


## 属性

- **by** — materials using this function to know when to recompile. Description of the function which will be displayed as a tooltip wherever the function is used. Whether to list this function in the material function library, which is a window in the material editor that lists categorized functions. Whether

## UMaterialInstance

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialInstance](https://developer.gp.qq.com/api/#/searchContent/UMaterialInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialInstance)

类

全文搜索

---


## 属性

- **material** — to use for this graphics material. Used for sounds, effects etc. UMaterialInterface *Parent Parent material. Indicates whether the instance has static permutation resources (which are required when static parameters are present) Read directly from the rendering thread, can only be modified with the

## UMaterialInstanceDynamic

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialInstanceDynamic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialInstanceDynamic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialInstanceDynamic](https://developer.gp.qq.com/api/#/searchContent/UMaterialInstanceDynamic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialInstanceDynamic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialInstanceDynamic)

类

全文搜索

---


## 函数

- **SetScalarParameterValue**(FName ParameterName, floatValue) — Set a MID scalar (float) parameter value
- **K2_GetScalarParameterValue**(FNameParameterName) — Get the current scalar (float) parameter value from an MID
- **SetTextureParameterValue**(FName ParameterName, UTexture *Value) — Set an MID texture parameter value
- **K2_GetTextureParameterValue**(FNameParameterName) — Get the current MID texture parameter value
- **SetVectorParameterValue**(FName ParameterName, FLinearColorValue) — Set an MID vector parameter value
- **LinearColorK2_GetVectorParameterValue**(FNameParameterName) — Get the current MID vector parameter value
- **K2_InterpolateMaterialInstanceParams**(UMaterialInstance* SourceA, UMaterialInstance* SourceB, floatAlpha) — Interpolates the scalar and vector parameters of this material instance based on two other material instances, and an alpha blending factor The output is the object itself (this). Supports the case SourceA==this
- **K2_CopyMaterialInstanceParameters**(UMaterialInterface *Source) — Copies over parameters given a material interface (copy each instance following the hierarchy)
- **CopyInterpParameters**(The output is the object itself (this).)
- **CopyInterpParameters**(UMaterialInstance *Source) — Copies over parameters given a material instance (only copy from the instance, not following the hierarchy)
- **K2_CopyMaterialInstanceParameters**(The output is the object itself (this). ignores the call if 0)
- **CopyParameterOverrides**(UMaterialInstance *MaterialInstance) — Copy parameter values from another material instance. This will copy only parameters explicitly overridden in that material instance!! SetScalarParameterValue K2_GetScalarParameterValue SetTextureParameterValue K2_GetTextureParameterValue SetVectorParameterValue K2_GetVectorParameterValue K2_Interpo

## UMaterialInterface

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialInterface?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialInterface.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialInterface](https://developer.gp.qq.com/api/#/searchContent/UMaterialInterface?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialInterface.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialInterface)

类

全文搜索

---


## 函数

- **GetBaseMaterial**()
- **GetMaterial**()
- **GetPhysicalMaterial**(Return a pointer to the physical material used by this material instance. return -The physical material.)
- **SetForceMipLevelsToBeResident**(bool OverrideForceMiplevelsToBeResident, bool bForceMiplevelsToBeResidentValue, float ForceDuration, int32CinematicTextureGroups) — Force the streaming system to disregard the normal logic for the specified duration and instead always load all mip-levels for all textures used by this material. params OverrideForceMiplevelsToBeResident -- Whether to use (true) or ignore (false) the bForceMiplevelsToBeResidentValue parameter. para
- **SetStreamingTextureMipOffset**(int32 NewMipOffset, boolSizeLimited) — GetBaseMaterial GetPhysicalMaterial SetForceMipLevelsToBeResident SetStreamingTextureMipOffset

## 属性

- **for** — Screen Space Subsurface Scattering The Lightmass settings for this object. Data used by the texture streaming to know how each texture is sampled by the material. Sorted by names for quick access. Because of redirector, the texture names need to be resorted at each load in case they changed. The mes

## UMaterialParameterCollection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialParameterCollection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialParameterCollection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialParameterCollection](https://developer.gp.qq.com/api/#/searchContent/UMaterialParameterCollection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialParameterCollection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialParameterCollection)

类

全文搜索

Asset class that contains a list of parameter names and their default values. Any number of materials can reference these parameters and get new values when the parameter values are changed.

---


## 属性

- **by** — materials using this collection to know when to recompile. StateId ScalarParameters VectorParameters

## UMaterialParameterCollectionInstance

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMaterialParameterCollectionInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialParameterCollectionInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialParameterCollectionInstance](https://developer.gp.qq.com/api/#/searchContent/UMaterialParameterCollectionInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMaterialParameterCollectionInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMaterialParameterCollectionInstance)

类

全文搜索

Class that stores per-world instance parameter data for a given UMaterialParameterCollection resource. Instances of this class are always transient.

---


## 属性

- **resource** — this instance is based off of. UWorld *World World that owns this instance. Collection World

## UMediaPlayer

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMediaPlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaPlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaPlayer](https://developer.gp.qq.com/api/#/searchContent/UMediaPlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaPlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaPlayer)

类

全文搜索

Implements a media player asset that can play movies and other media sources.

---


## 函数

- **CanPause**(Check whether media playback can be paused right now. Playback can be paused if the media supports pausing and if it is currently playing. return -true if pausing playback can be paused, false otherwise.)
- **CanPlaySource**(UMediaSource *MediaSource) — Check whether the specified media source can be played by this player. If a desired player name is set for this player, it will only check whether that particular player type can play the specified source. return -true if the media source can be opened, false otherwise. params MediaSource -The media
- **CanPlayUrl**(FString &Url) — Check whether the specified URL can be played by this player. If a desired player name is set for this player, it will only check whether that particular player type can play the specified URL. params Url -The URL to check.
- **Close**(Close the currently open media, if any.)
- **GetAudioTrackChannels**(int32 TrackIndex, int32FormatIndex) — Get the number of channels in the specified audio track. return -Number of channels. params TrackIndex -Index of the audio track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **GetAudioTrackSampleRate**(int32 TrackIndex, int32FormatIndex) — Get the sample rate of the specified audio track. return -Samples per second. params TrackIndex -Index of the audio track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **StringGetAudioTrackType**(int32 TrackIndex, int32FormatIndex) — Get the type of the specified audio track format. return -Audio format type string. params TrackIndex -The index of the track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **NameGetDesiredPlayerName**(Get the name of the current desired native player. return -The name of the desired player, or NAME_None if not set.)
- **TimespanGetDuration**(Get the media's duration. return -A time span representing the duration.)
- **GetHorizontalFieldOfView**(Get the current horizontal field of view (only for 360 videos). return -Horizontal field of view (in Euler degrees).)
- **TextGetMediaName**(Get the human readable name of the currently loaded media source. return -Media source name, or empty text if no media is opened)
- **GetNumTracks**(EMediaPlayerTrackTrackType) — Get the number of tracks of the given type. return -Number of tracks. params TrackType -The type of media tracks.
- **GetNumTrackFormats**(EMediaPlayerTrack TrackType, int32TrackIndex) — Get the number of formats of the specified track. return -Number of formats. params TrackType -The type of media tracks. params TrackIndex -The index of the track.
- **NameGetPlayerName**(Get the name of the current native media player. return -Player name, or NAME_None if not available.)
- **GetPlaylist**(Get the current play list. Media players always have a valid play list. In C++ code you can use the GetPlaylistRef to get a reference instead of a pointer to it. return -The play list.)
- **GetPlaylistIndex**(Get the current play list index. return -Play list index.)
- **GetRate**(Get the media's current playback rate. return -The playback rate.)
- **GetSelectedTrack**(EMediaPlayerTrackTrackType) — Get the index of the currently selected track of the given type. return -The index of the selected track, or INDEX_NONE if no track is active. params TrackType -The type of track to get.
- **GetSupportedRates**(TArray < FFloatRange >& OutRates, boolUnthinned) — Get the supported playback rates. params Unthinned -Whether the rates are for unthinned playback.
- **TimespanGetTime**(Get the media's current playback time. return -Playback time.)
- **TextGetTrackDisplayName**(EMediaPlayerTrack TrackType, int32TrackIndex) — Get the human readable name of the specified track. return -Display name. params TrackType -The type of track. params TrackIndex -The index of the track, or INDEX_NONE for the selected one.
- **GetTrackFormat**(EMediaPlayerTrack TrackType, int32TrackIndex) — Get the index of the active format of the specified track type. return -The index of the selected format. params TrackType -The type of track. params TrackIndex -The index of the track, or INDEX_NONE for the selected one.
- **StringGetTrackLanguage**(EMediaPlayerTrack TrackType, int32TrackIndex) — Get the language tag of the specified track. return -Language tag, i.e. "en-US" for English, or "und" for undefined. params TrackType -The type of track. params TrackIndex -The index of the track, or INDEX_NONE for the selected one.
- **GetUrl**(Get the URL of the currently loaded media, if any. return -Media URL, or empty string if no media was loaded.)
- **GetVerticalFieldOfView**(Get the current vertical field of view (only for 360 videos). return -Vertical field of view (in Euler degrees), or 0.0 if not available.)
- **GetVideoTrackAspectRatio**(int32 TrackIndex, int32FormatIndex) — Get the aspect ratio of the specified video track. return -Aspect ratio. params TrackIndex -Index of the video track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **IntPointGetVideoTrackDimensions**(int32 TrackIndex, int32FormatIndex) — Get the current dimensions of the specified video track. return -Video dimensions (in pixels). params TrackIndex -The index of the track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **GetVideoTrackFrameRate**(int32 TrackIndex, int32FormatIndex) — Get the frame rate of the specified video track. return -Frame rate (in frames per second). params TrackIndex -The index of the track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **FloatRangeGetVideoTrackFrameRates**(int32 TrackIndex, int32FormatIndex) — Get the supported range of frame rates of the specified video track. return -Frame rate range (in frames per second). params TrackIndex -The index of the track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **StringGetVideoTrackType**(int32 TrackIndex, int32FormatIndex) — Get the type of the specified video track format. return -Video format type string. params TrackIndex -The index of the track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one.
- **RotatorGetViewRotation**(Get the current view rotation (only for 360 videos). return -View rotation, or zero rotator if not available.)
- **HasError**(Check whether the player is in an error state. When the player is in an error state, no further operations are possible. The current media must be closed, and a new media source must be opened before the player can be used again. Errors are usually caused by faulty media files or interrupted network)
- **IsBuffering**(Check whether playback is buffering data. return -true if looping, false otherwise.)
- **IsConnecting**(Check whether the player is currently connecting to a media source. return -true if connecting, false otherwise.)
- **IsLooping**(Check whether playback is looping. return -true if looping, false otherwise.)
- **IsPaused**(Check whether playback is currently paused. return -true if playback is paused, false otherwise.)
- **IsPlaying**(Check whether playback has started. return -true if playback has started, false otherwise.)
- **IsPreparing**(Check whether the media is currently opening or buffering. return -true if playback is being prepared, false otherwise.)
- **IsReady**(Check whether media is ready for playback. A player is ready for playback if it has a media source opened that finished preparing and is not in an error state. return -true if media is ready, false otherwise.)
- **Next**(Open the next item in the current play list. The player will start playing the new media source if it was playing something previously, otherwise it will only open the media source. return -true on success, false otherwise.)
- **OpenFile**(FString &FilePath) — Opens the specified media file path. A return value of true indicates that the player will attempt to open the media, but it may fail to do so later for other reasons, i.e. if a connection to the media server timed out. Use the OnMediaOpened and OnMediaOpenFailed delegates to detect if and when the
- **OpenPlaylist**(UMediaPlaylist *InPlaylist) — Open the first media source in the specified play list. return -true if the source will be opened, false otherwise. params InPlaylist -The play list to open.
- **OpenPlaylistIndex**(UMediaPlaylist* InPlaylist, int32Index) — Open a particular media source in the specified play list. return -true if the source will be opened, false otherwise. params InPlaylist -The play list to open. params Index -The index of the source to open.
- **OpenSource**(UMediaSource *MediaSource) — Open the specified media source. A return value of true indicates that the player will attempt to open the media, but it may fail to do so later for other reasons, i.e. if a connection to the media server timed out. Use the OnMediaOpened and OnMediaOpenFailed delegates to detect if and when the medi
- **OpenUrl**(FString &Url) — Opens the specified media URL. A return value of true indicates that the player will attempt to open the media, but it may fail to do so later for other reasons, i.e. if a connection to the media server timed out. Use the OnMediaOpened and OnMediaOpenFailed delegates to detect if and when the media
- **Pause**(Pauses media playback. This is the same as setting the playback rate to 0.0. return -true if playback is being paused, false otherwise.)
- **Play**(Starts media playback. This is the same as setting the playback rate to 1.0. return -true if playback is starting, false otherwise.)
- **Previous**(Open the previous item in the current play list. The player will start playing the new media source if it was playing something previously, otherwise it will only open the media source. return -true on success, false otherwise.)
- **Reopen**(Reopens the currently opened media or play list. return -true if the media will be opened, false otherwise.)
- **Rewind**(Rewinds the media to the beginning. This is the same as seeking to zero time. return -true if rewinding, false otherwise.)
- **Seek**(FTimespan &Time) — Seeks to the specified playback time. return -true on success, false otherwise. params Time -The playback time to set.
- **SelectTrack**(EMediaPlayerTrack TrackType, int32TrackIndex) — Select the active track of the given type. The selected track will use its currently active format. Active formats will be remembered on a per track basis. The first available format is active by default. To switch the track format, use SetTrackFormat instead. return -true if the track was selected,
- **SetDesiredPlayerName**(FNamePlayerName) — Set the name of the desired native player. params PlayerName -The name of the player to set.
- **SetLooping**(boolLooping) — Enables or disables playback looping. return -true on success, false otherwise. params Looping -Whether playback should be looped.
- **SetRate**(floatRate) — Changes the media's playback rate. return -true on success, false otherwise. params Rate -The playback rate to set.
- **SetNativeVolume**(floatVolume) — Set the volume on the native player if not mixing with Sound Wave asset. The SetNativeVolume can be used to change the audio output volume at runtime. Note that not all media player plug-ins may support native audio output on all platforms. return -true on success, false otherwise. params Volume -Th
- **SetTrackFormat**(EMediaPlayerTrack TrackType, int32 TrackIndex, int32FormatIndex) — Set the format on the specified track. Selecting the format will not switch to the specified track. To switch tracks, use SelectTrack instead. If the track is already selected, the format change will be applied immediately. return -true if the track was selected, false otherwise. params TrackType -T
- **SetVideoTrackFrameRate**(int32 TrackIndex, int32 FormatIndex, floatFrameRate) — Set the frame rate of the specified video track. return -true on success, false otherwise. params TrackIndex -The index of the track, or INDEX_NONE for the selected one. params FormatIndex -Index of the track format, or INDEX_NONE for the selected one. params FrameRate -The frame rate to set (must b
- **SetViewField**(float Horizontal, float Vertical, boolAbsolute) — Set the field of view (only for 360 videos). return -true on success, false otherwise. params Horizontal -Horizontal field of view (in Euler degrees). params Vertical -Vertical field of view (in Euler degrees).
- **SetViewRotation**(FRotator& Rotation, boolAbsolute) — Set the view's rotation (only for 360 videos). return -true on success, false otherwise. params Rotation -The desired view rotation.
- **SupportsRate**(float Rate, boolUnthinned) — Check whether the specified playback rate is supported. params Rate -The playback rate to check. params Unthinned -Whether no frames should be dropped at the given rate.
- **SupportsScrubbing**(Check whether the currently loaded media supports scrubbing. return -true if scrubbing is supported, false otherwise.)
- **SupportsSeeking**(Check whether the currently loaded media can jump to a certain position. return -true if seeking is supported, false otherwise.)
- **SetAudioDeviceGUID**(FString &DeviceGUID) — Sets the audio device for the media player; currently only effective on PC platforms. add by watsonxie CanPause CanPlaySource CanPlayUrl Close GetAudioTrackChannels GetAudioTrackSampleRate GetAudioTrackType GetDesiredPlayerName GetDuration GetHorizontalFieldOfView GetMediaName GetNumTracks GetNumTra

## 属性

- **of** — samples to cache ahead of the play head. @see CacheBehind, CacheBehindGame Duration of samples to cache behind the play head (when not running as game). @see CacheAhead, CacheBehindGame Duration of samples to cache behind the play head (when running as game). @see CacheAhead, CacheBehind Output any

## 委托

- voidOnEndReached()
- A delegate that is invoked when playback has reached the end of the media.
- voidOnMediaClosed()
- A delegate that is invoked when a media source has been closed.
- voidOnMediaOpened(FStringOpenedUrl)
- A delegate that is invoked when a media source has been opened.
- Depending on whether the underlying player implementation opens the media
- synchronously or asynchronously, this event may be executed before or
- after the call to OpenSource OpenUrl returns.
- voidOnMediaOpenFailed(FStringFailedUrl)
- A delegate that is invoked when a media source has failed to open.
- This delegate is only executed if OpenSource OpenUrl returned true and
- the media failed to open asynchronously later. It is not executed if
- OpenSource OpenUrl returned false, indicating an immediate failure.
- voidOnPlaybackResumed()
- A delegate that is invoked when media playback has been resumed.
- voidOnPlaybackSuspended()
- A delegate that is invoked when media playback has been suspended.
- voidOnSeekCompleted()
- A delegate that is invoked when a seek operation completed successfully.
- Depending on whether the underlying player implementation performs seeks
- synchronously or asynchronously, this event may be executed before or
- after the call to Seek returns.
- voidOnTracksChanged()
- A delegate that is invoked when the media track collection changed.
- voidOnMediaPlayFirstFrame()
- OnEndReached
- OnMediaClosed
- OnMediaOpened
- OnMediaOpenFailed
- OnPlaybackResumed
- OnPlaybackSuspended
- OnSeekCompleted
- OnTracksChanged
- OnMediaPlayFirstFrame

## UMediaPlaylist

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMediaPlaylist?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaPlaylist.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaPlaylist](https://developer.gp.qq.com/api/#/searchContent/UMediaPlaylist?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaPlaylist.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaPlaylist)

类

全文搜索

Implements a media play list.

---


## 函数

- **Add**(UMediaSource *MediaSource) — Add a media source to the play list. return -true if the media source was added, false otherwise. params MediaSource -The media source to append.
- **AddFile**(FString &FilePath) — Add a media file path to the play list. return -true if the file was added, false otherwise. params FilePath -The file path to add.
- **AddUrl**(FString &Url) — Add a media URL to the play list. return -true if the URL was added, false otherwise. params Url -The URL to add.
- **Get**(int32Index) — Get the media source at the specified index. return -The media source, or nullptr if the index doesn't exist. params Index -The index of the media source to get.
- **GetNext**(int32 &InOutIndex) — Get the next media source in the play list. return -The media source after the current one, or nullptr if the list is empty. params InOutIndex -Index of the current media source (will contain the new index).
- **GetPrevious**(int32 &InOutIndex) — Get the previous media source in the play list. return -The media source before the current one, or nullptr if the list is empty. params InOutIndex -Index of the current media source (will contain the new index).
- **GetRandom**(int32 &OutIndex) — Get a random media source in the play list. return -The random media source, or nullptr if the list is empty. params OutIndex -Will contain the index of the returned media source.
- **Insert**(UMediaSource* MediaSource, int32Index) — Insert a media source into the play list at the given position. params MediaSource -The media source to insert. params Index -The index to insert into.
- **Num**(Get the number of media sources in the play list. return -Number of media sources.)
- **Remove**(UMediaSource *MediaSource) — Remove all occurrences of the given media source in the play list. return -true if the media source was removed, false otherwise. params MediaSource -The media source to remove.
- **RemoveAt**(int32Index) — Remove the media source at the specified position. return -true if the media source was removed, false otherwise. params Index -The index of the media source to remove.
- **Replace**(int32 Index, UMediaSource *Replacement) — Replace the media source at the specified position. return -true if the media source was replaced, false otherwise. params Index -The index of the media source to replace. params Replacement -The replacement media source. Add AddFile AddUrl Get GetNext GetPrevious GetRandom Insert Num Remove RemoveA

## 属性

- **the** — play list should loop (default = true). List of media sources to play. Loop Items

## UMediaSoundComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMediaSoundComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaSoundComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaSoundComponent](https://developer.gp.qq.com/api/#/searchContent/UMediaSoundComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaSoundComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaSoundComponent)

类

全文搜索

Implements a sound component for playing a media player's audio output.

---


## 属性

- **sound** — channel type. UMediaPlayer *MediaPlayer The media player asset associated with this component. Channels MediaPlayer

## UMediaSource

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMediaSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaSource](https://developer.gp.qq.com/api/#/searchContent/UMediaSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaSource)

类

全文搜索

Abstract base class for media sources. Media sources describe the location andor settings of media objects that can be played in a media player, such as a video file on disk, a video stream on the internet, or a web cam attached to or built into the target device. The location is encoded as a media URL string, whose URI scheme and optional file extension will be used to locate a suitable media player.

---


## 函数

- **StringGetUrl**(Get the media source's URL string (must be implemented in child classes). return -The media URL.)
- **Validate**(Validate the media source settings (must be implemented in child classes). return -true if validation passed, false otherwise. GetUrl Validate)

## UMediaTexture

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMediaTexture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaTexture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaTexture](https://developer.gp.qq.com/api/#/searchContent/UMediaTexture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaTexture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaTexture)

类

全文搜索

Implements a texture asset for rendering video tracks from UMediaPlayer assets.

---


## 函数

- **GetAspectRatio**(Gets the current aspect ratio of the texture. return -Texture aspect ratio.)
- **GetHeight**(Gets the current height of the texture. return -Texture height (in pixels).)
- **GetWidth**(Gets the current width of the texture. return -Texture width (in pixels).)
- **ResetFirstFrame**(Reset The IsFirstFrameRender&IsFirstFrameNotify to false for iOS GetAspectRatio GetHeight GetWidth ResetFirstFrame)

## 属性

- **addressing** — mode to use for the X axis. The addressing mode to use for the Y axis. Whether to clear the texture when no media is being played (default = enabled). The color used to clear the texture if AutoClear is enabled (default = black). UMediaPlayer *MediaPlayer The media player asset associated with this

## UMenuAnchor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMenuAnchor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMenuAnchor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMenuAnchor](https://developer.gp.qq.com/api/#/searchContent/UMenuAnchor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMenuAnchor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMenuAnchor)

类

全文搜索

The Menu Anchor allows you to specify an location that a popup menu should be anchored to, and should be summoned from. Single Child Popup

---


## 函数

- **ToggleOpen**(boolbFocusOnOpen) — Toggles the menus open state. params bFocusOnOpen -Should we focus the popup as soon as it opens?
- **Open**(boolbFocusMenu) — Opens the menu if it is not already open
- **Close**(Closes the menu if it is currently open.)
- **IsOpen**(return -true if the popup is open; false otherwise.)
- **ShouldOpenDueToClick**(return -true if we should open the menu due to a click. Sometimes we should not, if)
- **Vector2DGetMenuPosition**(return -The current menu position)
- **HasOpenSubMenus**(return -Whether this menu has open submenus ToggleOpen Open Close IsOpen ShouldOpenDueToClick GetMenuPosition HasOpenSubMenus)

## 属性

- **widget** — class to spawn when the menu is required. Creates the widget freshly each time. If you want to customize the creation of the popup, you should bind a function to OnGetMenuContentEvent instead. Called when the menu content is requested to allow a more customized handling over what to display The plac

## 委托

- voidOnMenuOpenChanged(boolbIsOpen)
- Called when the opened state of the menu changes
- OnMenuOpenChanged

## UMeshComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMeshComponent](https://developer.gp.qq.com/api/#/searchContent/UMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMeshComponent)

类

全文搜索

MeshComponent is an abstract base for any component that is an instance of a renderable collection of triangles. @see UStaticMeshComponent @see USkeletalMeshComponent

---


## 函数

- **GetMaterials**()
- **GetMaterialIndex**(FNameMaterialSlotName)
- **GetMaterialSlotNames**()
- **IsMaterialSlotNameValid**(FNameMaterialSlotName)
- **EnableMeshClipPlane**(FPlane& ClipPlane, int32PlaneIndex)
- **DisableMeshClipPlane**(int32PlaneIndex)
- **EnableMeshClipArc**(FPlane& ClipPlane, FVector4 &ClipSphere)
- **DisableMeshClipArc**()
- **EnableMeshClip4Planes**(TArray < FPlane >& ClipPlanes, boolbBox)
- **DisableMeshClip4Planes**()
- **GetOverlayMaterial**(Get the overlay material used by this instance)
- **SetOverlayMaterial**(UMaterialInterface *NewOverlayMaterial) — Change the overlay material used by this instance
- **GetUseIndexedOverlayMaterials**(Get UseIndexedOverlayMaterials)
- **SetUseIndexedOverlayMaterials**(boolbNewUseIndexedOverlayMaterials) — Set UseIndexedOverlayMaterials
- **GetUseOverlayMaterials**(Get UseOverlayMaterials)
- **SetUseOverlayMaterials**(boolbNewUseOverlayMaterials) — Set UseOverlayMaterials
- **GetIndexedOverlayMaterials**(Get IndexedOverlayMaterials)
- **SetIndexedOverlayMaterial**(int32 ElementIndex, UMaterialInterface *Material) — Set IndexedOverlayMaterials
- **SetOverlayMaterialMaxDrawDistance**(floatInMaxDrawDistance) — Change the overlay material max draw distance used by this instance
- **GetIndexedOverrideOutlineMaterials**(Get IndexedOverrideOutlineMaterials)
- **SetIndexedOverrideOutlineMaterials**(int32 ElementIndex, UMaterialInterface *Material) — Set IndexedOverrideOutlineMaterials
- **PrestreamTextures**(float Seconds, bool bPrioritizeCharacterTextures, int32CinematicTextureGroups) — Tell the streaming system to start loading all textures with all mip-levels. params Seconds - Number of seconds to force all mip-levels to be resident params bPrioritizeCharacterTextures -Whether character textures should be prioritized for a while by the streaming system params CinematicTextureGrou
- **SetScalarParameterValueOnMaterials**(FName ParameterName, floatParameterValue) — Material parameter setting and caching Set all occurrences of Scalar Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue
- **SetVectorParameterValueOnMaterials**(FName ParameterName, FVectorParameterValue) — Set all occurrences of Vector Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue GetMaterials GetMaterialIndex GetMaterialSlotNames IsMaterialSlotNameValid EnableMeshClipPlane DisableMeshClipPlane EnableMeshClipArc DisableMeshClipArc EnableMeshClip4P

## 属性

- **material** — overrides. These must NOT be set directly or a race condition can occur between GC and the rendering thread. UMaterialInterface *OverlayMaterial Translucent material to blend on top of this mesh. Mesh will be rendered twice - once with a base material and once with overlay material Overlay materials

## UMeshVertexPainterKismetLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMeshVertexPainterKismetLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMeshVertexPainterKismetLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMeshVertexPainterKismetLibrary](https://developer.gp.qq.com/api/#/searchContent/UMeshVertexPainterKismetLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMeshVertexPainterKismetLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMeshVertexPainterKismetLibrary)

类

全文搜索

---


## 函数

- **PaintVerticesSingleColor**(UStaticMeshComponent* StaticMeshComponent, FLinearColor& FillColor, boolbConvertToSRGB) — Paints vertex colors on a mesh component in a specified color.
- **PaintVerticesLerpAlongAxis**(UStaticMeshComponent* StaticMeshComponent, FLinearColor& StartColor, FLinearColor& EndColor, EVertexPaintAxis Axis, boolbConvertToSRGB) — Paints vertex colors on a mesh component lerping from the start to the end color along the specified axis.
- **RemovePaintedVertices**(UStaticMeshComponent *StaticMeshComponent) — Removes vertex colors on a mesh component PaintVerticesSingleColor PaintVerticesLerpAlongAxis RemovePaintedVertices

## UMicroTransactionBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMicroTransactionBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMicroTransactionBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMicroTransactionBase](https://developer.gp.qq.com/api/#/searchContent/UMicroTransactionBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMicroTransactionBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMicroTransactionBase)

类

全文搜索

---


## 属性

- **list** — of products available to purchase, filled out by the time a MTD_PurchaseQueryComplete is fired In case of errors, this will describe the most recent error In case of errors, this will describe possible solutions (if there are any) AvailableProducts LastError LastErrorSolution

## UModelComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UModelComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUModelComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UModelComponent](https://developer.gp.qq.com/api/#/searchContent/UModelComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUModelComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UModelComponent)

类

全文搜索

ModelComponents are PrimitiveComponents that represent elements of BSP geometry in a ULevel object. They are used exclusively by ULevel and are not intended as general-purpose components. @see ULevel

---


## 属性

- **of** — collision ModelBodySetup

## UMovementComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovementComponent](https://developer.gp.qq.com/api/#/searchContent/UMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovementComponent)

类

全文搜索

MovementComponent is an abstract component class that defines functionality for moving a PrimitiveComponent (our UpdatedComponent) each tick. Base functionality includes: - Restricting movement to a plane or axis. - Utility functions for special handling of collision results (SlideAlongSurface(), ComputeSlideVector(), TwoWallAdjust()). - Utility functions for moving when there may be initial penetration (SafeMoveUpdatedComponent(), ResolvePenetration()). - Automatically registering the component tick and finding a component to move on the owning Actor. Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()). During swept (non-teleporting) movement only collision of UpdatedComponent is considered, attached components will teleport to the end location ignoring collision.

---


## 函数

- **GetGravityZ**(Returns gravity that affects this component)
- **GetMaxSpeed**(Returns maximum speed of component in current movement mode.)
- **K2_GetMaxSpeedModifier**(Returns a scalar applied to the maximum velocity that the component can currently move.)
- **K2_GetModifiedMaxSpeed**()
- **GetMaxSpeed**()
- **IsExceedingMaxSpeed**(floatMaxSpeed) — Returns true if the current velocity is exceeding the given max speed (usually the result of GetMaxSpeed()), within a small error tolerance. Note that under normal circumstances updates cause by acceleration will not cause this to be true, however external forces or changes in the max speed limit ca
- **StopMovementImmediately**(Stops movement immediately (zeroes velocity, usually zeros acceleration for components with acceleration).)
- **GetPhysicsVolume**(Returns the PhysicsVolume this MovementComponent is using, or the world's default physics volume if none.)
- **PhysicsVolumeChanged**(APhysicsVolume *NewVolume) — Delegate when PhysicsVolume of UpdatedComponent has been changed
- **SetUpdatedComponent**(USceneComponent *NewUpdatedComponent) — Assign the component we move and update.
- **K2_MoveUpdatedComponent**(FVector Delta, FRotator NewRotation, FHitResult& OutHit, bool bSweep, boolbTeleport) — Moves our UpdatedComponent by the given Delta, and sets rotation to NewRotation. Respects the plane constraint, if enabled. return -True if some movement occurred, false if no movement occurred. Result of any impact will be stored in OutHit.
- **SetPlaneConstraintAxisSetting**(EPlaneConstraintAxisSettingNewAxisSetting) — Set the plane constraint axis setting. Changing this setting will modify the current value of PlaneConstraintNormal. params NewAxisSetting -New plane constraint axis setting.
- **PlaneConstraintAxisSettingGetPlaneConstraintAxisSetting**(Get the plane constraint axis setting.)
- **SetPlaneConstraintNormal**(FVectorPlaneNormal) — Sets the normal of the plane that constrains movement, enforced if the plane constraint is enabled. Changing the normal automatically sets PlaneConstraintAxisSetting to "Custom". params PlaneNormal -The normal of the plane. If non-zero in length, it will be normalized.
- **SetPlaneConstraintFromVectors**(FVector Forward, FVectorUp) — Uses the Forward and Up vectors to compute the plane that constrains movement, enforced if the plane constraint is enabled.
- **SetPlaneConstraintOrigin**(FVectorPlaneOrigin) — Sets the origin of the plane that constrains movement, enforced if the plane constraint is enabled.
- **SetPlaneConstraintEnabled**(boolbEnabled) — Sets whether or not the plane constraint is enabled.
- **GetPlaneConstraintNormal**(Returns the normal of the plane that constrains movement, enforced if the plane constraint is enabled.)
- **GetPlaneConstraintOrigin**()
- **SnapUpdatedComponentToPlane**(return -The origin of the plane that constrains movement, if the plane constraint is enabled.)
- **VectorConstrainDirectionToPlane**(FVectorDirection) — Constrain a direction vector to the plane constraint, if enabled.
- **VectorConstrainLocationToPlane**(FVectorLocation) — Constrain a position vector to the plane constraint, if enabled.
- **VectorConstrainNormalToPlane**(FVectorNormal) — Constrain a normal vector (of unit length) to the plane constraint, if enabled.
- **SnapUpdatedComponentToPlane**(Snap the updated component to the plane constraint, if enabled. GetGravityZ GetMaxSpeed K2_GetMaxSpeedModifier K2_GetModifiedMaxSpeed IsExceedingMaxSpeed StopMovementImmediately GetPhysicsVolume PhysicsVolumeChanged SetUpdatedComponent K2_MoveUpdatedComponent SetPlaneConstraintAxisSetting GetPlaneCo)

## 属性

- **component** — we move and update. If this is null at startup and bAutoRegisterUpdatedComponent is true, the owning Actor's root component will automatically be set as our UpdatedComponent at startup. @see bAutoRegisterUpdatedComponent, SetUpdatedComponent(), UpdatedPrimitive UPrimitiveComponent *UpdatedPrimitive

## UMoviePlayerSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMoviePlayerSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMoviePlayerSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMoviePlayerSettings](https://developer.gp.qq.com/api/#/searchContent/UMoviePlayerSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMoviePlayerSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMoviePlayerSettings)

类

全文搜索

Implements the settings for the Windows target platform.

---


## 属性

- **enabled** — , The game waits for startup movies to complete even if loading has finished. If enabled, Startup movies can be skipped by the user when a mouse button is pressed. Movies to play on startup. Note that these must be in your game's GameContentMovies directory. bWaitForMoviesToComplete bMoviesAreSkippa

## UMovieScene

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieScene?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScene.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScene](https://developer.gp.qq.com/api/#/searchContent/UMovieScene?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScene.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScene)

类

全文搜索

Implements a movie scene asset.

---


## 属性

- **blueprints** — for all of the objects that we we're able to spawn. These describe objects and actors that we may instantiate at runtime, or create proxy objects for previewing in the editor. Typed slots for already-spawned objects that we are able to control with this MovieScene Tracks bound to possessed or spawne

## UMovieScene2DTransformSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieScene2DTransformSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScene2DTransformSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScene2DTransformSection](https://developer.gp.qq.com/api/#/searchContent/UMovieScene2DTransformSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScene2DTransformSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScene2DTransformSection)

类

全文搜索

A transform section

---


## 属性

- **curves** — Rotation curve Scale curves Shear curve Translation Rotation Scale Shear

## UMovieScene3DAttachSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieScene3DAttachSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScene3DAttachSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScene3DAttachSection](https://developer.gp.qq.com/api/#/searchContent/UMovieScene3DAttachSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScene3DAttachSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScene3DAttachSection)

类

全文搜索

A 3D Attach section

---

## UMovieScene3DConstraintTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieScene3DConstraintTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScene3DConstraintTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScene3DConstraintTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieScene3DConstraintTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScene3DConstraintTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScene3DConstraintTrack)

类

全文搜索

Base class for constraint tracks (tracks that are dependent upon other objects).

---


## 属性

- **of** — all constraint sections. ConstraintSections

## UMovieScene3DPathSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieScene3DPathSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScene3DPathSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScene3DPathSection](https://developer.gp.qq.com/api/#/searchContent/UMovieScene3DPathSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScene3DPathSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScene3DPathSection)

类

全文搜索

A 3D Path section

---


## 属性

- **Curve** — MovieScene3DPathSection_AxisFrontAxisEnum Front Axis MovieScene3DPathSection_AxisUpAxisEnum Up Axis Follow Curve Reverse Timing Force Upright TimingCurve FrontAxisEnum UpAxisEnum bFollow bReverse bForceUpright

## UMovieScene3DTransformSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieScene3DTransformSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScene3DTransformSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScene3DTransformSection](https://developer.gp.qq.com/api/#/searchContent/UMovieScene3DTransformSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScene3DTransformSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScene3DTransformSection)

类

全文搜索

A 3D transform section

---


## 属性

- **curves** — Rotation curves Scale curves Manual weight curve TransformMask Translation Rotation Scale ManualWeight

## UMovieSceneActorReferenceSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneActorReferenceSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneActorReferenceSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneActorReferenceSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneActorReferenceSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneActorReferenceSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneActorReferenceSection)

类

全文搜索

A single actor reference point section

---


## 属性

- **data** — ActorGuidIndexCurve ActorGuidStrings

## UMovieSceneAudioSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneAudioSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneAudioSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneAudioSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneAudioSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneAudioSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneAudioSection)

类

全文搜索

Audio section, for use in the master audio, or by attached audio objects

---


## 属性

- **sound** — cue or wave that this section plays The offset into the beginning of the audio clip The absolute time that the sound starts playing at The amount which this audio is time dilated by The volume the sound will be played with. The volume the sound will be played with. The pitch multiplier the sound wil

## UMovieSceneBindingOverrides

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneBindingOverrides?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneBindingOverrides.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneBindingOverrides](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneBindingOverrides?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneBindingOverrides.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneBindingOverrides)

类

全文搜索

A one-to-many definition of movie scene object binding IDs to overridden objects that should be bound to that binding.

---


## 函数

- **GetBindingData**()
- **MovieSceneObjectBindingIDMakeBindingID**(FGuid& InBindingID, FMovieSceneSequenceID InSequenceID, EMovieSceneObjectBindingSpaceInSpace)
- **StringGetGuidStr**(FMovieSceneObjectBindingID &BindingID) — GetBindingData MakeBindingID GetGuidStr

## 属性

- **actual** — binding data BindingData

## UMovieSceneBoolSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneBoolSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneBoolSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneBoolSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneBoolSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneBoolSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneBoolSection)

类

全文搜索

A single bool section.

---


## 属性

- **default** — value to use when no keys are present - use GetCurve().SetDefaultValue() Ordered curve data DefaultValue_DEPRECATED BoolCurve

## UMovieSceneCameraAnimSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneCameraAnimSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneCameraAnimSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneCameraAnimSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneCameraAnimSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneCameraAnimSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneCameraAnimSection)

类

全文搜索

---


## 属性

- **members** — AnimData CameraAnim_DEPRECATED PlayRate_DEPRECATED PlayScale_DEPRECATED BlendInTime_DEPRECATED BlendOutTime_DEPRECATED bLooping_DEPRECATED

## UMovieSceneCameraCutSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneCameraCutSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneCameraCutSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneCameraCutSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneCameraCutSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneCameraCutSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneCameraCutSection)

类

全文搜索

Movie CameraCuts are sections on the CameraCuts track, that show what the viewer "sees"

---


## 属性

- **camera** — possessable or spawnable that this movie CameraCut uses EMovieSceneBuiltInEasingBlendInType EMovieSceneBuiltInEasingBlendOutType CameraGuid BlendInTime BlendInType BlendOutTime BlendOutType bUseAutoFixupConsecutive bLockControlRotation

## UMovieSceneCameraCutTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneCameraCutTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneCameraCutTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneCameraCutTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneCameraCutTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneCameraCutTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneCameraCutTrack)

类

全文搜索

Handles manipulation of CameraCut properties in a movie scene.

---


## 属性

- **movie** — scene sections. bUseFixupConsecutive Sections

## UMovieSceneCapture

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneCapture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneCapture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneCapture](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneCapture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneCapture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneCapture)

类

全文搜索

Class responsible for capturing scene data

---


## 属性

- **type** — of capture protocol to use UMovieSceneCaptureProtocolSettings *ProtocolSettings Settings specific to the capture protocol Settings that define how to capture Whether to capture the movie in a separate process or not When enabled, the editor will shutdown when the capture starts Additional command li

## UMovieSceneCaptureEnvironment

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneCaptureEnvironment?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneCaptureEnvironment.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneCaptureEnvironment](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneCaptureEnvironment?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneCaptureEnvironment.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneCaptureEnvironment)

类

全文搜索

---


## 函数

- **GetCaptureFrameNumber**(Get the frame number of the current capture)
- **GetCaptureElapsedTime**(Get the total elapsed time of the current capture in seconds GetCaptureFrameNumber GetCaptureElapsedTime)

## UMovieSceneColorSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneColorSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneColorSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneColorSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneColorSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneColorSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneColorSection)

类

全文搜索

A single floating point section

---


## 属性

- **curve** — data Green curve data Blue curve data Alpha curve data RedCurve GreenCurve BlueCurve AlphaCurve

## UMovieSceneComponentMaterialTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneComponentMaterialTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneComponentMaterialTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneComponentMaterialTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneComponentMaterialTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneComponentMaterialTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneComponentMaterialTrack)

类

全文搜索

A material track which is specialized for animation materials which are owned by actor components.

---


## 属性

- **index** — of this material this track is animating. MaterialIndex

## UMovieSceneEventRepeaterSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneEventRepeaterSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneEventRepeaterSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneEventRepeaterSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneEventRepeaterSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneEventRepeaterSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneEventRepeaterSection)

类

全文搜索

NewEvent section that will trigger its NewEvent exactly once, every time it is evaluated.

---


## 属性

- **NewEvent** — that should be triggered each time this section is evaluated Event

## UMovieSceneEventSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneEventSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneEventSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneEventSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneEventSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneEventSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneEventSection)

类

全文搜索

Implements a section in movie scene event tracks.

---

## UMovieSceneEventTimelinessSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneEventTimelinessSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneEventTimelinessSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneEventTimelinessSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneEventTimelinessSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneEventTimelinessSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneEventTimelinessSection)

类

全文搜索

---


## 属性

- **of** — values that correspond to each key time The NewEvent that should be triggered each time this section is evaluated Events

## UMovieSceneEventTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneEventTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneEventTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneEventTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneEventTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneEventTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneEventTrack)

类

全文搜索

Implements a movie scene track that triggers discrete events during playback.

---


## 属性

- **events** — should be fired when passed playing the sequence forwards. If events should be fired when passed playing the sequence backwards. EFireEventsAtPositionEventPosition Defines where in the evaluation to trigger events Defines a list of object bindings on which to trigger the events in this track. When e

## UMovieSceneEventTriggerSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneEventTriggerSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneEventTriggerSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneEventTriggerSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneEventTriggerSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneEventTriggerSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneEventTriggerSection)

类

全文搜索

NewEvent section that triggeres specific timed NewEvents.

---


## 属性

- **of** — times for each key Array of values that correspond to each key time KeyTimes KeyValues

## UMovieSceneFolder

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneFolder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneFolder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneFolder](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneFolder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneFolder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneFolder)

类

全文搜索

Reprents a folder used for organizing objects in tracks in a movie scene.

---


## 属性

- **name** — of this folder. The folders contained by this folder. The master tracks contained by this folder. The guid strings used to serialize the guids for the object bindings contained by this folder. FolderName ChildFolders ChildMasterTracks ChildObjectBindingStrings

## UMovieSceneLevelVisibilitySection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneLevelVisibilitySection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneLevelVisibilitySection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneLevelVisibilitySection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneLevelVisibilitySection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneLevelVisibilitySection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneLevelVisibilitySection)

类

全文搜索

A section for use with the movie scene level visibility track, which controls streamed level visibility.

---


## 属性

- **or** — not the levels in this section should be visible or hidden. The short names of the levels who's visibility is controlled by this section. Visibility LevelNames

## UMovieSceneMarginSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneMarginSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneMarginSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneMarginSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneMarginSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneMarginSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneMarginSection)

类

全文搜索

A section in a Margin track

---


## 属性

- **curve** — data Green curve data Blue curve data Alpha curve data TopCurve LeftCurve RightCurve BottomCurve

## UMovieSceneMaterialParameterCollectionTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneMaterialParameterCollectionTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneMaterialParameterCollectionTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneMaterialParameterCollectionTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneMaterialParameterCollectionTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneMaterialParameterCollectionTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneMaterialParameterCollectionTrack)

类

全文搜索

Handles manipulation of material parameter collections in a movie scene.

---


## 属性

- **material** — parameter collection to manipulate MPC

## UMovieSceneMaterialTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneMaterialTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneMaterialTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneMaterialTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneMaterialTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneMaterialTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneMaterialTrack)

类

全文搜索

Handles manipulation of material parameters in a movie scene.

---


## 属性

- **sections** — owned by this track . Sections

## UMovieSceneNewEventTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneNewEventTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneNewEventTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneNewEventTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneNewEventTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneNewEventTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneNewEventTrack)

类

全文搜索

Implements a movie scene track that triggers discrete events during playback.

---


## 属性

- **events** — should be fired when passed playing the sequence forwards. If events should be fired when passed playing the sequence backwards. EFireEventsAtPositionEventPosition Defines where in the evaluation to trigger events The track's sections. bFireEventsWhenForwards bFireEventsWhenBackwards EventPosition S

## UMovieSceneParameterSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneParameterSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneParameterSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneParameterSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneParameterSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneParameterSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneParameterSection)

类

全文搜索

A single movie scene section which can contain data for multiple named parameters.

---


## 属性

- **scalar** — parameter names and their associated curves. The vector parameter names and their associated curves. The vector parameter names and their associated curves. ScalarParameterNamesAndCurves VectorParameterNamesAndCurves ColorParameterNamesAndCurves

## UMovieSceneParticleParameterTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneParticleParameterTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneParticleParameterTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneParticleParameterTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneParticleParameterTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneParticleParameterTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneParticleParameterTrack)

类

全文搜索

Handles manipulation of material parameters in a movie scene.

---


## 属性

- **sections** — owned by this track . Sections

## UMovieScenePropertyTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieScenePropertyTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScenePropertyTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScenePropertyTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieScenePropertyTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieScenePropertyTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieScenePropertyTrack)

类

全文搜索

Base class for tracks that animate an object property

---


## 属性

- **of** — the property being changed Path to the property from the source object being changed All the sections in this list PropertyName PropertyPath Sections

## UMovieSceneSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSection)

类

全文搜索

Base class for movie scene sections

---


## 属性

- **start** — time of the section The end time of the section The row index that this section sits on This section's priority over overlapping sections Toggle whether this section is activeinactive Toggle whether this section is lockedunlocked Toggle to set this section to be infinite The amount of time to prepar

## UMovieSceneSequence

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSequence?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSequence.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSequence](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSequence?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSequence.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSequence)

类

全文搜索

Abstract base class for movie scene animations (C++ version).

---


## 属性

- **if** — the result of GetParentObject is significant in object resolution for LocateBoundObjects. When true, if GetParentObject returns nullptr, the PlaybackContext will be used for LocateBoundObjects, other wise the object's parent will be used When false, the PlaybackContext will always be used for Locate

## UMovieSceneSequencePlayer

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSequencePlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSequencePlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSequencePlayer](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSequencePlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSequencePlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSequencePlayer)

类

全文搜索

Abstract class that provides consistent player behaviour for various animation players

---


## 函数

- **Play**(Start playback forwards from the current time cursor position, using the current play rate.)
- **PlayReverse**(Reverse playback.)
- **ChangePlaybackDirection**(Changes the direction of playback (go in reverse if it was going forward, or vice versa))
- **PlayLooping**(int32NumLoops) — Start playback from the current time cursor position, looping the specified number of times. params NumLoops -- The number of loops to play. -1 indicates infinite looping.
- **StartPlayingNextTick**(Start playback from the current time cursor position, using the current play rate. Does not update the animation until next tick.)
- **Pause**(Pause playback.)
- **Scrub**(Scrub playback.)
- **Stop**(Stop playback.)
- **GoToEndAndStop**(Go to end and stop.)
- **GetPlaybackPosition**(Get the current playback position)
- **SetPlaybackPosition**(floatNewPlaybackPosition) — Set the current playback position params NewPlaybackPosition -- The new playback position to set.
- **SetPlaybackPostionWithloop**(floatNewTime)
- **GetTargetTimePostionWithloop**(floatNewTime)
- **JumpToPosition**(floatNewPlaybackPosition) — Jump to new playback position params NewPlaybackPosition -- The new playback position to set.
- **JumpToPositionEx**(floatNewPlaybackPosition)
- **IsPlaying**(Check whether the sequence is actively playing.)
- **IsPaused**(Check whether the sequence is paused.)
- **GetLength**(Get the playback length of the sequence)
- **GetPlayRate**(Get the playback rate of this player.)
- **IsEvaluating**()
- **SetPlayRate**(floatPlayRate) — Set the playback rate of this player. Negative values will play the animation in reverse. params PlayRate -- The new rate of playback for the animation.
- **SetPlayLoopCount**(int32NumLoops)
- **SetPlaybackRange**(float NewStartTime, floatNewEndTime) — Sets the range in time to be played back by this player, overriding the default range stored in the asset params NewStartTime -The new starting time for playback params NewEndTime -The new ending time for playback. Must be larger than the start time.
- **GetPlaybackStart**(Get the offset within the level sequence to start playing)
- **GetPlaybackStartSeconds**(Get the offset seconds within the level sequence to start playing)
- **GetPlaybackEnd**(Get the offset within the level sequence to finish playing)
- **GetPlaybackEndSeconds**(Get the offset seconds within the level sequence to finish playing)
- **GetBoundObjects**(FMovieSceneObjectBindingIDObjectBinding) — Retrieve all objects currently bound to the specified binding identifier Play PlayReverse ChangePlaybackDirection PlayLooping StartPlayingNextTick Pause Scrub Stop GoToEndAndStop GetPlaybackPosition SetPlaybackPosition SetPlaybackPostionWithloop GetTargetTimePostionWithloop JumpToPosition JumpToPosi

## 属性

- **player** — status. Whether we're currently playing in reverse. True where we're waiting for the first update of the sequence after calling StartPlayingNextTick. UMovieSceneSequence *Sequence The sequence to play back The current time cursor position within the sequence (in seconds) Time time at which to start

## 委托

- voidOnPlay()
- Event triggered when the level sequence player is played
- voidOnPlayReverse()
- Event triggered when the level sequence player is played in reverse
- voidOnStop()
- Event triggered when the level sequence player is stopped
- voidOnPause()
- Event triggered when the level sequence player is paused
- voidOnFinished()
- Event triggered when the level sequence player finishes naturally (without explicitly calling stop)
- voidOnObjectSpawnedEvent(UObject*InObject, const FGuid&InBindingID, FMovieSceneSequenceIDInSequenceID)
- OnPlay
- OnPlayReverse
- OnStop
- OnPause
- OnFinished
- OnObjectSpawnedEvent

## UMovieSceneSkeletalAnimationSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSkeletalAnimationSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSkeletalAnimationSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSkeletalAnimationSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSkeletalAnimationSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSkeletalAnimationSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSkeletalAnimationSection)

类

全文搜索

Movie scene section that control skeletal animation

---

## UMovieSceneSkeletalAnimationTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSkeletalAnimationTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSkeletalAnimationTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSkeletalAnimationTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSkeletalAnimationTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSkeletalAnimationTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSkeletalAnimationTrack)

类

全文搜索

Handles animation of skeletal mesh actors

---


## 属性

- **of** — all animation sections AnimationSections bUseLegacySectionIndexBlend

## UMovieSceneSpawnTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSpawnTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSpawnTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSpawnTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSpawnTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSpawnTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSpawnTrack)

类

全文搜索

Handles when a spawnable should be spawned and destroyed

---


## 属性

- **the** — sections in this track The guid relating to the object we are to spawn and destroy Sections ObjectGuid

## UMovieSceneSplineSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSplineSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSplineSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSplineSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSplineSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSplineSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSplineSection)

类

全文搜索

A single floating point section.

---

## UMovieSceneSubSection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSubSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSubSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSubSection](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSubSection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSubSection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSubSection)

类

全文搜索

Implements a section in sub-sequence tracks.

---


## 属性

- **scene** — being played by this section. @todo Sequencer: Should this be lazy loaded? Target actor to record Target name of sequence to try to record to (will record automatically to another if this already exists) Target path of sequence to record to Parameters StartOffset_DEPRECATED TimeScale_DEPRECATED Prer

## UMovieSceneTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneTrack)

类

全文搜索

Base class for a track in a Movie Scene

---


## 属性

- **evaluation** — options for a given track This track's tint color EvalOptions EvaluationRunSide MinRunnableTCQuality SavedTrackTags TrackTags TrackTint

## UMovieSceneVectorTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneVectorTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneVectorTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneVectorTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneVectorTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneVectorTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneVectorTrack)

类

全文搜索

Handles manipulation of component transforms in a movie scene

---


## 属性

- **number** — of channels used by the vector (2,3, or 4) NumChannelsUsed

## UMovieSceneWidgetMaterialTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneWidgetMaterialTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneWidgetMaterialTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneWidgetMaterialTrack](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneWidgetMaterialTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneWidgetMaterialTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneWidgetMaterialTrack)

类

全文搜索

A material track which is specialized for materials which are owned by widget brushes.

---


## 属性

- **name** — of the brush property which will be animated by this track. The name of this track, generated from the property name path. BrushPropertyNamePath TrackName

## UMultiBillBoardComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMultiBillBoardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMultiBillBoardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMultiBillBoardComponent](https://developer.gp.qq.com/api/#/searchContent/UMultiBillBoardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMultiBillBoardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMultiBillBoardComponent)

类

全文搜索

---


## 函数

- **GetElements**()
- **SetElements**(TArray < FBillBoardMaterialSpriteElement > &NewElements) — Set all elements of this material billboard component
- **AddElement**(UMaterialInterface* Material, UCurveFloat* DistanceToOpacityCurve, bool bSizeIsInScreenSpace, float BaseSizeX, float BaseSizeY, UCurveFloat *DistanceToSizeCurve) — Adds an element to the sprite.
- **K2_AddBillBoard**(FVector NewLocation, FVector2D UV0, FVector2DUV1)
- **RemoveBillboard**(int32ID)
- **ClearAllBillBoards**()
- **SetBillboardUV**(int32 ID, FVector2D UV0, FVector2DUV1)
- **CreateMultiBillboardComponent**(UObject* WorldContextObject, TSubclassOf < UMultiBillBoardComponent >MultiBillboardClass) — GetElements SetElements AddElement K2_AddBillBoard RemoveBillboard ClearAllBillBoards SetBillboardUV CreateMultiBillboardComponent

## 属性

- **array** — of material billboard elements Elements BillboardDatas

## UMultiLineEditableText

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMultiLineEditableText?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMultiLineEditableText.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMultiLineEditableText](https://developer.gp.qq.com/api/#/searchContent/UMultiLineEditableText?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMultiLineEditableText.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMultiLineEditableText)

类

全文搜索

Editable text box widget

---


## 函数

- **TextGetText**()
- **SetText**(FTextInText)
- **SetHintText**(FTextInHintText)
- **SetIsReadOnly**(boolbReadOnly)
- **SetWidgetStyle**(FTextBlockStyle &InWidgetStyle)
- **SetModiferKeyForNewLine**(boolbReadOnly)
- **SetWrapTextAt**(floatInWrapTextAt)
- **SetFont**(FSlateFontInfoInFontInfo)
- **SetColorAndOpacity**(FSlateColorColor) — GetText SetText SetHintText SetIsReadOnly SetWidgetStyle SetModiferKeyForNewLine SetWrapTextAt SetFont SetColorAndOpacity

## 属性

- **text** — content for this editable text box widget Hint text that appears when there is no text in the text box A bindable delegate to allow logic to drive the hint text of the widget The style Sets whether this text block can be modified interactively by the user Font color and opacity (overrides Style) Whe

## 委托

- voidOnTextChanged(const FText&Text)
- Called whenever the text is changed interactively by the user
- voidOnTextCommitted(const FText&Text, ETextCommit::TypeCommitMethod)
- Called whenever the text is committed. This happens when the user presses enter or the text box loses focus.
- voidOnTextBeginEditTransation()
- Called to begin an undoable editable text transaction
- voidOnTextEndEditTransaction(const FText&Text)
- Called to end an undoable editable text transaction
- voidOnTextFocusReceived()
- Called when editable text received focus
- OnTextChanged
- OnTextCommitted
- OnTextBeginEditTransation
- OnTextEndEditTransaction
- OnTextFocusReceived

## UMultiLineEditableTextBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMultiLineEditableTextBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMultiLineEditableTextBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMultiLineEditableTextBox](https://developer.gp.qq.com/api/#/searchContent/UMultiLineEditableTextBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMultiLineEditableTextBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMultiLineEditableTextBox)

类

全文搜索

Allows a user to enter multiple lines of text

---


## 函数

- **TextGetText**(Provide a alternative mechanism for error reporting.)
- **SetText**(FTextInText)
- **SetHintText**(FTextInText)
- **SetError**(FTextInError)
- **SetIsReadOnly**(boolbReadOnly)
- **SetIsEnableMultiLineTextInsertNewLine**(boolbEnable) — GetText SetText SetHintText SetError SetIsReadOnly SetIsEnableMultiLineTextInsertNewLine

## 属性

- **text** — content for this editable text box widget Hint text that appears when there is no text in the text box A bindable delegate to allow logic to drive the hint text of the widget The style The text style Sets whether this text block can be modified interactively by the user Whether the context menu can

## 委托

- voidOnTextChanged(const FText&Text)
- Called whenever the text is changed interactively by the user
- voidOnTextCommitted(const FText&Text, ETextCommit::TypeCommitMethod)
- Called whenever the text is committed. This happens when the user presses enter or the text box loses focus.
- OnTextChanged
- OnTextCommitted

