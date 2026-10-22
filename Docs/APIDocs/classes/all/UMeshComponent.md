# UMeshComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMeshComponent](https://developer.gp.qq.com/api/#/searchContent/UMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMeshComponent)

类

全文搜索

MeshComponent is an abstract base for any component that is an instance of a renderable collection of triangles. @see UStaticMeshComponent @see USkeletalMeshComponent

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| TArray < class UMaterialInterface * > | **GetMaterials** |  |  |
| int32 | **GetMaterialIndex** | FNameMaterialSlotName |  |
| TArray < FName > | **GetMaterialSlotNames** |  |  |
| bool | **IsMaterialSlotNameValid** | FNameMaterialSlotName |  |
| void | **EnableMeshClipPlane** | FPlane & ClipPlane, int32PlaneIndex |  |
| void | **DisableMeshClipPlane** | int32PlaneIndex |  |
| void | **EnableMeshClipArc** | FPlane & ClipPlane, FVector4 &ClipSphere |  |
| void | **DisableMeshClipArc** |  |  |
| void | **EnableMeshClip4Planes** | TArray < FPlane > & ClipPlanes, boolbBox |  |
| void | **DisableMeshClip4Planes** |  |  |
| UMaterialInterface * | **GetOverlayMaterial** |  | Get the overlay material used by this instance |
| void | **SetOverlayMaterial** | UMaterialInterface *NewOverlayMaterial | Change the overlay material used by this instance |
| bool | **GetUseIndexedOverlayMaterials** |  | Get UseIndexedOverlayMaterials |
| void | **SetUseIndexedOverlayMaterials** | boolbNewUseIndexedOverlayMaterials | Set UseIndexedOverlayMaterials |
| bool | **GetUseOverlayMaterials** |  | Get UseOverlayMaterials |
| void | **SetUseOverlayMaterials** | boolbNewUseOverlayMaterials | Set UseOverlayMaterials |
| TArray < class UMaterialInterface * > | **GetIndexedOverlayMaterials** |  | Get IndexedOverlayMaterials |
| void | **SetIndexedOverlayMaterial** | int32 ElementIndex, UMaterialInterface *Material | Set IndexedOverlayMaterials |
| void | **SetOverlayMaterialMaxDrawDistance** | floatInMaxDrawDistance | Change the overlay material max draw distance used by this instance |
| TArray < class UMaterialInterface * > | **GetIndexedOverrideOutlineMaterials** |  | Get IndexedOverrideOutlineMaterials |
| void | **SetIndexedOverrideOutlineMaterials** | int32 ElementIndex, UMaterialInterface *Material | Set IndexedOverrideOutlineMaterials |
| void | **PrestreamTextures** | float Seconds, bool bPrioritizeCharacterTextures, int32CinematicTextureGroups | Tell the streaming system to start loading all textures with all mip-levels. params Seconds - Number of seconds to force all mip-levels to be resident params bPrioritizeCharacterTextures -Whether character textures should be prioritized for a while by the streaming system params CinematicTextureGrou |
| void | **SetScalarParameterValueOnMaterials** | FName ParameterName, floatParameterValue | Material parameter setting and caching Set all occurrences of Scalar Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue |
| void | **SetVectorParameterValueOnMaterials** | FName ParameterName, FVectorParameterValue | Set all occurrences of Vector Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue GetMaterials GetMaterialIndex GetMaterialSlotNames IsMaterialSlotNameValid EnableMeshClipPlane DisableMeshClipPlane EnableMeshClipArc DisableMeshClipArc EnableMeshClip4P |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Per-Component | **material** | overrides. These must NOT be set directly or a race condition can occur between GC and the rendering thread. UMaterialInterface *OverlayMaterial Translucent material to blend on top of this mesh. Mesh will be rendered twice - once with a base material and once with overlay material Overlay materials |

