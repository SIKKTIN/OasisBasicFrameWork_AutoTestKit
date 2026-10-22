# UGridVisibilityCaptureComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGridVisibilityCaptureComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridVisibilityCaptureComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridVisibilityCaptureComponent](https://developer.gp.qq.com/api/#/searchContent/UGridVisibilityCaptureComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridVisibilityCaptureComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridVisibilityCaptureComponent)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **InitGridIDVisibilityCalculation** | TArray < FVector > &InGridLocations |  |
| void | **CalculateGridIDVisibility** | int32 GridID, TArray < FGridVisibilityCameraInfo > & CameraLocations, TArray < int32 > &PotentialGrids |  |
| void | **FinishGridIDVisibilityCalculation** |  | InitGridIDVisibilityCalculation CalculateGridIDVisibility FinishGridIDVisibilityCalculation |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Camera | **field** | of view (in degrees). UStaticMesh *GridMesh UTextureRenderTarget2D *RenderTargetToCreateRenderer UInstancedStaticMeshComponent *GridMeshComp CaptureViewSize NearClipPlane GridMesh GridMeshSizeScale GridMeshLocationOffset bForceLowestLOD bHiddenFoliage OcclusionDepthDiffThreshold bShouldRenderGridMes |

