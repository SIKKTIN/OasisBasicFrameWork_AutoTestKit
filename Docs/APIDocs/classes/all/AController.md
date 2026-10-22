# AController

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AController](https://developer.gp.qq.com/api/#/searchContent/AController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AController)

类

全文搜索

Controllers are non-physical actors that can possess a Pawn to control its actions. PlayerControllers are used by human players to control pawns, while AIControllers implement the artificial intelligence for the pawns they control. Controllers take control of a pawn using their Possess() method, and relinquish control of the pawn by calling UnPossess(). Controllers receive notifications for many of the events occurring for the Pawn they are controlling. This gives the controller the opportunity to implement the behavior in response to this event, intercepting the event and superseding the Pawn's default behavior. ControlRotation (accessed via GetControlRotation()), determines the viewingaiming direction of the controlled Pawn and is affected by input such as from a mouse or gamepad.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| F | **RotatorGetControlRotation** |  | Get the control rotation. This is the full aim rotation, which may be different than a camera orientation (for example in a third person view), and may differ from the rotation of the controlled Pawn (which may choose not to visually pitch or roll, for example). |
| void | **SetControlRotation** | FRotator &NewRotation | Set the control rotation. The RootComponent's rotation will also be updated to match it if RootComponent->bAbsoluteRotation is true. |
| void | **SetInitialLocationAndRotation** | FVector & NewLocation, FRotator &NewRotation | Set the initial location and rotation of the controller, as well as the control rotation. Typically used when the controller is first created. |
| void | **SetStartSpot** | AActor *InActor | Set the StartSpot |
| void | **ClearStartSpot** |  | Clear the StartSpot |
| AActor * | **GetStartSpot** |  |  |
| bool | **LineOfSightTo** | AActor * Other, FVector ViewPoint, boolbAlternateChecks | Checks line to center and top of other actor return -true if controller's pawn can see Other actor. params Other -is the actor whose visibility is being checked. params ViewPoint -is eye position visibility is being checked from. If vect(0,0,0) passed in, uses current viewtarget's eye position. para |
| void | **OnRep_Pawn** |  | Replication Notification Callbacks |
| void | **OnRep_PlayerState** |  |  |
| APlayerController * | **CastToPlayerController** |  | DEPRECATED! Use the standard "Cast To" node instead. Casts this Controller to a Player Controller, if possible. |
| void | **ClientSetLocation** | FVector NewLocation, FRotatorNewRotation | Replicated function to set the pawn location and rotation, allowing server to force (ex. teleports). |
| void | **ClientSetRotation** | FRotator NewRotation, boolbResetCamera | Replicated function to set the pawn rotation, allowing the server to force. |
| APawn * | **K2_GetPawn** |  | Return the Pawn that is currently 'controlled' by this PlayerController |
| AActor * | **GetViewTarget** |  | Get the actor the controller is looking at |
| F | **RotatorGetDesiredRotation** |  | Get the desired pawn target rotation |
| bool | **IsPlayerController** |  | Returns whether this Controller is a PlayerController. |
| bool | **IsLocalPlayerController** |  | Returns whether this Controller is a locally controlled PlayerController. |
| bool | **IsLocalController** |  | Returns whether this Controller is a local controller. |
| void | **Possess** | APawn *InPawn | Handles attaching this controller to the specified pawn. Only runs on the network authority (where HasAuthority() returns true). params InPawn -The Pawn to be possessed. |
| void | **UnPossess** |  | Called to unpossess our pawn for any reason that is not the pawn being destroyed (destruction handled by PawnDestroyed()). |
| void | **StopMovement** |  | Aborts the move the controller is currently performing |
| void | **SetIgnoreMoveInput** | boolbNewMoveInput | Locks or unlocks movement input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreMoveInput. params bNewMoveInput -If true, move input is ignored. If false, input is not ignored. |
| void | **ResetIgnoreMoveInput** |  | Stops ignoring move input by resetting the ignore move input state. |
| bool | **IsMoveInputIgnored** |  | Returns true if movement input is ignored. |
| void | **SetIgnoreLookInput** | boolbNewLookInput | Locks or unlocks look input, consecutive calls stack up and require the same amount of calls to undo, or can all be undone using ResetIgnoreLookInput. params bNewLookInput -If true, look input is ignored. If false, input is not ignored. |
| void | **ResetIgnoreLookInput** |  | Stops ignoring look input by resetting the ignore look input state. |
| bool | **IsLookInputIgnored** |  | Returns true if look input is ignored. |
| void | **ResetIgnoreInputFlags** |  | Reset move and look input ignore flags. |
| void | **ReceiveInstigatedAnyDamage** | float Damage, UDamageType * DamageType, AActor * DamagedActor, AActor *DamageCauser | Event when this controller instigates ANY damage GetControlRotation SetControlRotation SetInitialLocationAndRotation SetStartSpot ClearStartSpot GetStartSpot LineOfSightTo OnRep_Pawn OnRep_PlayerState CastToPlayerController ClientSetLocation ClientSetRotation K2_GetPawn GetViewTarget GetDesiredRotat |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Pawn | **currently** | being controlled by this controller. Use Pawn.Possess() to take control of a pawn ACharacter *Character Character currently being controlled by this controller. Value is same as Pawn if the controlled pawn is a character, otherwise NULL APlayerState *PlayerState PlayerState containing replicated inf |

## 委托

- voidOnInstigatedAnyDamage(floatDamage, const class UDamageType*DamageType, AActor*DamagedActor, AActor*DamageCauser)
- Called when the controller has instigated damage in any way
- OnInstigatedAnyDamage

