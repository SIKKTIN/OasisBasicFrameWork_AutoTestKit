# UGridVisibilityCaptureComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGridVisibilityCaptureComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridVisibilityCaptureComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridVisibilityCaptureComponent](https://developer.gp.qq.com/api/#/searchContent/UGridVisibilityCaptureComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridVisibilityCaptureComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridVisibilityCaptureComponent)

类

全文搜索

---


## 函数

- **InitGridIDVisibilityCalculation**(TArray < FVector > &InGridLocations)
- **CalculateGridIDVisibility**(int32 GridID, TArray < FGridVisibilityCameraInfo >& CameraLocations, TArray < int32 > &PotentialGrids)
- **FinishGridIDVisibilityCalculation**(InitGridIDVisibilityCalculation CalculateGridIDVisibility FinishGridIDVisibilityCalculation)

## 属性

- **field** — of view (in degrees). UStaticMesh *GridMesh UTextureRenderTarget2D *RenderTargetToCreateRenderer UInstancedStaticMeshComponent *GridMeshComp CaptureViewSize NearClipPlane GridMesh GridMeshSizeScale GridMeshLocationOffset bForceLowestLOD bHiddenFoliage OcclusionDepthDiffThreshold bShouldRenderGridMes