# UAnimNotifyState

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimNotifyState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotifyState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotifyState](https://developer.gp.qq.com/api/#/searchContent/UAnimNotifyState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotifyState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotifyState)

类

全文搜索

---


## 函数

- **StringGetNotifyName**(Implementable event to get a custom name for the notify)
- **Received_NotifyBegin**(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, float TotalDuration, UAnimInstance *InvokeAnimInstance)
- **Received_NotifyTick**(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, float FrameDeltaTime, UAnimInstance *InvokeAnimInstance)
- **Received_NotifyEnd**(USkeletalMeshComponent* MeshComp, UAnimSequenceBase* Animation, UAnimInstance *InvokeAnimInstance)
- **TryGetNewFPPAdaptSkelMeshComp**(USkeletalMeshComponent* InTargetSkelMeshComp, bool InIsInitCall, bool HasRetarget, boolForceGetFPPMesh)
- **TryGetBoneRetargetAdaptSkelMeshComp**(USkeletalMeshComponent* InTargetSkelMeshComp, boolInIsInitCall) — For Bone Retarget Feature Start
- **ClearBoneRetargetAdaptState**(USkeletalMeshComponent *InTargetSkelMeshComp)
- **IsBoneRetargetAdaptInitDone**(USkeletalMeshComponent *InTargetSkelMeshComp)
- **IsEnableBoneRetargetAdaptFeature**(USkeletalMeshComponent *InTargetSkelMeshComp) — GetNotifyName Received_NotifyBegin Received_NotifyTick Received_NotifyEnd TryGetNewFPPAdaptSkelMeshComp TryGetBoneRetargetAdaptSkelMeshComp ClearBoneRetargetAdaptState IsBoneRetargetAdaptInitDone IsEnableBoneRetargetAdaptFeature

## 属性

- **AnimInstance** — 中触发 InOldFPPAnimMode_ChangeToNewFPPMesh bEnableBoneRetargetAdaptFeature bCheckAnimIsolation bCheckAnimIsolation_OnlyNewFPP bCheckAnimIsolation_OnlyNewFPP_IgnoreOldAnimMode bCheckAnimIsolation_OnlyTPP