# UHeadMountedDisplayFunctionLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UHeadMountedDisplayFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHeadMountedDisplayFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHeadMountedDisplayFunctionLibrary](https://developer.gp.qq.com/api/#/searchContent/UHeadMountedDisplayFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUHeadMountedDisplayFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UHeadMountedDisplayFunctionLibrary)

类

全文搜索

---


## 函数

- **IsHeadMountedDisplayEnabled**(Returns whether or not we are currently using the head mounted display. return -(Boolean) status of HMD)
- **IsHeadMountedDisplayConnected**(Returns whether or not the HMD hardware is connected and ready to use. It may or may not actually be in use. return -(Boolean) status whether the HMD hardware is connected and ready to use. It may or may not actually be in use.)
- **EnableHMD**(boolbEnable) — Switches tofrom using HMD and stereo rendering. return -(Boolean) True, if the request was successful. params bEnable - (in) 'true' to enable HMD stereo; 'false' otherwise
- **NameGetHMDDeviceName**(Returns the name of the device, so scripts can modify their behaviour appropriately return -FName specific to the currently active HMD device type. "None" implies no device, "Unknown" implies a device with no description.)
- **TypeGetHMDWornState**(Returns the worn state of the device. return -Unknown, Worn, NotWorn. If the platform does not detect this it will always return Unknown.)
- **GetOrientationAndPosition**(FRotator& DeviceRotation, FVector &DevicePosition) — Grabs the current orientation and position for the HMD. If positional tracking is not available, DevicePosition will be a zero vector params DeviceRotation -(out) The device's current rotation params DevicePosition -(out) The device's current position, in its own tracking space
- **HasValidTrackingPosition**(If the HMD supports positional tracking, whether or not we are currently being tracked)
- **GetNumOfTrackingSensors**(If the HMD has multiple positional tracking sensors, return a total number of them currently connected.)
- **GetTrackingSensorParameters**(FVector& Origin, FRotator& Rotation, float& LeftFOV, float& RightFOV, float& TopFOV, float& BottomFOV, float& Distance, float& NearPlane, float& FarPlane, bool& IsActive, int32Index) — If the HMD has a positional sensor, this will return the game-world location of it, as well as the parameters for the bounding region of tracking. This allows an in-game representation of the legal positional tracking range. All values will be zeroed if the sensor is not available or the HMD does no
- **GetPositionalTrackingCameraParameters**(FVector& CameraOrigin, FRotator& CameraRotation, float& HFOV, float& VFOV, float& CameraDistance, float& NearPlane, float &FarPlane) — If the HMD has a positional sensor, this will return the game-world location of it, as well as the parameters for the bounding region of tracking. This allows an in-game representation of the legal positional tracking range. All values will be zeroed if the sensor is not available or the HMD does no
- **IsInLowPersistenceMode**(Returns true, if HMD is in low persistence mode. 'false' otherwise.)
- **EnableLowPersistenceMode**(boolbEnable) — Switches between low and full persistence modes. params bEnable - (in) 'true' to enable low persistence mode; 'false' otherwise
- **ResetOrientationAndPosition**(float Yaw, EOrientPositionSelector :: TypeOptions) — Resets orientation by setting roll and pitch to 0, assuming that current yaw is forward direction and assuming current position as a 'zero-point' (for positional tracking). params Yaw - (in) the desired yaw to be set after orientation reset. params Options - (in) specifies either position, orientati
- **SetClippingPlanes**(float Near, floatFar) — Sets near and far clipping planes (NCP and FCP) for stereo rendering. Similar to 'stereo ncp= fcp' console command, but NCP and FCP set by this call won't be saved in .ini file. params Near - (in) Near clipping plane, in centimeters params Far - (in) Far clipping plane, in centimeters
- **GetScreenPercentage**(Returns screen percentage to be used in VR mode. return -(float) The screen percentage to be used in VR mode.)
- **SetWorldToMetersScale**(UObject* WorldContext, floatNewScale) — Sets the World to Meters scale, which changes the scale of the world as perceived by the player params NewScale -Specifies how many Unreal units correspond to one meter in the real world
- **GetWorldToMetersScale**(UObject *WorldContext) — Returns the World to Meters scale, which corresponds to the scale of the world as perceived by the player return -How many Unreal units correspond to one meter in the real world
- **SetTrackingOrigin**(TEnumAsByte < EHMDTrackingOrigin :: Type >Origin) — Sets current tracking origin type (eye level or floor level).
- **GetTrackingOrigin**(Returns current tracking origin type (eye level or floor level).)
- **GetVRFocusState**(bool& bUseFocus, bool &bHasFocus) — Returns current state of VR focus. params bUseFocus -(out) if set to true, then this App does use VR focus. params bHasFocus -(out) if set to true, then this App currently has VR focus.
- **IsSpectatorScreenModeControllable**(Return true if spectator screen mode control is available.)
- **SetSpectatorScreenMode**(ESpectatorScreenModeMode) — Sets the social screen mode. params Mode - (in) The social screen Mode.
- **SetSpectatorScreenTexture**(UTexture *InTexture) — Change the texture displayed on the social screen
- **SetSpectatorScreenModeTexturePlusEyeLayout**(FVector2D EyeRectMin, FVector2D EyeRectMax, FVector2D TextureRectMin, FVector2D TextureRectMax, bool bDrawEyeFirst, boolbClearBlack) — Setup the layout for ESpectatorScreenMode::TexturePlusEye. IsHeadMountedDisplayEnabled IsHeadMountedDisplayConnected EnableHMD GetHMDDeviceName GetHMDWornState GetOrientationAndPosition HasValidTrackingPosition GetNumOfTrackingSensors GetTrackingSensorParameters GetPositionalTrackingCameraParameters