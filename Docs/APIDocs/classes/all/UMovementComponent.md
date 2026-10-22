# UMovementComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovementComponent](https://developer.gp.qq.com/api/#/searchContent/UMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovementComponent)

类

全文搜索

MovementComponent is an abstract component class that defines functionality for moving a PrimitiveComponent (our UpdatedComponent) each tick. Base functionality includes: - Restricting movement to a plane or axis. - Utility functions for special handling of collision results (SlideAlongSurface(), ComputeSlideVector(), TwoWallAdjust()). - Utility functions for moving when there may be initial penetration (SafeMoveUpdatedComponent(), ResolvePenetration()). - Automatically registering the component tick and finding a component to move on the owning Actor. Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()). During swept (non-teleporting) movement only collision of UpdatedComponent is considered, attached components will teleport to the end location ignoring collision.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| float | **GetGravityZ** |  | Returns gravity that affects this component |
| float | **GetMaxSpeed** |  | Returns maximum speed of component in current movement mode. |
| float | **K2_GetMaxSpeedModifier** |  | Returns a scalar applied to the maximum velocity that the component can currently move. |
| float | **K2_GetModifiedMaxSpeed** |  |  |
| Returns the result of | **GetMaxSpeed** |  |  |
| bool | **IsExceedingMaxSpeed** | floatMaxSpeed | Returns true if the current velocity is exceeding the given max speed (usually the result of GetMaxSpeed()), within a small error tolerance. Note that under normal circumstances updates cause by acceleration will not cause this to be true, however external forces or changes in the max speed limit ca |
| void | **StopMovementImmediately** |  | Stops movement immediately (zeroes velocity, usually zeros acceleration for components with acceleration). |
| APhysicsVolume * | **GetPhysicsVolume** |  | Returns the PhysicsVolume this MovementComponent is using, or the world's default physics volume if none. |
| void | **PhysicsVolumeChanged** | APhysicsVolume *NewVolume | Delegate when PhysicsVolume of UpdatedComponent has been changed |
| void | **SetUpdatedComponent** | USceneComponent *NewUpdatedComponent | Assign the component we move and update. |
| bool | **K2_MoveUpdatedComponent** | FVector Delta, FRotator NewRotation, FHitResult & OutHit, bool bSweep, boolbTeleport | Moves our UpdatedComponent by the given Delta, and sets rotation to NewRotation. Respects the plane constraint, if enabled. return -True if some movement occurred, false if no movement occurred. Result of any impact will be stored in OutHit. |
| void | **SetPlaneConstraintAxisSetting** | EPlaneConstraintAxisSettingNewAxisSetting | Set the plane constraint axis setting. Changing this setting will modify the current value of PlaneConstraintNormal. params NewAxisSetting -New plane constraint axis setting. |
| E | **PlaneConstraintAxisSettingGetPlaneConstraintAxisSetting** |  | Get the plane constraint axis setting. |
| void | **SetPlaneConstraintNormal** | FVectorPlaneNormal | Sets the normal of the plane that constrains movement, enforced if the plane constraint is enabled. Changing the normal automatically sets PlaneConstraintAxisSetting to "Custom". params PlaneNormal -The normal of the plane. If non-zero in length, it will be normalized. |
| void | **SetPlaneConstraintFromVectors** | FVector Forward, FVectorUp | Uses the Forward and Up vectors to compute the plane that constrains movement, enforced if the plane constraint is enabled. |
| void | **SetPlaneConstraintOrigin** | FVectorPlaneOrigin | Sets the origin of the plane that constrains movement, enforced if the plane constraint is enabled. |
| void | **SetPlaneConstraintEnabled** | boolbEnabled | Sets whether or not the plane constraint is enabled. |
| const FVector & | **GetPlaneConstraintNormal** |  | Returns the normal of the plane that constrains movement, enforced if the plane constraint is enabled. |
| const FVector & | **GetPlaneConstraintOrigin** |  |  |
| Get the plane constraint origin. This defines the behavior of snapping a position to the plane, such as by | **SnapUpdatedComponentToPlane** |  | return -The origin of the plane that constrains movement, if the plane constraint is enabled. |
| F | **VectorConstrainDirectionToPlane** | FVectorDirection | Constrain a direction vector to the plane constraint, if enabled. |
| F | **VectorConstrainLocationToPlane** | FVectorLocation | Constrain a position vector to the plane constraint, if enabled. |
| F | **VectorConstrainNormalToPlane** | FVectorNormal | Constrain a normal vector (of unit length) to the plane constraint, if enabled. |
| void | **SnapUpdatedComponentToPlane** |  | Snap the updated component to the plane constraint, if enabled. GetGravityZ GetMaxSpeed K2_GetMaxSpeedModifier K2_GetModifiedMaxSpeed IsExceedingMaxSpeed StopMovementImmediately GetPhysicsVolume PhysicsVolumeChanged SetUpdatedComponent K2_MoveUpdatedComponent SetPlaneConstraintAxisSetting GetPlaneCo |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **component** | we move and update. If this is null at startup and bAutoRegisterUpdatedComponent is true, the owning Actor's root component will automatically be set as our UpdatedComponent at startup. @see bAutoRegisterUpdatedComponent, SetUpdatedComponent(), UpdatedPrimitive UPrimitiveComponent *UpdatedPrimitive  |

