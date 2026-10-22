# UAnimInstance

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimInstance](https://developer.gp.qq.com/api/#/searchContent/UAnimInstance?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimInstance.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimInstance)

类

全文搜索

---


## 函数

- **TryGetPawnOwner**()
- **SavePoseSnapshot**(FNameSnapshotName) — Takes a snapshot of the current skeletal mesh component pose & saves it internally. This snapshot can then be retrieved by name in the animation blueprint for blending. The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1 and then used it at LOD0 any bones not in
- **SnapshotPose**(FPoseSnapshot &Snapshot) — Takes a snapshot of the current skeletal mesh component pose and saves it to the specified snapshot. The snapshot is taken at the current LOD, so if for example you took the snapshot at LOD1 and then used it at LOD0 any bones not in LOD1 will use the reference pose
- **GetOwningActor**(Returns the owning actor of this AnimInstance)
- **GetOwningComponent**()
- **BlueprintShouldSkipUpdateAnimation**(floatDeltaTimeX) — Executed before the Animation is updated, Check custom condition, whether to skip update
- **BlueprintInitializeAnimation**(Executed when the Animation is initialized)
- **BlueprintUnInitializeAnimation**()
- **BlueprintUpdateAnimation**(floatDeltaTimeX) — Executed when the Animation is updated
- **BlueprintPostEvaluateAnimation**(Executed after the Animation is evaluated)
- **BlueprintBeginPlay**(Executed when begin play is called on the owning component)
- **PlaySlotAnimation**(UAnimSequenceBase* Asset, FName SlotNodeName, float BlendInTime, float BlendOutTime, float InPlayRate, int32LoopCount) — SlotAnimation DEPRECATED. Use PlaySlotAnimationAsDynamicMontage instead, it returns the UAnimMontage created instead of time, allowing more control Play normal animation asset on the slot node. You can only play one asset (whether montage or animsequence) at a time.
- **PlaySlotAnimationAsDynamicMontage**(UAnimSequenceBase* Asset, FName SlotNodeName, float BlendInTime, float BlendOutTime, float InPlayRate, int32 LoopCount, float BlendOutTriggerTime, floatInTimeToStartMontageAt) — Play normal animation asset on the slot node by creating a dynamic UAnimMontage. You can only play one asset (whether montage or animsequence) at a time per SlotGroup.
- **PlaySlotAnimationAsDynamicMontageCustom**(UAnimSequenceBase* Asset, FName SlotNodeName, FCustomMontageAnimInfo Extra, float BlendInTime, float BlendOutTime, float InPlayRate, int32 LoopCount, float BlendOutTriggerTime, floatInTimeToStartMont)
- **SetMatineeAnimPosition**(UAnimMontage* TargetMontage, float InPosition, FCustomMontageAnimInfo Extra, floatWeight)
- **StopSlotAnimation**(float InBlendOutTime, FNameSlotNodeName) — Stops currently playing slot animation slot or all
- **IsPlayingSlotAnimation**(UAnimSequenceBase* Asset, FName SlotNodeName, boolbcheckTransientPackage) — Return true if it's playing the slot animation
- **ForceTriggerAnimEndedEvent**()
- **SetMontageCustomSectionsPlayInfo**(UAnimMontage* Montage, TArray < FMontageSectionsPlayInfo > &InPlayInfo) — AnimMontage
- **ClearMontageCustomSectionsPlayInfo**(UAnimMontage *Montage)
- **Montage_Play**(UAnimMontage* MontageToPlay, float InPlayRate, EMontagePlayReturnType ReturnValueType, floatInTimeToStartMontageAt) — Plays an animation montage. Returns the length of the animation montage in seconds. Returns 0.f if failed to play.
- **Montage_CustomPlay**(UAnimMontage* MontageToPlay, FCustomMontageAnimInfo Extra, float InPlayRate, EMontagePlayReturnType ReturnValueType, floatInTimeToStartMontageAt)
- **Montage_Stop**(float InBlendOutTime, UAnimMontage *Montage) — Stops the animation montage. If reference is NULL, it will stop ALL active montages.
- **Montage_StopBySlot**(float InBlendOutTime, FNameSlotName)
- **Montage_CustomStop**(float InBlendOutTime, FCustomMontageAnimInfo Extra, UAnimMontage *Montage)
- **Montage_Pause**(UAnimMontage *Montage) — Pauses the animation montage. If reference is NULL, it will pause ALL active montages.
- **Montage_Resume**(UAnimMontage *Montage) — Resumes a paused animation montage. If reference is NULL, it will resume ALL active montages.
- **Montage_JumpToSection**(FName SectionName, UAnimMontage *Montage) — Makes a montage jump to a named section. If Montage reference is NULL, it will do that to all active montages.
- **Montage_JumpToSectionsEnd**(FName SectionName, UAnimMontage *Montage) — Makes a montage jump to the end of a named section. If Montage reference is NULL, it will do that to all active montages.
- **Montage_SetNextSection**(FName SectionNameToChange, FName NextSection, UAnimMontage *Montage) — Relink new next section AFTER SectionNameToChange in run-time You can link section order the way you like in editor, but in run-time if you'd like to change it dynamically, use this function to relink the next section For example, you can have Start->Loop->Loop->Loop.... but when you want it to end,
- **Montage_SetPlayRate**(UAnimMontage* Montage, floatNewPlayRate) — Change AnimMontage play rate. NewPlayRate = 1.0 is the default playback rate.
- **Montage_ReversePlayByAbsRateAndSlot**(FName SlotName, floatAbsPlayRate)
- **Montage_SetDelayFrame**(UAnimMontage* Montage, int32DelayFrame)
- **Montage_IsActive**(UAnimMontage *Montage) — Returns true if the animation montage is active. If the Montage reference is NULL, it will return true if any Montage is active.
- **Montage_IsPlaying**(UAnimMontage *Montage) — Returns true if the animation montage is currently active and playing. If reference is NULL, it will return true is ANY montage is currently active and playing.
- **Montage_IsExisting**(UAnimMontage *Montage)
- **MontageGroup_IsPlaying**(FNameGroupName) — 判断有无某个组下的蒙太奇正在播放
- **NameMontage_GetCurrentSection**(UAnimMontage *Montage) — Returns the name of the current animation montage section.
- **Montage_GetPosition**(UAnimMontage *Montage) — Get Current Montage Position
- **Montage_SetPosition**(UAnimMontage* Montage, floatNewPosition) — Set position.
- **Montage_GetIsStopped**(UAnimMontage *Montage) — return true if Montage is not currently active. (not valid or blending out)
- **Montage_GetBlendTime**(UAnimMontage *Montage) — Get the current blend time of the Montage. If Montage reference is NULL, it will return the current blend time on the first active Montage found.
- **Montage_GetPlayRate**(UAnimMontage *Montage) — Get PlayRate for Montage. If Montage is not playing, 0 is returned.
- **IsAnyMontagePlaying**(Returns true if any montage is playing currently. Doesn't mean it's active though, it could be blending out.)
- **GetCurrentActiveMontage**(Get a current Active Montage in this AnimInstance. Note that there might be multiple Active at the same time. This will only return the first active one it finds.)
- **GetCurrentActiveMontages**()
- **GetCurMontageBySlot**(FNameSlotName) — Get the UAnimMontage currently running that matches this SlotName. Will return NULL if no instance is found.
- **NameMontage_GetNextSection**(UAnimMontage* Montage, FNameSectionName)
- **AddAnimAssetNoGCRef**(UAnimationAsset *InAnimAsset) — 添加动画资源到非GC引用列表，返回全局唯一ID
- **RemoveAnimAssetNoGCRef**(int64InAnimAssetNoGCID) — 从非GC引用列表移除动画资源（通过ID）
- **RemoveAllAnimAssetNoGCRef**(UAnimationAsset *InAnimAsset) — 从非GC引用列表移除所有动画资源（通过资源指针）
- **ClearAnimAssetsNoGCReferences**(清空非GC引用列表)
- **StopAllMontages**(floatBlendOut) — Stop all montages that are active
- **ClearAllMontages**(floatBlendOut) — Stop all montages that are active
- **ClearStoppedMontageInstances**(boolbClearSubAnim)
- **GetForbiddenPlayMontageSlot**()
- **SetForbiddenPlayMontageSlot**(bool bIsAdd, FStringSlotName) — params SlotName -should be GroupName + SlotName
- **SetRootMotionMode**(TEnumAsByte < ERootMotionMode :: Type >Value) — Set RootMotionMode
- **GetInstanceAssetPlayerLength**(int32AssetPlayerIndex) — NOTE: Derived anim getters Anim getter functions can be defined for any instance deriving UAnimInstance. To do this the function must be marked BlueprintPure, and have the AnimGetter metadata entry set to "true". Following the instructions below, getters should appear correctly in the blueprint node
- **GetInstanceAssetPlayerTime**(int32AssetPlayerIndex) — Get the current accumulated time in seconds for an asset player node
- **SetInstanceAssetPlayerTime**(int32 AssetPlayerIndex, floattime)
- **GetNodeIndexWithTag**(FNameNodeTag)
- **GetInstanceAssetPlayerTime_BP**(int32AssetPlayerIndex) — Get the current accumulated time in seconds for an asset player node
- **SetInstanceAssetPlayerTime_BP**(int32 AssetPlayerIndex, floattime)
- **GetInstanceAssetPlayerTimeFraction**(int32AssetPlayerIndex) — Get the current accumulated time as a fraction for an asset player node
- **GetInstanceAssetPlayerTimeFromEnd**(int32AssetPlayerIndex) — Get the time in seconds from the end of an animation in an asset player node
- **GetInstanceAssetPlayerTimeFromEndFraction**(int32AssetPlayerIndex) — Get the time as a fraction of the asset length of an animation in an asset player node
- **GetInstanceMachineWeight**(int32MachineIndex) — Get the blend weight of a specified state machine
- **GetInstanceStateWeight**(int32 MachineIndex, int32StateIndex) — Get the blend weight of a specified state
- **GetInstanceCurrentStateElapsedTime**(int32MachineIndex) — Get the current elapsed time of a state within the specified state machine
- **GetInstanceTransitionCrossfadeDuration**(int32 MachineIndex, int32TransitionIndex) — Get the crossfade duration of a specified transition
- **GetInstanceTransitionTimeElapsed**(int32 MachineIndex, int32TransitionIndex) — Get the elapsed time in seconds of a specified transition
- **GetInstanceTransitionTimeElapsedFraction**(int32 MachineIndex, int32TransitionIndex) — Get the elapsed time as a fraction of the crossfade duration of a specified transition
- **GetRelevantAnimTimeRemaining**(int32 MachineIndex, int32 StateIndex, floatNullAnimDefaultValue) — Get the time remaining in seconds for the most relevant animation in the source state
- **GetRelevantAnimTimeRemainingFraction**(int32 MachineIndex, int32 StateIndex, floatNullAnimDefaultValue) — Get the time remaining as a fraction of the duration for the most relevant animation in the source state
- **GetRelevantAnimLength**(int32 MachineIndex, int32 StateIndex, floatNullAnimDefaultValue) — Get the length in seconds of the most relevant animation in the source state
- **GetRelevantAnimTime**(int32 MachineIndex, int32 StateIndex, floatNullAnimDefaultValue) — Get the current accumulated time in seconds for the most relevant animation in the source state
- **GetRelevantAnimTimeFraction**(int32 MachineIndex, int32 StateIndex, floatNullAnimDefaultValue) — Get the current accumulated time as a fraction of the length of the most relevant animation in the source state
- **GetCurveValue**(FName CurveName, boolImmediately) — Returns the value of a named curve.
- **NameGetCurrentStateName**(int32MachineIndex) — Returns the name of a currently active state in a state machine.
- **SetMorphTarget**(FName MorphTargetName, floatValue) — Sets a morph target to a certain weight.
- **ClearMorphTargets**(Clears the current morph targets.)
- **CalculateDirection**(FVector& Velocity, FRotator &BaseRotation) — Returns degree of the angle betwee velocity and Rotation forward vector The range of return will be from [-180, 180], and this can be used to feed blendspace directional value
- **LockAIResources**(bool bLockMovement, boolLockAILogic) — locks indicated AI resources of animated pawn DEPRECATED. Use LockAIResourcesWithAnimation instead
- **UnlockAIResources**(bool bUnlockMovement, boolUnlockAILogic) — unlocks indicated AI resources of animated pawn. Will unlock only animation-locked resources. DEPRECATED. Use UnlockAIResourcesWithAnimation instead
- **GetTimeToClosestMarker**(FName SyncGroup, FName MarkerName, float &OutMarkerTime)
- **HasMarkerBeenHitThisFrame**(FName SyncGroup, FNameMarkerName)
- **IsSyncGroupBetweenMarkers**(FName InSyncGroupName, FName PreviousMarker, FName NextMarker, boolbRespectMarkerOrder)
- **MarkerSyncAnimPositionGetSyncGroupPosition**(FNameInSyncGroupName)
- **TriggerAllSequenceSwitchNotify**(Trigger AnimNotifies)
- **CheckCanTriggerNotify_AnimIsolation_Outer**(FAnimNotifyEvent& InAnimNotifyEvent, UAnimNotify *InNotify)
- **CheckCanTriggerNotifyState_AnimIsolation_Outer**(FAnimNotifyEvent& InAnimNotifyEvent, UAnimNotifyState *InNotifyState)
- **CheckCanTriggerAnimNotifyFunction_AnimIsolation_Outer**(FAnimNotifyEvent &InAnimNotifyEvent)
- **ReplaceSubAnimNodeAnimClass**(FName SubInstanceSlotName, TSubclassOf < UAnimInstance > NewAnimClass, float BlendTime, boolbEnableNoWaitParallelEvalTask)
- **ReplaceSubAnimNodeAnimClass_EmptyClassDefaut**(FName SubInstanceSlotName, TSubclassOf < UAnimInstance > NewAnimClass, floatBlendTime)
- **ResetSubAnimNodeAnimClass**(FName SubInstanceSlotName, TSubclassOf < UAnimInstance > FilterAnimClass, float BlendTime, boolbEnableNoWaitParallelEvalTask)
- **ResetSubAnimNodeAnimClass_EmptyClassDefaut**(FName SubInstanceSlotName, TSubclassOf < UAnimInstance > FilterAnimClass, floatBlendTime)
- **ResetAllSubAnimNode**()
- **ClearAllSubAnimBlendTime**()
- **ResetAllSubAnimNodePosInertialization**()
- **GetSubAnimInstanceBySlot**(FNameSubInstanceSlotName)
- **IsUseSubAnimInstanceBySlot**(FNameSubInstanceSlotName)
- **SetSubAnimNodeEnableBlend**(FName SubInstanceSlotName, bool bEnable, floatNewSubAnimBlendTime)
- **AddSubAnimNodeAnimClass**(FName SubInstanceSlotName, TSubclassOf < UAnimInstance > NewAnimClass, int32 Priority, floatBlendTime) — 同槽多子动画实例
- **RemoveSubAnimNodeAnimClass**(FName SubInstanceSlotName, TSubclassOf < UAnimInstance > FilterClass, floatBlendTime)
- **ResetSubAnimNode_MultiInstanceClass**(FNameSubInstanceSlotName)
- **ResetAllSubAnimNode_MultiInstance**()
- **AddStopTickSubAnimInstance**(UAnimInstance *Instance)
- **RemoveCachedStopTickSubAnimInstance**(UAnimInstance *Instance)
- **ClearAllStopTickSubAnimInstance**()
- **OnRecycleCachedSubAnimInstances**(boolbToPersistentPool)
- **MarkBoneStateDirty**(boolInIsDirty)
- **IsBoneStateDirty**()
- **IsUseBoneStateDirtyFeature**()
- **HasSlotNode**(FNameInSlotName)
- **UpdateAnimSlotRetargetInfo**(UAnimMontage* InMontage, TMap < FName , FName > &InSlotNameRetargetInfo)
- **GetInverseRetargetIgnoreBoneList**()
- **SetFollowedAnimInstance**(UAnimInstance *InputFollowedInstance)
- **ResetFollowedAnimInstance**()
- **IsFollowing**(UAnimInstance *TargetFollowedInstance)
- **SetDelayPlay**(bool IsDelay, intInputDelayFrames)
- **GetParentAnimInstance**()
- **SetParentAnimInstance**(UAnimInstance *InParentAnimInstance)
- **GetSubAnimInstances**()
- **GetAllSubAnimInstances**()
- **SwapCachedBoneTransformMap**()
- **GetCachedBoneTransform**(FName InBoneName, FTransform& OutTransform, boolforceSync)
- **GetCachedBoneTransformByFlag**(FName InBoneName, FName InCacheFlag, FTransform& OutTransform, int32 NeedLastFrameCount, boolforceSync)
- **CompareCachedBoneTransformByFlag**(FName InBoneName0, FName InCacheFlag0, FName InBoneName1, FNameInCacheFlag1)
- **SetTriggerAnimNotify**(boolNeedTrigger)
- **FilterForceTriggerNotifyWhenMontageJumpTick**(UAnimMontage* InMontage, bool bPlayingBackwards, float CurrentTrackPos, float CurrentDeltaSeconds, TArray < FAnimNotifyEvent >& InAnimNotifies, TArray < FAnimNotifyEvent > &OutForceTriggerAnimNotifi)
- **GetLobbySeqIgnoreNotifyList**()
- **ResetNotifyQueue**(TryGetPawnOwner SavePoseSnapshot SnapshotPose GetOwningActor GetOwningComponent BlueprintShouldSkipUpdateAnimation BlueprintInitializeAnimation BlueprintUnInitializeAnimation BlueprintUpdateAnimation BlueprintPostEvaluateAnimation BlueprintBeginPlay PlaySlotAnimation PlaySlotAnimationAsDynamicMontag)

## 属性

- **is** — used to extract animation. If Mesh exists, this will be overwritten by Mesh->Skeleton DEPRECATED: No longer used. Allows this anim instance to update its native update, blend tree, montages and asset players on a worker thread. this requires certain conditions to be met: - All access of variables in

## 委托

- voidOnMontageBlendingOut(UAnimMontage*Montage, boolbInterrupted)
- Called when a montage starts blending out, whether interrupted or finished
- voidOnMontageStarted(UAnimMontage*Montage)
- Called when a montage has started
- voidOnMontageEnded(UAnimMontage*Montage, boolbInterrupted)
- Called when a montage has ended, whether interrupted or finished
- voidOnMontageRealEnded(UAnimMontage*Montage, boolbInterrupted)
- Called when a montage real ended, whether interrupted or finished
- voidOnAllMontageInstancesEnded()
- Called when all Montage instances have ended.
- OnMontageBlendingOut
- OnMontageStarted
- OnMontageEnded
- OnMontageRealEnded
- OnAllMontageInstancesEnded