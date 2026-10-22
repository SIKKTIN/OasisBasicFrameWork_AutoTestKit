# ALandscapeProxy

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ALandscapeProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALandscapeProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALandscapeProxy](https://developer.gp.qq.com/api/#/searchContent/ALandscapeProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALandscapeProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALandscapeProxy)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **ChangebUseScreenSizeLOD** | boolInbUseScreenSizeLOD |  |
| void | **ChangeLODDistanceFactor** | floatInLODDistanceFactor | Change the Level of Detail distance factor |
| void | **ChangeLOD0DistributionSettingConsoleVariable** |  |  |
| void | **ChangeLODDistributionSettingConsoleVariable** |  |  |
| void | **EditorApplySpline** | USplineComponent * InSplineComponent, float StartWidth, float EndWidth, float StartSideFalloff, float EndSideFalloff, float StartRoll, float EndRoll, int32 NumSubdivisions, bool bRaiseHeights, bool bL | Deform landscape using a given spline params StartWidth -- Width of the spline at the start node, in Spline Component local space params EndWidth - - Width of the spline at the end node, in Spline Component local space params StartSideFalloff -- Width of the falloff at either side of the spline at t |
| void | **BakeLandscape** |  |  |
| U | **FUNCTION** | BlueprintNativeEvent, BlueprintNativeEvent, CallInEditor, Category = "Improve LOD" |  |
| void | **DebugViewLandscapeCollision** |  |  |
| LANDSCAPE_API void | **FixPCOnlyWeightmapData** |  |  |
| LANDSCAPE_API void | **FixPCOnlyWeightmap** |  |  |
| LANDSCAPE_API void | **ChangeShowWeightmap** |  | ChangebUseScreenSizeLOD ChangeLODDistanceFactor ChangeLOD0DistributionSettingConsoleVariable ChangeLODDistributionSettingConsoleVariable EditorApplySpline BakeLandscape DebugViewLandscapeCollision FixPCOnlyWeightmapData FixPCOnlyWeightmap ChangeShowWeightmap |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Offset | **in** | quads from global components grid origin (in quads) Max LOD level to use when rendering, -1 means the max available Combined material used to render the landscape The distribution setting used to change the LOD 0 generation, 1.75 is the normal distribution, numbers influence directly the LOD0 propor |

