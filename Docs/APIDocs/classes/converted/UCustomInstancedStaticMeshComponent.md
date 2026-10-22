# UCustomInstancedStaticMeshComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCustomInstancedStaticMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCustomInstancedStaticMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCustomInstancedStaticMeshComponent](https://developer.gp.qq.com/api/#/searchContent/UCustomInstancedStaticMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCustomInstancedStaticMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCustomInstancedStaticMeshComponent)

类

全文搜索

A custom component that efficiently renders multiple instances of the same StaticMesh.

---


## 函数

- **AddInstance**(FTransform &InstanceTransform) — Add an instance to this component. Transform is given in local space of this component.
- **AddInstanceWorldSpace**(FTransform &WorldTransform) — Add an instance to this component. Transform is given in world space.
- **SetCustomDataValue**(int32 InstanceIndex, FVector4 CustomDataValue, FVector4 CustomDataAddValue, boolbMarkRenderStateDirty) — Update custom data for specific instance
- **GetInstanceTransform**(int32 InstanceIndex, FTransform& OutInstanceTransform, boolbWorldSpace) — Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set. Returns True on success.
- **UpdateInstanceTransform**(int32 InstanceIndex, FTransform& NewInstanceTransform, bool bWorldSpace, bool bMarkRenderStateDirty, boolbTeleport) — Update the transform for the instance specified. return - True on success. params InstanceIndex - The index of the instance to update params NewInstanceTransform -The new transform params bWorldSpace - If true, the new transform interpreted as a World Space transform, otherwise it is interpreted as
- **BatchUpdateInstancesData**(int32 StartInstanceIndex, int32 NumInstances, TArray < FVector4 >& StartCustomData, TArray < FVector4 >& StartCustomDataAdd, bool bMarkRenderStateDirty, boolbTeleport)
- **RemoveInstance**(int32InstanceIndex) — Remove the instance specified. Returns True on success. Note that this will leave the array in order, but may shrink it.
- **ClearInstances**(Clear all instances being rendered by this component.)
- **GetInstanceCount**(Get the number of instances in this component.)
- **SetCullDistances**(int32 StartCullDistance, int32EndCullDistance) — Sets the fading start and culling end distances for this component.
- **SetNearCullDistance**(int32CullDistance) — Sets the cull near distance for this component.
- **GetInstancesOverlappingSphere**(FVector& Center, float Radius, boolbSphereInWorldSpace) — Returns the instances with instance bounds overlapping the specified sphere. The return value is an array of instance indices.
- **GetInstancesOverlappingBox**(FBox& Box, boolbBoxInWorldSpace) — Returns the instances with instance bounds overlapping the specified box. The return value is an array of instance indices.
- **HideInstance**(TArray < int32 >& InstanceIndices, boolbForceLocalLocation) — Update the transform for the instance specified. return - True on success.
- **ShowInstance**(TArray < int32 > &InstanceIndices) — AddInstance AddInstanceWorldSpace SetCustomDataValue GetInstanceTransform UpdateInstanceTransform BatchUpdateInstancesData RemoveInstance ClearInstances GetInstanceCount SetCullDistances SetNearCullDistance GetInstancesOverlappingSphere GetInstancesOverlappingBox HideInstance ShowInstance

## 属性

- **of** — instances, bulk serialized. Array of custom data for instances. This will contains NumCustomDataFloatsInstanceCount entries. The entries are represented sequantially, in instance order. Can be read in a material and manipulated through Blueprints. Example: If NumCustomDataFloats is 1, then each entr