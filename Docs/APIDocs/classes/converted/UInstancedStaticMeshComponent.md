# UInstancedStaticMeshComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInstancedStaticMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInstancedStaticMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInstancedStaticMeshComponent](https://developer.gp.qq.com/api/#/searchContent/UInstancedStaticMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInstancedStaticMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInstancedStaticMeshComponent)

类

全文搜索

A component that efficiently renders multiple instances of the same StaticMesh.

---


## 函数

- **AddInstance**(FTransform &InstanceTransform) — Add an instance to this component. Transform is given in local space of this component.
- **AddInstanceWorldSpace**(FTransform &WorldTransform) — Add an instance to this component. Transform is given in world space.
- **GetInstanceTransform**(int32 InstanceIndex, FTransform& OutInstanceTransform, boolbWorldSpace) — Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set. Returns True on success.
- **UpdateInstanceTransform**(int32 InstanceIndex, FTransform& NewInstanceTransform, bool bWorldSpace, bool bMarkRenderStateDirty, boolbTeleport) — Update the transform for the instance specified. return - True on success. params InstanceIndex - The index of the instance to update params NewInstanceTransform -The new transform params bWorldSpace - If true, the new transform interpreted as a World Space transform, otherwise it is interpreted as
- **RemoveInstance**(int32InstanceIndex) — Remove the instance specified. Returns True on success. Note that this will leave the array in order, but may shrink it.
- **ClearInstances**(Clear all instances being rendered by this component.)
- **GetInstanceCount**(Get the number of instances in this component.)
- **SetCullDistances**(int32 StartCullDistance, int32EndCullDistance) — Sets the fading start and culling end distances for this component.
- **SetNearCullDistance**(int32CullDistance) — Sets the cull near distance for this component.
- **GetInstancesOverlappingSphere**(FVector& Center, float Radius, boolbSphereInWorldSpace) — Returns the instances with instance bounds overlapping the specified sphere. The return value is an array of instance indices.
- **GetInstancesOverlappingBox**(FBox& Box, boolbBoxInWorldSpace) — Returns the instances with instance bounds overlapping the specified box. The return value is an array of instance indices.
- **HideInstance**(TArray < int32 > &InstanceIndices) — Update the transform for the instance specified. return - True on success.
- **ShowInstance**(TArray < int32 > &InstanceIndices) — AddInstance AddInstanceWorldSpace GetInstanceTransform UpdateInstanceTransform RemoveInstance ClearInstances GetInstanceCount SetCullDistances SetNearCullDistance GetInstancesOverlappingSphere GetInstancesOverlappingBox HideInstance ShowInstance

## 属性

- **of** — instances, bulk serialized. Value used to seed the random number stream that generates random numbers for each of this mesh's instances. this is set to zero (default), it will be populated automatically by the editor. Distance from camera at which each instance begins to fade out. Distance from came