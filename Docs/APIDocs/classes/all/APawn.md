# APawn

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APawn](https://developer.gp.qq.com/api/#/searchContent/APawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APawn)

类

全文搜索

Pawn is the base class of all actors that can be possessed by players or AI. They are the physical representations of players and creatures in a level.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| UPawnMovementComponent * | **GetMovementComponent** |  | Return our PawnMovementComponent, if we have one. By default, returns the first PawnMovementComponent found. Native classes that create their own movement component should override this method for more efficiency. |
| UMeshComponent * | **GetMeshComponent** |  | Return our Mesh, if we have one. By default, returns the first MeshComponent found. Native classes that create their own mesh component should override this method for more efficiency. |
| void | **SetUseViewTranslatedTransform** | boolbNewUseViewTranslatedTransform |  |
| void | **PawnMakeNoise** | float Loudness, FVector NoiseLocation, bool bUseNoiseMakerLocation, AActor *NoiseMaker | Inform AIControllers that you've made a noise they might hear (they are sent a HearNoise message if they have bHearNoises==true) The instigator of this sound is the pawn which is used to call MakeNoise. params Loudness -- is the relative loudness of this noise (range 0.0 to 1.0). Directly affects th |
| AActor * | **GetMovementBaseActor** | APawn *Pawn | Gets the owning actor of the Movement Base Component on which the pawn is standing. |
| bool | **IsControlled** |  | See if this actor is currently being controlled |
| AController * | **GetController** |  | Returns controller for this actor. |
| F | **RotatorGetControlRotation** |  | Get the rotation of the Controller, often the 'view' rotation of this Pawn. |
| void | **OnRep_Controller** |  | Called when Controller is replicated |
| bool | **UseControllerRotationYaw** |  |  |
| void | **OnRep_PlayerState** |  | PlayerState Replication Notification Callback |
| void | **SetCanAffectNavigationGeneration** | bool bNewValue, boolbForceUpdate | Use SetCanAffectNavigationGeneration to change this value at runtime. Note that calling this function at runtime will result in any navigation change only if runtime navigation generation is enabled. |
| F | **VectorGetNavAgentLocation** |  | Basically retrieved pawn's location on navmesh |
| void | **ReceivePossessed** | AController *NewController | Event called when the Pawn is possessed by a Controller (normally only occurs on the serverstandalone). |
| void | **ReceiveUnpossessed** | AController *OldController | Event called when the Pawn is no longer possessed by a Controller. |
| bool | **IsLocallyControlled** |  | return -true if controlled by a local (not network) Controller. |
| bool | **IsPlayerControlled** |  | return -true if controlled by a human player (possessed by a PlayerController). |
| F | **RotatorGetBaseAimRotation** |  | Return the aim rotation for the Pawn. If we have a controller, by default we aim at the player's 'eyes' direction that is by default the Pawn rotation for AI, and camera (crosshair) rotation for human players. |
| void | **DetachFromControllerPendingDestroy** |  | Call this function to detach safely pawn from its controller, knowing that we will be destroyed soon. |
| void | **SpawnDefaultController** |  | Spawn default controller for this Pawn, and get possessed by it. |
| void | **AddMovementInput** | FVector WorldDirection, float ScaleValue, boolbForce | Add movement input along the given world direction vector (usually normalized) scaled by 'ScaleValue'. If ScaleValue < 0, movement will be in the opposite direction. Base Pawn classes won't automatically apply movement, it's up to the user to do so in a Tick event. Subclasses such as Character and D |
| - If true always add the input, ignoring the result of | **IsMoveInputIgnored** |  |  |
| F | **VectorGetPendingMovementInputVector** |  | Return the pending input vector in world space. This is the most up-to-date value of the input vector, pending ConsumeMovementInputVector() which clears it, Usually only a PawnMovementComponent will want to read this value, or the Pawn itself if it is responsible for movement. return -The pending in |
| F | **VectorGetLastMovementInputVector** |  |  |
| Return the last input vector in world space that was processed by | **ConsumeMovementInputVector** |  | Any user that needs to know about the input that last affected movement should use this function. For example an animation update would want to use this, since by default the order of updates in a frame is: PlayerController (device input) -> MovementComponent -> Pawn -> Mesh (animations) return |
| -The last input vector in world space that was processed by | **ConsumeMovementInputVector** |  |  |
| F | **VectorConsumeMovementInputVector** |  | Returns the pending input vector and resets it to zero. This should be used during a movement update (by the Pawn or PawnMovementComponent) to prevent accumulation of control input between frames. Copies the pending input vector to the saved input vector (GetLastMovementInputVector()). return -The p |
| void | **AddControllerPitchInput** | floatVal | Add input (affecting Pitch) to the Controller's ControlRotation, if it is a local PlayerController. This value is multiplied by the PlayerController's InputPitchScale value. params Val -Amount to add to Pitch. This value is multiplied by the PlayerController's InputPitchScale value. |
| void | **AddControllerYawInput** | floatVal | Add input (affecting Yaw) to the Controller's ControlRotation, if it is a local PlayerController. This value is multiplied by the PlayerController's InputYawScale value. params Val -Amount to add to Yaw. This value is multiplied by the PlayerController's InputYawScale value. |
| void | **AddControllerRollInput** | floatVal | Add input (affecting Roll) to the Controller's ControlRotation, if it is a local PlayerController. This value is multiplied by the PlayerController's InputRollScale value. params Val -Amount to add to Roll. This value is multiplied by the PlayerController's InputRollScale value. |
| bool | **IsMoveInputIgnored** |  | Helper to see if move input is ignored. If our controller is a PlayerController, checks Controller->IsMoveInputIgnored(). |
| void | **LaunchPawn** | FVector LaunchVelocity, bool bXYOverride, boolbZOverride | (Deprecated) Launch Character with LaunchVelocity |
| F | **VectorK2_GetMovementInputVector** |  | (Deprecated) Return the input vector in world space. GetMovementComponent GetMeshComponent SetUseViewTranslatedTransform PawnMakeNoise GetMovementBaseActor IsControlled GetController GetControlRotation OnRep_Controller UseControllerRotationYaw OnRep_PlayerState SetCanAffectNavigationGeneration GetNa |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| If | **true** | , this Pawn's pitch will be updated to match the Controller's ControlRotation pitch, if controlled by a PlayerController. If true, this Pawn's yaw will be updated to match the Controller's ControlRotation yaw, if controlled by a PlayerController. If true, this Pawn's roll will be updated to match th |

## 委托

- voidOnControllerArrived()
- voidOnPawnClientRestart()
- OnControllerArrived
- OnPawnClientRestart

