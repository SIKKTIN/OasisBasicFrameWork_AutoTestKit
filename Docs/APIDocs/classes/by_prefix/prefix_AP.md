# Actor (Paper 系列)  (前缀: AP)
_共 21 个类_
---
## APainCausingVolume

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APainCausingVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPainCausingVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APainCausingVolume](https://developer.gp.qq.com/api/#/searchContent/APainCausingVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPainCausingVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APainCausingVolume)

类

全文搜索

Volume that causes damage over time to any Actor that overlaps its collision.

---


## 属性

- **volume** — currently causes damage. Damage done per second to actors in this volume when bPainCausing=true Type of damage done If pain causing, time between damage applications. if bPainCausing, cause pain when something enters the volume in addition to damage each second Checkpointed bPainCausing value AContr

## APaperFlipbookActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APaperFlipbookActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPaperFlipbookActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APaperFlipbookActor](https://developer.gp.qq.com/api/#/searchContent/APaperFlipbookActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPaperFlipbookActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APaperFlipbookActor)

类

全文搜索

An instance of a UPaperFlipbook in a level. This actor is created when you drag a flipbook asset from the content browser into the level, and it is just a thin wrapper around a UPaperFlipbookComponent that actually references the asset.

---

## APaperGroupedSpriteActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APaperGroupedSpriteActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPaperGroupedSpriteActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APaperGroupedSpriteActor](https://developer.gp.qq.com/api/#/searchContent/APaperGroupedSpriteActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPaperGroupedSpriteActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APaperGroupedSpriteActor)

类

全文搜索

A group of sprites that will be rendered and culled as a single unit This actor is created when you Merge several sprite components together. it is just a thin wrapper around a UPaperGroupedSpriteComponent.

---

## APaperSpriteActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APaperSpriteActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPaperSpriteActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APaperSpriteActor](https://developer.gp.qq.com/api/#/searchContent/APaperSpriteActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPaperSpriteActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APaperSpriteActor)

类

全文搜索

An instance of a UPaperSprite in a level. This actor is created when you drag a sprite asset from the content browser into the level, and it is just a thin wrapper around a UPaperSpriteComponent that actually references the asset.

---

## APaperTerrainActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APaperTerrainActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPaperTerrainActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APaperTerrainActor](https://developer.gp.qq.com/api/#/searchContent/APaperTerrainActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPaperTerrainActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APaperTerrainActor)

类

全文搜索

An instance of a piece of 2D terrain in the level

---

## APaperTileMapActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APaperTileMapActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPaperTileMapActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APaperTileMapActor](https://developer.gp.qq.com/api/#/searchContent/APaperTileMapActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPaperTileMapActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APaperTileMapActor)

类

全文搜索

An instance of a UPaperTileMap in a level. This actor is created when you drag a tile map asset from the content browser into the level, and it is just a thin wrapper around a UPaperTileMapComponent that actually references the asset.

---

## APawn

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APawn](https://developer.gp.qq.com/api/#/searchContent/APawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APawn)

类

全文搜索

Pawn is the base class of all actors that can be possessed by players or AI. They are the physical representations of players and creatures in a level.

---


## 函数

- **GetMovementComponent**(Return our PawnMovementComponent, if we have one. By default, returns the first PawnMovementComponent found. Native classes that create their own movement component should override this method for more efficiency.)
- **GetMeshComponent**(Return our Mesh, if we have one. By default, returns the first MeshComponent found. Native classes that create their own mesh component should override this method for more efficiency.)
- **SetUseViewTranslatedTransform**(boolbNewUseViewTranslatedTransform)
- **PawnMakeNoise**(float Loudness, FVector NoiseLocation, bool bUseNoiseMakerLocation, AActor *NoiseMaker) — Inform AIControllers that you've made a noise they might hear (they are sent a HearNoise message if they have bHearNoises==true) The instigator of this sound is the pawn which is used to call MakeNoise. params Loudness -- is the relative loudness of this noise (range 0.0 to 1.0). Directly affects th
- **GetMovementBaseActor**(APawn *Pawn) — Gets the owning actor of the Movement Base Component on which the pawn is standing.
- **IsControlled**(See if this actor is currently being controlled)
- **GetController**(Returns controller for this actor.)
- **RotatorGetControlRotation**(Get the rotation of the Controller, often the 'view' rotation of this Pawn.)
- **OnRep_Controller**(Called when Controller is replicated)
- **UseControllerRotationYaw**()
- **OnRep_PlayerState**(PlayerState Replication Notification Callback)
- **SetCanAffectNavigationGeneration**(bool bNewValue, boolbForceUpdate) — Use SetCanAffectNavigationGeneration to change this value at runtime. Note that calling this function at runtime will result in any navigation change only if runtime navigation generation is enabled.
- **VectorGetNavAgentLocation**(Basically retrieved pawn's location on navmesh)
- **ReceivePossessed**(AController *NewController) — Event called when the Pawn is possessed by a Controller (normally only occurs on the serverstandalone).
- **ReceiveUnpossessed**(AController *OldController) — Event called when the Pawn is no longer possessed by a Controller.
- **IsLocallyControlled**(return -true if controlled by a local (not network) Controller.)
- **IsPlayerControlled**(return -true if controlled by a human player (possessed by a PlayerController).)
- **RotatorGetBaseAimRotation**(Return the aim rotation for the Pawn. If we have a controller, by default we aim at the player's 'eyes' direction that is by default the Pawn rotation for AI, and camera (crosshair) rotation for human players.)
- **DetachFromControllerPendingDestroy**(Call this function to detach safely pawn from its controller, knowing that we will be destroyed soon.)
- **SpawnDefaultController**(Spawn default controller for this Pawn, and get possessed by it.)
- **AddMovementInput**(FVector WorldDirection, float ScaleValue, boolbForce) — Add movement input along the given world direction vector (usually normalized) scaled by 'ScaleValue'. If ScaleValue < 0, movement will be in the opposite direction. Base Pawn classes won't automatically apply movement, it's up to the user to do so in a Tick event. Subclasses such as Character and D
- **IsMoveInputIgnored**()
- **VectorGetPendingMovementInputVector**(Return the pending input vector in world space. This is the most up-to-date value of the input vector, pending ConsumeMovementInputVector() which clears it, Usually only a PawnMovementComponent will want to read this value, or the Pawn itself if it is responsible for movement. return -The pending in)
- **VectorGetLastMovementInputVector**()
- **ConsumeMovementInputVector**(Any user that needs to know about the input that last affected movement should use this function. For example an animation update would want to use this, since by default the order of updates in a frame is: PlayerController (device input) -> MovementComponent -> Pawn -> Mesh (animations) return)
- **ConsumeMovementInputVector**()
- **VectorConsumeMovementInputVector**(Returns the pending input vector and resets it to zero. This should be used during a movement update (by the Pawn or PawnMovementComponent) to prevent accumulation of control input between frames. Copies the pending input vector to the saved input vector (GetLastMovementInputVector()). return -The p)
- **AddControllerPitchInput**(floatVal) — Add input (affecting Pitch) to the Controller's ControlRotation, if it is a local PlayerController. This value is multiplied by the PlayerController's InputPitchScale value. params Val -Amount to add to Pitch. This value is multiplied by the PlayerController's InputPitchScale value.
- **AddControllerYawInput**(floatVal) — Add input (affecting Yaw) to the Controller's ControlRotation, if it is a local PlayerController. This value is multiplied by the PlayerController's InputYawScale value. params Val -Amount to add to Yaw. This value is multiplied by the PlayerController's InputYawScale value.
- **AddControllerRollInput**(floatVal) — Add input (affecting Roll) to the Controller's ControlRotation, if it is a local PlayerController. This value is multiplied by the PlayerController's InputRollScale value. params Val -Amount to add to Roll. This value is multiplied by the PlayerController's InputRollScale value.
- **IsMoveInputIgnored**(Helper to see if move input is ignored. If our controller is a PlayerController, checks Controller->IsMoveInputIgnored().)
- **LaunchPawn**(FVector LaunchVelocity, bool bXYOverride, boolbZOverride) — (Deprecated) Launch Character with LaunchVelocity
- **VectorK2_GetMovementInputVector**((Deprecated) Return the input vector in world space. GetMovementComponent GetMeshComponent SetUseViewTranslatedTransform PawnMakeNoise GetMovementBaseActor IsControlled GetController GetControlRotation OnRep_Controller UseControllerRotationYaw OnRep_PlayerState SetCanAffectNavigationGeneration GetNa)

## 属性

- **true** — , this Pawn's pitch will be updated to match the Controller's ControlRotation pitch, if controlled by a PlayerController. If true, this Pawn's yaw will be updated to match the Controller's ControlRotation yaw, if controlled by a PlayerController. If true, this Pawn's roll will be updated to match th

## 委托

- voidOnControllerArrived()
- voidOnPawnClientRestart()
- OnControllerArrived
- OnPawnClientRestart

## APESkillProjectileBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APESkillProjectileBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPESkillProjectileBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APESkillProjectileBase](https://developer.gp.qq.com/api/#/searchContent/APESkillProjectileBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPESkillProjectileBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APESkillProjectileBase)

类

全文搜索

通用抛体V2

事件

voidReceiveOnImpactBP(FHitResult & ImpactResult, FPESkillTargetData &TargetData)

碰撞时处理Action前的额外接口

生效范围：SC

voidPostReceiveOnImpactBP(FHitResult & ImpactResult, FPESkillTargetData &TargetData)

碰撞处理Action结束后的额外接口

生效范围：SC

voidReceiveStoppedBP(FHitResult &LastHitResult)

完全停止后的额外接口

生效范围：SC

AActor *SearchTargetActorByPriorityBP(TArray < AActor * > & InActors, AActor *CurrentTarget)

弹射轨迹的自定义优先级算法

生效范围：S

return

-AActor 最后返回的结果对象

params InActors

-传入的Actor数组

params CurrentTarget

-当前碰撞对象

事件

ReceiveOnImpactBP

PostReceiveOnImpactBP

ReceiveStoppedBP

SearchTargetActorByPriorityBP

---

## APhysicsThruster

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APhysicsThruster?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPhysicsThruster.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APhysicsThruster](https://developer.gp.qq.com/api/#/searchContent/APhysicsThruster?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPhysicsThruster.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APhysicsThruster)

类

全文搜索

Attach one of these on an object using physics simulation and it will apply a force down the negative-X direction ie. point X in the direction you want the thrust in.

---


## 属性

- **component** — UArrowComponent *ArrowComponent ThrusterComponent ArrowComponent

## APhysicsVolume

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APhysicsVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPhysicsVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APhysicsVolume](https://developer.gp.qq.com/api/#/searchContent/APhysicsVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPhysicsVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APhysicsVolume)

类

全文搜索

PhysicsVolume: A bounding volume which affects actor physics. Each AActor is affected at any time by one PhysicsVolume.

---


## 属性

- **velocity** — of pawns using CharacterMovement when falling. Determines which PhysicsVolume takes precedence if they overlap (higher number = higher priority). This property controls the amount of friction applied by the volume as pawns using CharacterMovement move through it. The higher this value, the harder it

## APickUpWrapperActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APickUpWrapperActor?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E5%9C%B0%E9%9D%A2%E5%8F%AF%E6%8B%BE%E5%8F%96%E7%89%A9%E7%B1%BB%2FAPickUpWrapperActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APickUpWrapperActor](https://developer.gp.qq.com/api/#/searchContent/APickUpWrapperActor?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E5%9C%B0%E9%9D%A2%E5%8F%AF%E6%8B%BE%E5%8F%96%E7%89%A9%E7%B1%BB%2FAPickUpWrapperActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APickUpWrapperActor)

类

全文搜索

地面可拾取物类

---


## 委托

- voidUGC_PickUpWrapperHideDelegate(floatInRefreshTimeStamp)
- 生效范围:SC
- 可拾取道具隐藏事件委托
- voidUGC_PickUpWrapperShowDelegate()
- 生效范围:S
- 可拾取道具显示事件委托
- voidUGC_PickUpWrapperDestroyDelegate()
- 生效范围:SC
- 可拾取道具销毁事件委托
- UGC_PickUpWrapperHideDelegate
- UGC_PickUpWrapperShowDelegate
- UGC_PickUpWrapperDestroyDelegate

## APixelProjectedReflection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APixelProjectedReflection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPixelProjectedReflection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APixelProjectedReflection](https://developer.gp.qq.com/api/#/searchContent/APixelProjectedReflection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPixelProjectedReflection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APixelProjectedReflection)

类

全文搜索

---


## 函数

- **OnInterpToggle**(boolbEnable) — OnInterpToggle

## 属性

- **reflection** — component. UBillboardComponent *SpriteComponent PixelProjectedReflectionComponent bShowPreviewPlane SpriteComponent

## APlanarReflection

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APlanarReflection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPlanarReflection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APlanarReflection](https://developer.gp.qq.com/api/#/searchContent/APlanarReflection?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPlanarReflection.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APlanarReflection)

类

全文搜索

---


## 函数

- **OnInterpToggle**(boolbEnable) — OnInterpToggle

## 属性

- **reflection** — component. UBillboardComponent *SpriteComponent PlanarReflectionComponent bShowPreviewPlane SpriteComponent

## APlayerCameraManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APlayerCameraManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPlayerCameraManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APlayerCameraManager](https://developer.gp.qq.com/api/#/searchContent/APlayerCameraManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPlayerCameraManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APlayerCameraManager)

类

全文搜索

A PlayerCameraManager is responsible for managing the camera for a particular player. It defines the final view properties used by other systems (e.g. the renderer), meaning you can think of it as your virtual eyeball in the world. It can compute the final camera properties directly, or it can arbitrateblend between other objects or actors that influence the camera (e.g. blending from one CameraActor to another). The PlayerCameraManagers primary external responsibility is to reliably respond to various Get() functions, such as GetCameraViewPoint. Most everything else is implementation detail and overrideable by user projects. By default, a PlayerCameraManager maintains a "view target", which is the primary actor the camera is associated with. It can also apply various "post" effects to the final view state, such as camera animations, shakes, post-process effects or special effects such as dirt on the lens.

---


## 函数

- **SetViewPitchMin**(floatInViewPitchMin)
- **GetViewPitchMin**()
- **SetViewPitchMax**(floatInViewPitchMax)
- **GetViewPitchMax**()
- **PhotographyCameraModify**(FVector NewCameraLocation, FVector PreviousCameraLocation, FVector OriginalCameraLocation, FVector &ResultCameraLocation) — Implementable blueprint hook to allow a PlayerCameraManager subclass to constrain or otherwise modify the camera during free-camera photography. For example, a blueprint may wish to limit the distance from the camera's original point, or forbid the camera from passing through walls. NewCameraLocatio
- **OnPhotographySessionStart**(Event triggered upon entering Photography mode (before pausing, if r.Photography.AutoPause is 1).)
- **OnPhotographySessionEnd**(Event triggered upon leaving Photography mode (after unpausing, if r.Photography.AutoPause is 1).)
- **OnPhotographyMultiPartCaptureStart**(Event triggered upon the start of a multi-part photograph capture (i.e. a stereoscopic or 360-degree shot). This is an ideal time to turn off rendering effects that tile badly (UI, subtitles, vignette, very aggressive bloom, etc; most of these are automatically disabled when r.Photography.AutoPostpr)
- **OnPhotographyMultiPartCaptureEnd**(Event triggered upon the end of a multi-part photograph capture, when manual free-roaming photographic camera control is about to be returned to the user. Here you may re-enable whatever was turned off within OnPhotographyMultiPartCaptureStart.)
- **BlueprintUpdateCamera**(AActor* CameraTarget, FVector& NewCameraLocation, FRotator& NewCameraRotation, float &NewCameraFOV) — Blueprint hook to allow blueprints to override existing camera behavior or implement custom cameras. If this function returns true, we will use the given returned values and skip further calculations to determine final camera POV.
- **GetOwningPlayerController**(Returns the PlayerController that owns this camera.)
- **SetCachedViewPOV**(boolSetup)
- **GetViewTarget**(return -the current ViewTarget.)
- **AddNewCameraModifier**(TSubclassOf < UCameraModifier >ModifierClass) — Creates and initializes a new camera modifier of the specified class. return -Returns the newly created camera modifier. params ModifierClass -- The class of camera modifier to create.
- **FindCameraModifierByClass**(TSubclassOf < UCameraModifier > ModifierClass, boolbIncludeSuper) — Returns camera modifier for this camera of the given class, if it exists. Exact class match only. If there are multiple modifiers of the same class, the first one is returned.
- **RemoveCameraModifier**(UCameraModifier *ModifierToRemove) — Removes the given camera modifier from this camera (if it's on the camera in the first place) and discards it. return -True if successfully removed, false otherwise.
- **GetFOVAngle**(return -Returns the camera's current full FOV angle, in degrees.)
- **SetFOV**(floatNewFOV) — Locks the FOV to the given value. Unlock with UnlockFOV. params NewFOV -- New full FOV angle to use, in degrees.
- **UnlockFOV**(Unlocks the FOV.)
- **RotatorGetCameraRotation**(return -Returns camera's current rotation.)
- **VectorGetCameraLocation**(return -Returns camera's current location.)
- **AddCameraLensEffect**(TSubclassOf < AEmitterCameraLensEffectBase >LensEffectEmitterClass) — Creates a camera lens effect of the given class on this camera. return -Returns the new emitter actor. params LensEffectEmitterClass -- Class of lens effect emitter to create.
- **RemoveCameraLensEffect**(AEmitterCameraLensEffectBase *Emitter) — Removes the given lens effect from the camera. params Emitter -- the emitter actor to remove from the camera
- **ClearCameraLensEffects**(Removes all camera lens effects.)
- **PlayCameraShake**(TSubclassOf < UCameraShake > ShakeClass, float Scale, ECameraAnimPlaySpace :: Type PlaySpace, FRotatorUserPlaySpaceRot) — Plays a camera shake on this camera. params Scale -- Scalar defining how "intense" to play the shake. 1.0 is normal (as authored). params PlaySpace -- Which coordinate system to play the shake in (affects oscillations and camera anims) params UserPlaySpaceRot -- Coordinate system to play shake when
- **PlayCameraShakeWithWorldLocation**(TSubclassOf < UCameraShake > ShakeClass, FVector WorldLocation, float Scale, ECameraAnimPlaySpace :: Type PlaySpace, FRotatorUserPlaySpaceRot)
- **StopCameraShake**(UCameraShake* ShakeInstance, boolbImmediately) — Immediately stops the given shake instance and invalidates it.
- **StopAllInstancesOfCameraShake**(TSubclassOf < UCameraShake > Shake, boolbImmediately) — Stops playing CameraShake of the given class.
- **StopAllCameraShakes**(boolbImmediately) — Stops all active camera shakes on this camera.
- **StartCameraFade**(float FromAlpha, float ToAlpha, float Duration, FLinearColor Color, bool bShouldFadeAudio, boolbHoldWhenFinished) — Does a camera fade tofrom a solid color. Animates automatically. params FromAlpha -- Alpha at which to begin the fade. Range [0..1], where 0 is fully transparent and 1 is fully opaque solid color. params ToAlpha -- Alpha at which to finish the fade. params Duration -- How long the fade should take,
- **StopCameraFade**(Stops camera fading.)
- **SetManualCameraFade**(float InFadeAmount, FLinearColor Color, boolbInFadeAudio) — Turns on camera fading at the given opacity. Does not auto-animate, allowing user to animate themselves. Call StopCameraFade to turn fading back off.
- **PlayCameraAnim**(UCameraAnim* Anim, float Rate, float Scale, float BlendInTime, float BlendOutTime, bool bLoop, bool bRandomStartTime, float Duration, ECameraAnimPlaySpace :: Type PlaySpace, FRotatorUserPlaySpaceRot) — Play the indicated CameraAnim on this camera. return -The CameraAnim instance, which can be stored to manipulatestop the anim after the fact. params Anim -The animation that should play on this instance. params Rate - How fast to play the animation. 1.0 is normal. params Scale - How "intense" to pla
- **StopAllInstancesOfCameraAnim**(UCameraAnim* Anim, boolbImmediate) — Stop playing all instances of the indicated CameraAnim. params bImmediate -True to stop it right now and ignore blend out, false to let it blend out as indicated.
- **StopCameraAnimInst**(UCameraAnimInst* AnimInst, boolbImmediate) — Stops the given CameraAnimInst from playing. The given pointer should be considered invalid after this. params bImmediate -True to stop it right now and ignore blend out, false to let it blend out as indicated.
- **StopAllCameraAnims**(boolbImmediate) — Stop playing all CameraAnims on this CameraManager. params bImmediate -True to stop it right now and ignore blend out, false to let it blend out as indicated. SetViewPitchMin GetViewPitchMin SetViewPitchMax GetViewPitchMax PhotographyCameraModify OnPhotographySessionStart OnPhotographySessionEnd OnP

## 属性

- **that** — owns this Camera actor USceneComponent *TransformComponent Dummy component we can use to attach things to the camera.
- **to** — use by default. The default desired width (in world units) of the orthographic view (ignored in Perspective mode) Default aspect ratio (used when a view target override the aspect ratio and bConstrainAspectRatio is set; most of the time the value from a camera component will be used instead) Cached

## 委托

- voidPostViewPitchMinChangedDelegate(floatOldViewPitchMin, floatNewViewPitchMin)
- voidPostViewPitchMaxChangedDelegate(floatOldViewPitchMax, floatNewViewPitchMax)
- PostViewPitchMinChangedDelegate
- PostViewPitchMaxChangedDelegate

## APlayerController

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APlayerController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPlayerController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APlayerController](https://developer.gp.qq.com/api/#/searchContent/APlayerController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPlayerController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APlayerController)

类

全文搜索

PlayerControllers are used by human players to control Pawns. ControlRotation (accessed via GetControlRotation()), determines the aiming orientation of the controlled Pawn. In networked games, PlayerControllers exist on the server for every player-controlled pawn, and also on the controlling client's machine. They do NOT exist on a client's machine for pawns controlled by remote players elsewhere on the network.

---


## 函数

- **ServerSetSpectatorWaiting**(boolbWaiting) — Indicate that the Spectator is waiting to joinrespawn.
- **ClientSetSpectatorWaiting**(boolbWaiting) — Indicate that the Spectator is waiting to joinrespawn.
- **SetActionExecuteState**(boolbSuccess)
- **GetActionExecuteState**()
- **EnableCheats**(Enables cheats within the game)
- **FOV**(floatNewFOV) — Set the field of view to NewFOV
- **RestartLevel**(Restarts the current level)
- **LocalTravel**(FString &URL) — Causes the client to travel to the given URL
- **ClientReturnToMainMenu**(FString &ReturnReason) — Return the client to the main menu gracefully
- **ClientRepObjRef**(UObject *Object) — Development RPC for testing object reference replication
- **Pause**(Command to try to pause the game.)
- **SetPauseByBlueprint**(boolbPaused)
- **SetName**(FString &S) — Trys to set the player's name to the given name.
- **SwitchLevel**(FString &URL) — SwitchLevel to the given MapURL.
- **GetHitResultUnderCursor**(ECollisionChannel TraceChannel, bool bTraceComplex, FHitResult &HitResult)
- **GetHitResultUnderCursorByChannel**(ETraceTypeQuery TraceChannel, bool bTraceComplex, FHitResult &HitResult)
- **GetHitResultUnderCursorForObjects**(TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, bool bTraceComplex, FHitResult &HitResult)
- **GetHitResultUnderFinger**(ETouchIndex :: Type FingerIndex, ECollisionChannel TraceChannel, bool bTraceComplex, FHitResult &HitResult)
- **GetHitResultUnderFingerByChannel**(ETouchIndex :: Type FingerIndex, ETraceTypeQuery TraceChannel, bool bTraceComplex, FHitResult &HitResult)
- **GetHitResultUnderFingerForObjects**(ETouchIndex :: Type FingerIndex, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, bool bTraceComplex, FHitResult &HitResult)
- **DeprojectMousePositionToWorld**(FVector& WorldLocation, FVector &WorldDirection) — Convert current mouse 2D position to World Space 3D position and direction. Returns false if unable to determine value.
- **DeprojectScreenPositionToWorld**(float ScreenX, float ScreenY, FVector& WorldLocation, FVector &WorldDirection) — Convert 2D screen position to World Space 3D position and direction. Returns false if unable to determine value.
- **ProjectWorldLocationToScreen**(FVector WorldLocation, FVector2D& ScreenLocation, boolbPlayerViewportRelative) — Convert a World Space 3D position into a 2D Screen Space position. return -true if the world coordinate was successfully projected to the screen.
- **SetMouseLocation**(int X, intY) — Positions the mouse cursor in screen space, in pixels.
- **StartFire**(uint8FireModeNum) — Fire the player's currently selected weapon with the optional fire mode.
- **ClientEnableNetworkVoice**(boolbEnable) — Tell the client to enable or disable voice chat (not muting) params bEnable -enable or disable voice chat
- **ToggleSpeaking**(boolbInSpeaking) — Toggle voice chat on and off
- **ClientVoiceHandshakeComplete**(Tells the client that the server has all the information it needs and that it is ok to start sending voice packets. The server will already send voice packets when this function is called, since it is set server side and then forwarded NOTE: This is done as an RPC instead of variable replication bec)
- **ServerMutePlayer**(FUniqueNetIdReplPlayerId) — Tell the server to mute a player for this controller params PlayerId -player id to mute
- **ServerUnmutePlayer**(FUniqueNetIdReplPlayerId) — Tell the server to unmute a player for this controller params PlayerId -player id to unmute
- **ClientMutePlayer**(FUniqueNetIdReplPlayerId) — Tell the client to mute a player for this controller params PlayerId -player id to mute
- **ClientUnmutePlayer**(FUniqueNetIdReplPlayerId) — Tell the client to unmute a player for this controller params PlayerId -player id to unmute
- **ConsoleKey**(FKeyKey) — Console control commands, useful when remote debugging so you can't touch the console the normal way
- **SendToConsole**(FString &Command) — Sends a command to the console to execute if not shipping version
- **ClientAddTextureStreamingLoc**(FVector InLoc, float Duration, boolbOverrideLocation) — Adds a location to the texture streaming system for the specified duration.
- **ClientCancelPendingMapChange**(Tells client to cancel any pending map change.)
- **ClientCapBandwidth**(int32Cap) — Set CurrentNetSpeed to the lower of its current value and Cap.
- **ClientCommitMapChange**()
- **PrepareMapChange**()
- **ClientFlushLevelStreaming**(Tells the client to block until all pending level streaming actions are complete happens at the end of the tick primarily used to force update the client ASAP at join time)
- **ClientForceGarbageCollection**(Forces GC at the end of the tick on the client)
- **ClientGameEnded**(AActor* EndGameFocus, boolbIsWinner)
- **GameHasEnded**(- actor to view with camera - true if this controller is on winning team)
- **ClientGotoState**(FNameNewState) — Server uses this to force client into NewState .
- **ClientIgnoreLookInput**(boolbIgnore) — calls IgnoreLookInput on client
- **ClientIgnoreMoveInput**(boolbIgnore) — calls IgnoreMoveInput on client
- **ClientMessage**(FString& S, FName Type, floatMsgLifeTime) — Outputs a message to HUD params S -- message to display params Type -- @todo document params MsgLifeTime -- Optional length of time to display 0 = default time
- **ClientPlayCameraAnim**(UCameraAnim* AnimToPlay, float Scale, float Rate, float BlendInTime, float BlendOutTime, bool bLoop, bool bRandomStartTime, ECameraAnimPlaySpace :: Type Space, FRotatorCustomPlaySpace) — Play the indicated CameraAnim on this camera. params AnimToPlay -- Camera animation to play params Scale -- "Intensity" scalar. This is the scale at which the anim was first played. params Rate -- Multiplier for playback rate. 1.0 = normal. params BlendInTime -- Time to interpolate in from zero, for
- **ClientPlayCameraShake**(TSubclassOf < UCameraShake > Shake, float Scale, ECameraAnimPlaySpace :: Type PlaySpace, FRotatorUserPlaySpaceRot) — Play Camera Shake params Shake -- Camera shake animation to play params Scale -- Scalar defining how "intense" to play the anim params PlaySpace -- Which coordinate system to play the shake in (used for CameraAnims within the shake). params UserPlaySpaceRot -- Matrix used when PlaySpace = CAPS_UserD
- **ClientPlayCameraShakeWithWorldLocation**(TSubclassOf < UCameraShake > Shake, FVector WorldLocation, float Scale, ECameraAnimPlaySpace :: Type PlaySpace, FRotatorUserPlaySpaceRot)
- **ClientPlaySound**(USoundBase* Sound, float VolumeMultiplier, floatPitchMultiplier) — Play sound client-side (so only the client will hear it) params Sound -- Sound to play params VolumeMultiplier -- Volume multiplier to apply to the sound params PitchMultiplier -- Pitch multiplier to apply to the sound
- **ClientPlaySoundAtLocation**(USoundBase* Sound, FVector Location, float VolumeMultiplier, floatPitchMultiplier) — Play sound client-side at the specified location params Sound -- Sound to play params Location -- Location to play the sound at params VolumeMultiplier -- Volume multiplier to apply to the sound params PitchMultiplier -- Pitch multiplier to apply to the sound
- **ClientPrepareMapChange**(FName LevelName, bool bFirst, boolbLast) — Asynchronously loads the given level in preparation for a streaming map transition. the server sends one function per level name since dynamic arrays can't be replicated params bFirst -- whether this is the first item in the list (so clear the list first) params bLast -- whether this is the last ite
- **ClientPrestreamTextures**(AActor* ForcedActor, float ForceDuration, bool bEnableStreaming, int32CinematicTextureGroups) — Forces the streaming system to disregard the normal logic for the specified duration and instead always load all mip-levels for all textures used by the specified actor. params ForcedActor -- The actor whose textures should be forced into memory. params ForceDuration -- Number of seconds to keep all
- **ClientReset**(Tell client to reset the PlayerController)
- **ClientRestart**(APawn *NewPawn) — Tell client to restart the level
- **ClientSetBlockOnAsyncLoading**(Tells the client to block until all pending level streaming actions are complete. Happens at the end of the tick primarily used to force update the client ASAP at join time.)
- **ClientSetCameraFade**(bool bEnableFading, FColor FadeColor, FVector2D FadeAlpha, float FadeTime, boolbFadeAudio) — Tell client to fade camera
- **ClientSetCameraMode**(FNameNewCamMode) — Replicated function to set camera style on client
- **ClientSetCinematicMode**(bool bInCinematicMode, bool bAffectsMovement, bool bAffectsTurning, boolbAffectsHUD) — Called by the server to synchronize cinematic transitions with the client
- **ClientSetForceMipLevelsToBeResident**(UMaterialInterface* Material, float ForceDuration, int32CinematicTextureGroups) — Forces the streaming system to disregard the normal logic for the specified duration and instead always load all mip-levels for all textures used by the specified material. params Material -- The material whose textures should be forced into memory. params ForceDuration -- Number of seconds to keep
- **ClientSetHUD**(TSubclassOf < AHUD >NewHUDClass) — Set the client's class of HUD and spawns a new instance of it. If there was already a HUD active, it is destroyed.
- **GetViewportSize**(int32& SizeX, int32 &SizeY) — Helper to get the size of the HUD canvas for this player controller. Returns 0 if there is no HUD
- **GetHUD**(Gets the HUD currently being used by this player controller)
- **SetMouseCursorWidget**(EMouseCursor :: Type Cursor, UUserWidget *CursorWidget) — Sets the Widget for the Mouse Cursor to display params Cursor -- the cursor to set the widget for params CursorWidget -- the widget to set the cursor to
- **ClientSetViewTarget**(AActor* A, FViewTargetTransitionParamsTransitionParams) — Set the view target params A -- new actor to set as view target params TransitionParams -- parameters to use for controlling the transition
- **ClientSpawnCameraLensEffect**(TSubclassOf < AEmitterCameraLensEffectBase >LensEffectEmitterClass) — Spawn a camera lens effect (e.g. blood).
- **ClientClearCameraLensEffects**(Removes all Camera Lens Effects.)
- **ClientStopCameraAnim**(UCameraAnim *AnimToStop) — Stop camera animation on client.
- **ClientStopCameraShake**(TSubclassOf < UCameraShake > Shake, boolbImmediately) — Stop camera shake on client.
- **ClientPlayForceFeedback**(UForceFeedbackEffect* ForceFeedbackEffect, bool bLooping, bool bIgnoreTimeDilation, FNameTag) — Play a force feedback pattern on the player's controller params ForceFeedbackEffect -The force feedback pattern to play params bLooping - Whether the pattern should be played repeatedly or be a single one shot params bIgnoreTimeDilation -Whether the pattern should ignore time dilation params Tag - A
- **ClientStopForceFeedback**(UForceFeedbackEffect* ForceFeedbackEffect, FNameTag) — Stops a playing force feedback pattern params ForceFeedbackEffect -If set only patterns from that effect will be stopped params Tag - If not none only the pattern with this tag will be stopped
- **PlayDynamicForceFeedback**(float Intensity, float Duration, bool bAffectsLeftLarge, bool bAffectsLeftSmall, bool bAffectsRightLarge, bool bAffectsRightSmall, TEnumAsByte < EDynamicForceFeedbackAction :: Type > Action, FLatentAc) — Latent action that controls the playing of force feedback Begins playing when Start is called. Calling Update or Stop if the feedback is not active will have no effect. Completed will execute when Stop is called or the duration ends. When Update is called the Intensity, Duration, and affect values w
- **PlayHapticEffect**(UHapticFeedbackEffect_Base* HapticEffect, EControllerHand Hand, float Scale, boolbLoop) — Play a haptic feedback curve on the player's controller params HapticEffect - The haptic effect to play params Hand - Which hand to play the effect on params Scale - Scale between 0.0 and 1.0 on the intensity of playback
- **StopHapticEffect**(EControllerHandHand) — Stops a playing haptic feedback curve params Hand - Which hand to stop the effect for
- **SetHapticsByValue**(float Frequency, float Amplitude, EControllerHandHand) — Sets the value of the haptics for the specified hand directly, using frequency and amplitude. NOTE: If a curve is already playing for this hand, it will be cancelled in favour of the specified values. params Frequency - The normalized frequency [0.0, 1.0] to play through the haptics system params Am
- **SetControllerLightColor**(FColorColor) — Sets the light color of the player's controller params Color - The color for the light to be
- **ClientTravel**(FString& URL, ETravelType TravelType, bool bSeamless, FGuidMapPackageGuid) — Travel to a different map or IP address. Calls the PreClientTravel event before doing anything. NOTE: This is implemented as a locally executed wrapper for ClientTravelInternal, to avoid API compatability breakage params URL - A string containing the mapname (or IP address) to travel to, along with
- **ClientTravelInternal**(FString& URL, ETravelType TravelType, bool bSeamless, FGuidMapPackageGuid) — Internal clientside implementation of ClientTravel - use ClientTravel to call this params URL - A string containing the mapname (or IP address) to travel to, along with option keyvalue pairs params TravelType - specifies whether the client should append URL options used in previous travels; if true
- **ClientUpdateLevelStreamingStatus**(FName PackageName, bool bNewShouldBeLoaded, bool bNewShouldBeVisible, bool bNewShouldBlockOnLoad, int32LODIndex) — Replicated Update streaming status params PackageName -- Name of the level package name used for loading. params bNewShouldBeLoaded -- Whether the level should be loaded params bNewShouldBeVisible -- Whether the level should be visible if it is loaded params bNewShouldBlockOnLoad -- Whether we want
- **ClientWasKicked**(FText &KickReason) — Notify client they were kicked from the server
- **ClientStartOnlineSession**(Notify client that the session is starting)
- **ClientEndOnlineSession**(Notify client that the session is about to start)
- **ClientRetryClientRestart**(APawn *NewPawn) — Assign Pawn to player, but avoid calling ClientRestart if we have already accepted this pawn
- **ClientReceiveLocalizedMessage**(TSubclassOf < ULocalMessage > Message, int32 Switch, APlayerState* RelatedPlayerState_1, APlayerState* RelatedPlayerState_2, UObject *OptionalObject) — send client localized message id
- **ServerAcknowledgePossession**(APawn *P) — acknowledge possession of pawn
- **ServerCamera**(FNameNewMode) — change mode of camera
- **ServerChangeName**(FString &S) — Change name of server
- **ServerNotifyLoadedWorld**(FNameWorldPackageName) — Called to notify the server when the client has loaded a new world via seamless traveling params WorldPackageName -the name of the world package that was loaded
- **ServerNotifyStreamLevelDisFactor**(floatInFactor)
- **ServerPause**(Replicate pause request to the server)
- **ServerRestartPlayer**(Attempts to restart this player, generally called from the client upon respawn request.)
- **ServerSetSpectatorLocation**(FVector NewLoc, FRotatorNewRot) — When spectating, updates spectator locationrotation and pings the server to make sure spectating should continue.
- **ServerCheckClientPossession**(Tells the server to make sure the possessed pawn is in sync with the client.)
- **ServerCheckClientPossessionReliable**(Reliable version of ServerCheckClientPossession to be used when there is no likely danger of spamming the network.)
- **ServerShortTimeout**(Notifies the server that the client has ticked gameplay code, and should no longer get the extended "still loading" timeout grace period)
- **ServerUpdateCamera**(FVector_NetQuantize CamLoc, int32CamPitchAndYaw) — If PlayerCamera.bUseClientSideCameraUpdates is set, client will replicate camera positions to the server.
- **ServerUpdateCameraLocation**(FVector_NetQuantizeCamLoc)
- **ServerUpdateLevelVisibility**(FName PackageName, boolbIsVisible) — Called when the client addsremoves a streamed level the server will only replicate references to Actors in visible levels so that it's impossible to send references to Actors the client has not initialized params PackageName -the name of the package for the level whose status changed
- **ServerUpdateLevelListVisibility**(TArray < FName >& PackageNames, boolbIsVisible)
- **ServerUpdateLevelListPackageVisibility**(TArray < FLevelVisibilityInfo > &PackageInfo)
- **ServerUpdateLevelIndexListPackageVisibility**(TArray < FLevelIndexVisibilityInfo > &PackageInfo)
- **ServerVerifyViewTarget**(Used by client to request server to confirm current viewtarget (server will respond with ClientSetViewTarget() ).)
- **ServerViewNextPlayer**(Move camera to next player on round ended or spectating)
- **ServerViewPrevPlayer**(Move camera to previous player on round ended or spectating)
- **ServerViewSelf**(FViewTargetTransitionParamsTransitionParams) — Move camera to current user
- **ClientTeamMessage**(APlayerState* SenderPlayerState, FString& S, FName Type, floatMsgLifeTime)
- **ServerToggleAILogging**(Used by UGameplayDebuggingControllerComponent to replicate messages for AI debugging in network games.)
- **AddPitchInput**(floatVal) — Add Pitch (look up) input. This value is multiplied by InputPitchScale. params Val -Amount to add to Pitch. This value is multiplied by InputPitchScale.
- **AddYawInput**(floatVal) — Add Yaw (turn) input. This value is multiplied by InputYawScale. params Val -Amount to add to Yaw. This value is multiplied by InputYawScale.
- **AddRollInput**(floatVal) — Add Roll input. This value is multiplied by InputRollScale. params Val -Amount to add to Roll. This value is multiplied by InputRollScale.
- **IsInputKeyDown**(FKeyKey) — Returns true if the given keybutton is pressed on the input of the controller (if present)
- **WasInputKeyJustPressed**(FKeyKey) — Returns true if the given keybutton was up last frame and down this frame.
- **WasInputKeyJustReleased**(FKeyKey) — Returns true if the given keybutton was down last frame and up this frame.
- **GetInputAnalogKeyState**(FKeyKey) — Returns the analog value for the given keybutton. If analog isn't supported, returns 1 for down and 0 for up.
- **VectorGetInputVectorKeyState**(FKeyKey) — Returns the vector value for the given keybutton.
- **GetInputTouchState**(ETouchIndex :: Type FingerIndex, float& LocationX, float& LocationY, bool &bIsCurrentlyPressed) — Retrieves the X and Y screen coordinates of the specified touch key. Returns false if the touch index is not down
- **GetInputMotionState**(FVector& Tilt, FVector& RotationRate, FVector& Gravity, FVector &Acceleration) — Retrieves the current motion state of the player's input device
- **GetMousePosition**(float& LocationX, float &LocationY) — Retrieves the X and Y screen coordinates of the mouse cursor. Returns false if there is no associated mouse device
- **GetInputKeyTimeDown**(FKeyKey) — Returns how long the given keybutton has been down. Returns 0 if it's up or it just went down this frame.
- **GetInputMouseDelta**(float& DeltaX, float &DeltaY) — Retrieves how far the mouse moved this frame.
- **GetInputAnalogStickState**(EControllerAnalogStick :: Type WhichStick, float& StickX, float &StickY) — Retrieves the X and Y displacement of the given analog stick.
- **ActivateTouchInterface**(UTouchInterface *NewTouchInterface) — Activates a new touch interface for this player controller
- **SetVirtualJoystickVisibility**(boolbVisible) — Set the virtual joystick visibility.
- **FadeInVirtualJoystick**(floatFadeDuration) — Fade in the virtual joystick.
- **FadeOutVirtualJoystick**(floatFadeDuration) — Fade out the virtual joystick.
- **InitVirtualJoystickBySetting**(Set the virtual joystick visibility.)
- **GetViewportCacheGeometryScale**(获取Viewport的缓存几何缩放)
- **Camera**(FNameNewMode) — Change Camera mode
- **SetViewTargetWithBlend**(AActor* NewViewTarget, float BlendTime, EViewTargetBlendFunction BlendFunc, float BlendExp, boolbLockOutgoing) — Set the view target blending with variable control params NewViewTarget -- new actor to set as view target params BlendTime -- time taken to blend params BlendFunc -- Cubic, Linear etc functions for blending params BlendExp -- Exponent, used by certain blend functions to control the shape of the cur
- **FlushPressedKeys**()
- **FlushPressedKeysImmediate**()
- **FlushPressedMouseKeys**()
- **SetAudioListenerOverride**(USceneComponent* AttachToComponent, FVector Location, FRotatorRotation) — Used to override the default positioning of the audio listener params AttachToComponent -Optional component to attach the audio listener to params Location -Depending on whether Component is attached this is either an offset from its location or an absolute position params Rotation -Depending on whe
- **ClearAudioListenerOverride**(Clear any overrides that have been applied to audio listener)
- **ConsumeResidualNonAxisInput**()
- **SetCinematicMode**(bool bInCinematicMode, bool bHidePlayer, bool bAffectsHUD, bool bAffectsMovement, boolbAffectsTurning) — ServerSP only function for changing whether the player is in cinematic mode. Updates values of various state variables, then replicates the call to the client to sync the current cinematic mode. params bInCinematicMode -specify true if the player is entering cinematic mode; false if the player is le
- **OnServerStartedVisualLogger**(boolbIsLogging) — Notify from server that Visual Logger is recording, to show that information on client about possible performance issues
- **GetSpectatorPawn**(Get the Pawn used when spectating. NULL when not spectating.)
- **VectorGetFocalLocation**(Returns the location the PlayerController is focused on. If there is a possessed Pawn, returns the Pawn's location. If there is a spectator Pawn, returns that Pawn's location. Otherwise, returns the PlayerController's spawn location (usually the last known Pawn location after it has died).)
- **StartTouchEventRecord**(FString &RecordFileName) — 开始记录Touch事件，将信息保存在TouchEventRecordData中，给定一个文件名存盘 return -是否一切正常 params RecordFileName -记录保存到的文件名
- **StopTouchEventRecord**(停止记录Touch事件，将TouchEventRecordData中的数据保存到文件 return -保存是否成功)
- **ReplayTouchEventRecord**(FString &RecordFileName) — 从文件中加载Touch事件，并进行重放 params RecordFileName -记录文件名
- **GetTouchRecordStartAndEndRotation**(FRotator& StartRotation, FRotator &EndRotation) — 获取Touch记录中保存的起始和终止旋转角 params StartRotation -起始旋转角，引用，在函数内赋值 params EndRotation -终止旋转角，引用，在函数内赋值 ServerSetSpectatorWaiting ClientSetSpectatorWaiting SetActionExecuteState GetActionExecuteState EnableCheats FOV RestartLevel LocalTravel ClientReturnToMainMenu ClientRepObjRef Pause SetPauseByBlueprint S

## 属性

- **associated** — with this PlayerController. Could be a local player or a net connection. Used in net games so client can acknowledge it possessed a specific pawn. UInterpTrackInstDirector *ControllingDirTrackInst Director track that's currently possessing this player controller, or none if not possessed. AHUD *MyHU

## APlayerStart

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APlayerStart?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPlayerStart.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APlayerStart](https://developer.gp.qq.com/api/#/searchContent/APlayerStart?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPlayerStart.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APlayerStart)

类

全文搜索

This class indicates a location where a player can spawn when the game begins

---


## 属性

- **To** — take more control over PlayerStart selection, you can override the virtual AGameModeBase::FindPlayerStart and AGameModeBase::ChoosePlayerStart functions. Used when searching for which playerstart to use. UArrowComponent *ArrowComponent Arrow component to indicate forward direction of start PlayerSta

## APlayerState

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APlayerState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPlayerState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APlayerState](https://developer.gp.qq.com/api/#/searchContent/APlayerState?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPlayerState.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APlayerState)

类

全文搜索

A PlayerState is created for every player on a server (or in a standalone game). PlayerStates are replicated to all clients, and contain network game relevant information about the player, such as playername, score, etc.

---


## 函数

- **OnRep_Score**(Replication Notification Callbacks)
- **OnRep_PlayerName**()
- **OnRep_bIsInactive**()
- **OnRep_UniqueId**()
- **ReceiveOverrideWith**(APlayerState *OldPlayerState) — Can be implemented in Blueprint Child to move more properties from old to new PlayerState when reconnecting params OldPlayerState -Old PlayerState, which we use to fill the new one with
- **ReceiveCopyProperties**(APlayerState *NewPlayerState) — Can be implemented in Blueprint Child to move more properties from old to new PlayerState when traveling to a new level params NewPlayerState -New PlayerState, which we fill with the current properties OnRep_Score OnRep_PlayerName OnRep_bIsInactive OnRep_UniqueId ReceiveOverrideWith ReceiveCopyPrope

## 属性

- **current** — score. Replicated compressed ping for this player (holds ping in msec divided by 4) Player name, or blank if none. Unique net id number. Actual value varies based on current online subsystem, use it only as a guaranteed unique number per player. Whether this player is currently a spectator Whether t

## APointLight

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APointLight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPointLight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APointLight](https://developer.gp.qq.com/api/#/searchContent/APointLight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPointLight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APointLight)

类

全文搜索

---


## 函数

- **SetRadius**(floatNewRadius)
- **SetLightFalloffExponent**(floatNewLightFalloffExponent) — SetRadius SetLightFalloffExponent

## APostProcessVolume

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APostProcessVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPostProcessVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APostProcessVolume](https://developer.gp.qq.com/api/#/searchContent/APostProcessVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPostProcessVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APostProcessVolume)

类

全文搜索

---


## 函数

- **AddOrUpdateBlendable**(TScriptInterface < IBlendableInterface > InBlendableObject, floatInWeight) — Adds an Blendable (implements IBlendableInterface) to the array of Blendables (if it doesn't exist) and update the weight AddOrUpdateBlendable

## 属性

- **process** — settings to use for this volume. Priority of this volume. In the case of overlapping volumes the one with the highest priority overrides the lower priority ones. The order is undefined if two or more overlapping volumes have the same priority. World space radius around the volume that is used for bl

## APrecomputedVisibilityOverrideVolume

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APrecomputedVisibilityOverrideVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPrecomputedVisibilityOverrideVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APrecomputedVisibilityOverrideVolume](https://developer.gp.qq.com/api/#/searchContent/APrecomputedVisibilityOverrideVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPrecomputedVisibilityOverrideVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APrecomputedVisibilityOverrideVolume)

类

全文搜索

---


## 属性

- **of** — actors that will always be considered visible by Precomputed Visibility when viewed from inside this volume. Array of actors that will always be considered invisible by Precomputed Visibility when viewed from inside this volume. Array of level names whose actors will always be considered invisible b

## AProceduralFoliageBlockingVolume

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AProceduralFoliageBlockingVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAProceduralFoliageBlockingVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AProceduralFoliageBlockingVolume](https://developer.gp.qq.com/api/#/searchContent/AProceduralFoliageBlockingVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAProceduralFoliageBlockingVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AProceduralFoliageBlockingVolume)

类

全文搜索

An invisible volume used to block ProceduralFoliage instances from being spawned.

---

