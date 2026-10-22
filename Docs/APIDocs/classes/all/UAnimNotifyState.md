# UAnimNotifyState

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimNotifyState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotifyState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotifyState](https://developer.gp.qq.com/api/#/searchContent/UAnimNotifyState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotifyState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotifyState)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| F | **StringGetNotifyName** |  | Implementable event to get a custom name for the notify |
| bool | **Received_NotifyBegin** | USkeletalMeshComponent * MeshComp, UAnimSequenceBase * Animation, float TotalDuration, UAnimInstance *InvokeAnimInstance |  |
| bool | **Received_NotifyTick** | USkeletalMeshComponent * MeshComp, UAnimSequenceBase * Animation, float FrameDeltaTime, UAnimInstance *InvokeAnimInstance |  |
| bool | **Received_NotifyEnd** | USkeletalMeshComponent * MeshComp, UAnimSequenceBase * Animation, UAnimInstance *InvokeAnimInstance |  |
| USkeletalMeshComponent * | **TryGetNewFPPAdaptSkelMeshComp** | USkeletalMeshComponent * InTargetSkelMeshComp, bool InIsInitCall, bool HasRetarget, boolForceGetFPPMesh |  |
| USkeletalMeshComponent * | **TryGetBoneRetargetAdaptSkelMeshComp** | USkeletalMeshComponent * InTargetSkelMeshComp, boolInIsInitCall | For Bone Retarget Feature Start |
| void | **ClearBoneRetargetAdaptState** | USkeletalMeshComponent *InTargetSkelMeshComp |  |
| bool | **IsBoneRetargetAdaptInitDone** | USkeletalMeshComponent *InTargetSkelMeshComp |  |
| bool | **IsEnableBoneRetargetAdaptFeature** | USkeletalMeshComponent *InTargetSkelMeshComp | GetNotifyName Received_NotifyBegin Received_NotifyTick Received_NotifyEnd TryGetNewFPPAdaptSkelMeshComp TryGetBoneRetargetAdaptSkelMeshComp ClearBoneRetargetAdaptState IsBoneRetargetAdaptInitDone IsEnableBoneRetargetAdaptFeature |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| 仅在TPP（第三人称）下生效，开启后此NotifyState只会在TPP | **AnimInstance** | 中触发 InOldFPPAnimMode_ChangeToNewFPPMesh bEnableBoneRetargetAdaptFeature bCheckAnimIsolation bCheckAnimIsolation_OnlyNewFPP bCheckAnimIsolation_OnlyNewFPP_IgnoreOldAnimMode bCheckAnimIsolation_OnlyTPP |

