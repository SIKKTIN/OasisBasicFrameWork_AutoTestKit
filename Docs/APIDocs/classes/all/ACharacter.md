# ACharacter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ACharacter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACharacter](https://developer.gp.qq.com/api/#/searchContent/ACharacter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FACharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ACharacter)

类

全文搜索

Characters are Pawns that have a mesh, collision, and built-in movement logic. They are responsible for all physical interaction between the player or AI and the world, and also implement basic networking and input models. They are designed for a vertically-oriented player representation that can walk, jump, fly, and swim through the world using CharacterMovementComponent. @see APawn, UCharacterMovementComponent

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **CacheInitialMeshOffset** | FVector MeshRelativeLocation, FRotatorMeshRelativeRotation | Cache mesh offset from capsule. This is used as the target for network smoothing interpolation, when the mesh is offset with lagged smoothing. This is automatically called during initialization; call this at runtime if you intend to change the default mesh offset from the capsule. |
| void | **OnRep_ReplicatedBasedMovement** |  | Rep notify for ReplicatedBasedMovement |
| void | **SetReplicateMovement** | boolbInReplicateMovement | Set whether this actor's movement replicates to network clients. |
| void | **OnRep_ReplicatedMovementMode** | uint8LastReplicatedMovementMode |  |
| uint8 | **GetReplicatedMovementMode** |  | Returns ReplicatedMovementMode |
| F | **VectorGetBaseTranslationOffset** |  | Get the saved translation offset of mesh. This is how much extra offset is applied from the center of the capsule. |
| F | **RotatorGetBaseRotationOffsetRotator** |  | Get the saved rotation offset of mesh. This is how much extra rotation is applied from the capsule rotation. |
| void | **OnRep_IsCrouched** |  | Handle Crouching replicated from server |
| UPrimitiveComponent * | **GetMovementBase** |  |  |
| UPrimitiveComponent * | **GetReplicatedMovementBase** |  |  |
| void | **Jump** |  | Make the character jump on the next update. If you want your character to jump according to the time that the jump key is held, then you can set JumpKeyHoldTime to some non-zero value. Make sure in this case to |
| call | **StopJumping** |  | as on a button up event), otherwise the character will carry on receiving the velocity until JumpKeyHoldTime is reached. |
| void | **StopJumping** |  | Stop the character from jumping on the next update. Call this from an input event (such as a button 'up' event) to cease applying jump Z-velocity. If this is not called, then jump z-velocity will be applied until JumpMaxHoldTime is reached. |
| bool | **CanJump** |  | Check if the character can jump in the current state. The default implementation may be overridden or extended by implementing the custom CanJump event in Blueprints. |
| bool | **CanJumpInternal** |  | Customizable event to check if the character can jump in the current state. Default implementation returns true if the character is on the ground and not crouching, |
| has a valid CharacterMovementComponent and | **CanEverJump** |  | Default implementation also allows for 'hold to jump higher' functionality: As well as returning true when on the ground, it also returns true when GetMaxJumpTime is more than zero and IsJumping returns true. |
| bool | **IsJumpProvidingForce** |  | True if jump is actively providing a force, such as when the jump key is held and the time it has been held is less than JumpMaxHoldTime. |
| float | **PlayAnimMontage** | UAnimMontage * AnimMontage, float InPlayRate, FName StartSectionName, bool TPP, bool FPP, boolNewFPP | Play Animation Montage on the character mesh |
| void | **StopAnimMontage** | UAnimMontage *AnimMontage | Stop Animation Montage. If NULL, it will stop what's currently active. The Blend Out Time is taken from the montage asset that is being stopped. |
| UAnimMontage * | **GetCurrentMontage** |  | Return current playing Montage |
| bool | **IsVelocitySimulated** |  | 是否正在速度场模拟中(实际生效) |
| F | **VectorGetAdditiveVelocity** |  | 获取速度场的叠加速度 |
| F | **VectorGetSimulatedVelocity** |  | 获取速度场中的模拟速度(原有速度+叠加速度) |
| void | **LaunchCharacter** | FVector & LaunchVelocity, bool bXYOverride, boolbZOverride | Set a pending launch velocity on the Character. This velocity will be processed on the next CharacterMovementComponent tick, and will set it to the "falling" state. Triggers the OnLaunched event. |
| void | **OnLaunched** | FVector & LaunchVelocity, bool bXYOverride, boolbZOverride | Let blueprint know that we were launched |
| void | **OnJumped** |  | Event fired when the character has just started jumping |
| void | **OnLanded** | FHitResult &Hit | Called upon landing when falling, to perform actions based on the Hit result. Note that movement mode is still "Falling" during this event. Current Velocity value is the velocity at the time of landing. |
| Consider | **OnMovementModeChanged** |  | params Hit -Result describing the landing that resulted in a valid landing spot. |
| void | **OnWalkingOffLedge** | FVector & PreviousFloorImpactNormal, FVector & PreviousFloorContactNormal, FVector & PreviousLocation, floatTimeDelta | Event fired when the Character is walking off a surface and is about to fall because CharacterMovement->CurrentFloor became unwalkable. If CharacterMovement->MovementMode does not change during this event then the character will automatically start falling afterwards. params PreviousFloorImpactNorma |
| void | **Crouch** | boolbClientSimulation | Request the character to start crouching. The request is processed on the next update of the CharacterMovementComponent. |
| void | **UnCrouch** | boolbClientSimulation | Request the character to stop crouching. The request is processed on the next update of the CharacterMovementComponent. |
| void | **K2_OnEndCrouch** | float HalfHeightAdjust, floatScaledHalfHeightAdjust | Event when Character stops crouching. params HalfHeightAdjust -difference between default collision half-height, and actual crouched capsule half-height. params ScaledHalfHeightAdjust -difference after component scale is taken in to account. |
| void | **K2_OnStartCrouch** | float HalfHeightAdjust, floatScaledHalfHeightAdjust | Event when Character crouches. params HalfHeightAdjust -difference between default collision half-height, and actual crouched capsule half-height. params ScaledHalfHeightAdjust -difference after component scale is taken in to account. |
| void | **K2_OnMovementModeChanged** | EMovementMode PrevMovementMode, EMovementMode NewMovementMode, uint8 PrevCustomMode, uint8NewCustomMode | Called from CharacterMovementComponent to notify the character that the movement mode has changed. params PrevMovementMode -Movement mode before the change params NewMovementMode -New movement mode params PrevCustomMode -Custom mode before the change (applicable if PrevMovementMode is Custom) params |
| void | **K2_UpdateCustomMovement** | floatDeltaTime | Event for implementing custom character movement mode. Called by CharacterMovement if MovementMode is set to Custom. |
| void | **ClientCheatWalk** |  |  |
| void | **ClientCheatFly** |  |  |
| void | **ClientCheatGhost** |  |  |
| void | **RootMotionDebugClientPrintOnScreen** | FString &InString |  |
| void | **OnRep_RootMotion** |  | Handles replicated root motion properties on simulated proxies and position correction. |
| bool | **IsPlayingRootMotion** |  | true if we are playing Root Motion right now |
| bool | **IsPlayingNetworkedRootMotionMontage** |  | true if we are playing Root Motion right now, through a Montage with RootMotionMode == ERootMotionMode::RootMotionFromMontagesOnly. This means code path for networked root motion is enabled. |
| float | **GetAnimRootMotionTranslationScale** |  | Returns current value of AnimRootMotionScale |
| void | **SetReplicateBasedMovement** | boolbInReplicateBasedMovement |  |
| void | **OnRep_GeneralCampID** |  | CacheInitialMeshOffset OnRep_ReplicatedBasedMovement SetReplicateMovement OnRep_ReplicatedMovementMode GetReplicatedMovementMode GetBaseTranslationOffset GetBaseRotationOffsetRotator OnRep_IsCrouched GetMovementBase GetReplicatedMovementBase Jump StopJumping CanJump CanJumpInternal IsJumpProvidingFo |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **main** | skeletal mesh associated with this Character (optional sub-object). UCharacterMovementComponent *CharacterMovement Movement component used for movement logic in various movement modes (walking, falling, etc), containing relevant settings and functions to control movement. UCapsuleComponent *CapsuleC |

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

