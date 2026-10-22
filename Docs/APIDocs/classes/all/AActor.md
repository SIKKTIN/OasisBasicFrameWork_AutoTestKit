# AActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AActor](https://developer.gp.qq.com/api/#/searchContent/AActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AActor)

类

全文搜索

Actor is the base class for an Object that can be placed or spawned in a level. Actors may contain a collection of ActorComponents, which can be used to control how actors move, how they are rendered, etc. The other main function of an Actor is the replication of properties and function calls across the network during play. @see UActorComponent

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| F | **StringGetToString** |  |  |
| void | **SetForceOwnedMeshAlwaysRefreshBones** | boolbAlwaysRefreshBones |  |
| void | **OnRep_ReplicateMovement** |  | Called on client when updated bReplicateMovement value is received for this actor. |
| void | **TearOff** |  | Networking - Server - TearOff this actor to stop replication to clients. Will set bTearOff to true. |
| void | **OnRep_Role** |  |  |
| void | **OnRep_RemoteRole** |  |  |
| void | **OnRep_Hidden** |  |  |
| void | **OnRep_TearOff** |  |  |
| void | **OnRep_CanBeDamaged** |  |  |
| void | **OnRep_Owner** |  |  |
| float | **TickConstructComponentWithTime** | float OneFrameConstructTimeMS, boolbCreateImmediately |  |
| void | **OnRep_ScriptNetworkReplicatedPropertyWrapper** |  |  |
| void | **CallSubObjectLuaOnRep** | UObject *InObject |  |
| void | **ServerSendScriptNetworkRemoteContent** | FScriptNetworkRemoteContent &Content |  |
| void | **ServerSendScriptNetworkRemoteContent_Unreliable** | FScriptNetworkRemoteContent &Content |  |
| void | **ClientSendScriptNetworkRemoteContent** | FScriptNetworkRemoteContent &Content |  |
| void | **ClientSendScriptNetworkRemoteContent_Unreliable** | FScriptNetworkRemoteContent &Content |  |
| void | **ReceiveScriptNetworkRemoteContent** | FScriptNetworkRemoteContent &Content |  |
| void | **SetReplicates** | boolbInReplicates | Set whether this actor replicates to network clients. When this actor is spawned on the server it will be sent to clients as well. Properties flagged for replication will update on clients if they change on the server. Internally changes the RemoteRole property and handles the cases where the actor  |
| void | **SetReplicateMovement** | boolbInReplicateMovement | Set whether this actor's movement replicates to network clients. params bInReplicateMovement -Whether this Actor's movement replicates to clients. |
| E | **NetRoleGetLocalRole** |  | Returns how much control the local machine has over this actor. |
| E | **NetRoleGetRemoteRole** |  | Returns how much control the remote machine has over this actor. |
| E | **NetRoleGetRole** |  |  |
| void | **OnRep_AttachmentReplication** |  | Called on client when updated AttachmentReplication value is received for this actor. |
| void | **OnRep_Instigator** |  | Called on clients when Instigator is replicated. |
| void | **AddDynamicTag** | FNameTag |  |
| void | **RemoveDynamicTag** | FNameTag |  |
| void | **EnableInput** | APlayerController *PlayerController | Pushes this actor on to the stack of input being handled by a PlayerController. params PlayerController -The PlayerController whose input events we want to receive. |
| void | **DisableInput** | APlayerController *PlayerController | Removes this actor from the stack of input being handled by a PlayerController. params PlayerController -The PlayerController whose input events we no longer want to receive. If null, this actor will stop receiving input from all PlayerControllers. |
| float | **GetInputAxisValue** | FNameInputAxisName | Gets the value of the input axis if input is enabled for this actor. |
| float | **GetInputAxisKeyValue** | FKeyInputAxisKey | Gets the value of the input axis key if input is enabled for this actor. |
| F | **VectorGetInputVectorAxisValue** | FKeyInputAxisKey | Gets the value of the input axis key if input is enabled for this actor. |
| APawn * | **GetInstigator** |  | Returns the instigator for this actor, or NULL if there is none. |
| AController * | **GetInstigatorController** |  | Returns the instigator's controller for this actor, or NULL if there is none. |
| F | **TransformGetTransform** |  | Get the actor-to-world transform. return -The transform that transforms from actor space to world space. |
| F | **VectorK2_GetActorLocation** |  | Returns the location of the RootComponent of this Actor |
| bool | **K2_SetActorLocation** | FVector NewLocation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport | Move the Actor to the specified location. return -Whether the location was successfully set (if not swept), or whether movement occurred at all (if swept). params NewLocation -The new location to move the Actor to. params bSweep -Whether we sweep to the destination location, triggering overlaps alon |
| F | **RotatorK2_GetActorRotation** |  | Returns rotation of the RootComponent of this Actor. |
| F | **VectorGetActorForwardVector** |  | Get the forward (X) vector (length 1.0) from this Actor, in world space. |
| F | **VectorGetActorUpVector** |  | Get the up (Z) vector (length 1.0) from this Actor, in world space. |
| F | **VectorGetActorRightVector** |  | Get the right (Y) vector (length 1.0) from this Actor, in world space. |
| void | **GetActorBounds** | bool bOnlyCollidingComponents, FVector & Origin, FVector &BoxExtent | Returns the bounding box of all components that make up this Actor (excluding ChildActorComponents). params bOnlyCollidingComponents -If true, will only return the bounding box for components with collision enabled. |
| USceneComponent * | **K2_GetRootComponent** |  | Returns the RootComponent of this Actor |
| F | **VectorGetVelocity** |  | Returns velocity (in cms (Unreal Unitssecond) of the rootcomponent if it is either using physics or has an associated MovementComponent |
| bool | **K2_SetActorRotation** | FRotator NewRotation, boolbTeleportPhysics | Set the Actor's rotation instantly to the specified rotation. return -Whether the rotation was successfully set. params NewRotation -The new rotation for the Actor. params bTeleportPhysics -Whether we teleport the physics state (if physics collision is enabled for this object). |
| bool | **K2_SetActorLocationAndRotation** | FVector NewLocation, FRotator NewRotation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport | Move the actor instantly to the specified location and rotation. return -Whether the rotation was successfully set. params NewLocation -The new location to teleport the Actor to. params NewRotation -The new rotation for the Actor. params bSweep - Whether we sweep to the destination location, trigger |
| void | **SetActorScale3D** | FVectorNewScale3D | Set the Actor's world-space scale. |
| F | **VectorGetActorScale3D** |  | Returns the Actor's world-space scale. |
| float | **GetDistanceTo** | AActor *OtherActor | Returns the distance from this Actor to OtherActor. |
| float | **GetSquaredDistanceTo** | AActor *OtherActor | Returns the squared distance from this Actor to OtherActor. |
| float | **GetHorizontalDistanceTo** | AActor *OtherActor | Returns the distance from this Actor to OtherActor, ignoring Z. |
| float | **GetVerticalDistanceTo** | AActor *OtherActor | Returns the distance from this Actor to OtherActor, ignoring XY. |
| float | **GetDotProductTo** | AActor *OtherActor | Returns the dot product from this Actor to OtherActor. Returns -2.0 on failure. Returns 0.0 for coincidental actors. |
| float | **GetHorizontalDotProductTo** | AActor *OtherActor | Returns the dot product from this Actor to OtherActor, ignoring Z. Returns -2.0 on failure. Returns 0.0 for coincidental actors. |
| void | **K2_AddActorWorldOffset** | FVector DeltaLocation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport | Adds a delta to the location of this actor in world space. params DeltaLocation -The change in location. params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. params SweepHitResult -The hit result fro |
| void | **K2_AddActorWorldRotation** | FRotator DeltaRotation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport | Adds a delta to the rotation of this actor in world space. params DeltaRotation -The change in rotation. params bSweep - Whether to sweep to the target rotation (not currently supported for rotation). params SweepHitResult -The hit result from the move if swept. params bTeleport - Whether we telepor |
| void | **K2_AddActorWorldTransform** | FTransform & DeltaTransform, bool bSweep, FHitResult & SweepHitResult, boolbTeleport | Adds a delta to the transform of this actor in world space. Scale is unchanged. |
| bool | **K2_SetActorTransform** | FTransform & NewTransform, bool bSweep, FHitResult & SweepHitResult, boolbTeleport | Set the Actors transform to the specified one. params NewTransform -The new transform. params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. params bTeleport - Whether we teleport the physics state (i |
| void | **K2_AddActorLocalOffset** | FVector DeltaLocation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport | Adds a delta to the location of this component in its local reference frame. params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. params bTeleport - Whether we teleport the physics state (if physics  |
| void | **K2_AddActorLocalRotation** | FRotator DeltaRotation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport | Adds a delta to the rotation of this component in its local reference frame params DeltaRotation -The change in rotation in local space. params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. params bT |
| void | **K2_AddActorLocalTransform** | FTransform & NewTransform, bool bSweep, FHitResult & SweepHitResult, boolbTeleport | Adds a delta to the transform of this component in its local reference frame params NewTransform -The change in transform in local space. params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. params b |
| void | **K2_SetActorRelativeLocation** | FVector NewRelativeLocation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport | Set the actor's RootComponent to the specified relative location. params NewRelativeLocation -New relative location of the actor's root component params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.  |
| void | **K2_SetActorRelativeRotation** | FRotator NewRelativeRotation, bool bSweep, FHitResult & SweepHitResult, boolbTeleport | Set the actor's RootComponent to the specified relative rotation params NewRelativeRotation -New relative rotation of the actor's root component params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. p |
| void | **K2_SetActorRelativeTransform** | FTransform & NewRelativeTransform, bool bSweep, FHitResult & SweepHitResult, boolbTeleport | Set the actor's RootComponent to the specified relative transform params NewRelativeTransform -New relative transform of the actor's root component params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something |
| void | **SetActorRelativeScale3D** | FVectorNewRelativeScale | Set the actor's RootComponent to the specified relative scale 3d params NewRelativeScale -New scale to set the actor's RootComponent to |
| F | **VectorGetActorRelativeScale3D** |  | Return the actor's relative scale 3d |
| void | **SetActorHiddenInGame** | boolbNewHidden | Sets the actor to be hidden in the game params bNewHidden -Whether or not to hide the actor and all its components |
| void | **SetActorConsideredHidden** | boolbNewHidden |  |
| void | **SetActorSimulatedRelevancy** | boolbIsRelevant |  |
| void | **OnActorSimulatedRelevant** | bool bIsRelevant, boolbConsiderHidden | NOTE : Callback of Check Actor Relevancy in Client for ob or replay params bIsRelevant -: Whether or not relevant for replay view target params bConsiderHidden -: Whether or not to hide the actor and all its components |
| void | **SetActorEnableCollision** | boolbNewActorEnableCollision | Allows enablingdisabling collision for the whole actor |
| bool | **GetActorEnableCollision** |  | Get current state of collision for the whole actor |
| void | **K2_DestroyActor** |  | Destroy the actor |
| bool | **HasAuthority** |  | Returns whether this actor has network authority |
| UActorComponent * | **AddComponent** | FName TemplateName, bool bManualAttachment, FTransform & RelativeTransform, UObject *ComponentTemplateContext | Creates a new component and assigns ownership to the Actor this is called for. Automatic attachment causes the first component created to become the root, and all subsequent components to be attached under that root. When bManualAttachment is set, automatic attachment is skipped and it is up to the  |
| void | **K2_DestroyComponent** | UActorComponent *Component | DEPRECATED - Use Component::DestroyComponent |
| void | **K2_AttachRootComponentTo** | USceneComponent * InParent, FName InSocketName, EAttachLocation :: Type AttachLocationType, boolbWeldSimulatedBodies | Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered. params AttachLocationType -Type of attachment, AbsoluteWorld to keep its world position, RelativeOffset to keep the object's relative  |
| void | **K2_AttachToComponent** | USceneComponent * Parent, FName SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule, boolbWeldSimulatedBodies | Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered. params Parent - Parent to attach to. params SocketName - Optional socket to attach to on the parent. params bWeldSimulatedBodies -Whet |
| void | **K2_AttachRootComponentToActor** | AActor * InParentActor, FName InSocketName, EAttachLocation :: Type AttachLocationType, boolbWeldSimulatedBodies | Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered. params AttachLocationType -Type of attachment, AbsoluteWorld to keep its world position, RelativeOffset to keep the object's relative  |
| void | **K2_AttachToActor** | AActor * ParentActor, FName SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule, boolbWeldSimulatedBodies | Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered. params ParentActor - Actor to attach this actor's RootComponent to params SocketName - Socket name to attach to, if any params Locatio |
| void | **SnapRootComponentTo** | AActor * InParentActor, FNameInSocketName | Snap the RootComponent of this Actor to the supplied Actor's root component, optionally at a named socket. It is not valid to call this on components that are not Registered. If InSocketName == NAME_None, it will attach to origin of the InParentActor. |
| void | **DetachRootComponentFromParent** | boolbMaintainWorldPosition | Detaches the RootComponent of this Actor from any SceneComponent it is currently attached to. |
| void | **K2_DetachFromActor** | EDetachmentRule LocationRule, EDetachmentRule RotationRule, EDetachmentRuleScaleRule | Detaches the RootComponent of this Actor from any SceneComponent it is currently attached to. params LocationRule - How to handle translation when detaching. params RotationRule - How to handle rotation when detaching. params ScaleRule - How to handle scale when detaching. |
| bool | **ActorHasTag** | FNameTag | See if this actor contains the supplied tag |
| float | **GetActorTimeDilation** |  | Get CustomTimeDilation - this can be used for input control or speed control for slomo. We don't want to scale input globally because input can be used for UI, which do not care for TimeDilation. |
| void | **AddTickPrerequisiteActor** | AActor *PrerequisiteActor | Make this actor tick after PrerequisiteActor. This only applies to this actor's tick function; dependencies for owned components must be set up separately if desired. |
| void | **AddTickPrerequisiteComponent** | UActorComponent *PrerequisiteComponent | Make this actor tick after PrerequisiteComponent. This only applies to this actor's tick function; dependencies for owned components must be set up separately if desired. |
| void | **RemoveTickPrerequisiteActor** | AActor *PrerequisiteActor | Remove tick dependency on PrerequisiteActor. |
| void | **RemoveTickPrerequisiteComponent** | UActorComponent *PrerequisiteComponent | Remove tick dependency on PrerequisiteComponent. |
| bool | **GetTickableWhenPaused** |  | Gets whether this actor can tick when paused. |
| void | **SetTickableWhenPaused** | boolbTickableWhenPaused | Sets whether this actor can tick when paused. |
| UMaterialInstanceDynamic * | **MakeMIDForMaterial** | UMaterialInterface *Parent | Allocate a MID for a given parent material. |
| float | **GetGameTimeSinceCreation** |  | The number of seconds (in game time) since this Actor was created, relative to Get Game Time In Seconds. |
| void | **MakeNoise** | float Loudness, APawn * NoiseInstigator, FVector NoiseLocation, float MaxRange, FNameTag | Trigger a noise caused by a given Pawn, at a given location. Note that the NoiseInstigator Pawn MUST have a PawnNoiseEmitterComponent for the noise to be detected by a PawnSensingComponent. Senders of MakeNoise should have an Instigator if they are not pawns, or pass a NoiseInstigator. params Loudne |
| void | **ReceiveBeginPlay** |  | Event when play begins for this actor. |
| void | **ReceiveReInitForReplay** |  |  |
| void | **ReceiveFastForwardFinishedForReplay** |  |  |
| void | **ReceiveActorSimulatedRelevant** | bool bIsRelevant, boolbConsiderHidden |  |
| bool | **IsActorBeingDestroyed** |  |  |
| void | **ReceiveAnyDamage** | float Damage, UDamageType * DamageType, AController * InstigatedBy, AActor *DamageCauser | Event when this actor takes ANY damage |
| void | **ReceiveRadialDamage** | float DamageReceived, UDamageType * DamageType, FVector Origin, FHitResult & HitInfo, AController * InstigatedBy, AActor *DamageCauser | Event when this actor takes RADIAL damage |
| void | **ReceivePointDamage** | float Damage, UDamageType * DamageType, FVector HitLocation, FVector HitNormal, UPrimitiveComponent * HitComponent, FName BoneName, FVector ShotFromDirection, AController * InstigatedBy, AActor * Dama | Event when this actor takes POINT damage |
| void | **ReceiveTick** | floatDeltaSeconds | Event called every frame |
| void | **ReceiveActorBeginOverlap** | AActor *OtherActor | Event when this actor overlaps another actor, for example a player walking into a trigger. For events when objects have a blocking collision, for example a player hitting a wall, see 'Hit' events. |
| void | **ReceiveActorEndOverlap** | AActor *OtherActor | Event when an actor no longer overlaps another actor, and they have separated. |
| void | **ReceiveActorBeginCursorOver** |  | Event when this actor has the mouse moved over it with the clickable interface. |
| void | **ReceiveActorEndCursorOver** |  | Event when this actor has the mouse moved off of it with the clickable interface. |
| void | **ReceiveActorOnClicked** | FKeyButtonPressed | Event when this actor is clicked by the mouse when using the clickable interface. |
| void | **ReceiveActorOnReleased** | FKeyButtonReleased | Event when this actor is under the mouse when left mouse button is released while using the clickable interface. |
| void | **ReceiveActorOnInputTouchBegin** | ETouchIndex :: TypeFingerIndex | Event when this actor is touched when click events are enabled. |
| void | **ReceiveActorOnInputTouchEnd** | ETouchIndex :: TypeFingerIndex | Event when this actor is under the finger when untouched when click events are enabled. |
| void | **ReceiveActorOnInputTouchEnter** | ETouchIndex :: TypeFingerIndex | Event when this actor has a finger moved over it with the clickable interface. |
| void | **ReceiveActorOnInputTouchLeave** | ETouchIndex :: TypeFingerIndex | Event when this actor has a finger moved off of it with the clickable interface. |
| void | **GetOverlappingActors** | TArray < AActor * > & OverlappingActors, TSubclassOf < AActor >ClassFilter | Returns list of actors this actor is overlapping (any component overlapping any component). Does not return itself. params OverlappingActors -[out] Returned list of overlapping actors params ClassFilter - [optional] If set, only returns actors of this class or subclasses |
| void | **GetOverlappingComponents** | TArray < UPrimitiveComponent * > &OverlappingComponents | Returns list of components this actor is overlapping. |
| void | **ReceiveHit** | UPrimitiveComponent * MyComp, AActor * Other, UPrimitiveComponent * OtherComp, bool bSelfMoved, FVector HitLocation, FVector HitNormal, FVector NormalImpulse, FHitResult &Hit | Event when this actor bumps into a blocking object, or blocks another actor that bumps into it. This could happen due to things like Character movement, using Set Location with 'sweep' enabled, or physics simulation. For events when objects overlap (e.g. walking into a trigger) see the 'Overlap' eve |
| void | **SetLifeSpan** | floatInLifespan | Set the lifespan of this actor. When it expires the object will be destroyed. If requested lifespan is 0, the timer is cleared and the actor will not be destroyed. |
| float | **GetLifeSpan** |  | Get the remaining lifespan of this actor. If zero is returned the actor lives forever. |
| void | **UserConstructionScript** |  | Construction script, the place to spawn components and do other setup. |
| void | **ReceiveDestroyed** |  |  |
| void | **ReceiveEndPlay** | EEndPlayReason :: TypeEndPlayReason | Event to notify blueprints this actor is about to be deleted. |
| void | **SetActorTickEnabled** | boolbEnabled | Set this actor's tick functions to be enabled or disabled. Only has an effect if the function is registered This only modifies the tick function on actor itself params bEnabled -Whether it should be enabled or not |
| bool | **IsActorTickEnabled** |  | Returns whether this actor has tick enabled or not |
| void | **SetActorTickInterval** | floatTickInterval | Sets the tick interval of this actor's primary tick function. Will not enable a disabled tick function. Takes effect on next tick. params TickInterval -The rate at which this actor should be ticking |
| float | **GetActorTickInterval** |  | Returns the tick interval of this actor's primary tick function |
| void | **OnRep_ReplicatedMovement** |  | ReplicatedMovement struct replication event |
| void | **SetOwner** | AActor *NewOwner | Set the owner of this Actor, used primarily for network replication. params NewOwner -The Actor whom takes over ownership of this Actor |
| AActor * | **GetOwner** |  | Get the owner of this Actor, used primarily for network replication. return -Actor that owns this Actor |
| bool | **IsOverlappingActor** | AActor *Other | Check whether any component of this Actor is overlapping any component of another Actor. return -Whether any component of this Actor is overlapping any component of another Actor. params Other -The other Actor to test against |
| void | **SetNetDormancy** | ENetDormancyNewDormancy | Puts actor in dormant networking state |
| void | **FlushNetDormancy** |  | Forces dormant actor to replicate but doesn't change NetDormancy state (i.e., they will go dormant again if left dormant) |
| bool | **IsChildActor** |  | Returns whether this Actor was spawned by a child actor component |
| void | **GetAllChildActors** | TArray < AActor * > & ChildActors, boolbIncludeDescendants | Returns a list of all child actors, including children of children |
| UChildActorComponent * | **GetParentComponent** |  | If this Actor was created by a Child Actor Component returns that Child Actor Component |
| AActor * | **GetParentActor** |  | If this Actor was created by a Child Actor Component returns the Actor that owns that Child Actor Component |
| bool | **K2_TeleportTo** | FVector DestLocation, FRotatorDestRotation | Teleport this actor to a new location. If the actor doesn't fit exactly at the location specified, tries to slightly move it out of walls and such. return -true if the actor has been successfully moved, or false if it couldn't fit. params DestLocation -The target destination point params DestRotatio |
| F | **StringGetLevelName** |  | Return the ULevel name that this Actor is part of. |
| AActor * | **GetAttachParentActor** |  | Walk up the attachment chain from RootComponent until we encounter a different actor, and return it. If we are not attached to a component in a different actor, returns NULL |
| F | **NameGetAttachParentSocketName** |  | Walk up the attachment chain from RootComponent until we encounter a different actor, and return the socket name in the component. If we are not attached to a component in a different actor, returns NAME_None |
| void | **GetAttachedActors** | TArray < AActor * > &OutActors | Find all Actors which are attached directly to a component in this actor |
| void | **SetTickGroup** | ETickingGroupNewTickGroup | Sets the ticking group for this actor. params NewTickGroup -the new value to assign |
| bool | **CanBeBaseForCharacter** | APawn *Pawn | Return true if the given Pawn can be "based" on this actor (ie walk on it). params Pawn -- The pawn that wants to be based on this actor |
| UAnimNotifyStateBoneRetargetAdaptInfoObj * | **GetAnimNotifyStateBoneRetargetAdaptInfoObj** |  |  |
| UObject * | **TryGetBoneRetargetObj** | UObject *InSourceObj |  |
| UObject * | **TryGetBoneRetargetObjForNotifyState** | UObject *InTargetNotifyState |  |
| void | **InitAnimNotifyStateBoneRetargetInfo** | UObject * InTargetNotifyState, UObject *InBoneRetargetObj |  |
| void | **ClearAnimNotifyStateBoneRetargetAdaptState** | UObject *InTargetNotifyState |  |
| bool | **IsAnimNotifyStateBoneRetargetAdaptInitDone** | UObject *InTargetNotifyState |  |
| USkeletalMeshComponent * | **OverrideNotifyAttachMesh** | UObject * InTargetNotifyState, USkeletalMeshComponent * InTargetSkelMeshComp, bool HasRetarget, boolIgnoreNewFPPState | For Bone Retarget Feature End |
| void | **K2_OnBecomeViewTarget** | APlayerController *PC | Event called when this Actor becomes the view target for the given PlayerController. |
| void | **K2_OnEndViewTarget** | APlayerController *PC | Event called when this Actor is no longer the view target for the given PlayerController. |
| void | **K2_OnReset** |  | Event called when this Actor is reset to its initial state - used when restarting level without reloading. |
| bool | **WasRecentlyRendered** | floatTolerance | Returns true if this actor has been rendered "recently", with a tolerance in seconds to define what "recent" means. e.g.: If a tolerance of 0.1 is used, this function will return true only if the actor was rendered in the last 0.1 seconds of game time. return -Whether this actor was recently rendere |
| void | **ForceNetRelevant** |  | Forces this actor to be net relevant if it is not already by default |
| void | **ForceNetConsider** |  | Force actor enter consider list |
| void | **ForceNetComponentUpdate** | UActorComponent *InComponent | Force actor's component to be updated to client |
| void | **ForceNetUpdate** |  | Force actor to be updated to clients |
| void | **PrestreamTextures** | float Seconds, bool bEnableStreaming, int32CinematicTextureGroups |  |
| Calls | **PrestreamTextures** |  | params Seconds -- Number of seconds to force all mip-levels to be resident params bEnableStreaming -- Whether to start (true) or stop (false) streaming params CinematicTextureGroups -- Bitfield indicating which texture groups that use extra high-resolution mips |
| void | **SetTextureForceResidentFlag** | boolbForceMiplevelsToBeResident |  |
| Calls | **SetTextureForceResidentFlag** |  | params bForceMiplevelsToBeResident -Whether textures should be forced to be resident or not. |
| void | **GetActorEyesViewPoint** | FVector & OutLocation, FRotator &OutRotation | Returns the point of view of the actor. Note that this doesn't mean the camera, but the 'eyes' of the actor. For example, for a Pawn, this would define the eye height location, and view rotation (which is different from the pawn rotation which has a zeroed pitch component). A camera first person vie |
| UActorComponent * | **GetComponentByClass** | TSubclassOf < UActorComponent >ComponentClass | Script exposed version of FindComponentByClass |
| TArray < UActorComponent * > | **GetComponentsByClass** | TSubclassOf < UActorComponent >ComponentClass | Gets all the components that inherit from the given class. Currently returns an array of UActorComponent which must be cast to the correct type. |
| TArray < UActorComponent * > | **GetComponentsByTag** | TSubclassOf < UActorComponent > ComponentClass, FNameTag | Gets all the components that inherit from the given class with a given tag. |
| void | **SetGeneralCampID** | int32InCampID |  |
| int32 | **GetGeneralCampID** |  |  |
| F | **StringGetGeneralCampName** |  |  |
| E | **CampRelationGetGeneralCampRelationWithCampID** | int32CampID |  |
| E | **CampRelationGetGeneralCampRelationWithActor** | AActor *Actor |  |
| bool | **AllowTriggerDeformEffect** | FVector & Origin, floatEffectRange |  |
| void | **TriggerDeformEffect** | FVector & Origin, floatEffectRange |  |
| void | **DisableDeformEffect** |  |  |
| void | **MarkSubObjectDeleteDirty** | UObject *SubObject |  |
| bool | **IsHiddenEdAtStartup** |  | Simple accessor to check if the actor is hidden upon editor startup return -true if the actor is hidden upon editor startup; false if it is not |
| bool | **IsHiddenEd** |  |  |
| void | **SetIsTemporarilyHiddenInEditor** | boolbIsHidden | Sets whether or not this actor is hidden in the editor for the duration of the current editor session params bIsHidden -True if the actor is hidden |
| bool | **IsTemporarilyHiddenInEditor** | boolbIncludeParent | return -Whether or not this actor is hidden in the editor for the duration of the current editor session params bIncludeParent -- Whether to recurse up child actor hierarchy or not |
| bool | **IsEditable** |  | return -Returns true if this actor is allowed to be displayed, selected and manipulated by the editor. |
| bool | **IsSelectable** |  | return -Returns true if this actor can EVER be selected in a level in the editor. Can be overridden by specific actors to make them unselectable. GetToString SetForceOwnedMeshAlwaysRefreshBones OnRep_ReplicateMovement TearOff OnRep_Role OnRep_RemoteRole OnRep_Hidden OnRep_TearOff OnRep_CanBeDamaged  |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Primary | **Actor** | tick function, which calls TickActor(). Tick functions can be configured to control whether ticking is enabled, at what time during a frame the update occurs, and to set up tick dependencies. @see AddTickPrerequisiteActor(), AddTickPrerequisiteComponent() Allow each actor to run at a different time  |

## 委托

- voidOnTakeAnyDamage(AActor*DamagedActor, floatDamage, const class UDamageType*DamageType, AController*InstigatedBy, AActor*DamageCauser)
- Called when the actor is damaged in any way.
- voidOnTakePointDamage(AActor*DamagedActor, floatDamage, AController*InstigatedBy, FVectorHitLocation, UPrimitiveComponent*FHitComponent, FNameBoneName, FVectorShotFromDirection, const class UDamageType*DamageType, AActor*DamageCauser)
- Called when the actor is damaged by point damage.
- voidOnActorBeginOverlap(AActor*OverlappedActor, AActor*OtherActor)
- Called when another actor begins to overlap this actor, for example a player walking into a trigger.
- For events when objects have a blocking collision, for example a player hitting a wall, see 'Hit' events.
- voidOnActorEndOverlap(AActor*OverlappedActor, AActor*OtherActor)
- Called when another actor stops overlapping this actor.
- voidOnBeginCursorOver(AActor*TouchedActor)
- Called when the mouse cursor is moved over this actor if mouse over events are enabled in the player controller.
- voidOnEndCursorOver(AActor*TouchedActor)
- Called when the mouse cursor is moved off this actor if mouse over events are enabled in the player controller.
- voidOnClicked(AActor*TouchedActor, FKeyButtonPressed)
- Called when the left mouse button is clicked while the mouse is over this actor and click events are enabled in the player controller.
- voidOnReleased(AActor*TouchedActor, FKeyButtonReleased)
- Called when the left mouse button is released while the mouse is over this actor and click events are enabled in the player controller.
- voidOnInputTouchBegin(ETouchIndex::TypeFingerIndex, AActor*TouchedActor)
- Called when a touch input is received over this actor when touch events are enabled in the player controller.
- voidOnInputTouchEnd(ETouchIndex::TypeFingerIndex, AActor*TouchedActor)
- Called when a touch input is received over this component when touch events are enabled in the player controller.
- voidOnInputTouchEnter(ETouchIndex::TypeFingerIndex, AActor*TouchedActor)
- Called when a finger is moved over this actor when touch over events are enabled in the player controller.
- voidOnInputTouchLeave(ETouchIndex::TypeFingerIndex, AActor*TouchedActor)
- Called when a finger is moved off this actor when touch over events are enabled in the player controller.
- voidOnActorHit(AActor*SelfActor, AActor*OtherActor, FVectorNormalImpulse, const FHitResult&Hit)
- Called when this Actor hits (or is hit by) something solid. This could happen due to things like Character movement, using Set Location with 'sweep' enabled, or physics simulation.
- For events when objects overlap (e.g. walking into a trigger) see the 'Overlap' event.
- voidOnActorHitNew(AActor*SelfActor, AActor*OtherActor, FVectorNormalImpulse, const FHitResult&Hit)
- same as OnActorHit, but will Recivie StartPenetrating Hits
- voidOnDestroyed(AActor*DestroyedActor)
- Event triggered when the actor is destroyed.
- voidOnEndPlay(AActor*Actor, EEndPlayReason::TypeEndPlayReason)
- Event triggered when the actor is being removed from a level.
- voidOnBecomeViewTargetEvent(APlayerController*PC)
- voidOnEndViewTargetEvent(APlayerController*PC)
- voidOnEndBlendViewTargetEvent(APlayerController*PC)
- voidActorOnVaultEvent(AActor*Character, FVectorHitLocation)
- OnTakeAnyDamage
- OnTakePointDamage
- OnActorBeginOverlap
- OnActorEndOverlap
- OnBeginCursorOver
- OnEndCursorOver
- OnClicked
- OnReleased
- OnInputTouchBegin
- OnInputTouchEnd
- OnInputTouchEnter
- OnInputTouchLeave
- OnActorHit
- OnActorHitNew
- OnDestroyed
- OnEndPlay
- OnBecomeViewTargetEvent
- OnEndViewTargetEvent
- OnEndBlendViewTargetEvent
- ActorOnVaultEvent

