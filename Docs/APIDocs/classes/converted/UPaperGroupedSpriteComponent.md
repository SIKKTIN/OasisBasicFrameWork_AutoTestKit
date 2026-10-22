# UPaperGroupedSpriteComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperGroupedSpriteComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperGroupedSpriteComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperGroupedSpriteComponent](https://developer.gp.qq.com/api/#/searchContent/UPaperGroupedSpriteComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperGroupedSpriteComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperGroupedSpriteComponent)

类

全文搜索

A component that handles rendering and collision for many instances of one or more UPaperSprite assets. @see UPrimitiveComponent, UPaperSprite

---


## 函数

- **AddInstance**(FTransform& Transform, UPaperSprite* Sprite, bool bWorldSpace, FLinearColorColor) — Add an instance to this component. Transform can be given either in the local space of this component or world space.
- **GetInstanceTransform**(int32 InstanceIndex, FTransform& OutInstanceTransform, boolbWorldSpace) — Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set. Returns True on success.
- **UpdateInstanceTransform**(int32 InstanceIndex, FTransform& NewInstanceTransform, bool bWorldSpace, bool bMarkRenderStateDirty, boolbTeleport) — Update the transform for the instance specified. Instance is given in local space of this component unless bWorldSpace is set. Returns True on success.
- **UpdateInstanceColor**(int32 InstanceIndex, FLinearColor NewInstanceColor, boolbMarkRenderStateDirty) — Update the color for the instance specified. Returns True on success.
- **RemoveInstance**(int32InstanceIndex) — Remove the instance specified. Returns True on success.
- **ClearInstances**(Clear all instances being rendered by this component)
- **GetInstanceCount**(Get the number of instances in this component)
- **SortInstancesAlongAxis**(FVectorWorldSpaceSortAxis) — Sort all instances by their world space position along the specified axis AddInstance GetInstanceTransform UpdateInstanceTransform UpdateInstanceColor RemoveInstance ClearInstances GetInstanceCount SortInstancesAlongAxis

## 属性

- **of** — materials used by the instances Array of instances InstanceMaterials PerInstanceSpriteData