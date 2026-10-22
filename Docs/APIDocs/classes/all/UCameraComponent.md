# UCameraComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCameraComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraComponent](https://developer.gp.qq.com/api/#/searchContent/UCameraComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraComponent)

类

全文搜索

Represents a camera viewpoint and settings, such as projection type, field of view, and post-process overrides. The default behavior for an actor used as the camera view target is to look for an attached camera component and use its location, rotation, and settings.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetFieldOfView** | floatInFieldOfView |  |
| void | **SetFirstPersonFieldOfView** | floatInFirstPersonFieldOfView |  |
| void | **SetFirstPersonScale** | floatInFirstPersonScale |  |
| void | **SetFirstPersonScaleParams** | float InFirstPersonScale, float InFPScaleCurveNearValue, float InFPScaleMaxLen, floatInFPScaleCurvePow |  |
| void | **SetEnableFirstPersonFieldOfView** | boolbInEnableFirstPersonFieldOfView |  |
| void | **SetEnableFirstPersonScale** | boolbInEnableFirstPersonScale |  |
| void | **SetActive** | bool bNewActive, boolbReset |  |
| void | **ApplyDrawDistanceOffset** | floatInFieldOfView |  |
| void | **SetOrthoWidth** | floatInOrthoWidth |  |
| void | **SetOrthoNearClipPlane** | floatInOrthoNearClipPlane |  |
| void | **SetOrthoFarClipPlane** | floatInOrthoFarClipPlane |  |
| void | **SetAspectRatio** | floatInAspectRatio |  |
| void | **SetWidthHeight** | FVector2DInWidthHeight |  |
| void | **SetConstraintAspectRatio** | boolbInConstrainAspectRatio |  |
| void | **SetUseFieldOfViewForLOD** | boolbInUseFieldOfViewForLOD |  |
| void | **SetProjectionMode** | ECameraProjectionMode :: TypeInProjectionMode |  |
| void | **SetPostProcessBlendWeight** | floatInPostProcessBlendWeight |  |
| void | **GetCameraView** | float DeltaTime, FMinimalViewInfo &DesiredView | Returns camera's Point of View. Called by Camera class. Subclass and postprocess to add any effects. |
| void | **AddOrUpdateBlendable** | TScriptInterface < IBlendableInterface > InBlendableObject, floatInWeight | Adds an Blendable (implements IBlendableInterface) to the array of Blendables (if it doesn't exist) and update the weight |
| void | **RemoveBlendable** | TScriptInterface < IBlendableInterface >InBlendableObject | Removes a blendable. |
| void | **SetbEnableModifyAdditiveOffset** | boolInEnable |  |
| bool | **GetEnableModifyAdditiveOffset** |  |  |
| void | **AddAdditiveOffset** | FTransform & Transform, floatFOV | Applies the given additive offset, preserving any existing offset |
| void | **ClearAdditiveOffset** |  | Removes any additive offset. |
| void | **GetAddtiveInfo** | bool & OutIsAddtive, float & OutAddtiveOffset, FTransform &OutAddtiveTrans | SetFieldOfView SetFirstPersonFieldOfView SetFirstPersonScale SetFirstPersonScaleParams SetEnableFirstPersonFieldOfView SetEnableFirstPersonScale SetActive ApplyDrawDistanceOffset SetOrthoWidth SetOrthoNearClipPlane SetOrthoFarClipPlane SetAspectRatio SetWidthHeight SetConstraintAspectRatio SetUseFie |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **horizontal** | field of view (in degrees) in perspective mode (ignored in Orthographic mode) The horizontal field of view (in degrees) used for primitives tagged as "IsFirstPerson". The scale to apply to primitives tagged as "IsFirstPerson". This is used to scale down primitives towards the camera such that they a |

