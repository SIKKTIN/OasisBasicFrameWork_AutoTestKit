# AActor

Actor is the base class for an Object that can be placed or spawned in a level. Actors may contain a collection of ActorComponents, which can be used to control how actors move, how they are rendered, etc. The other main function of an Actor is the replication of properties and function calls across the network during play. @see UActorComponent

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| `F` | **StringGetToString** | `` |  |
| `void` | **SetForceOwnedMeshAlwaysRefreshBones** | `boolbAlwaysRefreshBones` |  |
| `void` | **OnRep_ReplicateMovement** | `` | Called on client when updated bReplicateMovement value is received for this actor. |
| `void` | **TearOff** | `` | Networking - Server - TearOff this actor to stop replication to clients. Will set bTearOff to true. |
| `void` | **OnRep_Role** | `` |  |
| `void` | **OnRep_RemoteRole** | `` |  |
| `void` | **OnRep_Hidden** | `` |  |
| `void` | **OnRep_TearOff** | `` |  |
| `void` | **OnRep_CanBeDamaged** | `` |  |
| `void` | **OnRep_Owner** | `` |  |
| `float` | **TickConstructComponentWithTime** | `float OneFrameConstructTimeMS, boolbCreateImmediately` |  |
| `void` | **OnRep_ScriptNetworkReplicatedPropertyWrapper** | `` |  |
| `void` | **CallSubObjectLuaOnRep** | `UObject *InObject` |  |
| `void` | **ServerSendScriptNetworkRemoteContent** | `FScriptNetworkRemoteContent &Content` |  |
| `void` | **ServerSendScriptNetworkRemoteContent_Unreliable** | `FScriptNetworkRemoteContent &Content` |  |
| `void` | **ClientSendScriptNetworkRemoteContent** | `FScriptNetworkRemoteContent &Content` |  |
| `void` | **ClientSendScriptNetworkRemoteContent_Unreliable** | `FScriptNetworkRemoteContent &Content` |  |
| `void` | **ReceiveScriptNetworkRemoteContent** | `FScriptNetworkRemoteContent &Content` |  |
| `void` | **SetReplicates** | `boolbInReplicates` | Set whether this actor replicates to network clients. When this actor is spawned on the server it will be sent to clients as well. Properties flagged for replication will update on clients if they cha |
| `void` | **SetReplicateMovement** | `boolbInReplicateMovement` | Set whether this actor's movement replicates to network clients. params bInReplicateMovement -Whether this Actor's movement replicates to clients. |
| `E` | **NetRoleGetLocalRole** | `` | Returns how much control the local machine has over this actor. |
| `E` | **NetRoleGetRemoteRole** | `` | Returns how much control the remote machine has over this actor. |
| `E` | **NetRoleGetRole** | `` |  |
| `void` | **OnRep_AttachmentReplication** | `` | Called on client when updated AttachmentReplication value is received for this actor. |
| `void` | **OnRep_Instigator** | `` | Called on clients when Instigator is replicated. |
| `void` | **AddDynamicTag** | `FNameTag` |  |
| `void` | **RemoveDynamicTag** | `FNameTag` |  |
| `void` | **EnableInput** | `APlayerController *PlayerController` | Pushes this actor on to the stack of input being handled by a PlayerController. params PlayerController -The PlayerController whose input events we want to receive. |
| `void` | **DisableInput** | `APlayerController *PlayerController` | Removes this actor from the stack of input being handled by a PlayerController. params PlayerController -The PlayerController whose input events we no longer want to receive. If null, this actor will  |
| `float` | **GetInputAxisValue** | `FNameInputAxisName` | Gets the value of the input axis if input is enabled for this actor. |
| `float` | **GetInputAxisKeyValue** | `FKeyInputAxisKey` | Gets the value of the input axis key if input is enabled for this actor. |
| `F` | **VectorGetInputVectorAxisValue** | `FKeyInputAxisKey` | Gets the value of the input axis key if input is enabled for this actor. |
| `APawn *` | **GetInstigator** | `` | Returns the instigator for this actor, or NULL if there is none. |
| `AController *` | **GetInstigatorController** | `` | Returns the instigator's controller for this actor, or NULL if there is none. |
| `F` | **TransformGetTransform** | `` | Get the actor-to-world transform. return -The transform that transforms from actor space to world space. |
| `F` | **VectorK2_GetActorLocation** | `` | Returns the location of the RootComponent of this Actor |
| `bool` | **K2_SetActorLocation** | `FVector NewLocation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Move the Actor to the specified location. return -Whether the location was successfully set (if not swept), or whether movement occurred at all (if swept). params NewLocation -The new location to move |
| `F` | **RotatorK2_GetActorRotation** | `` | Returns rotation of the RootComponent of this Actor. |
| `F` | **VectorGetActorForwardVector** | `` | Get the forward (X) vector (length 1.0) from this Actor, in world space. |
| `F` | **VectorGetActorUpVector** | `` | Get the up (Z) vector (length 1.0) from this Actor, in world space. |
| `F` | **VectorGetActorRightVector** | `` | Get the right (Y) vector (length 1.0) from this Actor, in world space. |
| `void` | **GetActorBounds** | `bool bOnlyCollidingComponents, FVector & Origin, FVector &BoxExtent` | Returns the bounding box of all components that make up this Actor (excluding ChildActorComponents). params bOnlyCollidingComponents -If true, will only return the bounding box for components with col |
| `USceneComponent *` | **K2_GetRootComponent** | `` | Returns the RootComponent of this Actor |
| `F` | **VectorGetVelocity** | `` | Returns velocity (in cms (Unreal Unitssecond) of the rootcomponent if it is either using physics or has an associated MovementComponent |
| `bool` | **K2_SetActorRotation** | `FRotator NewRotation, boolbTeleportPhysics` | Set the Actor's rotation instantly to the specified rotation. return -Whether the rotation was successfully set. params NewRotation -The new rotation for the Actor. params bTeleportPhysics -Whether we |
| `bool` | **K2_SetActorLocationAndRotation** | `FVector NewLocation, FRotator NewRotation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Move the actor instantly to the specified location and rotation. return -Whether the rotation was successfully set. params NewLocation -The new location to teleport the Actor to. params NewRotation -T |
| `void` | **SetActorScale3D** | `FVectorNewScale3D` | Set the Actor's world-space scale. |
| `F` | **VectorGetActorScale3D** | `` | Returns the Actor's world-space scale. |
| `float` | **GetDistanceTo** | `AActor *OtherActor` | Returns the distance from this Actor to OtherActor. |
| `float` | **GetSquaredDistanceTo** | `AActor *OtherActor` | Returns the squared distance from this Actor to OtherActor. |
| `float` | **GetHorizontalDistanceTo** | `AActor *OtherActor` | Returns the distance from this Actor to OtherActor, ignoring Z. |
| `float` | **GetVerticalDistanceTo** | `AActor *OtherActor` | Returns the distance from this Actor to OtherActor, ignoring XY. |
| `float` | **GetDotProductTo** | `AActor *OtherActor` | Returns the dot product from this Actor to OtherActor. Returns -2.0 on failure. Returns 0.0 for coincidental actors. |
| `float` | **GetHorizontalDotProductTo** | `AActor *OtherActor` | Returns the dot product from this Actor to OtherActor, ignoring Z. Returns -2.0 on failure. Returns 0.0 for coincidental actors. |
| `void` | **K2_AddActorWorldOffset** | `FVector DeltaLocation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta to the location of this actor in world space. params DeltaLocation -The change in location. params bSweep - Whether we sweep to the destination location, triggering overlaps along the way |
| `void` | **K2_AddActorWorldRotation** | `FRotator DeltaRotation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta to the rotation of this actor in world space. params DeltaRotation -The change in rotation. params bSweep - Whether to sweep to the target rotation (not currently supported for rotation). |
| `void` | **K2_AddActorWorldTransform** | `FTransform & DeltaTransform, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta to the transform of this actor in world space. Scale is unchanged. |
| `bool` | **K2_SetActorTransform** | `FTransform & NewTransform, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Set the Actors transform to the specified one. params NewTransform -The new transform. params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping shor |
| `void` | **K2_AddActorLocalOffset** | `FVector DeltaLocation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta to the location of this component in its local reference frame. params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the t |
| `void` | **K2_AddActorLocalRotation** | `FRotator DeltaRotation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta to the rotation of this component in its local reference frame params DeltaRotation -The change in rotation in local space. params bSweep - Whether we sweep to the destination location, t |
| `void` | **K2_AddActorLocalTransform** | `FTransform & NewTransform, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Adds a delta to the transform of this component in its local reference frame params NewTransform -The change in transform in local space. params bSweep - Whether we sweep to the destination location,  |
| `void` | **K2_SetActorRelativeLocation** | `FVector NewRelativeLocation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Set the actor's RootComponent to the specified relative location. params NewRelativeLocation -New relative location of the actor's root component params bSweep - Whether we sweep to the destination lo |
| `void` | **K2_SetActorRelativeRotation** | `FRotator NewRelativeRotation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Set the actor's RootComponent to the specified relative rotation params NewRelativeRotation -New relative rotation of the actor's root component params bSweep - Whether we sweep to the destination loc |
| `void` | **K2_SetActorRelativeTransform** | `FTransform & NewRelativeTransform, bool bSweep, FHitResult & SweepHitResult, boolbTeleport` | Set the actor's RootComponent to the specified relative transform params NewRelativeTransform -New relative transform of the actor's root component params bSweep - Whether we sweep to the destination  |
| `void` | **SetActorRelativeScale3D** | `FVectorNewRelativeScale` | Set the actor's RootComponent to the specified relative scale 3d params NewRelativeScale -New scale to set the actor's RootComponent to |
| `F` | **VectorGetActorRelativeScale3D** | `` | Return the actor's relative scale 3d |
| `void` | **SetActorHiddenInGame** | `boolbNewHidden` | Sets the actor to be hidden in the game params bNewHidden -Whether or not to hide the actor and all its components |
| `void` | **SetActorConsideredHidden** | `boolbNewHidden` |  |
| `void` | **SetActorSimulatedRelevancy** | `boolbIsRelevant` |  |
| `void` | **OnActorSimulatedRelevant** | `bool bIsRelevant, boolbConsiderHidden` | NOTE : Callback of Check Actor Relevancy in Client for ob or replay params bIsRelevant -: Whether or not relevant for replay view target params bConsiderHidden -: Whether or not to hide the actor and  |
| `void` | **SetActorEnableCollision** | `boolbNewActorEnableCollision` | Allows enablingdisabling collision for the whole actor |
| `bool` | **GetActorEnableCollision** | `` | Get current state of collision for the whole actor |
| `void` | **K2_DestroyActor** | `` | Destroy the actor |
| `bool` | **HasAuthority** | `` | Returns whether this actor has network authority |
| `UActorComponent *` | **AddComponent** | `FName TemplateName, bool bManualAttachment, FTransform & RelativeTransform, UObject *ComponentTemplateContext` | Creates a new component and assigns ownership to the Actor this is called for. Automatic attachment causes the first component created to become the root, and all subsequent components to be attached  |
| `void` | **K2_DestroyComponent** | `UActorComponent *Component` | DEPRECATED - Use Component::DestroyComponent |
| `void` | **K2_AttachRootComponentTo** | `USceneComponent * InParent, FName InSocketName, EAttachLocation :: Type AttachLocationType, boolbWeldSimulatedBodies` | Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered. params AttachLocationType -Type of |
| `void` | **K2_AttachToComponent** | `USceneComponent * Parent, FName SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule, boolbWeldSimulatedBodies` | Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not |

