# Actor 类  (前缀: A)
_共 81 个类_
---
## AActivityBaseActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AActivityBaseActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAActivityBaseActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AActivityBaseActor](https://developer.gp.qq.com/api/#/searchContent/AActivityBaseActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAActivityBaseActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AActivityBaseActor)

类

全文搜索

可实现可交互物基础功能的Actor

---


## 函数

- **NameGetCurrentStateName**(生效范围：SC 获取当前状态名 return -当前状态名)
- **GetCurrentStateTime**(生效范围：SC 获取进入当前状态后所经过的时间 return -当前状态经过的时间)
- **JumpToState**(FName StateName, float EnterTime, boolbPause) — 生效范围：S 跳转到指定状态 params StateName -要跳转的状态名 params EnterTime -进入状态的时间 params bPause -是否暂停
- **Pause**(生效范围：S 暂停当前状态的sequence的播放)
- **Resume**(生效范围：S 恢复当前状态的sequence的播放)
- **CheckCurrentStateIsEntry**(生效范围：SC 检查当前状态是否为状态机的入口状态 return -是否为入口状态)
- **GetCurrentSequnceIsEnd**(生效范围：SC 检查当前sequence是否播放完毕 return -是否播放完毕 事件)
- **OnEnterState_BP**(FNameStateName) — 进入某个状态触发 params StateName -状态名
- **OnPlayerAttachedToThisActor_BP**(ASTExtraCharacter *Player) — 当角色Attach到这个Actor时触发 params Player -Attach的角色
- **OnPlayerBeforeAttachedToThisActor_BP**(ASTExtraCharacter *Player) — 当角色Attach到这个Actor前触发 params Player -Attach的角色
- **OnPlayerDettachedToThisActor_BP**(ASTExtraCharacter *Player) — 当角色从Actor上Detach时触发 params Player -Detach的角色 GetCurrentStateName GetCurrentStateTime JumpToState Pause Resume CheckCurrentStateIsEntry GetCurrentSequnceIsEnd 事件 OnEnterState_BP OnPlayerAttachedToThisActor_BP OnPlayerBeforeAttachedToThisActor_BP OnPlayerDettachedToThisActor_BP

## 属性

- **LeaveState** — 离开的状态 名 @param EnterState 进入的状态名 OnActivityActorChangeState

## 委托

- voidOnPlayerAttachedDelegate(ASTExtraCharacter*Player)
- 角色Attach事件委托
- params Player
- -Attach的角色
- voidOnPlayerDettachedDelegate(ASTExtraCharacter*Player)
- 角色Detach事件委托
- params Player
- -Detach的角色
- OnPlayerAttachedDelegate
- OnPlayerDettachedDelegate

## AActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AActor](https://developer.gp.qq.com/api/#/searchContent/AActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AActor)

类

全文搜索

Actor is the base class for an Object that can be placed or spawned in a level. Actors may contain a collection of ActorComponents, which can be used to control how actors move, how they are rendered, etc. The other main function of an Actor is the replication of properties and function calls across the network during play. @see UActorComponent

---


## 函数

- **StringGetToString**()
- **SetForceOwnedMeshAlwaysRefreshBones**(boolbAlwaysRefreshBones)
- **OnRep_ReplicateMovement**(Called on client when updated bReplicateMovement value is received for this actor.)
- **TearOff**(Networking - Server - TearOff this actor to stop replication to clients. Will set bTearOff to true.)
- **OnRep_Role**()
- **OnRep_RemoteRole**()
- **OnRep_Hidden**()
- **OnRep_TearOff**()
- **OnRep_CanBeDamaged**()
- **OnRep_Owner**()
- **TickConstructComponentWithTime**(float OneFrameConstructTimeMS, boolbCreateImmediately)
- **OnRep_ScriptNetworkReplicatedPropertyWrapper**()
- **CallSubObjectLuaOnRep**(UObject *InObject)
- **ServerSendScriptNetworkRemoteContent**(FScriptNetworkRemoteContent &Content)
- **ServerSendScriptNetworkRemoteContent_Unreliable**(FScriptNetworkRemoteContent &Content)
- **ClientSendScriptNetworkRemoteContent**(FScriptNetworkRemoteContent &Content)
- **ClientSendScriptNetworkRemoteContent_Unreliable**(FScriptNetworkRemoteContent &Content)
- **ReceiveScriptNetworkRemoteContent**(FScriptNetworkRemoteContent &Content)
- **SetReplicates**(boolbInReplicates) — Set whether this actor replicates to network clients. When this actor is spawned on the server it will be sent to clients as well. Properties flagged for replication will update on clients if they change on the server. Internally changes the RemoteRole property and handles the cases where the actor
- **SetReplicateMovement**(boolbInReplicateMovement) — Set whether this actor's movement replicates to network clients. params bInReplicateMovement -Whether this Actor's movement replicates to clients.
- **NetRoleGetLocalRole**(Returns how much control the local machine has over this actor.)
- **NetRoleGetRemoteRole**(Returns how much control the remote machine has over this actor.)
- **NetRoleGetRole**()
- **OnRep_AttachmentReplication**(Called on client when updated AttachmentReplication value is received for this actor.)
- **OnRep_Instigator**(Called on clients when Instigator is replicated.)
- **AddDynamicTag**(FNameTag)
- **RemoveDynamicTag**(FNameTag)
- **EnableInput**(APlayerController *PlayerController) — Pushes this actor on to the stack of input being handled by a PlayerController. params PlayerController -The PlayerController whose input events we want to receive.
- **DisableInput**(APlayerController *PlayerController) — Removes this actor from the stack of input being handled by a PlayerController. params PlayerController -The PlayerController whose input events we no longer want to receive. If null, this actor will stop receiving input from all PlayerControllers.
- **GetInputAxisValue**(FNameInputAxisName) — Gets the value of the input axis if input is enabled for this actor.
- **GetInputAxisKeyValue**(FKeyInputAxisKey) — Gets the value of the input axis key if input is enabled for this actor.
- **VectorGetInputVectorAxisValue**(FKeyInputAxisKey) — Gets the value of the input axis key if input is enabled for this actor.
- **GetInstigator**(Returns the instigator for this actor, or NULL if there is none.)
- **GetInstigatorController**(Returns the instigator's controller for this actor, or NULL if there is none.)
- **TransformGetTransform**(Get the actor-to-world transform. return -The transform that transforms from actor space to world space.)
- **VectorK2_GetActorLocation**(Returns the location of the RootComponent of this Actor)
- **K2_SetActorLocation**(FVector NewLocation, bool bSweep, FHitResult& SweepHitResult, boolbTeleport) — Move the Actor to the specified location. return -Whether the location was successfully set (if not swept), or whether movement occurred at all (if swept). params NewLocation -The new location to move the Actor to. params bSweep -Whether we sweep to the destination location, triggering overlaps alon
- **RotatorK2_GetActorRotation**(Returns rotation of the RootComponent of this Actor.)
- **VectorGetActorForwardVector**(Get the forward (X) vector (length 1.0) from this Actor, in world space.)
- **VectorGetActorUpVector**(Get the up (Z) vector (length 1.0) from this Actor, in world space.)
- **VectorGetActorRightVector**(Get the right (Y) vector (length 1.0) from this Actor, in world space.)
- **GetActorBounds**(bool bOnlyCollidingComponents, FVector& Origin, FVector &BoxExtent) — Returns the bounding box of all components that make up this Actor (excluding ChildActorComponents). params bOnlyCollidingComponents -If true, will only return the bounding box for components with collision enabled.
- **K2_GetRootComponent**(Returns the RootComponent of this Actor)
- **VectorGetVelocity**(Returns velocity (in cms (Unreal Unitssecond) of the rootcomponent if it is either using physics or has an associated MovementComponent)
- **K2_SetActorRotation**(FRotator NewRotation, boolbTeleportPhysics) — Set the Actor's rotation instantly to the specified rotation. return -Whether the rotation was successfully set. params NewRotation -The new rotation for the Actor. params bTeleportPhysics -Whether we teleport the physics state (if physics collision is enabled for this object).
- **K2_SetActorLocationAndRotation**(FVector NewLocation, FRotator NewRotation, bool bSweep, FHitResult& SweepHitResult, boolbTeleport) — Move the actor instantly to the specified location and rotation. return -Whether the rotation was successfully set. params NewLocation -The new location to teleport the Actor to. params NewRotation -The new rotation for the Actor. params bSweep - Whether we sweep to the destination location, trigger
- **SetActorScale3D**(FVectorNewScale3D) — Set the Actor's world-space scale.
- **VectorGetActorScale3D**(Returns the Actor's world-space scale.)
- **GetDistanceTo**(AActor *OtherActor) — Returns the distance from this Actor to OtherActor.
- **GetSquaredDistanceTo**(AActor *OtherActor) — Returns the squared distance from this Actor to OtherActor.
- **GetHorizontalDistanceTo**(AActor *OtherActor) — Returns the distance from this Actor to OtherActor, ignoring Z.
- **GetVerticalDistanceTo**(AActor *OtherActor) — Returns the distance from this Actor to OtherActor, ignoring XY.
- **GetDotProductTo**(AActor *OtherActor) — Returns the dot product from this Actor to OtherActor. Returns -2.0 on failure. Returns 0.0 for coincidental actors.
- **GetHorizontalDotProductTo**(AActor *OtherActor) — Returns the dot product from this Actor to OtherActor, ignoring Z. Returns -2.0 on failure. Returns 0.0 for coincidental actors.
- **K2_AddActorWorldOffset**(FVector DeltaLocation, bool bSweep, FHitResult& SweepHitResult, boolbTeleport) — Adds a delta to the location of this actor in world space. params DeltaLocation -The change in location. params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. params SweepHitResult -The hit result fro
- **K2_AddActorWorldRotation**(FRotator DeltaRotation, bool bSweep, FHitResult& SweepHitResult, boolbTeleport) — Adds a delta to the rotation of this actor in world space. params DeltaRotation -The change in rotation. params bSweep - Whether to sweep to the target rotation (not currently supported for rotation). params SweepHitResult -The hit result from the move if swept. params bTeleport - Whether we telepor
- **K2_AddActorWorldTransform**(FTransform& DeltaTransform, bool bSweep, FHitResult& SweepHitResult, boolbTeleport) — Adds a delta to the transform of this actor in world space. Scale is unchanged.
- **K2_SetActorTransform**(FTransform& NewTransform, bool bSweep, FHitResult& SweepHitResult, boolbTeleport) — Set the Actors transform to the specified one. params NewTransform -The new transform. params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. params bTeleport - Whether we teleport the physics state (i
- **K2_AddActorLocalOffset**(FVector DeltaLocation, bool bSweep, FHitResult& SweepHitResult, boolbTeleport) — Adds a delta to the location of this component in its local reference frame. params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. params bTeleport - Whether we teleport the physics state (if physics
- **K2_AddActorLocalRotation**(FRotator DeltaRotation, bool bSweep, FHitResult& SweepHitResult, boolbTeleport) — Adds a delta to the rotation of this component in its local reference frame params DeltaRotation -The change in rotation in local space. params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. params bT
- **K2_AddActorLocalTransform**(FTransform& NewTransform, bool bSweep, FHitResult& SweepHitResult, boolbTeleport) — Adds a delta to the transform of this component in its local reference frame params NewTransform -The change in transform in local space. params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. params b
- **K2_SetActorRelativeLocation**(FVector NewRelativeLocation, bool bSweep, FHitResult& SweepHitResult, boolbTeleport) — Set the actor's RootComponent to the specified relative location. params NewRelativeLocation -New relative location of the actor's root component params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something.
- **K2_SetActorRelativeRotation**(FRotator NewRelativeRotation, bool bSweep, FHitResult& SweepHitResult, boolbTeleport) — Set the actor's RootComponent to the specified relative rotation params NewRelativeRotation -New relative rotation of the actor's root component params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something. p
- **K2_SetActorRelativeTransform**(FTransform& NewRelativeTransform, bool bSweep, FHitResult& SweepHitResult, boolbTeleport) — Set the actor's RootComponent to the specified relative transform params NewRelativeTransform -New relative transform of the actor's root component params bSweep - Whether we sweep to the destination location, triggering overlaps along the way and stopping short of the target if blocked by something
- **SetActorRelativeScale3D**(FVectorNewRelativeScale) — Set the actor's RootComponent to the specified relative scale 3d params NewRelativeScale -New scale to set the actor's RootComponent to
- **VectorGetActorRelativeScale3D**(Return the actor's relative scale 3d)
- **SetActorHiddenInGame**(boolbNewHidden) — Sets the actor to be hidden in the game params bNewHidden -Whether or not to hide the actor and all its components
- **SetActorConsideredHidden**(boolbNewHidden)
- **SetActorSimulatedRelevancy**(boolbIsRelevant)
- **OnActorSimulatedRelevant**(bool bIsRelevant, boolbConsiderHidden) — NOTE : Callback of Check Actor Relevancy in Client for ob or replay params bIsRelevant -: Whether or not relevant for replay view target params bConsiderHidden -: Whether or not to hide the actor and all its components
- **SetActorEnableCollision**(boolbNewActorEnableCollision) — Allows enablingdisabling collision for the whole actor
- **GetActorEnableCollision**(Get current state of collision for the whole actor)
- **K2_DestroyActor**(Destroy the actor)
- **HasAuthority**(Returns whether this actor has network authority)
- **AddComponent**(FName TemplateName, bool bManualAttachment, FTransform& RelativeTransform, UObject *ComponentTemplateContext) — Creates a new component and assigns ownership to the Actor this is called for. Automatic attachment causes the first component created to become the root, and all subsequent components to be attached under that root. When bManualAttachment is set, automatic attachment is skipped and it is up to the
- **K2_DestroyComponent**(UActorComponent *Component) — DEPRECATED - Use Component::DestroyComponent
- **K2_AttachRootComponentTo**(USceneComponent* InParent, FName InSocketName, EAttachLocation :: Type AttachLocationType, boolbWeldSimulatedBodies) — Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered. params AttachLocationType -Type of attachment, AbsoluteWorld to keep its world position, RelativeOffset to keep the object's relative
- **K2_AttachToComponent**(USceneComponent* Parent, FName SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule, boolbWeldSimulatedBodies) — Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered. params Parent - Parent to attach to. params SocketName - Optional socket to attach to on the parent. params bWeldSimulatedBodies -Whet
- **K2_AttachRootComponentToActor**(AActor* InParentActor, FName InSocketName, EAttachLocation :: Type AttachLocationType, boolbWeldSimulatedBodies) — Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered. params AttachLocationType -Type of attachment, AbsoluteWorld to keep its world position, RelativeOffset to keep the object's relative
- **K2_AttachToActor**(AActor* ParentActor, FName SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRule ScaleRule, boolbWeldSimulatedBodies) — Attaches the RootComponent of this Actor to the supplied component, optionally at a named socket. It is not valid to call this on components that are not Registered. params ParentActor - Actor to attach this actor's RootComponent to params SocketName - Socket name to attach to, if any params Locatio
- **SnapRootComponentTo**(AActor* InParentActor, FNameInSocketName) — Snap the RootComponent of this Actor to the supplied Actor's root component, optionally at a named socket. It is not valid to call this on components that are not Registered. If InSocketName == NAME_None, it will attach to origin of the InParentActor.
- **DetachRootComponentFromParent**(boolbMaintainWorldPosition) — Detaches the RootComponent of this Actor from any SceneComponent it is currently attached to.
- **K2_DetachFromActor**(EDetachmentRule LocationRule, EDetachmentRule RotationRule, EDetachmentRuleScaleRule) — Detaches the RootComponent of this Actor from any SceneComponent it is currently attached to. params LocationRule - How to handle translation when detaching. params RotationRule - How to handle rotation when detaching. params ScaleRule - How to handle scale when detaching.
- **ActorHasTag**(FNameTag) — See if this actor contains the supplied tag
- **GetActorTimeDilation**(Get CustomTimeDilation - this can be used for input control or speed control for slomo. We don't want to scale input globally because input can be used for UI, which do not care for TimeDilation.)
- **AddTickPrerequisiteActor**(AActor *PrerequisiteActor) — Make this actor tick after PrerequisiteActor. This only applies to this actor's tick function; dependencies for owned components must be set up separately if desired.
- **AddTickPrerequisiteComponent**(UActorComponent *PrerequisiteComponent) — Make this actor tick after PrerequisiteComponent. This only applies to this actor's tick function; dependencies for owned components must be set up separately if desired.
- **RemoveTickPrerequisiteActor**(AActor *PrerequisiteActor) — Remove tick dependency on PrerequisiteActor.
- **RemoveTickPrerequisiteComponent**(UActorComponent *PrerequisiteComponent) — Remove tick dependency on PrerequisiteComponent.
- **GetTickableWhenPaused**(Gets whether this actor can tick when paused.)
- **SetTickableWhenPaused**(boolbTickableWhenPaused) — Sets whether this actor can tick when paused.
- **MakeMIDForMaterial**(UMaterialInterface *Parent) — Allocate a MID for a given parent material.
- **GetGameTimeSinceCreation**(The number of seconds (in game time) since this Actor was created, relative to Get Game Time In Seconds.)
- **MakeNoise**(float Loudness, APawn* NoiseInstigator, FVector NoiseLocation, float MaxRange, FNameTag) — Trigger a noise caused by a given Pawn, at a given location. Note that the NoiseInstigator Pawn MUST have a PawnNoiseEmitterComponent for the noise to be detected by a PawnSensingComponent. Senders of MakeNoise should have an Instigator if they are not pawns, or pass a NoiseInstigator. params Loudne
- **ReceiveBeginPlay**(Event when play begins for this actor.)
- **ReceiveReInitForReplay**()
- **ReceiveFastForwardFinishedForReplay**()
- **ReceiveActorSimulatedRelevant**(bool bIsRelevant, boolbConsiderHidden)
- **IsActorBeingDestroyed**()
- **ReceiveAnyDamage**(float Damage, UDamageType* DamageType, AController* InstigatedBy, AActor *DamageCauser) — Event when this actor takes ANY damage
- **ReceiveRadialDamage**(float DamageReceived, UDamageType* DamageType, FVector Origin, FHitResult& HitInfo, AController* InstigatedBy, AActor *DamageCauser) — Event when this actor takes RADIAL damage
- **ReceivePointDamage**(float Damage, UDamageType* DamageType, FVector HitLocation, FVector HitNormal, UPrimitiveComponent* HitComponent, FName BoneName, FVector ShotFromDirection, AController* InstigatedBy, AActor* Dama) — Event when this actor takes POINT damage
- **ReceiveTick**(floatDeltaSeconds) — Event called every frame
- **ReceiveActorBeginOverlap**(AActor *OtherActor) — Event when this actor overlaps another actor, for example a player walking into a trigger. For events when objects have a blocking collision, for example a player hitting a wall, see 'Hit' events.
- **ReceiveActorEndOverlap**(AActor *OtherActor) — Event when an actor no longer overlaps another actor, and they have separated.
- **ReceiveActorBeginCursorOver**(Event when this actor has the mouse moved over it with the clickable interface.)
- **ReceiveActorEndCursorOver**(Event when this actor has the mouse moved off of it with the clickable interface.)
- **ReceiveActorOnClicked**(FKeyButtonPressed) — Event when this actor is clicked by the mouse when using the clickable interface.
- **ReceiveActorOnReleased**(FKeyButtonReleased) — Event when this actor is under the mouse when left mouse button is released while using the clickable interface.
- **ReceiveActorOnInputTouchBegin**(ETouchIndex :: TypeFingerIndex) — Event when this actor is touched when click events are enabled.
- **ReceiveActorOnInputTouchEnd**(ETouchIndex :: TypeFingerIndex) — Event when this actor is under the finger when untouched when click events are enabled.
- **ReceiveActorOnInputTouchEnter**(ETouchIndex :: TypeFingerIndex) — Event when this actor has a finger moved over it with the clickable interface.
- **ReceiveActorOnInputTouchLeave**(ETouchIndex :: TypeFingerIndex) — Event when this actor has a finger moved off of it with the clickable interface.
- **GetOverlappingActors**(TArray < AActor* >& OverlappingActors, TSubclassOf < AActor >ClassFilter) — Returns list of actors this actor is overlapping (any component overlapping any component). Does not return itself. params OverlappingActors -[out] Returned list of overlapping actors params ClassFilter - [optional] If set, only returns actors of this class or subclasses
- **GetOverlappingComponents**(TArray < UPrimitiveComponent* > &OverlappingComponents) — Returns list of components this actor is overlapping.
- **ReceiveHit**(UPrimitiveComponent* MyComp, AActor* Other, UPrimitiveComponent* OtherComp, bool bSelfMoved, FVector HitLocation, FVector HitNormal, FVector NormalImpulse, FHitResult &Hit) — Event when this actor bumps into a blocking object, or blocks another actor that bumps into it. This could happen due to things like Character movement, using Set Location with 'sweep' enabled, or physics simulation. For events when objects overlap (e.g. walking into a trigger) see the 'Overlap' eve
- **SetLifeSpan**(floatInLifespan) — Set the lifespan of this actor. When it expires the object will be destroyed. If requested lifespan is 0, the timer is cleared and the actor will not be destroyed.
- **GetLifeSpan**(Get the remaining lifespan of this actor. If zero is returned the actor lives forever.)
- **UserConstructionScript**(Construction script, the place to spawn components and do other setup.)
- **ReceiveDestroyed**()
- **ReceiveEndPlay**(EEndPlayReason :: TypeEndPlayReason) — Event to notify blueprints this actor is about to be deleted.
- **SetActorTickEnabled**(boolbEnabled) — Set this actor's tick functions to be enabled or disabled. Only has an effect if the function is registered This only modifies the tick function on actor itself params bEnabled -Whether it should be enabled or not
- **IsActorTickEnabled**(Returns whether this actor has tick enabled or not)
- **SetActorTickInterval**(floatTickInterval) — Sets the tick interval of this actor's primary tick function. Will not enable a disabled tick function. Takes effect on next tick. params TickInterval -The rate at which this actor should be ticking
- **GetActorTickInterval**(Returns the tick interval of this actor's primary tick function)
- **OnRep_ReplicatedMovement**(ReplicatedMovement struct replication event)
- **SetOwner**(AActor *NewOwner) — Set the owner of this Actor, used primarily for network replication. params NewOwner -The Actor whom takes over ownership of this Actor
- **GetOwner**(Get the owner of this Actor, used primarily for network replication. return -Actor that owns this Actor)
- **IsOverlappingActor**(AActor *Other) — Check whether any component of this Actor is overlapping any component of another Actor. return -Whether any component of this Actor is overlapping any component of another Actor. params Other -The other Actor to test against
- **SetNetDormancy**(ENetDormancyNewDormancy) — Puts actor in dormant networking state
- **FlushNetDormancy**(Forces dormant actor to replicate but doesn't change NetDormancy state (i.e., they will go dormant again if left dormant))
- **IsChildActor**(Returns whether this Actor was spawned by a child actor component)
- **GetAllChildActors**(TArray < AActor* >& ChildActors, boolbIncludeDescendants) — Returns a list of all child actors, including children of children
- **GetParentComponent**(If this Actor was created by a Child Actor Component returns that Child Actor Component)
- **GetParentActor**(If this Actor was created by a Child Actor Component returns the Actor that owns that Child Actor Component)
- **K2_TeleportTo**(FVector DestLocation, FRotatorDestRotation) — Teleport this actor to a new location. If the actor doesn't fit exactly at the location specified, tries to slightly move it out of walls and such. return -true if the actor has been successfully moved, or false if it couldn't fit. params DestLocation -The target destination point params DestRotatio
- **StringGetLevelName**(Return the ULevel name that this Actor is part of.)
- **GetAttachParentActor**(Walk up the attachment chain from RootComponent until we encounter a different actor, and return it. If we are not attached to a component in a different actor, returns NULL)
- **NameGetAttachParentSocketName**(Walk up the attachment chain from RootComponent until we encounter a different actor, and return the socket name in the component. If we are not attached to a component in a different actor, returns NAME_None)
- **GetAttachedActors**(TArray < AActor* > &OutActors) — Find all Actors which are attached directly to a component in this actor
- **SetTickGroup**(ETickingGroupNewTickGroup) — Sets the ticking group for this actor. params NewTickGroup -the new value to assign
- **CanBeBaseForCharacter**(APawn *Pawn) — Return true if the given Pawn can be "based" on this actor (ie walk on it). params Pawn -- The pawn that wants to be based on this actor
- **GetAnimNotifyStateBoneRetargetAdaptInfoObj**()
- **TryGetBoneRetargetObj**(UObject *InSourceObj)
- **TryGetBoneRetargetObjForNotifyState**(UObject *InTargetNotifyState)
- **InitAnimNotifyStateBoneRetargetInfo**(UObject* InTargetNotifyState, UObject *InBoneRetargetObj)
- **ClearAnimNotifyStateBoneRetargetAdaptState**(UObject *InTargetNotifyState)
- **IsAnimNotifyStateBoneRetargetAdaptInitDone**(UObject *InTargetNotifyState)
- **OverrideNotifyAttachMesh**(UObject* InTargetNotifyState, USkeletalMeshComponent* InTargetSkelMeshComp, bool HasRetarget, boolIgnoreNewFPPState) — For Bone Retarget Feature End
- **K2_OnBecomeViewTarget**(APlayerController *PC) — Event called when this Actor becomes the view target for the given PlayerController.
- **K2_OnEndViewTarget**(APlayerController *PC) — Event called when this Actor is no longer the view target for the given PlayerController.
- **K2_OnReset**(Event called when this Actor is reset to its initial state - used when restarting level without reloading.)
- **WasRecentlyRendered**(floatTolerance) — Returns true if this actor has been rendered "recently", with a tolerance in seconds to define what "recent" means. e.g.: If a tolerance of 0.1 is used, this function will return true only if the actor was rendered in the last 0.1 seconds of game time. return -Whether this actor was recently rendere
- **ForceNetRelevant**(Forces this actor to be net relevant if it is not already by default)
- **ForceNetConsider**(Force actor enter consider list)
- **ForceNetComponentUpdate**(UActorComponent *InComponent) — Force actor's component to be updated to client
- **ForceNetUpdate**(Force actor to be updated to clients)
- **PrestreamTextures**(float Seconds, bool bEnableStreaming, int32CinematicTextureGroups)
- **PrestreamTextures**(- Number of seconds to force all mip-levels to be resident - Whether to start (true) or stop (false) streaming - Bitfield indicating which texture groups that use extra high-resolution mips)
- **SetTextureForceResidentFlag**(boolbForceMiplevelsToBeResident)
- **SetTextureForceResidentFlag**(Whether textures should be forced to be resident or not.)
- **GetActorEyesViewPoint**(FVector& OutLocation, FRotator &OutRotation) — Returns the point of view of the actor. Note that this doesn't mean the camera, but the 'eyes' of the actor. For example, for a Pawn, this would define the eye height location, and view rotation (which is different from the pawn rotation which has a zeroed pitch component). A camera first person vie
- **GetComponentByClass**(TSubclassOf < UActorComponent >ComponentClass) — Script exposed version of FindComponentByClass
- **GetComponentsByClass**(TSubclassOf < UActorComponent >ComponentClass) — Gets all the components that inherit from the given class. Currently returns an array of UActorComponent which must be cast to the correct type.
- **GetComponentsByTag**(TSubclassOf < UActorComponent > ComponentClass, FNameTag) — Gets all the components that inherit from the given class with a given tag.
- **SetGeneralCampID**(int32InCampID)
- **GetGeneralCampID**()
- **StringGetGeneralCampName**()
- **CampRelationGetGeneralCampRelationWithCampID**(int32CampID)
- **CampRelationGetGeneralCampRelationWithActor**(AActor *Actor)
- **AllowTriggerDeformEffect**(FVector& Origin, floatEffectRange)
- **TriggerDeformEffect**(FVector& Origin, floatEffectRange)
- **DisableDeformEffect**()
- **MarkSubObjectDeleteDirty**(UObject *SubObject)
- **IsHiddenEdAtStartup**(Simple accessor to check if the actor is hidden upon editor startup return -true if the actor is hidden upon editor startup; false if it is not)
- **IsHiddenEd**()
- **SetIsTemporarilyHiddenInEditor**(boolbIsHidden) — Sets whether or not this actor is hidden in the editor for the duration of the current editor session params bIsHidden -True if the actor is hidden
- **IsTemporarilyHiddenInEditor**(boolbIncludeParent) — return -Whether or not this actor is hidden in the editor for the duration of the current editor session params bIncludeParent -- Whether to recurse up child actor hierarchy or not
- **IsEditable**(return -Returns true if this actor is allowed to be displayed, selected and manipulated by the editor.)
- **IsSelectable**(return -Returns true if this actor can EVER be selected in a level in the editor. Can be overridden by specific actors to make them unselectable. GetToString SetForceOwnedMeshAlwaysRefreshBones OnRep_ReplicateMovement TearOff OnRep_Role OnRep_RemoteRole OnRep_Hidden OnRep_TearOff OnRep_CanBeDamaged)

## 属性

- **Actor** — tick function, which calls TickActor(). Tick functions can be configured to control whether ticking is enabled, at what time during a frame the update occurs, and to set up tick dependencies. @see AddTickPrerequisiteActor(), AddTickPrerequisiteComponent() Allow each actor to run at a different time

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

## AAIController

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AAIController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAIController.json&isSelect=1&apiEnc=%22%22&apiLabel=AAIController](https://developer.gp.qq.com/api/#/searchContent/AAIController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAIController.json&isSelect=1&apiEnc=%22%22&apiLabel=AAIController)

全文搜索

AIController is the base class of controllers for AI-controlled Pawns. Controllers are non-physical actors that can be attached to a pawn to control its actions. AIControllers manage the artificial intelligence for the pawns they control. In networked games, they only exist on the server.

---


## 函数

- **OnPossess**(APawn *PossessedPawn) — Event called when PossessedPawn is possessed by this controller.
- **OnUnpossess**(APawn *UnpossessedPawn) — Gets triggered after given pawn has been unpossesed
- **TypeMoveToActor**(AActor* Goal, float AcceptanceRadius, bool bStopOnOverlap, bool bUsePathfinding, bool bCanStrafe, TSubclassOf < UNavigationQueryFilter > FilterClass, boolbAllowPartialPath) — Makes AI go toward specified Goal actor (destination will be continuously updated), aborts any active path following params AcceptanceRadius -- finish move if pawn gets close enough params bStopOnOverlap -- add pawn's radius to AcceptanceRadius params bUsePathfinding -- use navigation data to calcul
- **TypeMoveToLocation**(FVector& Dest, float AcceptanceRadius, bool bStopOnOverlap, bool bUsePathfinding, bool bProjectDestinationToNavigation, bool bCanStrafe, TSubclassOf < UNavigationQueryFilter > FilterClass, bool bAllo) — Makes AI go toward specified Dest location, aborts any active path following params AcceptanceRadius -- finish move if pawn gets close enough params bStopOnOverlap -- add pawn's radius to AcceptanceRadius params bUsePathfinding -- use navigation data to calculate path (otherwise it will go in straig
- **TypeGetMoveStatus**(Returns status of path following)
- **HasPartialPath**(Returns true if the current PathFollowingComponent's path is partial (does not reach desired destination).)
- **VectorGetImmediateMoveDestination**(Returns position of current path segment's end.)
- **SetMoveBlockDetection**(boolbEnable) — Updates state of movement block detection.
- **RunBehaviorTree**(UBehaviorTree *BTAsset) — Starts executing behavior tree.
- **UseBlackboard**(UBlackboardData* BlackboardAsset, UBlackboardComponent* &BlackboardComponent) — Makes AI use the specified Blackboard asset & creates a Blackboard Component if one does not already exist. return -true if we successfully linked the blackboard asset to the blackboard component. params BlackboardAsset - The Blackboard asset to use. params BlackboardComponent -The Blackboard compon
- **ClaimTaskResource**(TSubclassOf < UGameplayTaskResource >ResourceClass)
- **UnclaimTaskResource**(TSubclassOf < UGameplayTaskResource >ResourceClass)
- **OnUsingBlackBoard**(UBlackboardComponent* BlackboardComp, UBlackboardData *BlackboardAsset)
- **VectorGetFocalPoint**(Retrieve the final position that controller should be looking at.)
- **VectorGetFocalPointOnActor**(AActor *Actor) — Retrieve the focal point this controller should focus to on given actor.
- **K2_SetFocalPoint**(FVectorFP) — Set the position that controller should be looking at.
- **K2_SetFocus**(AActor *NewFocus) — Set Focus for actor, will set FocalPoint as a result.
- **GetFocusActor**(Get the focused actor.)
- **K2_ClearFocus**(Clears Focus, will also clear FocalPoint as a result)
- **OnGameplayTaskResourcesClaimed**(FGameplayResourceSet NewlyClaimed, FGameplayResourceSetFreshlyReleased)
- **GetPathFollowingComponent**(Returns PathFollowingComponent subobject)
- **GetAIPerceptionComponent**(OnPossess OnUnpossess MoveToActor MoveToLocation GetMoveStatus HasPartialPath GetImmediateMoveDestination SetMoveBlockDetection RunBehaviorTree UseBlackboard ClaimTaskResource UnclaimTaskResource OnUsingBlackBoard GetFocalPoint GetFocalPointOnActor K2_SetFocalPoint K2_SetFocus GetFocusActor K2_Clear)

## 属性

- **default** — AI's logic gets stopped when controlled Pawn is unpossesed. Setting this flag to false will make AI logic persist past loosing controll over a pawn Skip extra line of sight traces to extremities of target being checked. Is strafing allowed during movement? Specifies if this AI wants its own PlayerSt

## 委托

- voidReceiveMoveCompleted(FAIRequestIDRequestID, EPathFollowingResult::TypeResult)
- Blueprint notification that we've completed the current movement request
- ReceiveMoveCompleted

## AAmbientSound

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AAmbientSound?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAmbientSound.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AAmbientSound](https://developer.gp.qq.com/api/#/searchContent/AAmbientSound?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAmbientSound.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AAmbientSound)

类

全文搜索

A sound actor that can be placed in a level

---


## 函数

- **FadeIn**(float FadeInDuration, floatFadeVolumeLevel)
- **FadeOut**(float FadeOutDuration, floatFadeVolumeLevel)
- **AdjustVolume**(float AdjustVolumeDuration, floatAdjustVolumeLevel)
- **Play**(floatStartTime)
- **Stop**(FadeIn FadeOut AdjustVolume Play Stop)

## 属性

- **component** — that handles sound playing AudioComponent

## AAtmosphericFog

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AAtmosphericFog?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAtmosphericFog.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AAtmosphericFog](https://developer.gp.qq.com/api/#/searchContent/AAtmosphericFog?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAtmosphericFog.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AAtmosphericFog)

类

全文搜索

A placeable fog actor that simulates atmospheric light scattering

---


## 属性

- **fog** — component UArrowComponent *ArrowComponent Arrow component to indicate default sun rotation AtmosphericFogComponent ArrowComponent

## AAtmosphericSkyBoxActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AAtmosphericSkyBoxActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAtmosphericSkyBoxActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AAtmosphericSkyBoxActor](https://developer.gp.qq.com/api/#/searchContent/AAtmosphericSkyBoxActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAtmosphericSkyBoxActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AAtmosphericSkyBoxActor)

类

全文搜索

---


## 函数

- **OnRep_bEnabled**(Replication Notification Callbacks OnRep_bEnabled)

## 属性

- **copy** — of ExponentialHeightFogComponent's bEnabled property Component bEnabled

## AAudioVolume

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AAudioVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAudioVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AAudioVolume](https://developer.gp.qq.com/api/#/searchContent/AAudioVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAudioVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AAudioVolume)

类

全文搜索

---


## 函数

- **SetPriority**(floatNewPriority)
- **SetEnabled**(boolbNewEnabled)
- **SetReverbSettings**(FReverbSettings &NewReverbSettings)
- **SetInteriorSettings**(FInteriorSettings &NewInteriorSettings)
- **OnRep_bEnabled**(SetPriority SetEnabled SetReverbSettings SetInteriorSettings OnRep_bEnabled)

## 属性

- **of** — this volume. In the case of overlapping volumes the one with the highest priority is chosen. The order is undefined if two or more overlapping volumes have the same priority. whether this volume is currently enabled and able to affect sounds Reverb settings to use for this volume. Interior settings

## ABrush

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ABrush?classDetailShow=true&path=class%2Fdetail%2FOthers%2FABrush.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ABrush](https://developer.gp.qq.com/api/#/searchContent/ABrush?classDetailShow=true&path=class%2Fdetail%2FOthers%2FABrush.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ABrush)

类

全文搜索

---


## 属性

- **of** — brush If true, this brush class can be placed using the class browser like other simple class types If true, this brush is a builder or otherwise does not need to be loaded into the game UModel *Brush UBrushComponent *BrushComponent Flag set when we are in a manipulation (scaling, translation, brush

## ACameraActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ACameraActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACameraActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACameraActor](https://developer.gp.qq.com/api/#/searchContent/ACameraActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACameraActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACameraActor)

类

全文搜索

A CameraActor is a camera viewpoint that can be placed in a level.

---


## 函数

- **GetAutoActivatePlayerIndex**(Returns index of the player for whom we auto-activate, or INDEX_NONE (-1) if disabled. GetAutoActivatePlayerIndex)

## 属性

- **which** — player controller, if any, should automatically use this Camera when the controller is active. UCameraComponent *CameraComponent The camera component for this camera USceneComponent *SceneComponent AutoActivateForPlayer CameraComponent SceneComponent bConstrainAspectRatio_DEPRECATED AspectRatio_DEPR

## ACameraRig_Crane

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ACameraRig_Crane?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACameraRig_Crane.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACameraRig_Crane](https://developer.gp.qq.com/api/#/searchContent/ACameraRig_Crane?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACameraRig_Crane.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACameraRig_Crane)

类

全文搜索

A simple rig for simulating crane-like camera movements.

---


## 属性

- **the** — pitch of the crane arm. Controls the yaw of the crane arm. Controls the length of the crane arm. Lock the mount pitch so that an attached camera is locked and pitched in the direction of the crane arm Lock the mount yaw so that an attached camera is locked and oriented in the direction of the crane

## ACameraRig_Rail

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ACameraRig_Rail?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACameraRig_Rail.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACameraRig_Rail](https://developer.gp.qq.com/api/#/searchContent/ACameraRig_Rail?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACameraRig_Rail.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACameraRig_Rail)

类

全文搜索

---


## 属性

- **current** — position of the mount point along the rail, in terms of normalized distance from the beginning of the rail. USceneComponent *TransformComponent Root component to give the whole actor a transform. USplineComponent *RailSplineComponent Spline component to define the rail path. USceneComponent *RailCam

## ACharacter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ACharacter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACharacter](https://developer.gp.qq.com/api/#/searchContent/ACharacter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACharacter)

类

全文搜索

Characters are Pawns that have a mesh, collision, and built-in movement logic. They are responsible for all physical interaction between the player or AI and the world, and also implement basic networking and input models. They are designed for a vertically-oriented player representation that can walk, jump, fly, and swim through the world using CharacterMovementComponent. @see APawn, UCharacterMovementComponent

---


## 函数

- **CacheInitialMeshOffset**(FVector MeshRelativeLocation, FRotatorMeshRelativeRotation) — Cache mesh offset from capsule. This is used as the target for network smoothing interpolation, when the mesh is offset with lagged smoothing. This is automatically called during initialization; call this at runtime if you intend to change the default mesh offset from the capsule.
- **OnRep_ReplicatedBasedMovement**(Rep notify for ReplicatedBasedMovement)
- **SetReplicateMovement**(boolbInReplicateMovement) — Set whether this actor's movement replicates to network clients.
- **OnRep_ReplicatedMovementMode**(uint8LastReplicatedMovementMode)
- **GetReplicatedMovementMode**(Returns ReplicatedMovementMode)
- **VectorGetBaseTranslationOffset**(Get the saved translation offset of mesh. This is how much extra offset is applied from the center of the capsule.)
- **RotatorGetBaseRotationOffsetRotator**(Get the saved rotation offset of mesh. This is how much extra rotation is applied from the capsule rotation.)
- **OnRep_IsCrouched**(Handle Crouching replicated from server)
- **GetMovementBase**()
- **GetReplicatedMovementBase**()
- **Jump**(Make the character jump on the next update. If you want your character to jump according to the time that the jump key is held, then you can set JumpKeyHoldTime to some non-zero value. Make sure in this case to)
- **StopJumping**(as on a button up event), otherwise the character will carry on receiving the velocity until JumpKeyHoldTime is reached.)
- **StopJumping**(Stop the character from jumping on the next update. Call this from an input event (such as a button 'up' event) to cease applying jump Z-velocity. If this is not called, then jump z-velocity will be applied until JumpMaxHoldTime is reached.)
- **CanJump**(Check if the character can jump in the current state. The default implementation may be overridden or extended by implementing the custom CanJump event in Blueprints.)
- **CanJumpInternal**(Customizable event to check if the character can jump in the current state. Default implementation returns true if the character is on the ground and not crouching,)
- **CanEverJump**(Default implementation also allows for 'hold to jump higher' functionality: As well as returning true when on the ground, it also returns true when GetMaxJumpTime is more than zero and IsJumping returns true.)
- **IsJumpProvidingForce**(True if jump is actively providing a force, such as when the jump key is held and the time it has been held is less than JumpMaxHoldTime.)
- **PlayAnimMontage**(UAnimMontage* AnimMontage, float InPlayRate, FName StartSectionName, bool TPP, bool FPP, boolNewFPP) — Play Animation Montage on the character mesh
- **StopAnimMontage**(UAnimMontage *AnimMontage) — Stop Animation Montage. If NULL, it will stop what's currently active. The Blend Out Time is taken from the montage asset that is being stopped.
- **GetCurrentMontage**(Return current playing Montage)
- **IsVelocitySimulated**(是否正在速度场模拟中(实际生效))
- **VectorGetAdditiveVelocity**(获取速度场的叠加速度)
- **VectorGetSimulatedVelocity**(获取速度场中的模拟速度(原有速度+叠加速度))
- **LaunchCharacter**(FVector& LaunchVelocity, bool bXYOverride, boolbZOverride) — Set a pending launch velocity on the Character. This velocity will be processed on the next CharacterMovementComponent tick, and will set it to the "falling" state. Triggers the OnLaunched event.
- **OnLaunched**(FVector& LaunchVelocity, bool bXYOverride, boolbZOverride) — Let blueprint know that we were launched
- **OnJumped**(Event fired when the character has just started jumping)
- **OnLanded**(FHitResult &Hit) — Called upon landing when falling, to perform actions based on the Hit result. Note that movement mode is still "Falling" during this event. Current Velocity value is the velocity at the time of landing.
- **OnMovementModeChanged**(Result describing the landing that resulted in a valid landing spot.)
- **OnWalkingOffLedge**(FVector& PreviousFloorImpactNormal, FVector& PreviousFloorContactNormal, FVector& PreviousLocation, floatTimeDelta) — Event fired when the Character is walking off a surface and is about to fall because CharacterMovement->CurrentFloor became unwalkable. If CharacterMovement->MovementMode does not change during this event then the character will automatically start falling afterwards. params PreviousFloorImpactNorma
- **Crouch**(boolbClientSimulation) — Request the character to start crouching. The request is processed on the next update of the CharacterMovementComponent.
- **UnCrouch**(boolbClientSimulation) — Request the character to stop crouching. The request is processed on the next update of the CharacterMovementComponent.
- **K2_OnEndCrouch**(float HalfHeightAdjust, floatScaledHalfHeightAdjust) — Event when Character stops crouching. params HalfHeightAdjust -difference between default collision half-height, and actual crouched capsule half-height. params ScaledHalfHeightAdjust -difference after component scale is taken in to account.
- **K2_OnStartCrouch**(float HalfHeightAdjust, floatScaledHalfHeightAdjust) — Event when Character crouches. params HalfHeightAdjust -difference between default collision half-height, and actual crouched capsule half-height. params ScaledHalfHeightAdjust -difference after component scale is taken in to account.
- **K2_OnMovementModeChanged**(EMovementMode PrevMovementMode, EMovementMode NewMovementMode, uint8 PrevCustomMode, uint8NewCustomMode) — Called from CharacterMovementComponent to notify the character that the movement mode has changed. params PrevMovementMode -Movement mode before the change params NewMovementMode -New movement mode params PrevCustomMode -Custom mode before the change (applicable if PrevMovementMode is Custom) params
- **K2_UpdateCustomMovement**(floatDeltaTime) — Event for implementing custom character movement mode. Called by CharacterMovement if MovementMode is set to Custom.
- **ClientCheatWalk**()
- **ClientCheatFly**()
- **ClientCheatGhost**()
- **RootMotionDebugClientPrintOnScreen**(FString &InString)
- **OnRep_RootMotion**(Handles replicated root motion properties on simulated proxies and position correction.)
- **IsPlayingRootMotion**(true if we are playing Root Motion right now)
- **IsPlayingNetworkedRootMotionMontage**(true if we are playing Root Motion right now, through a Montage with RootMotionMode == ERootMotionMode::RootMotionFromMontagesOnly. This means code path for networked root motion is enabled.)
- **GetAnimRootMotionTranslationScale**(Returns current value of AnimRootMotionScale)
- **SetReplicateBasedMovement**(boolbInReplicateBasedMovement)
- **OnRep_GeneralCampID**(CacheInitialMeshOffset OnRep_ReplicatedBasedMovement SetReplicateMovement OnRep_ReplicatedMovementMode GetReplicatedMovementMode GetBaseTranslationOffset GetBaseRotationOffsetRotator OnRep_IsCrouched GetMovementBase GetReplicatedMovementBase Jump StopJumping CanJump CanJumpInternal IsJumpProvidingFo)

## 属性

- **main** — skeletal mesh associated with this Character (optional sub-object). UCharacterMovementComponent *CharacterMovement Movement component used for movement logic in various movement modes (walking, falling, etc), containing relevant settings and functions to control movement. UCapsuleComponent *CapsuleC

## 委托

- voidOnReachedJumpApex()
- Broadcast when Character's jump reaches its apex. Needs CharacterMovement->bNotifyApex = true
- voidMovementModeChangedDelegate(ACharacter*Character, EMovementModePrevMovementMode, uint8PreviousCustomMode)
- Multicast delegate for MovementMode changing.
- voidOnCharacterMovementUpdated(floatDeltaSeconds, FVectorOldLocation, FVectorOldVelocity)
- Event triggered at the end of a CharacterMovementComponent movement update.
- This is the preferred event to use rather than the Tick event when performing custom updates to CharacterMovement properties based on the current state.
- This is mainly due to the nature of network updates, where client corrections in position from the server can cause multiple iterations of a movement update,
- which allows this event to update as well, while a Tick event would not.
- params DeltaSeconds
- -Delta time in seconds for this update
- OnReachedJumpApex
- MovementModeChangedDelegate
- OnCharacterMovementUpdated

## ACineCameraActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ACineCameraActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACineCameraActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACineCameraActor](https://developer.gp.qq.com/api/#/searchContent/ACineCameraActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACineCameraActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACineCameraActor)

类

全文搜索

A CineCameraActor is a CameraActor specialized to work like a cinematic camera.

---


## 函数

- **GetCineCameraComponent**(Returns the CineCameraComponent of this CineCamera GetCineCameraComponent)

## AConsoleCMDVolume

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AConsoleCMDVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAConsoleCMDVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AConsoleCMDVolume](https://developer.gp.qq.com/api/#/searchContent/AConsoleCMDVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAConsoleCMDVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AConsoleCMDVolume)

类

全文搜索

ConsoleCMDVolume is a volume used to automatically change console variables @see ModifyConsoleVariable

---


## 属性

- **of** — tags that can be used for grouping and categorizing. ConsoleVariables

## AController

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AController](https://developer.gp.qq.com/api/#/searchContent/AController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AController)

类

全文搜索

Controllers are non-physical actors that can possess a Pawn to control its actions. PlayerControllers are used by human players to control pawns, while AIControllers implement the artificial intelligence for the pawns they control. Controllers take control of a pawn using their Possess() method, and relinquish control of the pawn by calling UnPossess(). Controllers receive notifications for many of the events occurring for the Pawn they are controlling. This gives the controller the opportunity to implement the behavior in response to this event, intercepting the event and superseding the Pawn's default behavior. ControlRotation (accessed via GetControlRotation()), determines the viewingaiming direction of the controlled Pawn and is affected by input such as from a mouse or gamepad.

---


## 函数

- **RotatorGetControlRotation**(Get the control rotation. This is the full aim rotation, which may be different than a camera orientation (for example in a third person view), and may differ from the rotation of the controlled Pawn (which may choose not to visually pitch or roll, for example).)
- **SetControlRotation**(FRotator &NewRotation) — Set the control rotation. The RootComponent's rotation will also be updated to match it if RootComponent->bAbsoluteRotation is true.
- **SetInitialLocationAndRotation**(FVector& NewLocation, FRotator &NewRotation) — Set the initial location and rotation of the controller, as well as the control rotation. Typically used when the controller is first created.
- **SetStartSpot**(AActor *InActor) — Set the StartSpot
- **ClearStartSpot**(Clear the StartSpot)
- **GetStartSpot**()
- **LineOfSightTo**(AActor* Other, FVector ViewPoint, boolbAlternateChecks) — Checks line to center and top of other actor return -true if controller's pawn can see Other actor. params Other -is the actor whose visibility is being checked. params ViewPoint -is eye position visibility is being checked from. If vect(0,0,0) passed in, uses current viewtarget's eye position. para
- **OnRep_Pawn**(Replication Notification Callbacks)
- **OnRep_PlayerState**()
- **CastToPlayerController**(DEPRECATED! Use the standard "Cast To" node instead. Casts this Controller to a Player Controller, if possible.)
- **ClientSetLocation**(FVector NewLocation, FRotatorNewRotation) — Replicated function to set the pawn location and rotation, allowing server to force (ex. teleports).
- **ClientSetRotation**(FRotator NewRotation, boolbResetCamera) — Replicated function to set the pawn rotation, allowing the server to force.
- **K2_GetPawn**(Return the Pawn that is currently 'controlled' by this PlayerController)
- **GetViewTarget**(Get the actor the controller is looking at)
- **RotatorGetDesiredRotation**(Get the desired pawn target rotation)
- **IsPlayerController**(Returns whether this Controller is a PlayerController.)
- **IsLocalPlayerController**(Returns whether this Controller is a locally controlled PlayerController.)
- **IsLocalController**(Returns whether this Controller is a local controller.)
- **Possess**(APawn *InPawn) — Handles attaching this controller to the specified pawn. Only runs on the network authority (where HasAuthority() returns true). params InPawn -The Pawn to be possessed.
- **UnPossess**(Called to unpossess our pawn for any reason that is not the pawn being destroyed (destruction handled by PawnDestroyed()).)
- **StopMovement**(Aborts the move the controller is currently performing)
- **SetIgnoreMoveInput**(boolbNewMoveInput) — Locks or unlocks movement input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreMoveInput. params bNewMoveInput -If true, move input is ignored. If false, input is not ignored.
- **ResetIgnoreMoveInput**(Stops ignoring move input by resetting the ignore move input state.)
- **IsMoveInputIgnored**(Returns true if movement input is ignored.)
- **SetIgnoreLookInput**(boolbNewLookInput) — Locks or unlocks look input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreLookInput. params bNewLookInput -If true, look input is ignored. If false, input is not ignored.
- **ResetIgnoreLookInput**(Stops ignoring look input by resetting the ignore look input state.)
- **IsLookInputIgnored**(Returns true if look input is ignored.)
- **ResetIgnoreInputFlags**(Reset move and look input ignore flags.)
- **ReceiveInstigatedAnyDamage**(float Damage, UDamageType* DamageType, AActor* DamagedActor, AActor *DamageCauser) — Event when this controller instigates ANY damage GetControlRotation SetControlRotation SetInitialLocationAndRotation SetStartSpot ClearStartSpot GetStartSpot LineOfSightTo OnRep_Pawn OnRep_PlayerState CastToPlayerController ClientSetLocation ClientSetRotation K2_GetPawn GetViewTarget GetDesiredRotat

## 属性

- **currently** — being controlled by this controller. Use Pawn.Possess() to take control of a pawn ACharacter *Character Character currently being controlled by this controller. Value is same as Pawn if the controlled pawn is a character, otherwise NULL APlayerState *PlayerState PlayerState containing replicated inf

## 委托

- voidOnInstigatedAnyDamage(floatDamage, const class UDamageType*DamageType, AActor*DamagedActor, AActor*DamageCauser)
- Called when the controller has instigated damage in any way
- OnInstigatedAnyDamage

## ACullDistanceVolume

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ACullDistanceVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACullDistanceVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACullDistanceVolume](https://developer.gp.qq.com/api/#/searchContent/ACullDistanceVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACullDistanceVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACullDistanceVolume)

类

全文搜索

---


## 属性

- **of** — size and cull distance pairs. The code will calculate the sphere diameter of a primitive's BB and look for a best fit in this array to determine which cull distance to use. Whether the volume is currently enabled or not. CullDistances bEnabled bEnabledDeviceScale VeryLowScale LowScale MidScale HighS

## ADebugCameraController

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ADebugCameraController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADebugCameraController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADebugCameraController](https://developer.gp.qq.com/api/#/searchContent/ADebugCameraController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADebugCameraController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADebugCameraController)

类

全文搜索

Camera controller that allows you to fly around a level mostly unrestricted by normal movement rules. To turn it on, please press Alt+C or both (left and right) analogs on XBox pad, or use the "ToggleDebugCamera" console command. Check the debug camera bindings in DefaultPawn.cpp for the camera controls.

---


## 函数

- **ShowDebugSelectedInfo**()
- **ToggleDisplay**(Toggles the display of debug info and input commands for the Debug Camera.)
- **GetSelectedActor**()
- **SetPawnMovementSpeedScale**(floatNewSpeedScale) — Sets the pawn movement speed scale.
- **ReceiveOnActivate**(APlayerController *OriginalPC) — Function called on activation of debug camera controller. params OriginalPC -The active player controller before this debug camera controller was possessed by the player.
- **ReceiveOnDeactivate**(APlayerController *RestoredPC) — Function called on deactivation of debug camera controller. params RestoredPC -The Player Controller that the player input is being returned to.
- **ReceiveOnActorSelected**(AActor* NewSelectedActor, FVector& SelectHitLocation, FVector& SelectHitNormal, FHitResult &Hit) — Called when an actor has been selected with the primary key (e.g. left mouse button). The selection trace starts from the center of the debug camera's view. params SelectHitLocation -The exact world-space location where the selection trace hit the New Selected Actor. params SelectHitNormal -The worl

## 属性

- **to** — show information about the selected actor on the debug camera HUD. @todo document UDrawFrustumComponent *DrawFrustum @todo document Allows control over the speed of the spectator pawn. This scales the speed based on the InitialMaxSpeed. Use Set Pawn Movement Speed Scale during runtime Initial max sp

## ADecalActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ADecalActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADecalActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADecalActor](https://developer.gp.qq.com/api/#/searchContent/ADecalActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADecalActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADecalActor)

类

全文搜索

DecalActor contains a DecalComponent which can be used to render material modifications on top of existing geometry. @see UDecalComponent

---


## 函数

- **SetDecalMaterial**(UMaterialInterface *NewDecalMaterial)
- **GetDecalMaterial**()
- **CreateDynamicMaterialInstance**(SetDecalMaterial GetDecalMaterial CreateDynamicMaterialInstance)

## 属性

- **decal** — component for this decal actor UArrowComponent *ArrowComponent Reference to the editor only arrow visualization component UBillboardComponent *SpriteComponent Reference to the billboard component UBoxComponent *BoxComponent_DEPRECATED Decal ArrowComponent SpriteComponent BoxComponent_DEPRECATED

## ADecalBakingParameterActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ADecalBakingParameterActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADecalBakingParameterActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADecalBakingParameterActor](https://developer.gp.qq.com/api/#/searchContent/ADecalBakingParameterActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADecalBakingParameterActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADecalBakingParameterActor)

类

全文搜索

---


## 属性

- **decal** — component for this decal actor UArrowComponent *ArrowComponent Reference to the editor only arrow visualization component UBillboardComponent *SpriteComponent Reference to the billboard component DecalBakingParam ArrowComponent SpriteComponent

## ADefaultPawn

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ADefaultPawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADefaultPawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADefaultPawn](https://developer.gp.qq.com/api/#/searchContent/ADefaultPawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADefaultPawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADefaultPawn)

类

全文搜索

DefaultPawn implements a simple Pawn with spherical collision and built-in flying movement. @see UFloatingPawnMovement

---


## 函数

- **MoveForward**(floatVal) — Input callback to move forward in local space (or backward if Val is negative). params Val -Amount of movement in the forward direction (or backward if negative).
- **MoveRight**(floatVal) — Input callback to strafe right in local space (or left if Val is negative). params Val -Amount of movement in the right direction (or left if negative).
- **MoveUp_World**(floatVal) — Input callback to move up in world space (or down if Val is negative). params Val -Amount of movement in the world up direction (or down if negative).
- **TurnAtRate**(floatRate) — Called via input to turn at a given rate. params Rate -This is a normalized rate, i.e. 1.0 means 100% of desired turn rate
- **LookUpAtRate**(floatRate) — Called via input to look up at a given rate (or down if Rate is negative). params Rate -This is a normalized rate, i.e. 1.0 means 100% of desired turn rate MoveForward MoveRight MoveUp_World TurnAtRate LookUpAtRate

## 属性

- **turn** — rate, in degsec. Other scaling may affect final turn rate. Base lookup rate, in degsec. Other scaling may affect final lookup rate. UPawnMovementComponent *MovementComponent DefaultPawn movement component USphereComponent *CollisionComponent DefaultPawn collision component UStaticMeshComponent *Mesh

## AEliteProjectile

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AEliteProjectile?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEliteProjectile.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEliteProjectile](https://developer.gp.qq.com/api/#/searchContent/AEliteProjectile?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEliteProjectile.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEliteProjectile)

类

全文搜索

投掷物

---


## 函数

- **AddOnProjectileDestroyedHandler**(FSimpleProjectileDelegateInDelegate) — 生效范围SC 添加销毁事件
- **RemoveOnProjectileDestroyedHandler**(FSimpleProjectileDelegateInDelegate) — 生效范围SC 移除销毁事件
- **ReceiveProjectileExplodedEvent**(FHitResult &Impact) — 生效范围SC 爆炸事件
- **ReceiveProjectileHit**(FHitResult &Hit) — 生效范围SC 击中事件
- **ReceiveProjectileBouncedEvent**(FHitResult& ImpactResult, FVector &ImpactVelocity) — 生效范围SC 弹射事件
- **ReceiveProjectileStoppedEvent**(FHitResult &HitResult) — 生效范围SC 停止事件 AddOnProjectileDestroyedHandler RemoveOnProjectileDestroyedHandler ReceiveProjectileExplodedEvent ReceiveProjectileHit ReceiveProjectileBouncedEvent ReceiveProjectileStoppedEvent

## AEmitter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AEmitter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEmitter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEmitter](https://developer.gp.qq.com/api/#/searchContent/AEmitter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEmitter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEmitter)

类

全文搜索

---


## 函数

- **OnParticleSystemFinished**(UParticleSystemComponent *FinishedComponent)
- **OnRep_bCurrentlyActive**(Replication Notification Callbacks)
- **Activate**()
- **Deactivate**()
- **ToggleActive**()
- **IsActive**()
- **SetTemplate**(UParticleSystem *NewTemplate)
- **SetFloatParameter**(FName ParameterName, floatParam)
- **SetVectorParameter**(FName ParameterName, FVectorParam)
- **SetColorParameter**(FName ParameterName, FLinearColorParam)
- **SetActorParameter**(FName ParameterName, AActor *Param)
- **SetMaterialParameter**(FName ParameterName, UMaterialInterface *Param) — OnParticleSystemFinished OnRep_bCurrentlyActive Activate Deactivate ToggleActive IsActive SetTemplate SetFloatParameter SetVectorParameter SetColorParameter SetActorParameter SetMaterialParameter

## 属性

- **to** — update status of toggleable level placed emitters on clients ParticleSystemComponent bDestroyOnSystemFinish bPostUpdateTickGroup bCurrentlyActive

## 委托

- voidOnParticleSpawn(FNameEventName, floatEmitterTime, FVectorLocation, FVectorVelocity)
- voidOnParticleBurst(FNameEventName, floatEmitterTime, int32ParticleCount)
- voidOnParticleDeath(FNameEventName, floatEmitterTime, int32ParticleTime, FVectorLocation, FVectorVelocity, FVectorDirection)
- voidOnParticleCollide(FNameEventName, floatEmitterTime, int32ParticleTime, FVectorLocation, FVectorVelocity, FVectorDirection, FVectorNormal, FNameBoneName, UPhysicalMaterial*PhysMat)
- OnParticleSpawn
- OnParticleBurst
- OnParticleDeath
- OnParticleCollide

## AEmitterCameraLensEffectBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AEmitterCameraLensEffectBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEmitterCameraLensEffectBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEmitterCameraLensEffectBase](https://developer.gp.qq.com/api/#/searchContent/AEmitterCameraLensEffectBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEmitterCameraLensEffectBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEmitterCameraLensEffectBase)

类

全文搜索

---


## 属性

- **System** — to use UParticleSystem *PS_CameraEffectNonExtremeContent_DEPRECATED The effect to use for non extreme content APlayerCameraManager *BaseCamera Camera this emitter is attached to, will be notified when emitter is destroyed Effect-to-camera transform to allow arbitrary placement of the particle system

## AEQSTestingPawn

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AEQSTestingPawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEQSTestingPawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEQSTestingPawn](https://developer.gp.qq.com/api/#/searchContent/AEQSTestingPawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEQSTestingPawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEQSTestingPawn)

类

全文搜索

this class is abstract even though it's perfectly functional on its own. The reason is to stop it from showing as valid player pawn type when configuring project's game mode.

---


## 属性

- **parameters** — for query EEnvQueryHightlightModeHighlightMode UEQSRenderingComponent *EdRenderComp Editor Preview QueryTemplate QueryParams QueryConfig TimeLimitPerStep StepToDebugDraw HighlightMode bDrawLabels bDrawFailedItems bReRunQueryOnlyOnFinishedMove bShouldBeVisibleInGame bTickDuringGame QueryingMode EdRen

## AExponentialHeightFog

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AExponentialHeightFog?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAExponentialHeightFog.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AExponentialHeightFog](https://developer.gp.qq.com/api/#/searchContent/AExponentialHeightFog?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAExponentialHeightFog.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AExponentialHeightFog)

类

全文搜索

Implements an Actor for exponential height fog.

---


## 函数

- **OnRep_bEnabled**(Replication Notification Callbacks OnRep_bEnabled)

## 属性

- **document** — replicated copy of ExponentialHeightFogComponent's bEnabled property Component bEnabled

## AGameMode

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AGameMode?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameMode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameMode](https://developer.gp.qq.com/api/#/searchContent/AGameMode?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameMode.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameMode)

类

全文搜索

GameMode is a subclass of GameModeBase that behaves like a multiplayer match-based game. It has default behavior for picking spawn points and match state. If you want a simpler base, inherit from GameModeBase instead.

---


## 函数

- **NameGetMatchState**(Returns the current match state, this is an accessor to protect the state machine flow)
- **IsMatchInProgress**(Returns true if the match state is InProgress or other gameplay state)
- **HasMatchEnded**(Returns true if the match state is WaitingPostMatch or later)
- **StartMatch**(Transition from WaitingToStart to InProgress. You can call this manually, will also get called if ReadyToStartMatch returns true)
- **EndMatch**(Transition from InProgress to WaitingPostMatch. You can call this manually, will also get called if ReadyToEndMatch returns true)
- **RestartGame**(Restart the game, by default travel to the current map)
- **AbortMatch**(Report that a match has failed due to unrecoverable error)
- **K2_OnSetMatchState**(FNameNewState) — Implementable event to respond to match state changes
- **ReadyToStartMatch**(return -True if ready to Start Match. Games should override this)
- **ReadyToEndMatch**(return -true if ready to End Match. Games should override this)
- **Say**(FString &Msg) — Exec command to broadcast a string to all players
- **SetBandwidthLimit**(floatAsyncIOBandwidthLimit) — Alters the synthetic bandwidth limit for a running game. GetMatchState IsMatchInProgress HasMatchEnded StartMatch EndMatch RestartGame AbortMatch K2_OnSetMatchState ReadyToStartMatch ReadyToEndMatch Say SetBandwidthLimit

## 属性

- **match** — state we are currently in Whether the game should immediately start when the first player logs in. Affects the default behavior of ReadyToStartMatch Current number of spectators. Current number of human players. number of non-human players (AI controlled but participating as a player). Minimum time

## AGameModeBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AGameModeBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameModeBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameModeBase](https://developer.gp.qq.com/api/#/searchContent/AGameModeBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameModeBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameModeBase)

类

全文搜索

The GameModeBase defines the game being played. It governs the game rules, scoring, what actors are allowed to exist in this game type, and who may enter the game. It is only instanced on the server and will never exist on the client. A GameModeBase actor is instantiated when the level is initialized for gameplay in C++ UGameEngine::LoadMap(). The class of this GameMode actor is determined by (in order) either the URL ?game=xxx, the GameMode Override value set in the World Settings, or the DefaultGameMode entry set in the game's Project Settings.

---


## 函数

- **GetDefaultPawnClassForController**(AController *InController) — Returns default pawn class for given controller
- **GetNumPlayers**(Returns number of active human players, excluding spectators)
- **GetNumSpectators**(Returns number of human players currently spectating)
- **StartPlay**(Transitions to calls BeginPlay on actors.)
- **HasMatchStarted**(Returns true if the match start callbacks have been called)
- **ShouldReset**(AActor *ActorToReset) — Overridable function to determine whether an Actor should have Reset called when the game has Reset called on it. Default implementation returns true return
- **Reset**(The actor to make a determination for)
- **ResetLevel**(Overridable function called when resetting level. This is used to reset the game state while staying in the same map)
- **Reset**()
- **ReturnToMainMenuHost**(Return to main menu, and disconnect any players)
- **K2_PostLogin**(APlayerController *NewPlayer) — Notification that a player has successfully logged in, and has been given a player controller
- **K2_OnLogout**(AController *ExitingController) — Implementable event when a Controller with a PlayerState leaves the game.
- **HandleStartingNewPlayer**(APlayerController *NewPlayer) — Signals that a player is ready to enter the game, which may start it up
- **MustSpectate**(APlayerController *NewPlayerController) — Returns true if NewPlayerController may only join the server as a spectator.
- **CanSpectate**(APlayerController* Viewer, APlayerState *ViewTarget) — Return whether Viewer is allowed to spectate from the point of view of ViewTarget.
- **ChangeName**(AController* Controller, FString& NewName, boolbNameChange) — Sets the name for a controller params Controller -The controller of the player to change the name of params NewName -The name to set the player to params bNameChange -Whether the name is changing or if this is the first time it has been set
- **K2_OnChangeName**(AController* Other, FString& NewName, boolbNameChange) — Overridable event for GameMode blueprint to respond to a change name call params NewName -The name to set the player to params bNameChange -Whether the name is changing or if this is the first time it has been set
- **ChoosePlayerStart**(AController *Player) — Return the 'best' player start for this player to spawn from Default implementation looks for a random unoccupied spot return - AActor chosen as player start (usually a PlayerStart) params Player -is the controller for whom we are choosing a playerstart
- **FindPlayerStart**(AController* Player, FString &IncomingName) — Return the specific player start actor that should be used for the next spawn This will either use a previously saved startactor, or calls ChoosePlayerStart return - Actor chosen as player start (usually a PlayerStart) params Player -The AController for whom we are choosing a Player Start params Inc
- **K2_FindPlayerStart**(AController* Player, FString &IncomingName) — Return the specific player start actor that should be used for the next spawn This will either use a previously saved startactor, or calls ChoosePlayerStart return - Actor chosen as player start (usually a PlayerStart) params Player -The AController for whom we are choosing a Player Start params Inc
- **PlayerCanRestart**(APlayerController *Player) — Returns true if it's valid to call RestartPlayer. By default will call Player->CanRestartPlayer
- **RestartPlayer**(AController *NewPlayer) — Tries to spawn the player's pawn, at the location returned by FindPlayerStart
- **RestartPlayerAtPlayerStart**(AController* NewPlayer, AActor *StartSpot) — Tries to spawn the player's pawn at the specified actor's location
- **RestartPlayerAtTransform**(AController* NewPlayer, FTransform &SpawnTransform) — Tries to spawn the player's pawn at a specific location
- **SpawnDefaultPawnFor**(AController* NewPlayer, AActor *StartSpot) — Called during RestartPlayer to actually spawn the player's pawn, when using a start spot return -a pawn of the default pawn class params NewPlayer -- Controller for whom this pawn is spawned params StartSpot -- Actor at which to spawn pawn
- **SpawnDefaultPawnAtTransform**(AController* NewPlayer, FTransform &SpawnTransform) — Called during RestartPlayer to actually spawn the player's pawn, when using a transform return -a pawn of the default pawn class params NewPlayer -- Controller for whom this pawn is spawned
- **InitStartSpot**(AActor* StartSpot, AController *NewPlayer) — Called from RestartPlayerAtPlayerStart, can be used to initialize the start spawn actor
- **K2_OnRestartPlayer**(AController *NewPlayer) — Implementable event called at the end of RestartPlayer
- **InitializeHUDForPlayer**(APlayerController *NewPlayer) — Initialize the AHUD object for a player. Games can override this to do something different
- **K2_OnSwapPlayerControllers**(APlayerController* OldPC, APlayerController *NewPC) — Called when a PlayerController is swapped to a new one during seamless travel GetDefaultPawnClassForController GetNumPlayers GetNumSpectators StartPlay HasMatchStarted ShouldReset ResetLevel ReturnToMainMenuHost K2_PostLogin K2_OnLogout HandleStartingNewPlayer MustSpectate CanSpectate ChangeName K2_

## 属性

- **options** — string and parse it when needed Class of GameSession, which handles login approval and online game interface Class of GameState associated with this GameMode. The class of PlayerController to spawn for players logging in. A PlayerState of this class will be associated with every player to replicate

## AGameNetworkManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AGameNetworkManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameNetworkManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameNetworkManager](https://developer.gp.qq.com/api/#/searchContent/AGameNetworkManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameNetworkManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameNetworkManager)

类

全文搜索

Handles game-specific networking management (cheat detection, bandwidth management, etc.).

---


## 属性

- **adjusted** — net speed - Used for dynamically managing netspeed for listen servers Last time netspeed was updated for server (by client entering or leaving) Total available bandwidth for listen server, split dynamically across net connections Minimum bandwidth dynamically set per connection Maximum bandwidth dyn

## AGameSession

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AGameSession?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameSession.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameSession](https://developer.gp.qq.com/api/#/searchContent/AGameSession?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameSession.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameSession)

类

全文搜索

---


## 属性

- **number** — of spectators allowed by this server. Maximum number of players allowed by this server. Restrictions on the largest party that can join together Maximum number of splitscreen players to allow from one connection Is voice enabled always or via a push to talk keybinding SessionName local copy from Pla

## AGameState

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AGameState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameState](https://developer.gp.qq.com/api/#/searchContent/AGameState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameState)

类

全文搜索

GameState is a subclass of GameStateBase that behaves like a multiplayer match-based game. It is tied to functionality in GameMode.

---


## 函数

- **OnRep_MatchState**(Match state has changed)
- **OnRep_ElapsedTime**(Gives clients the chance to do something when time gets updates)
- **StringGetGeneralCampNameByCampID**(int32CampID)
- **CampRelationGetGeneralCampRelation**(int32 CampAID, int32CampBID)
- **GetGameModeGeneralDataAsset**(OnRep_MatchState OnRep_ElapsedTime GetGeneralCampNameByCampID GetGeneralCampRelation GetGameModeGeneralDataAsset)

## 属性

- **match** — state we are currently in Previous map state, used to handle if multiple transitions happen per frame Elapsed game time since match has started. MatchState PreviousMatchState ElapsedTime

## AGameStateBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AGameStateBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameStateBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameStateBase](https://developer.gp.qq.com/api/#/searchContent/AGameStateBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAGameStateBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AGameStateBase)

类

全文搜索

GameStateBase is a class that manages the game's global state, and is spawned by GameModeBase. It exists on both the client and the server and is fully replicated.

---


## 函数

- **GetServerWorldTimeSeconds**(Returns the simulated TimeSeconds on the server, will be synchronized on client and server)
- **GetServerWorldTimeSecondsForReplay**(Returns the simulated TimeSeconds on the server while playing replay, with fastforward skipped time considered)
- **HasBegunPlay**(Returns true if the world has started play (called BeginPlay on actors))
- **HasMatchStarted**(Returns true if the world has started match (called MatchStarted callbacks))
- **GetPlayerStartTime**(AController *Controller) — Returns the time that should be used as when a player started
- **GetPlayerRespawnDelay**(AController *Controller) — Returns how much time needs to be spent before a player can respawn
- **OnRep_GameModeClass**(GameModeBase class notification callback.)
- **OnRep_SpectatorClass**(Callback when we receive the spectator class)
- **OnRep_ReplicatedHasBegunPlay**(By default calls BeginPlay and StartMatch)
- **OnRep_ReplicatedWorldTimeSeconds**(float &OldValue) — Allows clients to calculate ServerWorldTimeSecondsDelta
- **OnRep_RecordControllerReplay**()
- **OnRep_PauseInfo**(GetServerWorldTimeSeconds GetServerWorldTimeSecondsForReplay HasBegunPlay HasMatchStarted GetPlayerStartTime GetPlayerRespawnDelay OnRep_GameModeClass OnRep_SpectatorClass OnRep_ReplicatedHasBegunPlay OnRep_ReplicatedWorldTimeSeconds OnRep_RecordControllerReplay OnRep_PauseInfo)

## 属性

- **of** — the server's game mode, assigned by GameModeBase. AGameModeBase *AuthorityGameMode Instance of the current game mode, exists only on the server. For non-authority clients, this will be NULL. Class used by spectators, assigned by GameModeBase. Array of all PlayerStates, maintained on both server and

## 委托

- voidOnPauseState(boolbIsPause)
- OnPauseState

## AInfo

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AInfo?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAInfo.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AInfo](https://developer.gp.qq.com/api/#/searchContent/AInfo?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAInfo.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AInfo)

类

全文搜索

Info is the base class of an Actor that isn't meant to have a physical representation in the world, used primarily for "manager" type classes that hold settings data about the world, but might need to be an Actor for replication purposes.

---


## 属性

- **Component** — displayed in editor SpriteComponent

## AInteractiveFoliageActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AInteractiveFoliageActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAInteractiveFoliageActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AInteractiveFoliageActor](https://developer.gp.qq.com/api/#/searchContent/AInteractiveFoliageActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAInteractiveFoliageActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AInteractiveFoliageActor)

类

全文搜索

---


## 函数

- **CapsuleTouched**(UPrimitiveComponent* OverlappedComp, AActor* Other, UPrimitiveComponent* OtherComp, int32 OtherBodyIndex, bool bFromSweep, FHitResult &OverlapInfo) — Called when capsule is touched CapsuleTouched

## 属性

- **cylinder** — Position of the last actor to enter the collision cylinder. This currently does not handle multiple actors affecting the foliage simultaneously. Simulated physics state @todo document @todo document Scales forces applied from damage events. Scales forces applied from touch events. Determines how st

## ALandscape

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ALandscape?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALandscape.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALandscape](https://developer.gp.qq.com/api/#/searchContent/ALandscape?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALandscape.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALandscape)

类

全文搜索

---


## 函数

- **BuildLandscapeStaticMesh**()
- **FUNCTION**(CallInEditor, Category = "Build Static Mesh", meta = (CallInEditor = "true") — BuildLandscapeStaticMesh

## ALandscapeProxy

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ALandscapeProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALandscapeProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALandscapeProxy](https://developer.gp.qq.com/api/#/searchContent/ALandscapeProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALandscapeProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALandscapeProxy)

类

全文搜索

---


## 函数

- **ChangebUseScreenSizeLOD**(boolInbUseScreenSizeLOD)
- **ChangeLODDistanceFactor**(floatInLODDistanceFactor) — Change the Level of Detail distance factor
- **ChangeLOD0DistributionSettingConsoleVariable**()
- **ChangeLODDistributionSettingConsoleVariable**()
- **EditorApplySpline**(USplineComponent* InSplineComponent, float StartWidth, float EndWidth, float StartSideFalloff, float EndSideFalloff, float StartRoll, float EndRoll, int32 NumSubdivisions, bool bRaiseHeights, bool bL) — Deform landscape using a given spline params StartWidth -- Width of the spline at the start node, in Spline Component local space params EndWidth - - Width of the spline at the end node, in Spline Component local space params StartSideFalloff -- Width of the falloff at either side of the spline at t
- **BakeLandscape**()
- **FUNCTION**(BlueprintNativeEvent, BlueprintNativeEvent, CallInEditor, Category = "Improve LOD")
- **DebugViewLandscapeCollision**()
- **FixPCOnlyWeightmapData**()
- **FixPCOnlyWeightmap**()
- **ChangeShowWeightmap**(ChangebUseScreenSizeLOD ChangeLODDistanceFactor ChangeLOD0DistributionSettingConsoleVariable ChangeLODDistributionSettingConsoleVariable EditorApplySpline BakeLandscape DebugViewLandscapeCollision FixPCOnlyWeightmapData FixPCOnlyWeightmap ChangeShowWeightmap)

## 属性

- **in** — quads from global components grid origin (in quads) Max LOD level to use when rendering, -1 means the max available Combined material used to render the landscape The distribution setting used to change the LOD 0 generation, 1.75 is the normal distribution, numbers influence directly the LOD0 propor

## ALandscapeStreamingProxy

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ALandscapeStreamingProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALandscapeStreamingProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALandscapeStreamingProxy](https://developer.gp.qq.com/api/#/searchContent/ALandscapeStreamingProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALandscapeStreamingProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALandscapeStreamingProxy)

类

全文搜索

---


## 属性

- **used** — to render grass color LandscapeActor LandscapeAOTexture

## ALevelBounds

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ALevelBounds?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALevelBounds.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALevelBounds](https://developer.gp.qq.com/api/#/searchContent/ALevelBounds?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALevelBounds.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALevelBounds)

类

全文搜索

Defines level bounds Updates bounding box automatically based on actors transformation changes or holds fixed user defined bounding box Uses only actors where AActor::IsLevelBoundsRelevant() == true

---


## 函数

- **SaveLevelBoudns**()
- **CaculateFoliageLevelBounds**(SaveLevelBoudns CaculateFoliageLevelBounds)

## 属性

- **to** — automatically update actor bounds based on all relevant actors bounds belonging to the same level bAutoUpdateBounds

## ALevelScriptActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ALevelScriptActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALevelScriptActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALevelScriptActor](https://developer.gp.qq.com/api/#/searchContent/ALevelScriptActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALevelScriptActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALevelScriptActor)

类

全文搜索

ALevelScriptActor is the base class for classes generated by ULevelScriptBlueprints. ALevelScriptActor instances are hidden actors that exist within a level, and can execute level-wide logic (operating on specific actor instances within the level). The level-script's functionality is defined inside the ULevelScriptBlueprint itself (using the blueprint's node-based interface). @see AActor @see ULevelScriptBlueprint @see UBlueprint

---


## 函数

- **RemoteEvent**(FNameEventName) — Tries to find an event named "EventName" on all other levels, and calls it
- **SetCinematicMode**(bool bCinematicMode, bool bHidePlayer, bool bAffectsHUD, bool bAffectsMovement, boolbAffectsTurning) — Sets the cinematic mode on all PlayerControllers params bHidePlayer - specify true to hide the player's pawn (only relevant if bInCinematicMode is true) params bAffectsHUD - specify true if we should showhide the HUD to match the value of bCinematicMode params bAffectsMovement -specify true to disab
- **LevelReset**()
- **WorldOriginLocationChanged**(FIntVector OldOriginLocation, FIntVectorNewOriginLocation) — Event called on world origin location changes params OldOriginLocation -Previous world origin location params NewOriginLocation -New world origin location RemoteEvent SetCinematicMode LevelReset WorldOriginLocationChanged

## ALevelSequenceActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ALevelSequenceActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALevelSequenceActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALevelSequenceActor](https://developer.gp.qq.com/api/#/searchContent/ALevelSequenceActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALevelSequenceActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALevelSequenceActor)

类

全文搜索

Actor responsible for controlling a specific level sequence in the world.

---


## 函数

- **GetSequence**(bool bLoad, boolbInitializePlayer) — Get the level sequence being played by this actor. return -Level sequence, or nullptr if not assigned or if it cannot be loaded. params bLoad -Whether to load the sequence object if it is not already in memory. params bInitializePlayer -Whether to initialize the player when the sequence has been loa
- **SetSequence**(ULevelSequence *InSequence) — Set the level sequence being played by this actor. params InSequence -The sequence object to set.
- **SetEventReceivers**(TArray < AActor* >AdditionalReceivers) — Set an array of additional actors that will receive events triggerd from this sequence actor params AdditionalReceivers -An array of actors to receive events
- **SetBinding**(FMovieSceneObjectBindingID Binding, TArray < AActor* >& Actors, boolbAllowBindingsFromAsset) — Overrides the specified binding with the specified actors, optionally still allowing the bindings defined in the Level Sequence asset
- **AddBinding**(FMovieSceneObjectBindingID Binding, AActor* Actor, boolbAllowBindingsFromAsset) — Adds the specified actor to the overridden bindings for the specified binding ID, optionally still allowing the bindings defined in the Level Sequence asset
- **RemoveBinding**(FMovieSceneObjectBindingID Binding, AActor *Actor) — Removes the specified actor from the specified binding's actor array
- **ResetBinding**(FMovieSceneObjectBindingIDBinding) — Resets the specified binding back to the defaults defined by the Level Sequence asset
- **ResetBindings**(Resets all overridden bindings back to the defaults defined by the Level Sequence asset)
- **MovieSceneObjectBindingIDUGCAddBinding**(AActor* Actor, FStringTrackName)
- **MovieSceneObjectBindingIDUGCRemoveBinding**(AActor* Actor, FStringTrackName)
- **ReceiveInitailizePlayer**()
- **SetOwnCharacter**(AActor *Actor) — GetSequence SetSequence SetEventReceivers SetBinding AddBinding RemoveBinding ResetBinding ResetBindings UGCAddBinding UGCRemoveBinding ReceiveInitailizePlayer SetOwnCharacter

## 属性

- **of** — actors to override the sequence bindings with Enable specification of dynamic instance data to be supplied to the sequence during playback Instance data that can be used to dynamically control sequence evaluation at runtime ULevelSequenceBurnIn *BurnInInstance Burn-in widget 所属玩家, feishen, 20210623

## ALevelStreamingVolume

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ALevelStreamingVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALevelStreamingVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALevelStreamingVolume](https://developer.gp.qq.com/api/#/searchContent/ALevelStreamingVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALevelStreamingVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALevelStreamingVolume)

类

全文搜索

---


## 属性

- **names** — affected by this level streaming volume. If true, this streaming volume should only be used for editor streaming level previs. If true, this streaming volume is ignored by the streaming volume code. Used to either disable a level streaming volume without disassociating it from the level, or to toggl

## ALight

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ALight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALight](https://developer.gp.qq.com/api/#/searchContent/ALight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALight)

类

全文搜索

---


## 函数

- **OnRep_bEnabled**(Replication Notification Callbacks)
- **SetEnabled**(boolbSetEnabled)
- **IsEnabled**()
- **ToggleEnabled**()
- **SetBrightness**(floatNewBrightness)
- **GetBrightness**()
- **SetLightColor**(FLinearColorNewLightColor)
- **LinearColorGetLightColor**()
- **SetLightFunctionMaterial**(UMaterialInterface *NewLightFunctionMaterial)
- **SetLightFunctionScale**(FVectorNewLightFunctionScale)
- **SetLightFunctionFadeDistance**(floatNewLightFunctionFadeDistance)
- **SetCastShadows**(boolbNewValue)
- **SetAffectTranslucentLighting**(boolbNewValue) — OnRep_bEnabled SetEnabled IsEnabled ToggleEnabled SetBrightness GetBrightness SetLightColor GetLightColor SetLightFunctionMaterial SetLightFunctionScale SetLightFunctionFadeDistance SetCastShadows SetAffectTranslucentLighting

## 属性

- **document** — replicated copy of LightComponent's bEnabled property LightComponent bEnabled

## ALODActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ALODActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALODActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALODActor](https://developer.gp.qq.com/api/#/searchContent/ALODActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALODActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALODActor)

类

全文搜索

---


## 属性

- **mesh** — proxy used to display this LOD The key used to validate this actor against the proxy what distance do you want this to show up instead of SubActors The hierarchy level of this actor; the first tier of HLOD is level 1, the second tier is level 2 and so on. UMaterialInstanceDynamic *HLODActorDebugDyna

## AMatineeActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AMatineeActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAMatineeActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AMatineeActor](https://developer.gp.qq.com/api/#/searchContent/AMatineeActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAMatineeActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AMatineeActor)

类

全文搜索

---


## 函数

- **Play**(Begin playback of the matinee. Only called in game. Will then advance Position by (PlayRate Deltatime) each time the matinee is ticked.)
- **Stop**(Stops playback at the current position)
- **Reverse**(Similar to play, but the playback will go backwards until the beginning of the sequence is reached.)
- **Pause**(Hold playback at its current position. Calling Pause again will continue playback in its current direction.)
- **SetPosition**(float NewPosition, boolbJump) — Set the position of the interpolation. params NewPosition -the new position to set the interpolation to params bJump -if true, teleport to the new position (don't trigger any events between the old and new positions, etc)
- **ChangePlaybackDirection**(Changes the direction of playback (go in reverse if it was going forward, or vice versa))
- **SetLoopingState**(boolbNewLooping) — Change the looping behaviour of this matinee
- **EnableGroupByName**(FString GroupName, boolbEnable) — Play Stop Reverse Pause SetPosition ChangePlaybackDirection SetLoopingState EnableGroupByName

## 属性

- **matinee** — data used by this actor Name of controller node in level script, used to know what function to try and find for events Time multiplier for playback. If true, the matinee will play when the level is loaded. Lets you force the sequence to always start at ForceStartPosition Time position to always star

## 委托

- voidOnPlay()
- Event triggered when the matinee is played for whatever reason
- voidOnStop()
- Event triggered when the matinee is stopped for whatever reason
- voidOnPause()
- Event triggered when the matinee is paused for whatever reason
- OnPlay
- OnStop
- OnPause

## AMatineeActorCameraAnim

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AMatineeActorCameraAnim?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAMatineeActorCameraAnim.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AMatineeActorCameraAnim](https://developer.gp.qq.com/api/#/searchContent/AMatineeActorCameraAnim?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAMatineeActorCameraAnim.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AMatineeActorCameraAnim)

类

全文搜索

Actor used to control temporary matinees for camera anims that only exist in the editor

---


## 属性

- **camera** — anim we are editing CameraAnim

## ANavigationData

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ANavigationData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavigationData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavigationData](https://developer.gp.qq.com/api/#/searchContent/ANavigationData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavigationData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavigationData)

类

全文搜索

Represents abstract Navigation Data (sub-classed as NavMesh, NavGraph, etc) Used as a common interface for all navigation types handled by NavigationSystem

---


## 属性

- **set** — to true then this navigation data will be drawing itself when requested as part of "show navigation" By default navigation will skip the first update after being successfully loaded setting bForceRebuildOnLoad to false can override this behavior If set, navigation data can act as default one in navi

## 委托

- TArray<FVector2D>BuildTileSortSeedLocationDelegate()
- BuildTileSortSeedLocationDelegate

## ANavigationObjectBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ANavigationObjectBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavigationObjectBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavigationObjectBase](https://developer.gp.qq.com/api/#/searchContent/ANavigationObjectBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavigationObjectBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavigationObjectBase)

类

全文搜索

---


## 属性

- **editor** — sprite. UBillboardComponent *BadSprite Used to draw bad collision intersection in editor. True if this nav point was spawned to be a PIE player start. CapsuleComponent GoodSprite BadSprite bIsPIEPlayerStart

## ANavigationTestingActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ANavigationTestingActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavigationTestingActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavigationTestingActor](https://developer.gp.qq.com/api/#/searchContent/ANavigationTestingActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavigationTestingActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavigationTestingActor)

类

全文搜索

---


## 属性

- **document** — ANavigationData *MyNavData if set, all steps of A algorithm will be accessible for debugging show polys from open (orange) and closed (yellow) sets show current best path show which nodes were modified in current A step determines which cost will be shown text canvas offset to apply Time in micro s

## ANavLinkProxy

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ANavLinkProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavLinkProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavLinkProxy](https://developer.gp.qq.com/api/#/searchContent/ANavLinkProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavLinkProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavLinkProxy)

类

全文搜索

---


## 函数

- **ReceiveSmartLinkReached**(AActor* Agent, FVector &Destination)
- **ResumePathFollowing**()
- **ResumePathFollowing**(AActor *Agent) — resume normal path following
- **IsSmartLinkEnabled**(check if smart link is enabled)
- **SetSmartLinkEnabled**(boolbEnabled) — change state of smart link
- **HasMovingAgents**(check if any agent is moving through smart link right now ReceiveSmartLinkReached ResumePathFollowing IsSmartLinkEnabled SetSmartLinkEnabled HasMovingAgents)

## 属性

- **links** — (point to point) added to navigation data Navigation links (segment to segment) added to navigation data @todo hidden from use until we fix segment links. Not really working now UNavLinkCustomComponent *SmartLinkComp Smart link: can affect path following Smart link: toggle relevancy UNavLinkRenderin

## 委托

- voidOnSmartLinkReached(AActor*MovingActor, const FVector&DestinationPoint)
- OnSmartLinkReached

## ANavModifierVolume

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ANavModifierVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavModifierVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavModifierVolume](https://developer.gp.qq.com/api/#/searchContent/ANavModifierVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavModifierVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavModifierVolume)

类

全文搜索

Allows applying selected AreaClass to navmesh, using Volume's shape

---


## 函数

- **SetAreaClass**(TSubclassOf < UNavArea >NewAreaClass) — SetAreaClass

## AOcean

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AOcean?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAOcean.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AOcean](https://developer.gp.qq.com/api/#/searchContent/AOcean?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAOcean.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AOcean)

类

全文搜索

---


## 属性

- **UOceanMeshComponent** — OceanMeshComponent; UOceanCDLODMeshComponent *OceanCDLODMeshComponent UTexture2D *Disfield UTexture2D *IndirectMap baking information's(collected coastline informations) resolution is multiple of 126, texture is multiple of 128,this para record the multiples UPROPERTY(Category = DistanceField, EditA
- **DistanceFieldBlurStep** — ; OceanFFTComponent OceanGerstnerComponent OceanCDLODMeshComponent Disfield IndirectMap DFResolutionUintNum DistanceFieldParas bDistanceFieldinfoBaked

## ARadialForceActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ARadialForceActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FARadialForceActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ARadialForceActor](https://developer.gp.qq.com/api/#/searchContent/ARadialForceActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FARadialForceActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ARadialForceActor)

类

全文搜索

---


## 函数

- **FireImpulse**()
- **EnableForce**()
- **DisableForce**()
- **ToggleForce**(FireImpulse EnableForce DisableForce ToggleForce)

## 属性

- **component** — UBillboardComponent *SpriteComponent ForceComponent SpriteComponent

## ARecastNavMesh

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ARecastNavMesh?classDetailShow=true&path=class%2Fdetail%2FOthers%2FARecastNavMesh.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ARecastNavMesh](https://developer.gp.qq.com/api/#/searchContent/ARecastNavMesh?classDetailShow=true&path=class%2Fdetail%2FOthers%2FARecastNavMesh.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ARecastNavMesh)

类

全文搜索

---


## 属性

- **we** — draw edges of every navmesh's triangle should we draw edges of every poly (i.e. not only border-edges) if disabled skips filling drawn navmesh polygons should we draw border-edges should we draw the tile boundaries Draw input geometry passed to the navmesh generator. Recommend disabling other geomet
- **switch** — to disable new code from OffsetFromCorners if necessary - remove it later If set, tiles generated without any navmesh data will be marked to distinguish them from not generated streamed out ones. Defaults to false. Indicates whether default navigation filters will use virtual functions. Defaults to

## ASceneCapture2D

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASceneCapture2D?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASceneCapture2D.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASceneCapture2D](https://developer.gp.qq.com/api/#/searchContent/ASceneCapture2D?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASceneCapture2D.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASceneCapture2D)

类

全文搜索

---


## 函数

- **OnInterpToggle**(boolbEnable) — OnInterpToggle

## 属性

- **capture** — component. UDrawFrustumComponent *DrawFrustum To allow drawing the camera frustum in the editor. CaptureComponent2D DrawFrustum

## ASceneCaptureCube

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASceneCaptureCube?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASceneCaptureCube.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASceneCaptureCube](https://developer.gp.qq.com/api/#/searchContent/ASceneCaptureCube?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASceneCaptureCube.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASceneCaptureCube)

类

全文搜索

---


## 函数

- **OnInterpToggle**(boolbEnable) — OnInterpToggle

## 属性

- **capture** — component. UDrawFrustumComponent *DrawFrustum To allow drawing the camera frustum in the editor. CaptureComponentCube DrawFrustum

## ASkeletalMeshActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASkeletalMeshActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASkeletalMeshActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASkeletalMeshActor](https://developer.gp.qq.com/api/#/searchContent/ASkeletalMeshActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASkeletalMeshActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASkeletalMeshActor)

类

全文搜索

SkeletalMeshActor is an instance of a USkeletalMesh in the world. Skeletal meshes are deformable meshes that can be animated and change their geometry at run-time. Skeletal meshes dragged into the level from the Content Browser are automatically converted to StaticMeshActors. @see USkeletalMesh

---


## 函数

- **OnRep_ReplicatedMesh**(Replication Notification Callbacks)
- **OnRep_ReplicatedPhysAsset**()
- **OnRep_ReplicatedMaterial0**()
- **OnRep_ReplicatedMaterial1**(OnRep_ReplicatedMesh OnRep_ReplicatedPhysAsset OnRep_ReplicatedMaterial0 OnRep_ReplicatedMaterial1)

## 属性

- **or** — not this actor should respond to anim notifies - CURRENTLY ONLY AFFECTS PlayParticleEffect NOTIFIES USkeletalMeshComponent *SkeletalMeshComponent USkeletalMesh *ReplicatedMesh Used to replicate mesh to clients UPhysicsAsset *ReplicatedPhysAsset Used to replicate physics asset to clients UMaterialInt

## ASkyLight

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASkyLight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASkyLight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASkyLight](https://developer.gp.qq.com/api/#/searchContent/ASkyLight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASkyLight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASkyLight)

类

全文搜索

---


## 函数

- **OnRep_bEnabled**(Replication Notification Callbacks OnRep_bEnabled)

## 属性

- **document** — replicated copy of LightComponent's bEnabled property LightComponent bEnabled

## ASphereReflectionCapture

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASphereReflectionCapture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASphereReflectionCapture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASphereReflectionCapture](https://developer.gp.qq.com/api/#/searchContent/ASphereReflectionCapture?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASphereReflectionCapture.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASphereReflectionCapture)

类

全文搜索

Actor used to capture the scene for reflection in a sphere shape.

---


## 属性

- **component** — used to visualize the capture radius DrawCaptureRadius

## ASpotLight

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASpotLight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASpotLight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASpotLight](https://developer.gp.qq.com/api/#/searchContent/ASpotLight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASpotLight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASpotLight)

类

全文搜索

---


## 函数

- **SetInnerConeAngle**(floatNewInnerConeAngle)
- **SetOuterConeAngle**(floatNewOuterConeAngle) — SetInnerConeAngle SetOuterConeAngle

## AStaticMeshActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AStaticMeshActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAStaticMeshActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AStaticMeshActor](https://developer.gp.qq.com/api/#/searchContent/AStaticMeshActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAStaticMeshActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AStaticMeshActor)

类

全文搜索

StaticMeshActor is an instance of a UStaticMesh in the world. Static meshes are geometry that do not animate or otherwise deform, and are more efficient to render than other types of geometry. Static meshes dragged into the level from the Content Browser are automatically converted to StaticMeshActors. @see UStaticMesh

---


## 属性

- **static** — mesh should replicate movement. Automatically sets the RemoteRole and bReplicateMovement flags. Meant to be edited on placed actors (those other two properties are not) ENavDataGatheringModeNavigationGeometryGatheringMode StaticMeshComponent bStaticMeshReplicateMovement NavigationGeometryGatheringMo

## ASTExtraBaseCharacter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASTExtraBaseCharacter?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E4%B8%BB%E8%A7%92%E7%B1%BB%EF%BC%88PlayerPawn%EF%BC%89%2FASTExtraBaseCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraBaseCharacter](https://developer.gp.qq.com/api/#/searchContent/ASTExtraBaseCharacter?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E4%B8%BB%E8%A7%92%E7%B1%BB%EF%BC%88PlayerPawn%EF%BC%89%2FASTExtraBaseCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraBaseCharacter)

类

全文搜索

主角类（PlayerPawn）

---


## 函数

- **DSTeleportToLocationOrRotation**(FVector location, FRotator rotation, bool setLoc, bool setRot, bool ResetVelocity, boolbRecordTeleportInfo) — 生效范围：服务器 传送主角，只有服务器上调用生效，客户端调用无效 params location -位置 params rotation -旋转 params setLoc -是否修改位置 params setRot -是否修改旋转 params ResetVelocity -是否重置速度 params bRecordTeleportInfo -是否记录传送时间用于射击校验，如无特殊需求保持默认配置 事件
- **UGC_WeaponShootBulletEvent**(ASTExtraShootWeapon* ShootWeapon, ASTExtraShootWeaponBulletBase *Bullet) — 发射子弹事件 生效范围C params ShootWeapon -射击武器 params Bullet -子弹
- **UGC_WeaponBulletHitEvent**(ASTExtraShootWeapon* ShootWeapon, ASTExtraShootWeaponBulletBase* Bullet, FHitResultHitInfo) — 子弹命中事件 生效范围SC params ShootWeapon -射击武器 params Bullet -子弹 params HitInfo -命中信息
- **UGC_ChangeCurrentUsingWeaponEvent**(ESurviveWeaponPropSlot UsingWeaponSlot, ESurviveWeaponPropSlotLastSlot) — 当前武器变化事件 生效范围SC params UsingWeaponSlot -当前武器插槽 params LastSlot -上次武器插槽
- **UGC_EquipWeaponEvent**(ESurviveWeaponPropSlotSlot) — 装备武器事件，仅装备在身上，非当前手持武器 生效范围SC
- **UGC_WeaponStartFireEvent**(ESTEWeaponShootType :: typeisAuto) — 开火调用事件，仅在按下开火时调用一次 生效范围SC params isAuto -是否自动开火
- **UGC_WeaponStopFireEvent**(停火调用事件 生效范围SC)
- **UGC_WeaponSwitchEvent**(切换武器事件 生效范围C)
- **UGC_ReloadStartEvent**(开始换弹事件 生效范围SC)
- **UGC_ReloadEndEvent**(换弹结束事件 生效范围SC)
- **UGC_OpenScopeEvent**(开镜事件 生效范围C)
- **UGC_CloseScopeEvent**(开镜结束事件 生效范围C)
- **UGC_EnterPawnStateEvent**(EPawnStatePawnState) — 进入某个PawnState事件 生效范围SC params PawnState -进入的PawnState
- **UGC_LeavePawnStateEvent**(EPawnStatePawnState) — 离开某个PawnState事件 生效范围SC params PawnState -离开的PawnState
- **UGC_PlayerPickUpEvent**(玩家拾取事件 生效范围SC)
- **UGC_PlayerDeadEvent**(AController* Killer, EDamageType :: DamageTypeDamageType) — 玩家死亡事件 生效范围SC params Killer -把该角色淘汰的玩家 params DamageType -伤害类型
- **UGC_TakeDamageOverrideEvent**(float Damage, EDamageType :: DamageType DamageType, AController* EventInstigator, AActor* DamageCauser, FHitResultHit) — 重载伤害事件，返回值为修改后的伤害 生效范围S return -修改后伤害值 params Damage -伤害类型 params DamageType -造成伤害的玩家 params EventInstigator -造成伤害的玩家 params DamageCauser -把该角色淘汰的玩家 params Hit -伤害命中信息 DSTeleportToLocationOrRotation 事件 UGC_WeaponShootBulletEvent UGC_WeaponBulletHitEvent UGC_ChangeCurrentUsingWeaponEvent UGC_EquipWea

## ASTExtraCharacter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASTExtraCharacter?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%A7%92%E8%89%B2%E7%B1%BB%EF%BC%88Pawn%EF%BC%89%2FASTExtraCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraCharacter](https://developer.gp.qq.com/api/#/searchContent/ASTExtraCharacter?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%A7%92%E8%89%B2%E7%B1%BB%EF%BC%88Pawn%EF%BC%89%2FASTExtraCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraCharacter)

类

全文搜索

角色类

事件

int32UGC_GetDamageNumberConfigIndex(float Damage, bool bHeadShot, AController * EventInstigator, AActor * DamageCauser, int32DamageTypeID)

获取伤害数字配置索引

生效范围C

params Damage

-伤害数值

params bHeadShot

-是否爆头

params EventInstigator

-伤害来源Controller

params DamageCauser

-伤害来源物体

params DamageTypeID

-伤害类型

floatUGC_PreTakeDamageEvent(float Damage, AController * EventInstigator, FDamageEvent DamageEvent, AActor *DamageCauser)

受到伤害前，返回值可以修改伤害值

生效范围S

return

-修改后伤害值

params Damage

-当前伤害值，

params DamageEvent

-伤害类型

params DamageCauser

-把该角色淘汰的玩家

---


## 委托

- voidUGC_OnHPChangedDelegate(floatHP, floatHPChanged)
- Delegate
- 生效范围SC
- 怪物血量变化
- params HP
- -当前血量
- params HPChanged
- -血量变化值
- voidUGC_OnTakeDamageDelegate(floatDamage, AController*EventInstigator, FDamageEventDamageEvent, AActor*DamageCauser)
- Delegate
- 生效范围S
- 受到伤害后
- params Damage
- -当前伤害值，
- params DamageEvent
- -伤害类型
- params DamageCauser
- -把该角色淘汰的玩家
- 事件
- UGC_GetDamageNumberConfigIndex
- UGC_PreTakeDamageEvent
- UGC_OnHPChangedDelegate
- UGC_OnTakeDamageDelegate

## ASTExtraGameStateBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASTExtraGameStateBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASTExtraGameStateBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraGameStateBase](https://developer.gp.qq.com/api/#/searchContent/ASTExtraGameStateBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASTExtraGameStateBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraGameStateBase)

类

全文搜索

游戏状态基类

---


## 委托

- FUGCItemUsefulTypeUGCPickupUsefulDelegate(FItemDefineIDdefineID)
- 推荐拾取处理委托
- FUGCAutoPickTypeUGCAutoPickupItemDelegate(FItemDefineIDdefineID)
- 自动拾取处理委托
- UGCPickupUsefulDelegate
- UGCAutoPickupItemDelegate

## ASTExtraPlayerController

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASTExtraPlayerController?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%A7%92%E8%89%B2%E6%8E%A7%E5%88%B6%E7%B1%BB%EF%BC%88PlayerController%EF%BC%89%2FASTExtraPlayerController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraPlayerController](https://developer.gp.qq.com/api/#/searchContent/ASTExtraPlayerController?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%A7%92%E8%89%B2%E6%8E%A7%E5%88%B6%E7%B1%BB%EF%BC%88PlayerController%EF%BC%89%2FASTExtraPlayerController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraPlayerController)

类

全文搜索

主角控制器

---


## 函数

- **GetPlayerCharacterSafety**(获得主角Pawn,如果正在观战,取出来是nullptr return -主角Pawn 事件)
- **UGCMoveEvent**(FVector2DAxis) — 角色移动控制事件，需要通过接口GameSystem.SetMoveInputEventEnable开启，每次触发会执行两次该事件，分别返回X和Y值 params Axis -向量单位，取值范围（-1~1）
- **UGCLookEvent**(FVector2DRot) — 玩家转向控制事件，需要通过接口GameSystem.SetLookInputEventEnable开启，每次触发会执行两次该事件，分别返回X和Y值 params Rot -向量单位，取值范围（-1~1）
- **UGC_PlayerLostConnectionEvent**(玩家断线事件。)
- **UGC_PlayerReconnectedEvent**(boolIsRecovered) — 玩家重连事件。 params IsRecovered -是否为静默重连，为false则为杀进程重连
- **UGC_InitializationCompleteEvent**(初始化完毕 生效范围S)
- **UGC_PickupItemEvent**(int32 ItemID, int32Count) — 获取道具事件，可控制当前道具是否允许获取 生效范围S return -是否允许拾取 params ItemID -物品ID params Count -拾取数量 (-1表示此时数量未知)
- **UGC_SwitchWeaponControlEvent**(ESurviveWeaponPropSlotSwitchSlot) — 切换武器控制事件，可控制当前武器是否允许切换，返回false则无法切换 生效范围C return -是否允许切换 params SwitchSlot -武器槽位
- **UGC_StartFireControlEvent**(开火控制事件，可控制是否允许开火，返回false则无法开火 生效范围C return -是否允许开火)
- **UGC_ReloadControlEvent**(换弹控制事件，可控制是否允许换弹，返回false则无法换弹 生效范围C return -是否允许开火)
- **UGC_OpenScopeControlEvent**(开镜控制事件，可控制是否允许开镜，返回false则无法开镜 生效范围C return -是否允许开镜)
- **UGC_ThrowGrenadeEvent**(投掷控制事件，可控制是否允许投掷，返回false则无法投掷 生效范围C return -是否允许投掷)
- **UGC_IsSpectatingEvent**(boolbIsSpec) — 是否在观战事件 生效范围SC return -是否在观战
- **UGC_FingerMoveEvent**(ETouchIndex :: Type FingerIndex, FVectorLoc) — 手指移动事件 生效范围SC
- **UGC_ReleaseScreenEvent**(ETouchIndex :: TypeFingerIndex) — 松开屏幕事件 生效范围SC
- **UGC_TouchScreenEvent**(ETouchIndex :: Type FingerIndex, FVectorLoc) — 触摸屏幕事件 生效范围SC GetPlayerCharacterSafety 事件 UGCMoveEvent UGCLookEvent UGC_PlayerLostConnectionEvent UGC_PlayerReconnectedEvent UGC_InitializationCompleteEvent UGC_PickupItemEvent UGC_SwitchWeaponControlEvent UGC_StartFireControlEvent UGC_ReloadControlEvent UGC_OpenScopeControlEvent UGC_ThrowGrenadeEve

## ASTExtraShootWeapon

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASTExtraShootWeapon?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASTExtraShootWeapon.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraShootWeapon](https://developer.gp.qq.com/api/#/searchContent/ASTExtraShootWeapon?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASTExtraShootWeapon.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraShootWeapon)

类

全文搜索

射击武器类

---


## 委托

- voidOnShootWeaponAutoReloadDel()
- Delegate
- 生效范围C
- 自动换弹事件
- voidOnCurBulletChange()
- Delegate
- 生效范围SC
- 弹药数量变化事件。注：手动修改会触发开火消耗子弹不触发
- voidOnCurBarrelBulletChangeDelegate()
- Delegate
- 生效范围C
- 膛内弹药数量变化代理
- voidOnStartFireDelegate()
- Delegate
- 生效范围SC
- 开火事件
- voidOnStopFireDelegate()
- Delegate
- 生效范围SC
- 停火事件
- voidOnWeaponShootDelegate()
- Delegate
- 生效范围C
- 射击事件
- voidOnWeaponReloadStartDelegate()
- Delegate
- 生效范围SC
- 开始换弹事件
- voidOnWeaponReloadEndDelegage()
- Delegate
- 生效范围SC
- 结束换弹事件
- voidOnWeaponEquipDelegate()
- Delegate
- 生效范围SC
- 武器装备事件
- voidOnWeaponUnEquipDelegate()
- Delegate
- 生效范围SC
- 武器卸载事件
- voidOnLeftLastBulletWhenReloadOneByOneDelegate(int32RemainNum)
- Delegate
- 生效范围SC
- 最后一发换弹通知事件
- voidOnBulletHitDelegate(AActor*InHitActor, floatImpactPosDistanceToWeapon, APawn*Player)
- Delegate
- 生效范围S
- 射击武器命中事件
- voidOnShootIntervalModeChangeDelegate()
- Delegate
- 生效范围SC
- 改变射速模式事件（指的是改变了武器拥有的射速模式）
- voidOnChangeAmmoDelegate(FItemDefineIDAmmoDefineID)
- Delegate
- 生效范围SC
- 切换武器弹药种类事件
- voidOnClipAmmoDataChangeDelegate()
- Delegate
- 生效范围SC
- 武器弹夹内弹药数据发生变化事件
- voidOnExplosionProjectileBulletExplodeDelegate(AActor*Bullet)
- Delegate
- 生效范围SC
- 炮弹爆炸事件
- voidOnScopeIn()
- Delegate
- 生效范围C
- 开镜事件
- voidOnScopeOut()
- Delegate
- 生效范围C
- 关镜事件
- voidOnMaxBulletChange()
- Delegate
- 生效范围SC
- 最大弹药数量变化事件
- voidOnBulletPreShootDelegate(ASTExtraShootWeaponBulletBase*Bullet)
- Delegate
- 生效范围C
- 子弹射出预处理事件，带有子弹参数
- voidOnBulletBeforeShootDelegate(ASTExtraShootWeaponBulletBase*Bullet)
- Delegate
- 生效范围C
- 子弹射出事件，带有子弹参数
- voidOnBulletPostShootDelegate(ASTExtraShootWeaponBulletBase*Bullet)
- Delegate
- 生效范围C
- 子弹射出后理事件，带有子弹参数
- OnShootWeaponAutoReloadDel
- OnCurBulletChange
- OnCurBarrelBulletChangeDelegate
- OnStartFireDelegate
- OnStopFireDelegate
- OnWeaponShootDelegate
- OnWeaponReloadStartDelegate
- OnWeaponReloadEndDelegage
- OnWeaponEquipDelegate
- OnWeaponUnEquipDelegate
- OnLeftLastBulletWhenReloadOneByOneDelegate
- OnBulletHitDelegate
- OnShootIntervalModeChangeDelegate
- OnChangeAmmoDelegate
- OnClipAmmoDataChangeDelegate
- OnExplosionProjectileBulletExplodeDelegate
- OnScopeIn
- OnScopeOut
- OnMaxBulletChange
- OnBulletPreShootDelegate
- OnBulletBeforeShootDelegate
- OnBulletPostShootDelegate

## ASTExtraVehicleBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASTExtraVehicleBase?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%BD%BD%E5%85%B7%E5%9F%BA%E7%B1%BB%2FASTExtraVehicleBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraVehicleBase](https://developer.gp.qq.com/api/#/searchContent/ASTExtraVehicleBase?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%BD%BD%E5%85%B7%E5%9F%BA%E7%B1%BB%2FASTExtraVehicleBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraVehicleBase)

类

全文搜索

载具基类

事件

voidUGC_OnVehicleEnterEvent(bool IsSucc, ASTExtraPlayerCharacter * Character, ESTExtraVehicleSeatTypeSeatType)

玩家进入载具事件

生效范围CS

params IsSucc

-上车是否成功

params Character

-乘客

params SeatType

-座位类型

voidUGC_OnVehicleExitEvent(ASTExtraPlayerCharacter *Character)

玩家离开载具事件

生效范围CS

params Character

-乘客

---


## 委托

- voidUGC_OnVehicleHealthStateChangedDelegate(ESTExtraVehicleHealthStateInVehicleHealthState)
- 载具健康状态变化
- 生效范围 CS
- params InVehicleHealthState
- -变化后的健康状态
- voidUGC_OnVehicleExplosionDelegate()
- 生效范围S
- 载具爆炸事件
- 事件
- UGC_OnVehicleEnterEvent
- UGC_OnVehicleExitEvent
- UGC_OnVehicleHealthStateChangedDelegate
- UGC_OnVehicleExplosionDelegate

## ASTExtraWeapon

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASTExtraWeapon?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E6%AD%A6%E5%99%A8%2FASTExtraWeapon.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraWeapon](https://developer.gp.qq.com/api/#/searchContent/ASTExtraWeapon?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E6%AD%A6%E5%99%A8%2FASTExtraWeapon.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraWeapon)

类

全文搜索

武器基类

---


## 委托

- voidOnWeaponDrawHUDDelegate(UHUDWidgetBase*WeaponHudWidget, UCanvas*Canvas)
- Delegate
- 生效范围C
- 武器绘制HUD事件，传入武器的HUDWidiget， Canvas
- voidOnPressingWeaponFuncBtnDelegate(floatDeltaTime)
- Delegate
- 生效范围C
- 持续按键事件，有DeltaTime传入
- voidUGC_AttachmentChangeDelegate(int32AttachHandleID, boolIsEquip)
- 武器配件装卸委托
- 生效范围SC
- return
- -void
- params AttachHandleID
- -配件ID
- params IsEquip
- -是否是装备配件
- voidOnWeaponTriggerEventDelegate(EWeaponTriggerEventEvent, const FString&EventData)
- Delegate
- 生效范围C
- 武器按键事件
- voidOnWeaponAttachToBackpackDelegate()
- Delegate
- 生效范围SC
- 武器挂背事件
- OnWeaponDrawHUDDelegate
- OnPressingWeaponFuncBtnDelegate
- UGC_AttachmentChangeDelegate
- OnWeaponTriggerEventDelegate
- OnWeaponAttachToBackpackDelegate

## AUGCGameModeBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCGameModeBase?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E6%B8%B8%E6%88%8F%E6%A8%A1%E5%BC%8F%E7%B1%BB%EF%BC%88GameMode%EF%BC%89%2FAUGCGameModeBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCGameModeBase](https://developer.gp.qq.com/api/#/searchContent/AUGCGameModeBase?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E6%B8%B8%E6%88%8F%E6%A8%A1%E5%BC%8F%E7%B1%BB%EF%BC%88GameMode%EF%BC%89%2FAUGCGameModeBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCGameModeBase)

类

全文搜索

游戏模式类

事件

voidUGC_PlayerPreLoadingEvent(int64 UID, int64 PlayerKey, int32TeamID)

玩家预加载事件，此时玩家还在Loading中，尚未触发PostLogin，PlayerController尚未创建。

生效范围S

params UID

-UID

params PlayerKey

-PlayerKey

params TeamID

-队伍ID

voidUGC_PlayerLoginEvent(APlayerController *PlayerController)

玩家Loading结束，进入游戏，PlayerController创建完毕，且数据初始化完成。

生效范围S

params PlayerController

-玩家控制器

voidUGC_PlayerExitEvent(APlayerController *PlayerController)

玩家离开，PlayerController，PlayerPawn，PlayerState等玩家信息即将销毁。

生效范围S

params PlayerController

-玩家控制器

voidUGC_PlayerKilledEvent(AController * Killer, AController * VictimPlayer, APawn * VictimPawn, EDamageType :: DamageTypeDamageType)

玩家被淘汰事件。

生效范围S

params Killer

-淘汰对方的玩家

params VictimPlayer

-被淘汰玩家

params VictimPawn

-被淘汰玩家Pawn

params DamageType

-伤害类型

voidUGC_PlayerRespawnEvent(AController *RespawnedController)

玩家复活事件。

生效范围S

params RespawnedController

-被复活的Controller

voidUGC_SpawnedAIEvent(AAIController *NewAIController)

AI创建事件，此时AIController创建完毕，且数据初始化完成。

生效范围S

params NewAIController

-新创建的AIController

voidUGC_PlayerPickUpEvent(ASTExtraPlayerController * PlayerController, AActor * Target, int32 ItemResId, int32PickCount)

玩家拾取事件

生效范围S

params PlayerController

-玩家控制器

params Target

-拾取的目标,盒子Actor或者单个掉落物

params ItemResId

-拾取到的物品资源id

params PickCount

-拾取的数量

事件

UGC_PlayerPreLoadingEvent

UGC_PlayerLoginEvent

UGC_PlayerExitEvent

UGC_PlayerKilledEvent

UGC_PlayerRespawnEvent

UGC_SpawnedAIEvent

UGC_PlayerPickUpEvent

---

## AUGCGameModeTDM

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCGameModeTDM?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCGameModeTDM.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCGameModeTDM](https://developer.gp.qq.com/api/#/searchContent/AUGCGameModeTDM?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCGameModeTDM.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCGameModeTDM)

类

全文搜索

团竞游戏模式类

事件

voidUGC_PlayerPreLoadingEvent(int64 UID, int64 PlayerKey, int32TeamID)

玩家预加载事件，此时玩家还在Loading中，尚未触发PostLogin，PlayerController尚未创建。

生效范围S

params UID

-UID

params PlayerKey

-PlayerKey

params TeamID

-队伍ID

voidUGC_PlayerLoginEvent(APlayerController *PlayerController)

玩家Loading结束，进入游戏，PlayerController创建完毕，且数据初始化完成。

生效范围S

params PlayerController

-玩家控制器

voidUGC_PlayerExitEvent(APlayerController *PlayerController)

玩家离开，PlayerController，PlayerPawn，PlayerState等玩家信息即将销毁。

生效范围S

params PlayerController

-玩家控制器

voidUGC_PlayerKilledEvent(AController * Killer, AController * VictimPlayer, APawn * VictimPawn, EDamageType :: DamageTypeDamageType)

玩家被淘汰事件。

生效范围S

params Killer

-淘汰对方的玩家

params VictimPlayer

-被淘汰玩家

params VictimPawn

-被淘汰玩家Pawn

params DamageType

-伤害类型

voidUGC_PlayerRespawnEvent(AController *RespawnedController)

玩家复活事件。

生效范围S

params RespawnedController

-被复活的Controller

voidUGC_SpawnedAIEvent(AAIController *NewAIController)

AI创建事件，此时AIController创建完毕，且数据初始化完成。

生效范围S

params NewAIController

-新创建的AIController

voidUGC_PlayerPickUpEvent(ASTExtraPlayerController * PlayerController, AActor * Target, int32 ItemResId, int32PickCount)

玩家拾取事件

生效范围S

params PlayerController

-玩家控制器

params Target

-拾取的目标,盒子Actor或者单个掉落物

params ItemResId

-拾取到的物品资源id

params PickCount

-拾取的数量

事件

UGC_PlayerPreLoadingEvent

UGC_PlayerLoginEvent

UGC_PlayerExitEvent

UGC_PlayerKilledEvent

UGC_PlayerRespawnEvent

UGC_SpawnedAIEvent

UGC_PlayerPickUpEvent

---

## AUGCGenericCharacter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCGenericCharacter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCGenericCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCGenericCharacter](https://developer.gp.qq.com/api/#/searchContent/AUGCGenericCharacter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCGenericCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCGenericCharacter)

类

全文搜索

怪物角色类

---


## 函数

- **GetBlackBoardComponent**(获取黑板组件 生效范围：服务器)
- **SetForceHatredTarget**(AActor *NewTarget) — 设置当前强制仇恨目标 生效范围：服务器 params NewTarget -仇恨目标
- **RemoveForceHatredTarget**(清除强制仇恨目标 生效范围：服务器)
- **AddTargetHatredValue**(AActor* Target, floatHatredValue) — 增加目标仇恨值 生效范围：服务器 params Target -目标 事件
- **OnEnterTagState_BP**(FGameplayTagDynamicState) — 状态进入事件 生效范围：服务器&客户端 params DynamicState -进入状态
- **OnLeaveTagState_BP**(FGameplayTagDynamicState) — 状态退出事件 生效范围：服务器&客户端 params DynamicState -退出状态
- **OnInterruptTagState_BP**(FGameplayTagDynamicState) — 状态打断事件 生效范围：服务器&客户端 params DynamicState -打断状态
- **OnBehaviorNotify_BP**(FString &NotifyMsg) — 行为树消息 生效范围：服务器 params NotifyMsg -消息
- **OnArriveWaypoint_BP**(int32 &WaypointIndex) — 行为树消息 生效范围：服务器 GetBlackBoardComponent SetForceHatredTarget RemoveForceHatredTarget AddTargetHatredValue 事件 OnEnterTagState_BP OnLeaveTagState_BP OnInterruptTagState_BP OnBehaviorNotify_BP OnArriveWaypoint_BP

## 委托

- voidOnCreateHealthWidget(UUGCGenericCharacterPositionWidget*HealthWidget)
- 血条创建成功事件
- OnCreateHealthWidget

## AUGCItemSpawner

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCItemSpawner?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCItemSpawner.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCItemSpawner](https://developer.gp.qq.com/api/#/searchContent/AUGCItemSpawner?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCItemSpawner.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCItemSpawner)

类

全文搜索

物资刷新系统：物资刷新器

---


## 函数

- **SpawnItem**(int32 ItemID, int32ItemCount) — 生效范围 服务器 刷物资 return -刷出的物资 params ItemID -物资ID params ItemCount -物资数量
- **SetItemConfig**(FUGCItemSpawnerItemConfigInItemConfig) — 生效范围 服务器 修改物资刷新配置 params InItemConfig -新的物资刷新配置
- **CleanItems**(生效范围 服务器 清除刷出的物资 return -刷出的物资 事件)
- **OnItemsSpawn**(TArray < AActor* > &Items) — 生效范围 服务器 物资刷出事件
- **OnAllItemsArePick**(生效范围 服务器 所有物资都被拾取)
- **CustomSpawnItem**(TMap < FString , FString > &CustomParam) — 生效范围 服务器 覆写该事件来自定义物资刷出流程 params CustomParam -自定义参数列表 SpawnItem SetItemConfig CleanItems 事件 OnItemsSpawn OnAllItemsArePick CustomSpawnItem

## AUGCItemSpawnerManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCItemSpawnerManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FAUGCItemSpawnerManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCItemSpawnerManager](https://developer.gp.qq.com/api/#/searchContent/AUGCItemSpawnerManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FAUGCItemSpawnerManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCItemSpawnerManager)

类

全文搜索

生成系统：物资生成管理器

---


## 函数

- **StartSpawnerManager**(生效范围 服务器 启动管理器)
- **ResetSpawnerManager**(生效范围 服务器 重置管理器)
- **CleanAllItem**(生效范围 服务器 清理刷出的物资)
- **PauseSpawnerManager**(生效范围 服务器 暂停物资刷新管理器)
- **ResumeSpawnerManager**(生效范围 服务器 恢复物资刷新管理器)
- **SetItemConfigOverrideForSpawner**(FUGCItemSpawnerItemConfig InItemConfig, int32SpawnerIndex) — 生效范围 服务器 修改特定刷新点的物资配置 params InItemConfig -新的物资刷新配置
- **SetItemConfigOverride**(FUGCItemSpawnerItemConfigInItemConfig) — 生效范围 服务器 修改所有刷新点的物资配置 params InItemConfig -新的物资刷新配置
- **CleanAllItemConfigOverride**(生效范围 服务器 清除刷新点的物资配置设置，调用后将使用刷新点本身的配置 事件)
- **OnItemsSpawn**(TArray < AActor* > &Items) — 生效范围 服务器 物品刷新 params Items -本轮刷新的物品 StartSpawnerManager ResetSpawnerManager CleanAllItem PauseSpawnerManager ResumeSpawnerManager SetItemConfigOverrideForSpawner SetItemConfigOverride CleanAllItemConfigOverride 事件 OnItemsSpawn

## AUGCMobCharacter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCMobCharacter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCMobCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCMobCharacter](https://developer.gp.qq.com/api/#/searchContent/AUGCMobCharacter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCMobCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCMobCharacter)

类

全文搜索

怪物角色类

---


## 函数

- **IsAlive**(是否存活)
- **IsInvincible**(是否无敌)
- **ForceDie**(生效范围 服务器 强制杀死怪物)
- **GetCurrentSpeed**(生效范围 服务器&客户端 获取当前速度值 return -float 当前速度值)
- **VectorGetVelocity**(生效范围 服务器&客户端 获取当前速度向量 return -FVector 当前速度向量 事件)
- **PreTakeDamageEvent**(AActor* DamageCauser, AController* EventInstigator, float Damage, FGameMagnitudeContext &DamageContext) — 生效范围 服务器 小怪即将受到伤害前事件 params DamageCauser -伤害来源 params EventInstigator -伤害来源的Controller params DamageContext -伤害事件上下文
- **PostTakeDamageEvent**(AActor* DamageCauser, AController* EventInstigator, float Damage, FGameMagnitudeContext &DamageContext) — 生效范围 服务器 受到伤害后事件 params DamageCauser -伤害来源 params EventInstigator -伤害来源的Controller params DamageContext -伤害事件上下文
- **PreOverrideDamageValue**(float Damage, int32 DamageType, AController* EventInstigator, AActor* DamageCauser, FHitResult &Hit) — 生效范围 服务器 伤害值覆盖事件,在全局伤害公式前 return - 覆盖后的伤害值 params DamageType -伤害类型 params EventInstigator -伤害来源的Controller params DamageCauser -伤害来源 params Hit -命中信息
- **PostOverrideDamageValue**(float Damage, int32 DamageType, AController* EventInstigator, AActor* DamageCauser, FHitResult &Hit) — 生效范围 服务器 伤害值覆盖事件,在全局伤害公式后 return - 覆盖后的伤害值 params DamageType -伤害类型 params EventInstigator -伤害来源的Controller params DamageCauser -伤害来源 params Hit -命中信息
- **MobPawnDeadEvent**(AController* Killer, AActor* DamageCauser, EDamageType :: DamageTypeKillingHitDamageType) — 生效范围 服务器&客户端 怪物死亡事件 params Killer -把该小怪杀死的角色的Controller params DamageCauser -杀死该小怪的角色 params KillingHitDamageType -最后一击的伤害类型
- **StateChangeEvent**(EUGCMobState OldState, EUGCMobStateNewState) — 生效范围 服务器&客户端 状态变化事件 params OldState -变化前状态 params NewState -变化后状态 IsAlive IsInvincible ForceDie GetCurrentSpeed GetVelocity 事件 PreTakeDamageEvent PostTakeDamageEvent PreOverrideDamageValue PostOverrideDamageValue MobPawnDeadEvent StateChangeEvent

## AUGCMobSpawner

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCMobSpawner?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCMobSpawner.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCMobSpawner](https://developer.gp.qq.com/api/#/searchContent/AUGCMobSpawner?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCMobSpawner.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCMobSpawner)

类

全文搜索

刷怪系统：刷怪器

---


## 函数

- **SpawnMob**(UClass *MobClass) — 生效范围 服务器 刷出指定怪物 params MobClass -怪物的类
- **SetMobConfig**(FUGCMobSpawnerMobConfigInMobConfig) — 生效范围 服务器 修改怪物刷新配置 params InMobConfig -修改后的刷新配置
- **ModifyMinMaxSpawnCount**(int32 InMinSpawnCount, int32InMaxSpawnCount) — 生效范围 服务器 修改最小最大刷怪数量 params InMinSpawnCount -修改后的最小刷怪数量 params InMaxSpawnCount -修改后的最大刷怪数量 事件
- **OnMobSpawn**(AActor *Mob) — 生效范围 服务器 怪物刷出事件 params Mob -输出的怪物
- **CustomSpawnMob**(TMap < FString , FString > &CustomParam) — 生效范围 服务器 覆写该事件可实现自定义怪物刷出流程 params CustomParam -自定义参数列表 SpawnMob SetMobConfig ModifyMinMaxSpawnCount 事件 OnMobSpawn CustomSpawnMob

## AUGCMobSpawnerManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCMobSpawnerManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FAUGCMobSpawnerManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCMobSpawnerManager](https://developer.gp.qq.com/api/#/searchContent/AUGCMobSpawnerManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FAUGCMobSpawnerManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCMobSpawnerManager)

类

全文搜索

刷怪系统：刷怪管理器

---


## 函数

- **StartSpawnerManager**(生效范围 服务器 启动刷怪管理器)
- **ResetSpawnerManager**(boolbDeleteAllMobs) — 生效范围 服务器 重置刷怪管理器 params bDeleteAllMobs -是否清除所有刷出的怪物
- **CleanAllMobs**(boolbDelete) — 生效范围 服务器 清理对刷出怪物的引用 params bDelete -是否清除怪物
- **PauseSpawnerManager**(生效范围 服务器 暂停刷怪管理器)
- **ResumeSpawnerManager**(生效范围 服务器 恢复刷怪管理器)
- **GetSpawner**(int32 WaveIndex, int32SpawnerIndex) — 生效范围 服务器 获取波次中特定编号的刷怪点 return -怪物刷新点 params WaveIndex -波次编号 params SpawnerIndex -刷新点编号
- **GetCurrentWaveIndex**(生效范围 服务器 获取当前波的波次编号 return -当前波次编号)
- **GetWaveSpawnerNum**(int32WaveIndex) — 生效范围 服务器 获取对应波次的刷新点数量 return -刷新点数量
- **GetWaveNum**(生效范围 服务器 获取波次的数量 return -波次数量)
- **SetMobConfigOverrideForSpawner**(FUGCMobSpawnerMobConfig InMobConfig, int32 WaveIndex, int32SpawnerIndex) — 生效范围 服务器 修改特定波次中特定刷新点的怪物配置覆盖 params InMobConfig -新的怪物配置 params WaveIndex -波次编号 params SpawnerIndex -刷新点编号
- **SetMobConfigOverrideForWave**(FUGCMobSpawnerMobConfig InMobConfig, int32WaveIndex) — 生效范围 服务器 修改特定波次中所有刷新点的怪物配置覆盖 params InMobConfig -新的怪物配置 params WaveIndex -波次编号
- **SetMobConfigOverride**(FUGCMobSpawnerMobConfigInMobConfig) — 生效范围 服务器 修改所有波次的怪物配置覆盖 params InMobConfig -新的怪物配置
- **CleanAllMobConfigOverride**(生效范围 服务器 清除管理器所有的怪物配置覆盖)
- **JumpToWave**(int32WaveIndex) — 生效范围 服务器 跳转到指定波次 事件
- **OnMobSpawn**(AActor *Mob) — 生效范围 服务器 怪物刷出事件 params Mob -刷出的怪物
- **OnWaveStart**(int32WaveIndex) — 生效范围 服务器 刷怪波次开始事件 params WaveIndex -波次编号
- **OnWaveEnd**(int32WaveIndex) — 生效范围 服务器 刷怪波次结束事件 params WaveIndex -波次编号
- **OnAllWaveEnd**(生效范围 服务器 所有波次结束事件)
- **OnAllMobDie**(生效范围 服务器 所以波次怪物都已刷新并死亡事件 StartSpawnerManager ResetSpawnerManager CleanAllMobs PauseSpawnerManager ResumeSpawnerManager GetSpawner GetCurrentWaveIndex GetWaveSpawnerNum GetWaveNum SetMobConfigOverrideForSpawner SetMobConfigOverrideForWave SetMobConfigOverride CleanAllMobConfigOverride JumpToWave 事件 O)

## AUGCPickUpWrapperActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCPickUpWrapperActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCPickUpWrapperActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCPickUpWrapperActor](https://developer.gp.qq.com/api/#/searchContent/AUGCPickUpWrapperActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCPickUpWrapperActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCPickUpWrapperActor)

类

全文搜索

地面拾取物Actor

---


## 函数

- **ItemDefineIDGetDefineID**(获取拾取物物品的实例ID DS& 客户端 可调用 return -实例ID)
- **GetItemCount**(获取拾取物物品的物品数量 DS& 客户端 可调用 return -物品数量 事件)
- **OnInitPickupWrapper**(当地面拾取物初始化后回调 可重载并自定义 DS& 客户端 被调用 能通过此事件，实现自定义的初始化逻辑)
- **OnItemPickup**(ASTExtraBaseCharacter* PickupCharacter, int32 PickupCount, int32NewItemCount) — 当地面拾取物被拾取后回调 可重载并自定义 DS 被调用 能通过此事件，实现自定义的被拾取后处理逻辑 params PickupCharacter -拾取物品的角色 params PickupCount -拾取数量 params NewItemCount -拾取后的物品数量
- **OnItemCountChange**(int32 OldItemCount, int32NewItemCount) — 当地面拾取物物品数量改变时回调(拾取物销毁时也会有回调) 如果是拾取导致的改变，时机略晚于 OnItemPickup 可重载并自定义 DS & 客户端 被调用 能通过此事件，实现自定义的物品数量改变处理逻辑 params OldItemCount -改变前的物品数量 params NewItemCount -改变后的物品数量
- **OnUnInitPickupWrapper**(当地面拾取物销毁前回调 可重载并自定义 DS& 客户端 被调用 能通过此事件，实现自定义的反初始化逻辑 GetDefineID GetItemCount 事件 OnInitPickupWrapper OnItemPickup OnItemCountChange OnUnInitPickupWrapper)

## AUniversalProjectileBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUniversalProjectileBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUniversalProjectileBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUniversalProjectileBase](https://developer.gp.qq.com/api/#/searchContent/AUniversalProjectileBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUniversalProjectileBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUniversalProjectileBase)

类

全文搜索

通用抛体

---


## 函数

- **ReceiveCustomFilter**(AActor *InActor) — 自定义的过滤器接口 生效范围：SC
- **ReceivePlayExplosionEffectToAllTarget**(TArray < FHitResult > &FoundTargets) — 自定义爆炸范围内筛选过后所有碰撞结果接口 生效范围：S
- **ReceivePlayExplosionEffect**(FHitResult &ExplosionTarget) — 自定义爆炸范围内筛选过后碰撞接口 生效范围：S
- **ReceiveBeginExplodeTimer**(爆炸开始计时的额外接口（如果有延时爆炸） 生效范围：S)
- **ReceiveEndExplodeTimer**(爆炸停止计时的额外接口（如果有延时爆炸） 生效范围：S ReceiveCustomFilter ReceivePlayExplosionEffectToAllTarget ReceivePlayExplosionEffect ReceiveBeginExplodeTimer ReceiveEndExplodeTimer)

## AUniversalProjectileCore

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUniversalProjectileCore?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUniversalProjectileCore.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUniversalProjectileCore](https://developer.gp.qq.com/api/#/searchContent/AUniversalProjectileCore?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUniversalProjectileCore.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUniversalProjectileCore)

类

全文搜索

通用抛体基类

事件

voidReceiveOnBounce(FHitResult & ImpactResult, FVector &ImpactVelocity)

弹跳时的额外接口

生效范围：SC

params ImpactVelocity

-碰撞速度

voidReceiveLaunchBullet()

发射时的额外接口

生效范围：S

voidSetTarget(APawn *TargetPawn)

修改Target的接口，能触发对应目标修改接口

生效范围：SC

voidReceiveOnProjectileDestroyed()

销毁时的额外接口

生效范围：SC

---


## 委托

- voidOnBulletHitDelegate(const FHitResult&ImpactResult)
- Delegate
- 生效范围S
- 通用抛体命中事件
- voidOnLaunchBulletDelegate()
- Delegate
- 生效范围S
- 抛体发射事件
- 事件
- ReceiveOnBounce
- ReceiveLaunchBullet
- SetTarget
- ReceiveOnProjectileDestroyed
- OnBulletHitDelegate
- OnLaunchBulletDelegate

## AUtilityTickActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUtilityTickActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUtilityTickActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUtilityTickActor](https://developer.gp.qq.com/api/#/searchContent/AUtilityTickActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUtilityTickActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUtilityTickActor)

类

全文搜索

---


## 函数

- **AddCheckData**(FPHXCheckData &InCheckData)
- **CheckComponentPHXError**(UPrimitiveComponent* InComponent, FString &InErrorTag) — AddCheckData CheckComponentPHXError

## AVolume

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AVolume](https://developer.gp.qq.com/api/#/searchContent/AVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AVolume)

类

全文搜索

An editable 3D volume placed in a level. Different types of volumes perform different functions

---

## AWindDirectionalSource

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AWindDirectionalSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAWindDirectionalSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AWindDirectionalSource](https://developer.gp.qq.com/api/#/searchContent/AWindDirectionalSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAWindDirectionalSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AWindDirectionalSource)

类

全文搜索

Actor that provides a directional wind source. Only affects SpeedTree assets.

---

## AWorldSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AWorldSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAWorldSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AWorldSettings](https://developer.gp.qq.com/api/#/searchContent/AWorldSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAWorldSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AWorldSettings)

类

全文搜索

Actor containing all script accessible world properties.

---


## 函数

- **SaveEntireWorld**()
- **OnRep_WorldGravityZ**(SaveEntireWorld OnRep_WorldGravityZ)

## 属性

- **Distance** — Culling DEFAULT BASIC PHYSICS SETTINGS If true, enables CheckStillInWorld checks if set to false navigation system will not get created (and all navigation functionality won't be accessible) if set to false AI system will not get created. Use it to disable all AI-related activity on a map Enables to

