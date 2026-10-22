# UParticleSystemComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleSystemComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleSystemComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleSystemComponent](https://developer.gp.qq.com/api/#/searchContent/UParticleSystemComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleSystemComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleSystemComponent)

类

全文搜索

A particle emitter.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| float | **GetDuration** |  | Returns duration |
| void | **SetSystemFixedWorldBounds** | FBoxWorldBounds |  |
| void | **SetSystemFixedLocalBounds** | FBoxLocalBounds |  |
| void | **ClearSystemFixedBounds** |  | Clear any previously set fixed bounds for the system instance. |
| void | **SetWarmUp** | float WarmUpTime, floatWarmUpRate |  |
| void | **SetAutoAttachParams** | USceneComponent * Parent, FName SocketName, EAttachLocation :: TypeLocationType | DEPRECATED: Set AutoAttachParent, AutoAttachSocketName, AutoAttachLocationType to the specified parameters. Does not change bAutoManageAttachment; that must be set separately. params Parent - Component to attach to. params SocketName -Socket on Parent to attach to. params LocationType -Option for ho |
| void | **SetAutoAttachmentParameters** | USceneComponent * Parent, FName SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRuleScaleRule | Set AutoAttachParent, AutoAttachSocketName, AutoAttachLocationRule, AutoAttachRotationRule, AutoAttachScaleRule to the specified parameters. Does not change bAutoManageAttachment; that must be set separately. params Parent - Component to attach to. params SocketName -Socket on Parent to attach to. p |
| void | **SetBeamEndPoint** | int32 EmitterIndex, FVectorNewEndPoint | Set the beam end point params EmitterIndex -The index of the emitter to set it on params NewEndPoint - The value to set it to |
| void | **SetBeamSourcePoint** | int32 EmitterIndex, FVector NewSourcePoint, int32SourceIndex | Set the beam source point params EmitterIndex -The index of the emitter to set it on params NewSourcePoint -The value to set it to params SourceIndex - Which beam within the emitter to set it on |
| void | **SetBeamSourceTangent** | int32 EmitterIndex, FVector NewTangentPoint, int32SourceIndex | Set the beam source tangent params EmitterIndex -The index of the emitter to set it on params NewTangentPoint -The value to set it to params SourceIndex - Which beam within the emitter to set it on |
| void | **SetBeamSourceStrength** | int32 EmitterIndex, float NewSourceStrength, int32SourceIndex | Set the beam source strength params EmitterIndex -The index of the emitter to set it on params NewSourceStrength -The value to set it to params SourceIndex - Which beam within the emitter to set it on |
| void | **SetBeamTargetPoint** | int32 EmitterIndex, FVector NewTargetPoint, int32TargetIndex | Set the beam target point params EmitterIndex -The index of the emitter to set it on params NewTargetPoint -The value to set it to params TargetIndex - Which beam within the emitter to set it on |
| void | **SetBeamTargetTangent** | int32 EmitterIndex, FVector NewTangentPoint, int32TargetIndex | Set the beam target tangent params EmitterIndex -The index of the emitter to set it on params NewTangentPoint -The value to set it to params TargetIndex - Which beam within the emitter to set it on |
| void | **SetBeamTargetStrength** | int32 EmitterIndex, float NewTargetStrength, int32TargetIndex | Set the beam target strength params EmitterIndex -The index of the emitter to set it on params NewTargetStrength -The value to set it to params TargetIndex - Which beam within the emitter to set it on |
| bool | **GetBeamEndPoint** | int32 EmitterIndex, FVector &OutEndPoint | Get the beam end point return -true EmitterIndex is valid and End point is set - OutEndPoint is valid params EmitterIndex -The index of the emitter to get the value of |
| bool | **GetBeamSourcePoint** | int32 EmitterIndex, int32 SourceIndex, FVector &OutSourcePoint | Get the beam source point return -true EmitterIndex and SourceIndex are valid - OutSourcePoint is valid params EmitterIndex -The index of the emitter to get params SourceIndex - Which beam within the emitter to get params OutSourcePoint -Value of source point |
| bool | **GetBeamSourceTangent** | int32 EmitterIndex, int32 SourceIndex, FVector &OutTangentPoint | Get the beam source tangent return -true EmitterIndex and SourceIndex are valid - OutTangentPoint is valid params EmitterIndex -The index of the emitter to get params SourceIndex - Which beam within the emitter to get params OutTangentPoint -Value of source tangent |
| bool | **GetBeamSourceStrength** | int32 EmitterIndex, int32 SourceIndex, float &OutSourceStrength | Get the beam source strength return -true EmitterIndex and SourceIndex are valid - OutSourceStrength is valid params EmitterIndex -The index of the emitter to get params SourceIndex - Which beam within the emitter to get params OutSourceStrength -Value of source tangent |
| bool | **GetBeamTargetPoint** | int32 EmitterIndex, int32 TargetIndex, FVector &OutTargetPoint | Get the beam target point return -true EmitterIndex and TargetIndex are valid - OutTargetPoint is valid params EmitterIndex -The index of the emitter to get params TargetIndex - Which beam within the emitter to get params OutTargetPoint -Value of target point |
| bool | **GetBeamTargetTangent** | int32 EmitterIndex, int32 TargetIndex, FVector &OutTangentPoint | Get the beam target tangent return -true EmitterIndex and TargetIndex are valid - OutTangentPoint is valid params EmitterIndex -The index of the emitter to get params TargetIndex - Which beam within the emitter to get params OutTangentPoint -Value of target tangent |
| bool | **GetBeamTargetStrength** | int32 EmitterIndex, int32 TargetIndex, float &OutTargetStrength | Get the beam target strength return -true EmitterIndex and TargetIndex are valid - OutTargetStrength is valid params EmitterIndex -The index of the emitter to get params TargetIndex - Which beam within the emitter to get params OutTargetStrength -Value of target tangent |
| void | **SetEmitterEnable** | FName EmitterName, boolbNewEnableState | EnablesDisables a sub-emitter params EmitterName - The name of the sub-emitter to set it on params bNewEnableState -The value to set it to |
| void | **SetFloatParameter** | FName ParameterName, floatParam | Change a named float parameter |
| void | **SetVectorParameter** | FName ParameterName, FVectorParam | Set a named vector instance parameter on this ParticleSystemComponent. Updates the parameter if it already exists, or creates a new entry if not. |
| void | **SetColorParameter** | FName ParameterName, FLinearColorParam | Set a named color instance parameter on this ParticleSystemComponent. Updates the parameter if it already exists, or creates a new entry if not. |
| void | **SetActorParameter** | FName ParameterName, AActor *Param | Set a named actor instance parameter on this ParticleSystemComponent. Updates the parameter if it already exists, or creates a new entry if not. |
| void | **SetMaterialParameter** | FName ParameterName, UMaterialInterface *Param | Set a named material instance parameter on this ParticleSystemComponent. Updates the parameter if it already exists, or creates a new entry if not. |
| void | **SetTemplate** | UParticleSystem *NewTemplate | Change the ParticleSystem used by this ParticleSystemComponent |
| int32 | **GetNumActiveParticles** |  | Get the current number of active particles in this system |
| void | **BeginTrails** | FName InFirstSocketName, FName InSecondSocketName, ETrailWidthMode InWidthMode, floatInWidth | Begins all trail emitters in this component. params InFirstSocketName -The name of the first socket for the trail. params InSecondSocketName -The name of the second socket for the trail. params InWidthMode - How the width value is applied to the trail. params InWidth - The width of the trail. |
| void | **EndTrails** |  | Ends all trail emitters in this component. |
| void | **SetTrailSourceData** | FName InFirstSocketName, FName InSecondSocketName, ETrailWidthMode InWidthMode, floatInWidth | Sets the defining data for all trails in this component. params InFirstSocketName -The name of the first socket for the trail. params InSecondSocketName -The name of the second socket for the trail. params InWidthMode - How the width value is applied to the trail. params InWidth - The width of the t |
| void | **SetSocketName** | FNameInSocketName |  |
| void | **ManuallyTickComponent** | floatDeltaTime |  |
| void | **K2_Activate** | boolbReset |  |
| void | **K2_ActivateSystem** | boolbFlagAsJustAttached |  |
| void | **K2_Deactivate** |  |  |
| void | **K2_DeactivateSystem** |  |  |
| UMaterialInstanceDynamic * | **CreateNamedDynamicMaterialInstance** | FName InName, UMaterialInterface *SourceMaterial | Creates a Dynamic Material Instance for the specified named material override, optionally from the supplied material. |
| UMaterialInterface * | **GetNamedMaterial** | FNameInName | Returns a named material. If this named material is not found, returns NULL. |
| void | **GenerateParticleEvent** | FName InEventName, float InEmitterTime, FVector InLocation, FVector InDirection, FVectorInVelocity | Record a kismet event. params InEventName - The name of the event that fired. params InEmitterTime - The emitter time when the event fired. params InLocation - The location of the particle when the event fired. params InVelocity - The velocity of the particle when the event fired. |
| void | **SetVectorRandParameter** | FName ParameterName, FVector & Param, FVector &ParamLow | Set a named random vector instance parameter on this ParticleSystemComponent. Updates the parameter if it already exists, or creates a new entry if not. |
| void | **SetFloatRandParameter** | FName ParameterName, float Param, floatParamLow | Set a named random float instance parameter on this ParticleSystemComponent. Updates the parameter if it already exists, or creates a new entry if not. |
| void | **RewindEmitterInstances** |  | GetDuration SetSystemFixedWorldBounds SetSystemFixedLocalBounds ClearSystemFixedBounds SetWarmUp SetAutoAttachParams SetAutoAttachmentParameters SetBeamEndPoint SetBeamSourcePoint SetBeamSourceTangent SetBeamSourceStrength SetBeamTargetPoint SetBeamTargetTangent SetBeamTargetStrength GetBeamEndPoint |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **skeletal** | mesh components used with the socket location module. This is to prevent them from being garbage collected. whether to update the particle system on dedicated servers If true, this Particle System will be available for recycling after it has completed. Auto-destroyed systems cannot be recycled. Some |

## 委托

- voidOnSystemFinished(UParticleSystemComponent*PSystem)
- OnSystemFinished

