# APlayerCameraManager

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