# UCharacterMovementComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCharacterMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCharacterMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCharacterMovementComponent](https://developer.gp.qq.com/api/#/searchContent/UCharacterMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCharacterMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCharacterMovementComponent)

类

全文搜索

CharacterMovementComponent handles movement logic for the associated Character owner. It supports various movement modes including: walking, falling, swimming, flying, custom. Movement is affected primarily by current Velocity and Acceleration. Acceleration is updated each frame based on the input vector accumulated thus far (see UPawnMovementComponent::GetPendingInputVector()). Networking is fully implemented, with server-client correction and prediction included. @see ACharacter, UPawnMovementComponent

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| F | **StringGetToString** |  |  |
| void | **SetAvoidanceGroup** | int32GroupFlags |  |
| void | **SetAvoidanceGroupMask** | FNavAvoidanceMask &GroupMask |  |
| void | **SetGroupsToAvoid** | int32GroupFlags |  |
| void | **SetGroupsToAvoidMask** | FNavAvoidanceMask &GroupMask |  |
| void | **SetGroupsToIgnore** | int32GroupFlags |  |
| void | **SetGroupsToIgnoreMask** | FNavAvoidanceMask &GroupMask |  |
| void | **SetAvoidanceEnabled** | boolbEnable | Change avoidance state and registers in RVO manager if needed |
| ACharacter * | **GetCharacterOwner** |  | Get the Character that owns UpdatedComponent. |
| void | **SetMovementMode** | EMovementMode NewMovementMode, uint8NewCustomMode | Change movement mode. params NewMovementMode -The new movement mode params NewCustomMode -The new custom sub-mode, only applicable if NewMovementMode is Custom. |
| void | **SetGroundMovementMode** | EMovementModeNewGroundMovementMode | Set movement mode to use when returning to walking movement (either MOVE_Walking or MOVE_NavWalking). If movement mode is currently one of Walking or NavWalking, this will also change the current movement mode (via SetMovementMode()) if the new mode is not the current ground mode. params NewGroundMo |
| E | **MovementModeGetGroundMovementMode** |  | Get current GroundMovementMode value. return -current GroundMovementMode |
| uint8 | **PackNetworkMovementMode** |  |  |
| void | **UnpackNetworkMovementMode** | uint8 ReceivedMode, TEnumAsByte < EMovementMode > & OutMode, uint8 & OutCustomMode, TEnumAsByte < EMovementMode > &OutGroundMode |  |
| void | **ApplyNetworkMovementMode** | uint8ReceivedMode |  |
| bool | **CheckBaseIsMoveable** | USceneComponent *MovementBase |  |
| bool | **IsWalking** |  | return -true if the character is in the 'Walking' movement mode. |
| void | **DisableMovement** |  | Make movement impossible (sets movement mode to MOVE_None). |
| bool | **HasValidData** |  | Return true if we have a valid CharacterOwner and UpdatedComponent. |
| UPrimitiveComponent * | **GetMovementBase** |  | Return PrimitiveComponent we are based on (standing and walking on). |
| void | **MaybeUpdateBasedMovement** | floatDeltaSeconds | Update or defer updating of position based on Base movement |
| void | **MaybeSaveBaseLocation** |  |  |
| Call | **SaveBaseLocation** |  |  |
| F | **VectorGetImpartedMovementBaseVelocity** |  | If we have a movement base, get the velocity that should be imparted by that base, usually when jumping off of it. Only applies the components of the velocity enabled by bImpartBaseVelocityX, bImpartBaseVelocityY, bImpartBaseVelocityZ. |
| void | **CalcVelocity** | float DeltaTime, float Friction, bool bFluid, floatBrakingDeceleration | Updates Velocity and Acceleration based on the current state, applying the effects of friction and acceleration or deceleration. Does not apply gravity. This is used internally during movement updates. Normally you don't need to call this from outside code, but you might want to use it for custom mo |
| float | **GetMaxJumpHeight** |  | Compute the max jump height based on the JumpZVelocity velocity and gravity. This does not take into account the CharacterOwner's MaxJumpHoldTime. |
| float | **GetMaxJumpHeightWithJumpTime** |  | Compute the max jump height based on the JumpZVelocity velocity and gravity. This does take into account the CharacterOwner's MaxJumpHoldTime. |
| float | **GetMinAnalogSpeed** |  | return -Maximum acceleration for the current state. |
| float | **K2_GetModifiedMaxAcceleration** |  | return -Maximum acceleration for the current state, based on MaxAcceleration and any additional modifiers. |
| float | **GetMaxAcceleration** |  | return -Maximum acceleration for the current state. |
| float | **GetMaxBrakingDeceleration** |  | return -Maximum deceleration for the current state when braking (ie when there is no acceleration). |
| F | **VectorGetCurrentAcceleration** |  | return -Current acceleration, computed from input vector each update. |
| float | **GetAnalogInputModifier** |  | return -Modifier [0..1] based on the magnitude of the last input vector, which is used to modify the acceleration and max speed during movement. |
| bool | **CanStepUp** | FHitResult &Hit | return -true if we can step up on the actor in the given FHitResult. |
| void | **SetBase** | UPrimitiveComponent * NewBase, FName BoneName, boolbNotifyActor | Update the base of the character, which is the PrimitiveComponent we are standing on. |
| void | **SetBaseFromFloor** | FFindFloorResult &FloorResult |  |
| Update the base of the character, using the given floor result if it is walkable, or null if not. Calls | **SetBase** |  |  |
| void | **ClearAccumulatedForces** |  |  |
| Clears forces accumulated through | **AddImpulse** |  |  |
| bool | **HasAccumulatedForcesOrLaunch** |  | Add by zoranouyang |
| Is there | **AddImpulse** |  |  |
| void | **AddImpulse** | FVector Impulse, boolbVelocityChange | Add impulse to character. Impulses are accumulated each tick and applied together so multiple calls to this function will accumulate. An impulse is an instantaneous force, usually applied once. If you want to continually apply |
| forces each frame, use | **AddForce** |  | Note that changing the momentum of characters like this can change the movement mode. params Impulse - Impulse to apply. params bVelocityChange -Whether or not the impulse is relative to mass. |
| void | **AddForce** | FVectorForce | Add force to character. Forces are accumulated each tick and applied together so multiple calls to this function will accumulate. Forces are scaled depending on timestep, so they can be applied each frame. If you want an instantaneous force, use AddImpulse. Adding a force always takes the actor's ma |
| float | **GetPerchRadiusThreshold** |  | return -The distance from the edge of the capsule within which we don't allow the character to perch on the edge of a surface. |
| float | **GetValidPerchRadius** |  | Returns the radius within which we can stand on the edge of a surface without falling (if this is a walkable surface). |
| Simply computed as the capsule radius minus the result of | **GetPerchRadiusThreshold** |  |  |
| bool | **IsWalkable** | FHitResult &Hit | Return true if the hit result should be considered a walkable surface for the character. |
| float | **K2_GetWalkableFloorAngle** |  | Get the max angle in degrees of a walkable surface for the character. |
| void | **SetWalkableFloorAngle** | floatInWalkableFloorAngle | Set the max angle in degrees of a walkable surface for the character. Also computes WalkableFloorZ. |
| float | **K2_GetWalkableFloorZ** |  | Get the Z component of the normal of the steepest walkable surface for the character. Any lower than this and it is not walkable. |
| void | **SetWalkableFloorZ** | floatInWalkableFloorZ | Set the Z component of the normal of the steepest walkable surface for the character. Also computes WalkableFloorAngle. |
| void | **K2_FindFloor** | FVector CapsuleLocation, FFindFloorResult &FloorResult |  |
| Sweeps a vertical trace to find the floor for the capsule at the given location. Will attempt to perch if | **ShouldComputePerchResult** |  | No floor will be found if collision is disabled on the capsule! params CapsuleLocation -Location where the capsule sweep should originate params FloorResult - Result of the floor check |
| void | **K2_ComputeFloorDist** | FVector CapsuleLocation, float LineDistance, float SweepDistance, float SweepRadius, FFindFloorResult &FloorResult | Compute distance to the floor from bottom sphere of capsule and store the result in FloorResult. This distance is the swept distance of the capsule to the first point impacted by the lower hemisphere, or distance from the bottom of the capsule in the case of a line trace. This function does not care |
| void | **CapsuleTouched** | UPrimitiveComponent * OverlappedComp, AActor * Other, UPrimitiveComponent * OtherComp, int32 OtherBodyIndex, bool bFromSweep, FHitResult &SweepResult | Called when the collision capsule touches another primitive component |
| void | **ResetPredictionData_Client** |  |  |
| void | **ResetPredictionData_Server** |  |  |
| float | **GetSmoothNetUpdateRotationTimeTemporaty** |  |  |
| void | **SetSmoothNetUpdateRotationTimeTemporaty** | floatInSmoothNetUpdateRotationTime | Add by zoranouyang 临时的SmoothNetUpdateRotationTime，用于部分情况下需要一段时间内修改一下模拟端Rotation插值速度 主要还是以NetworkSimulatedSmoothRotationTime配置为主 注意：本值要记得还原到-1，表示不生效 params InSmoothNetUpdateRotationTime -模拟端的Rotation插值时间，默认值-1表示使用NetworkSimulatedSmoothRotationTime配置的值 |
| void | **ServerMove** | float TimeStamp, FVector_NetQuantize10 InAccel, FVector_NetQuantize100 ClientLoc, uint8 CompressedMoveFlags, uint8 ClientRoll, uint32 View, UPrimitiveComponent * ClientMovementBase, FName ClientBaseBo | Replicated function sent by client to server - contains client movement and view info. |
| void | **ServerMoveDual** | float TimeStamp0, FVector_NetQuantize10 InAccel0, uint8 PendingFlags, uint32 View0, float TimeStamp, FVector_NetQuantize10 InAccel, FVector_NetQuantize100 ClientLoc, uint8 NewFlags, uint8 ClientRoll,  | Replicated function sent by client to server - contains client movement and view info for two moves. |
| void | **ServerMoveDualHybridRootMotion** | float TimeStamp0, FVector_NetQuantize10 InAccel0, uint8 PendingFlags, uint32 View0, float TimeStamp, FVector_NetQuantize10 InAccel, FVector_NetQuantize100 ClientLoc, uint8 NewFlags, uint8 ClientRoll,  | Replicated function sent by client to server - contains client movement and view info for two moves. First move is non root motion, second is root motion. |
| void | **ServerMoveOld** | float OldTimeStamp, FVector_NetQuantize10 OldAccel, uint8OldMoveFlags | Resending an (important) old move. Process it if not already processed. |
| void | **ClientAckGoodMove** | floatTimeStamp |  |
| If no client adjustment is needed after processing received | **ServerMove** |  |  |
| void | **OnGoodMoveAck** | floatTimeStamp |  |
| void | **ClientAdjustPosition** | float TimeStamp, FVector NewLoc, FVector NewVel, UPrimitiveComponent * NewBase, FName NewBaseBoneName, bool bHasBase, bool bBaseRelativePosition, uint8ServerMovementMode | Replicate position correction to client, associated with a timestamped servermove. Client will replay subsequent moves after applying adjustment. |
| void | **ClientVeryShortAdjustPosition** | float TimeStamp, FVector NewLoc, UPrimitiveComponent * NewBase, FName NewBaseBoneName, bool bHasBase, bool bBaseRelativePosition, uint8ServerMovementMode | Bandwidth saving version, when velocity is zeroed |
| void | **ClientAdjustRootMotionPosition** | float TimeStamp, float ServerMontageTrackPosition, FVector ServerLoc, FVector_NetQuantizeNormal ServerRotation, float ServerVelZ, UPrimitiveComponent * ServerBase, FName ServerBoneName, bool bHasBase, | Replicate position correction to client when using root motion for movement. (animation root motion specific) |
| void | **ClientAdjustRootMotionSourcePosition** | float TimeStamp, FRootMotionSourceGroup ServerRootMotion, bool bHasAnimRootMotion, float ServerMontageTrackPosition, FVector ServerLoc, FVector_NetQuantizeNormal ServerRotation, float ServerVelZ, UPri | Replicate root motion source correction to client when using root motion for movement. GetToString SetAvoidanceGroup SetAvoidanceGroupMask SetGroupsToAvoid SetGroupsToAvoidMask SetGroupsToIgnore SetGroupsToIgnoreMask SetAvoidanceEnabled GetCharacterOwner SetMovementMode SetGroundMovementMode GetGrou |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Character | **movement** | component belongs to Apply gravity while the character is actively jumping (e.g. holding the jump key). Helps remove frame-rate dependent jump height, but may alter base jump height. Custom gravity scale. Gravity is multiplied by this amount for the character. Maximum height character can step up In |

