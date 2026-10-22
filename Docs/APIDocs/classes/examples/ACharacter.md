# ACharacter

Characters are Pawns that have a mesh, collision, and built-in movement logic. They are responsible for all physical interaction between the player or AI and the world, and also implement basic networking and input models. They are designed for a vertically-oriented player representation that can walk, jump, fly, and swim through the world using CharacterMovementComponent. @see APawn, UCharacterMovementComponent

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| `void` | **CacheInitialMeshOffset** | `FVector MeshRelativeLocation, FRotatorMeshRelativeRotation` | Cache mesh offset from capsule. This is used as the target for network smoothing interpolation, when the mesh is offset with lagged smoothing. This is automatically called during initialization; call  |
| `void` | **OnRep_ReplicatedBasedMovement** | `` | Rep notify for ReplicatedBasedMovement |
| `void` | **SetReplicateMovement** | `boolbInReplicateMovement` | Set whether this actor's movement replicates to network clients. |
| `void` | **OnRep_ReplicatedMovementMode** | `uint8LastReplicatedMovementMode` |  |
| `uint8` | **GetReplicatedMovementMode** | `` | Returns ReplicatedMovementMode |
| `F` | **VectorGetBaseTranslationOffset** | `` | Get the saved translation offset of mesh. This is how much extra offset is applied from the center of the capsule. |
| `F` | **RotatorGetBaseRotationOffsetRotator** | `` | Get the saved rotation offset of mesh. This is how much extra rotation is applied from the capsule rotation. |
| `void` | **OnRep_IsCrouched** | `` | Handle Crouching replicated from server |
| `UPrimitiveComponent *` | **GetMovementBase** | `` |  |
| `UPrimitiveComponent *` | **GetReplicatedMovementBase** | `` |  |
| `void` | **Jump** | `` | Make the character jump on the next update. If you want your character to jump according to the time that the jump key is held, then you can set JumpKeyHoldTime to some non-zero value. Make sure in th |
| `call` | **StopJumping** | `` | as on a button up event), otherwise the character will carry on receiving the velocity until JumpKeyHoldTime is reached. |
| `void` | **StopJumping** | `` | Stop the character from jumping on the next update. Call this from an input event (such as a button 'up' event) to cease applying jump Z-velocity. If this is not called, then jump z-velocity will be a |
| `bool` | **CanJump** | `` | Check if the character can jump in the current state. The default implementation may be overridden or extended by implementing the custom CanJump event in Blueprints. |
| `bool` | **CanJumpInternal** | `` | Customizable event to check if the character can jump in the current state. Default implementation returns true if the character is on the ground and not crouching, |
| `has a valid CharacterMovementComponent and` | **CanEverJump** | `` | Default implementation also allows for 'hold to jump higher' functionality: As well as returning true when on the ground, it also returns true when GetMaxJumpTime is more than zero and IsJumping retur |
| `bool` | **IsJumpProvidingForce** | `` | True if jump is actively providing a force, such as when the jump key is held and the time it has been held is less than JumpMaxHoldTime. |
| `float` | **PlayAnimMontage** | `UAnimMontage * AnimMontage, float InPlayRate, FName StartSectionName, bool TPP, bool FPP, boolNewFPP` | Play Animation Montage on the character mesh |
| `void` | **StopAnimMontage** | `UAnimMontage *AnimMontage` | Stop Animation Montage. If NULL, it will stop what's currently active. The Blend Out Time is taken from the montage asset that is being stopped. |
| `UAnimMontage *` | **GetCurrentMontage** | `` | Return current playing Montage |
| `bool` | **IsVelocitySimulated** | `` | 是否正在速度场模拟中(实际生效) |
| `F` | **VectorGetAdditiveVelocity** | `` | 获取速度场的叠加速度 |
| `F` | **VectorGetSimulatedVelocity** | `` | 获取速度场中的模拟速度(原有速度+叠加速度) |
| `void` | **LaunchCharacter** | `FVector & LaunchVelocity, bool bXYOverride, boolbZOverride` | Set a pending launch velocity on the Character. This velocity will be processed on the next CharacterMovementComponent tick, and will set it to the "falling" state. Triggers the OnLaunched event. |
| `void` | **OnLaunched** | `FVector & LaunchVelocity, bool bXYOverride, boolbZOverride` | Let blueprint know that we were launched |
| `void` | **OnJumped** | `` | Event fired when the character has just started jumping |
| `void` | **OnLanded** | `FHitResult &Hit` | Called upon landing when falling, to perform actions based on the Hit result. Note that movement mode is still "Falling" during this event. Current Velocity value is the velocity at the time of landin |
| `Consider` | **OnMovementModeChanged** | `` | params Hit -Result describing the landing that resulted in a valid landing spot. |
| `void` | **OnWalkingOffLedge** | `FVector & PreviousFloorImpactNormal, FVector & PreviousFloorContactNormal, FVector & PreviousLocation, floatTimeDelta` | Event fired when the Character is walking off a surface and is about to fall because CharacterMovement->CurrentFloor became unwalkable. If CharacterMovement->MovementMode does not change during this e |
| `void` | **Crouch** | `boolbClientSimulation` | Request the character to start crouching. The request is processed on the next update of the CharacterMovementComponent. |
| `void` | **UnCrouch** | `boolbClientSimulation` | Request the character to stop crouching. The request is processed on the next update of the CharacterMovementComponent. |
| `void` | **K2_OnEndCrouch** | `float HalfHeightAdjust, floatScaledHalfHeightAdjust` | Event when Character stops crouching. params HalfHeightAdjust -difference between default collision half-height, and actual crouched capsule half-height. params ScaledHalfHeightAdjust -difference afte |
| `void` | **K2_OnStartCrouch** | `float HalfHeightAdjust, floatScaledHalfHeightAdjust` | Event when Character crouches. params HalfHeightAdjust -difference between default collision half-height, and actual crouched capsule half-height. params ScaledHalfHeightAdjust -difference after compo |
| `void` | **K2_OnMovementModeChanged** | `EMovementMode PrevMovementMode, EMovementMode NewMovementMode, uint8 PrevCustomMode, uint8NewCustomMode` | Called from CharacterMovementComponent to notify the character that the movement mode has changed. params PrevMovementMode -Movement mode before the change params NewMovementMode -New movement mode pa |
| `void` | **K2_UpdateCustomMovement** | `floatDeltaTime` | Event for implementing custom character movement mode. Called by CharacterMovement if MovementMode is set to Custom. |
| `void` | **ClientCheatWalk** | `` |  |
| `void` | **ClientCheatFly** | `` |  |
| `void` | **ClientCheatGhost** | `` |  |
| `void` | **RootMotionDebugClientPrintOnScreen** | `FString &InString` |  |
| `void` | **OnRep_RootMotion** | `` | Handles replicated root motion properties on simulated proxies and position correction. |
| `bool` | **IsPlayingRootMotion** | `` | true if we are playing Root Motion right now |
| `bool` | **IsPlayingNetworkedRootMotionMontage** | `` | true if we are playing Root Motion right now, through a Montage with RootMotionMode == ERootMotionMode::RootMotionFromMontagesOnly. This means code path for networked root motion is enabled. |
| `float` | **GetAnimRootMotionTranslationScale** | `` | Returns current value of AnimRootMotionScale |
| `void` | **SetReplicateBasedMovement** | `boolbInReplicateBasedMovement` |  |
| `void` | **OnRep_GeneralCampID** | `` |  |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| `The` | main | skeletal mesh associated with this Character (optional sub-object). |
| `Movement` | component | used for movement logic in various movement modes (walking, falling, etc), containing relevant settings and functions to control movement. |
| `The` | CapsuleComponent | being used for movement collision (by CharacterMovement). Always treated as being vertically aligned in simple collision check functions. |
| `Info` | about | our current movement base (object we are standing on). |
| `Replicated` | version | of relative movement. Read-only on simulated proxies! |
| `Scale` | to | apply to root motion translation on this Character |
| `TScriptInterface <` | INetworkPredictionInterface | >NetworkPredictionInterface |
| `Saved` | translation | offset of mesh. |
| `Saved` | rotation | offset of mesh. |
| `CharacterMovement` | ServerLastTransformUpdateTimeStamp | value, replicated to simulated proxies. |
| `Flag` | that | we are receiving replication of the based movement. |
| `Flag` | that | we are receiving replication of the based movement. |
| `Default` | crouched | eye height |
| `Set` | by | character movement to specify that this Character is currently crouched. |
| `When` | true | , player wants to jump |
| `When` | true | , applying updates to network client (replaying saved moves for a locally controlled character) |
| `True` | if | Pawn was initially falling when started to replay network moves. |
| `If` | server | disagrees with root motion track position, client has to resimulate root motion from last AckedMove. |
| `If` | server | disagrees with root motion state, client has to resimulate root motion from last AckedMove. |
| `Disable` | simulated | gravity (set when character encroaches geometry on client, to keep him from falling through floors) |
| `Disable` | root | motion on the server. When receiving a DualServerMove, where the first move is not root motion and the second is. |
| `Jump` | key | Held Time. |
| `This` | is | the time that the player has held the jump key, in seconds. |
| `The` | max | time the jump key can be held. |
| `Note` | that | if StopJumping() is not called before the max jump hold time is reached, |
| `then` | the | character will carry on receiving vertical velocity. Therefore it is usually |
| `best` | to | call StopJumping() when jump input has ceased (such as a button up event). |
| `The` | max | number of jumps the character can perform. |
| `Note` | that | if JumpMaxHoldTime is non zero and StopJumping is not called, the player |
| `may` | be | able to perform and unlimited number of jumps. Therefore it is usually |
| `best` | to | call StopJumping() when jump input has ceased (such as a button up event). |
| `Tracks` | the | current number of jumps performed. |
| `This` | is | incremented in CheckJumpInput, used in CanJump_Implementation, and reset in OnMovementModeChanged. |
| `When` | providing | overrides for these methods, it's recommended to either manually |
| `increment` | reset | this value, or call the Super:: method. |
| `For` | LocallyControlled | Autonomous clients. |
| `During` | a | PerformMovement() after root motion is prepared, we save it off into this and |
| `then` | record | it into our SavedMoves. |
| `During` | SavedMove | playback we use it as our "Previous Move" SavedRootMotion which includes |
| `last` | received | root motion from the Server |
| `For` | LocallyControlled | Autonomous clients. Saved root motion data to be used by SavedMoves. |
| `TArray <` | FSimulatedRootMotionReplicatedMove | >RootMotionRepMoves |
| `Array` | of | previously received root motion moves from the server. |
| `Replicated` | Root | Motion montage |
| `TArray <` | FString | >DisableParticleNames |
| `TMap <` | UAnimInstance | * , bool >AsyncAnimInstances |

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

