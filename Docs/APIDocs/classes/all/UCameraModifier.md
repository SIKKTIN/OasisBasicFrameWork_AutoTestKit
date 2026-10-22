# UCameraModifier

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCameraModifier?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraModifier.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraModifier](https://developer.gp.qq.com/api/#/searchContent/UCameraModifier?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraModifier.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraModifier)

类

全文搜索

A CameraModifier is a base class for objects that may adjust the final camera properties after being computed by the APlayerCameraManager (@see ModifyCamera). A CameraModifier can be stateful, and is associated uniquely with a specific APlayerCameraManager.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **BlueprintModifyCamera** | float DeltaTime, FVector ViewLocation, FRotator ViewRotation, float FOV, FVector & NewViewLocation, FRotator & NewViewRotation, float &NewFOV | Called per tick that the modifier is active to allow Blueprinted modifiers to modify the camera's transform. Scaling by Alpha happens after this in code, so no need to deal with that in the blueprint. params DeltaTime -Change in time since last update params ViewLocation -The current camera location |
| void | **BlueprintModifyPostProcess** | float DeltaTime, float & PostProcessBlendWeight, FPostProcessSettings &PostProcessSettings | Called per tick that the modifier is active to allow Blueprinted modifiers to modify the camera's postprocess effects. Scaling by Alpha happens after this in code, so no need to deal with that in the blueprint. params DeltaTime - Change in time since last update params PostProcessBlendWeight -(out)  |
| bool | **IsDisabled** |  | return -Returns true if modifier is disabled, false otherwise. |
| AActor * | **GetViewTarget** |  | return -Returns the actor the camera is currently viewing. |
| void | **DisableModifier** | boolbImmediate | Disables this modifier. params bImmediate -- true to disable with no blend out, false (default) to allow blend out |
| void | **EnableModifier** |  | Enables this modifier. BlueprintModifyCamera BlueprintModifyPostProcess IsDisabled GetViewTarget DisableModifier EnableModifier |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| If | **true** | , enables certain debug visualization features. If true, no other modifiers of same priority allowed. Priority value that determines the order in which modifiers are applied. 0 = highest priority, 255 = lowest. APlayerCameraManager *CameraOwner Camera this object is associated with. When blending in |

