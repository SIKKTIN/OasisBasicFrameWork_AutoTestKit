# UPaperGroupedSpriteComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperGroupedSpriteComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperGroupedSpriteComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperGroupedSpriteComponent](https://developer.gp.qq.com/api/#/searchContent/UPaperGroupedSpriteComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperGroupedSpriteComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperGroupedSpriteComponent)

类

全文搜索

A component that handles rendering and collision for many instances of one or more UPaperSprite assets. @see UPrimitiveComponent, UPaperSprite

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| int32 | **AddInstance** | FTransform & Transform, UPaperSprite * Sprite, bool bWorldSpace, FLinearColorColor | Add an instance to this component. Transform can be given either in the local space of this component or world space. |
| bool | **GetInstanceTransform** | int32 InstanceIndex, FTransform & OutInstanceTransform, boolbWorldSpace | Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set. Returns True on success. |
| bool | **UpdateInstanceTransform** | int32 InstanceIndex, FTransform & NewInstanceTransform, bool bWorldSpace, bool bMarkRenderStateDirty, boolbTeleport | Update the transform for the instance specified. Instance is given in local space of this component unless bWorldSpace is set. Returns True on success. |
| bool | **UpdateInstanceColor** | int32 InstanceIndex, FLinearColor NewInstanceColor, boolbMarkRenderStateDirty | Update the color for the instance specified. Returns True on success. |
| bool | **RemoveInstance** | int32InstanceIndex | Remove the instance specified. Returns True on success. |
| void | **ClearInstances** |  | Clear all instances being rendered by this component |
| int32 | **GetInstanceCount** |  | Get the number of instances in this component |
| void | **SortInstancesAlongAxis** | FVectorWorldSpaceSortAxis | Sort all instances by their world space position along the specified axis AddInstance GetInstanceTransform UpdateInstanceTransform UpdateInstanceColor RemoveInstance ClearInstances GetInstanceCount SortInstancesAlongAxis |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Array | **of** | materials used by the instances Array of instances InstanceMaterials PerInstanceSpriteData |

