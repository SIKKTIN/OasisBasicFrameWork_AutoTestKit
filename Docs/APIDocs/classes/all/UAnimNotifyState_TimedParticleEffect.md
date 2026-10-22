# UAnimNotifyState_TimedParticleEffect

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimNotifyState_TimedParticleEffect?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotifyState_TimedParticleEffect.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotifyState_TimedParticleEffect](https://developer.gp.qq.com/api/#/searchContent/UAnimNotifyState_TimedParticleEffect?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimNotifyState_TimedParticleEffect.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimNotifyState_TimedParticleEffect)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| bool | **IsEnableSpawnObjTrackFeature** |  |  |
| void | **TryMarkSpawnObjTracker** | USkeletalMeshComponent * InTargetSkelMeshComp, UObject *InSpawnedObj |  |
| void | **TryClearSpawnObjTracker** | USkeletalMeshComponent *InTargetSkelMeshComp |  |
| bool | **IsTrackingObj** | USkeletalMeshComponent *InTargetSkelMeshComp |  |
| UParticleSystem * | **GetOverrideParticleTemplate** | USkeletalMeshComponent * InTargetSkelMeshComp, UParticleSystem *InPSTemplate |  |
| F | **TransformGetOverrideParticleWorldTransform** | USkeletalMeshComponent * InTargetSkelMeshComp, FTransformTargetTransform |  |
| void | **InnerCheckParticleParentVisibility** | USkeletalMeshComponent * skComp, UParticleSystemComponent *InPSC |  |
| void | **CheckParticleParentVisibility** | USkeletalMeshComponent *InComponent |  |
| bool | **IsEnableSearchAllDescendants** | USkeletalMeshComponent *InTargetSkelMeshComp |  |
| void | **SearchChildrenParticleAndDestroy** | TArray < USceneComponent * > Children, USkeletalMeshComponent * MeshComp, USkeletalMeshComponent *AttachAdaptMeshComp | IsEnableSpawnObjTrackFeature TryMarkSpawnObjTracker TryClearSpawnObjTracker IsTrackingObj GetOverrideParticleTemplate GetOverrideParticleWorldTransform InnerCheckParticleParentVisibility CheckParticleParentVisibility IsEnableSearchAllDescendants SearchChildrenParticleAndDestroy |

