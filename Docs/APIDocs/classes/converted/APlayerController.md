# APlayerController

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