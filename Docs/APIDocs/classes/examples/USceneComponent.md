# USceneComponent

A SceneComponent has a transform and supports attachment, but has no rendering or collision capabilities. Useful as a 'dummy' component in the hierarchy to offset others.

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| `F` | **VectorGetBoundsOirgin** | `` |  |
| `F` | **VectorGetBoundsBoxExtent** | `` |  |
| `void` | **OnRep_Transform** | `` |  |
| `void` | **OnRep_AttachParent** | `` |  |
| `void` | **OnRep_AttachChildren** | `` |  |
| `void` | **OnRep_AttachSocketName** | `` |  |
| `void` | **OnRep_Visibility** | `boolOldValue` |  |
| `void` | **K2_SetRelativeLocation** | `FVector NewLocation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Set the location of the component relative to its parent params NewLocation -New location of the component relative to its parent. params bSweep - Whether we sweep to the destination location, trigger |
| `void` | **K2_SetRelativeRotation** | `FRotator NewRotation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Set the rotation of the component relative to its parent params NewRotation -New rotation of the component relative to its parent params bSweep - Whether we sweep to the destination (currently not sup |
| `void` | **K2_SetRelativeTransform** | `FTransform & NewTransform, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Set the transform of the component relative to its parent params NewTransform -New transform of the component relative to its parent. params bSweep - Whether we sweep to the destination (currently not |
| `F` | **TransformGetRelativeTransform** | `` | Returns the transform of the component relative to its parent |
| `void` | **ResetRelativeTransform** | `` | Reset the transform of the component relative to its parent. Sets relative location to zero, relative rotation to no rotation, and Scale to 1. |
| `void` | **SetRelativeScale3D** | `FVectorNewScale3D` | Set the non-uniform scale of the component relative to its parent |
| `void` | **K2_AddRelativeLocation** | `FVector DeltaLocation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta to the translation of the component relative to its parent params DeltaLocation -Change in location of the component relative to its parent params bSweep - Whether we sweep to the destina |
| `void` | **K2_AddRelativeRotation** | `FRotator DeltaRotation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta the rotation of the component relative to its parent params DeltaRotation -Change in rotation of the component relative to is parent. params bSweep - Whether we sweep to the destination ( |
| `void` | **K2_AddLocalOffset** | `FVector DeltaLocation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta to the location of the component in its local reference frame params DeltaLocation -Change in location of the component in its local reference frame. params bSweep - Whether we sweep to t |
| `void` | **K2_AddLocalRotation** | `FRotator DeltaRotation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta to the rotation of the component in its local reference frame params DeltaRotation -Change in rotation of the component in its local reference frame. params bSweep - Whether we sweep to t |
| `void` | **K2_AddLocalTransform** | `FTransform & DeltaTransform, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta to the transform of the component in its local reference frame. Scale is unchanged. params DeltaTransform -Change in transform of the component in its local reference frame. Scale is unch |
| `void` | **K2_SetWorldLocation** | `FVector NewLocation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Put this component at the specified location in world space. Updates relative location to achieve the final world location. params NewLocation -New location in world space for the component. params bS |
| `void` | **K2_SetWorldRotation** | `FRotator NewRotation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Put this component at the specified rotation in world space. Updates relative rotation to achieve the final world rotation. params NewRotation -New rotation in world space for the component. params bS |
| `void` | **SetWorldScale3D** | `FVectorNewScale` | Set the relative scale of the component to put it at the supplied scale in world space. params NewScale -New scale in world space for this component. |
| `void` | **K2_SetWorldTransform** | `FTransform & NewTransform, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Set the transform of the component in world space. params NewTransform -New transform in world space for the component. params bSweep - Whether we sweep to the destination location, triggering overlap |
| `void` | **K2_AddWorldOffset** | `FVector DeltaLocation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta to the location of the component in world space. params DeltaLocation -Change in location in world space for the component. params bSweep - Whether we sweep to the destination location, t |
| `void` | **K2_AddWorldRotation** | `FRotator DeltaRotation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta to the rotation of the component in world space. params DeltaRotation -Change in rotation in world space for the component. params bSweep - Whether we sweep to the destination (currently  |
| `void` | **K2_AddWorldTransform** | `FTransform & DeltaTransform, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta to the transform of the component in world space. Scale is unchanged. params DeltaTransform -Change in transform in world space for the component. Scale is unchanged. params bSweep - Whet |
| `F` | **VectorK2_GetComponentLocation** | `` | Return location of the component, in world space |
| `F` | **RotatorK2_GetComponentRotation** | `` | Returns rotation of the component, in world space. |
| `F` | **VectorK2_GetComponentScale** | `` | Returns scale of the component, in world space. |
| `F` | **TransformK2_GetComponentToWorld** | `` | Get the current component-to-world transform for this component |
| `F` | **VectorGetForwardVector** | `` | Get the forward (X) unit direction vector from this component, in world space. |
| `F` | **VectorGetUpVector** | `` | Get the up (Z) unit direction vector from this component, in world space. |
| `F` | **VectorGetRightVector** | `` | Get the right (Y) unit direction vector from this component, in world space. |
| `bool` | **IsSimulatingPhysics** | `FNameBoneName` | Returns whether the specified body is currently using physics simulation |
| `bool` | **IsAnySimulatingPhysics** | `` | Returns whether the specified body is currently using physics simulation |
| `USceneComponent *` | **GetAttachParent** | `` | Get the SceneComponent we are attached to. |
| `F` | **NameGetAttachSocketName** | `` | Get the socket we are attached to. |
| `void` | **GetParentComponents** | `TArray < USceneComponent * > &Parents` | Gets all parent components up to and including the root component |
| `int32` | **GetNumChildrenComponents** | `` | Gets the number of attached children components |
| `USceneComponent *` | **GetChildComponent** | `int32ChildIndex` | Gets the attached child component at the specified location |
| `void` | **GetChildrenComponents** | `bool bIncludeAllDescendants, TArray < USceneComponent * > &Children` | Gets all the attached child components params bIncludeAllDescendants -Whether to include all descendants in the list of children (i.e. grandchildren, great grandchildren, etc.) params Children -The li |
| `bool` | **K2_AttachTo** | `USceneComponent * InParent, FName InSocketName, EAttachLocation :: Type AttachType, boolbWeldSimulatedBodies` | Attach this component to another scene component, optionally at a named socket. It is valid to call this on components whether or not they have been Registered. return -True if attachment is successfu |
| `bool` | **K2_AttachToComponent** | `USceneComponent * Parent, FName SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule, boolbWeldSimulatedBodies` | Attach this component to another scene component, optionally at a named socket. It is valid to call this on components whether or not they have been Registered. return -True if attachment is successfu |
| `bool` | **SnapTo** | `USceneComponent * InParent, FNameInSocketName` |  |
| `Zeroes out the relative transform of the component, and calls` | **AttachTo** | `` |  |
| `void` | **DetachFromParent** | `bool bMaintainWorldPosition, boolbCallModify` | Detach this component from whatever it is attached to. Automatically unwelds components that are welded together (See WeldTo) params bMaintainWorldPosition -If true, update the relative location of th |
| `- If true, call` | **Modify** | `` |  |
| `void` | **K2_DetachFromComponent** | `EDetachmentRule LocationRule, EDetachmentRule RotationRule, EDetachmentRule ScaleRule, boolbCallModify` | Detach this component from whatever it is attached to. Automatically unwelds components that are welded together (See WeldTo) params LocationRule - How to handle translations when detaching. params Ro |
| `- If true, call` | **Modify** | `` |  |
| `TArray < FName >` | **GetAllSocketNames** | `` | Gets the names of all the sockets on the component. return -Get the names of all the sockets on the component. |
| `F` | **TransformGetSocketTransform** | `FName InSocketName, ERelativeTransformSpaceTransformSpace` | Get world-space socket transform. return -Socket transform in world space if socket if found. Otherwise it will return component's transform in world space. params InSocketName -Name of the socket or  |
| `F` | **VectorGetSocketLocation** | `FNameInSocketName` | Get world-space socket or bone location. return -Socket transform in world space if socket if found. Otherwise it will return component's transform in world space. params InSocketName -Name of the soc |
| `F` | **RotatorGetSocketRotation** | `FNameInSocketName` | Get world-space socket or bone FRotator rotation. return -Socket transform in world space if socket if found. Otherwise it will return component's transform in world space. params InSocketName -Name o |
| `F` | **QuatGetSocketQuaternion** | `FNameInSocketName` | Get world-space socket or bone FQuat rotation. return -Socket transform in world space if socket if found. Otherwise it will return component's transform in world space. params InSocketName -Name of t |
| `F` | **VectorGetSocketScale** | `FNameInSocketName` | Get world-space socket or bone scale. return -Socket scale in world space if socket if found. Otherwise it will return component's scale in world space. params InSocketName -Name of the socket or the  |
| `bool` | **DoesSocketExist** | `FNameInSocketName` | r |

