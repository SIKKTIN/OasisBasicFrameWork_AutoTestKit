# UMeshComponent

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