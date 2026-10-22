# UAnimSingleNodeInstance

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimSingleNodeInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimSingleNodeInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimSingleNodeInstance](https://developer.gp.qq.com/api/#/searchContent/UAnimSingleNodeInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimSingleNodeInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimSingleNodeInstance)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetLooping** | boolbIsLooping |  |
| void | **SetPlayRate** | floatInPlayRate |  |
| void | **SetReverse** | boolbInReverse |  |
| void | **SetPosition** | float InPosition, boolbFireNotifies |  |
| void | **SetPositionWithPreviousTime** | float InPosition, float InPreviousTime, boolbFireNotifies |  |
| void | **SetBlendSpaceInput** | FVector &InBlendInput |  |
| void | **SetPlaying** | boolbIsPlaying |  |
| float | **GetLength** |  |  |
| void | **PlayAnim** | bool bIsLooping, float InPlayRate, floatInStartPosition | For AnimSequence specific |
| void | **StopAnim** |  |  |
| void | **SetAnimationAsset** | UAnimationAsset * NewAsset, bool bIsLooping, floatInPlayRate | Set New Asset - calls InitializeAnimation, for now we need MeshComponent |
| UAnimationAsset * | **GetAnimationAsset** |  | Get the currently used asset |
| void | **SetPreviewCurveOverride** | FName & PoseName, float Value, boolbRemoveIfZero | Set pose value SetLooping SetPlayRate SetReverse SetPosition SetPositionWithPreviousTime SetBlendSpaceInput SetPlaying GetLength PlayAnim StopAnim SetAnimationAsset GetAnimationAsset SetPreviewCurveOverride |

## 委托

- voidPostEvaluateAnimEvent()
- voidOnAnimSinglePlayAnim(UAnimationAsset*AnimAsset, boolbPlay)
- PostEvaluateAnimEvent
- OnAnimSinglePlayAnim

