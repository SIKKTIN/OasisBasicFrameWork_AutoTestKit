# UAnimSingleNodeInstance

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimSingleNodeInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimSingleNodeInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimSingleNodeInstance](https://developer.gp.qq.com/api/#/searchContent/UAnimSingleNodeInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimSingleNodeInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimSingleNodeInstance)

类

全文搜索

---


## 函数

- **SetLooping**(boolbIsLooping)
- **SetPlayRate**(floatInPlayRate)
- **SetReverse**(boolbInReverse)
- **SetPosition**(float InPosition, boolbFireNotifies)
- **SetPositionWithPreviousTime**(float InPosition, float InPreviousTime, boolbFireNotifies)
- **SetBlendSpaceInput**(FVector &InBlendInput)
- **SetPlaying**(boolbIsPlaying)
- **GetLength**()
- **PlayAnim**(bool bIsLooping, float InPlayRate, floatInStartPosition) — For AnimSequence specific
- **StopAnim**()
- **SetAnimationAsset**(UAnimationAsset* NewAsset, bool bIsLooping, floatInPlayRate) — Set New Asset - calls InitializeAnimation, for now we need MeshComponent
- **GetAnimationAsset**(Get the currently used asset)
- **SetPreviewCurveOverride**(FName& PoseName, float Value, boolbRemoveIfZero) — Set pose value SetLooping SetPlayRate SetReverse SetPosition SetPositionWithPreviousTime SetBlendSpaceInput SetPlaying GetLength PlayAnim StopAnim SetAnimationAsset GetAnimationAsset SetPreviewCurveOverride

## 委托

- voidPostEvaluateAnimEvent()
- voidOnAnimSinglePlayAnim(UAnimationAsset*AnimAsset, boolbPlay)
- PostEvaluateAnimEvent
- OnAnimSinglePlayAnim