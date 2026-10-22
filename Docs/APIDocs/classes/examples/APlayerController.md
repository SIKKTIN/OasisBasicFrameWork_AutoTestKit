# APlayerController

PlayerControllers are used by human players to control Pawns. ControlRotation (accessed via GetControlRotation()), determines the aiming orientation of the controlled Pawn. In networked games, PlayerControllers exist on the server for every player-controlled pawn, and also on the controlling client's machine. They do NOT exist on a client's machine for pawns controlled by remote players elsewhere on the network.

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| `void` | **ServerSetSpectatorWaiting** | `boolbWaiting` | Indicate that the Spectator is waiting to joinrespawn. |
| `void` | **ClientSetSpectatorWaiting** | `boolbWaiting` | Indicate that the Spectator is waiting to joinrespawn. |
| `void` | **SetActionExecuteState** | `boolbSuccess` |  |
| `int32` | **GetActionExecuteState** | `` |  |
| `void` | **EnableCheats** | `` | Enables cheats within the game |
| `void` | **FOV** | `floatNewFOV` | Set the field of view to NewFOV |
| `void` | **RestartLevel** | `` | Restarts the current level |
| `void` | **LocalTravel** | `FString &URL` | Causes the client to travel to the given URL |
| `void` | **ClientReturnToMainMenu** | `FString &ReturnReason` | Return the client to the main menu gracefully |
| `void` | **ClientRepObjRef** | `UObject *Object` | Development RPC for testing object reference replication |
| `void` | **Pause** | `` | Command to try to pause the game. |
| `void` | **SetPauseByBlueprint** | `boolbPaused` |  |
| `void` | **SetName** | `FString &S` | Trys to set the player's name to the given name. |
| `void` | **SwitchLevel** | `FString &URL` | SwitchLevel to the given MapURL. |
| `bool` | **GetHitResultUnderCursor** | `ECollisionChannel TraceChannel, bool bTraceComplex, FHitResult &HitResult` |  |
| `bool` | **GetHitResultUnderCursorByChannel** | `ETraceTypeQuery TraceChannel, bool bTraceComplex, FHitResult &HitResult` |  |
| `bool` | **GetHitResultUnderCursorForObjects** | `TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, bool bTraceComplex, FHitResult &HitResult` |  |
| `bool` | **GetHitResultUnderFinger** | `ETouchIndex :: Type FingerIndex, ECollisionChannel TraceChannel, bool bTraceComplex, FHitResult &HitResult` |  |
| `bool` | **GetHitResultUnderFingerByChannel** | `ETouchIndex :: Type FingerIndex, ETraceTypeQuery TraceChannel, bool bTraceComplex, FHitResult &HitResult` |  |
| `bool` | **GetHitResultUnderFingerForObjects** | `ETouchIndex :: Type FingerIndex, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, bool bTraceComplex, FHitResult &HitResult` |  |
| `bool` | **DeprojectMousePositionToWorld** | `FVector & WorldLocation, FVector &WorldDirection` | Convert current mouse 2D position to World Space 3D position and direction. Returns false if unable to determine value. |
| `bool` | **DeprojectScreenPositionToWorld** | `float ScreenX, float ScreenY, FVector & WorldLocation, FVector &WorldDirection` | Convert 2D screen position to World Space 3D position and direction. Returns false if unable to determine value. |
| `bool` | **ProjectWorldLocationToScreen** | `FVector WorldLocation, FVector2D & ScreenLocation, boolbPlayerViewportRelative` | Convert a World Space 3D position into a 2D Screen Space position. return -true if the world coordinate was successfully projected to the screen. |
| `void` | **SetMouseLocation** | `int X, intY` | Positions the mouse cursor in screen space, in pixels. |
| `void` | **StartFire** | `uint8FireModeNum` | Fire the player's currently selected weapon with the optional fire mode. |
| `void` | **ClientEnableNetworkVoice** | `boolbEnable` | Tell the client to enable or disable voice chat (not muting) params bEnable -enable or disable voice chat |
| `void` | **ToggleSpeaking** | `boolbInSpeaking` | Toggle voice chat on and off |
| `void` | **ClientVoiceHandshakeComplete** | `` | Tells the client that the server has all the information it needs and that it is ok to start sending voice packets. The server will already send voice packets when this function is called, since it is |
| `void` | **ServerMutePlayer** | `FUniqueNetIdReplPlayerId` | Tell the server to mute a player for this controller params PlayerId -player id to mute |
| `void` | **ServerUnmutePlayer** | `FUniqueNetIdReplPlayerId` | Tell the server to unmute a player for this controller params PlayerId -player id to unmute |
| `void` | **ClientMutePlayer** | `FUniqueNetIdReplPlayerId` | Tell the client to mute a player for this controller params PlayerId -player id to mute |
| `void` | **ClientUnmutePlayer** | `FUniqueNetIdReplPlayerId` | Tell the client to unmute a player for this controller params PlayerId -player id to unmute |
| `void` | **ConsoleKey** | `FKeyKey` | Console control commands, useful when remote debugging so you can't touch the console the normal way |
| `void` | **SendToConsole** | `FString &Command` | Sends a command to the console to execute if not shipping version |
| `void` | **ClientAddTextureStreamingLoc** | `FVector InLoc, float Duration, boolbOverrideLocation` | Adds a location to the texture streaming system for the specified duration. |
| `void` | **ClientCancelPendingMapChange** | `` | Tells client to cancel any pending map change. |
| `void` | **ClientCapBandwidth** | `int32Cap` | Set CurrentNetSpeed to the lower of its current value and Cap. |
| `void` | **ClientCommitMapChange** | `` |  |
| `Actually performs the level transition prepared by` | **PrepareMapChange** | `` |  |
| `void` | **ClientFlushLevelStreaming** | `` | Tells the client to block until all pending level streaming actions are complete happens at the end of the tick primarily used to force update the client ASAP at join time |
| `void` | **ClientForceGarbageCollection** | `` | Forces GC at the end of the tick on the client |
| `void` | **ClientGameEnded** | `AActor * EndGameFocus, boolbIsWinner` |  |
| `Replicated function called by` | **GameHasEnded** | `` | params EndGameFocus -- actor to view with camera params bIsWinner -- true if this controller is on winning team |
| `void` | **ClientGotoState** | `FNameNewState` | Server uses this to force client into NewState . |
| `void` | **ClientIgnoreLookInput** | `boolbIgnore` | calls IgnoreLookInput on client |
| `void` | **ClientIgnoreMoveInput** | `boolbIgnore` | calls IgnoreMoveInput on client |
| `void` | **ClientMessage** | `FString & S, FName Type, floatMsgLifeTime` | Outputs a message to HUD params S -- message to display params Type -- @todo document params MsgLifeTime -- Optional length of time to display 0 = default time |
| `void` | **ClientPlayCameraAnim** | `UCameraAnim * AnimToPlay, float Scale, float Rate, float BlendInTime, float BlendOutTime, bool bLoop, bool bRandomStartTime, ECameraAnimPlaySpace :: Type Space, FRotatorCustomPlaySpace` | Play the indicated CameraAnim on this camera. params AnimToPlay -- Camera animation to play params Scale -- "Intensity" scalar. This is the scale at which the anim was first played. params Rate -- Mul |
| `void` | **ClientPlayCameraShake** | `TSubclassOf < UCameraShake > Shake, float Scale, ECameraAnimPlaySpace :: Type PlaySpace, FRotatorUserPlaySpaceRot` | Play Camera Shake params Shake -- Camera shake animation to play params Scale -- Scalar defining how "intense" to play the anim params PlaySpace -- Which coordinate system to play the shake in (used f |
| `void` | **ClientPlayCameraShakeWithWorldLocation** | `TSubclassOf < UCameraShake > Shake, FVector WorldLocation, float Scale, ECameraAnimPlaySpace :: Type PlaySpace, FRotatorUserPlaySpaceRot` |  |
| `void` | **ClientPlaySound** | `USoundBase * Sound, float VolumeMultiplier, floatPitchMultiplier` | Play sound client-side (so only the client will hear it) params Sound -- Sound to play params VolumeMultiplier -- Volume multiplier to apply to the sound params PitchMultiplier -- Pitch multiplier to  |
| `void` | **ClientPlaySoundAtLocation** | `USoundBase * Sound, FVector Location, float VolumeMultiplier, floatPitchMultiplier` | Play sound client-side at the specified location params Sound -- Sound to play params Location -- Location to play the sound at params VolumeMultiplier -- Volume multiplier to apply to the sound param |
| `void` | **ClientPrepareMapChange** | `FName LevelName, bool bFirst, boolbLast` | Asynchronously loads the given level in preparation for a streaming map transition. the server sends one function per level name since dynamic arrays can't be replicated params bFirst -- whether this  |
| `void` | **ClientPrestreamTextures** | `AActor * ForcedActor, float ForceDuration, bool bEnableStreaming, int32CinematicTextureGroups` | Forces the streaming system to disregard the normal logic for the specified duration and instead always load all mip-levels for all textures used by the specified actor. params ForcedActor -- The acto |
| `void` | **ClientReset** | `` | Tell client to reset the PlayerController |
| `void` | **ClientRestart** | `APawn *NewPawn` | Tell client to restart the level |
| `void` | **ClientSetBlockOnAsyncLoading** | `` | Tells the client to block until all pending level streaming actions are complete. Happens at the end of the tick primarily used to force update the client ASAP at join time. |
| `void` | **ClientSetCameraFade** | `bool bEnableFading, FColor FadeColor, FVector2D FadeAlpha, float FadeTime, boolbFadeAudio` | Tell client to fade camera |
| `void` | **ClientSetCameraMode** | `FNameNewCamMode` | Replicated function to set camera style on client |
| `void` | **ClientSetCinematicMode** | `bool bInCinematicMode, bool bAffectsMovement, bool bAffectsTurning, boolbAffectsHUD` | Called by the server to synchronize cinematic transitions with the client |
| `void` | **ClientSetForceMipLevelsToBeResident** | `UMaterialInterface * Material, float ForceDuration, int32CinematicTextureGroups` | Forces the streaming system to disregard the normal logic for the specified duration and instead always load all mip-levels for all textures used by the specified material. params Material -- The mate |
| `void` | **ClientSetHUD** | `TSubclassOf < AHUD >NewHUDClass` | Set the client's class of HUD and spawns a new instance of it. If there was already a HUD active, it is destroyed. |
| `void` | **GetViewportSize** | `int32 & SizeX, int32 &SizeY` | Helper to get the size of the HUD canvas for this player controller. Returns 0 if there is no HUD |
| `AHUD *` | **GetHUD** | `` | Gets the HUD currently being used by this player controller |
| `void` | **SetMouseCursorWidget** | `EMouseCursor :: Type Cursor, UUserWidget *CursorWidget` | Sets the Widget for the Mouse Cursor to display params Cursor -- the cursor to set the widget for params CursorWidget -- the widget to set the cursor to |
| `void` | **ClientSetViewTarget** | `AActor * A, FViewTargetTransitionParamsTransitionParams` | Set the view target params A -- new actor to set as view target params TransitionParams -- parameters to use for controlling the transition |
| `void` | **ClientSpawnCameraLensEffect** | `TSubclassOf < AEmitterCameraLensEffectBase >LensEffectEmitterClass` | Spawn a camera lens effect (e.g. blood). |
| `void` | **ClientClearCameraLensEffects** | `` | Removes all Camera Lens Effects. |
| `void` | **ClientStopCameraAnim** | `UCameraAnim *AnimToStop` | Stop camera animation on client. |
| `void` | **ClientStopCameraShake** | `TSubclassOf < UCameraShake > Shake, boolbImmediately` | Stop camera shake on client. |
| `void` | **ClientPlayForceFeedback** | `UForceFeedbackEffect * ForceFeedbackEffect, bool bLooping, bool bIgnoreTimeDilation, FNameTag` | Play a force feedback pattern on the player's controller params ForceFeedbackEffect -The force feedback pattern to play params bLooping - Whether the pattern should be played repeatedly or be a single |
| `void` | **ClientStopForceFeedback** | `UForceFeedbackEffect * ForceFeedbackEffect, FNameTag` | Stops a playing force feedback pattern params ForceFeedbackEffect -If set only patterns from that effect will be stopped params Tag - If not none only the pattern with this tag will be stopped |
| `void` | **PlayDynamicForceFeedback** | `float Intensity, float Duration, bool bAffectsLeftLarge, bool bAffectsLeftSmall, bool bAffectsRightLarge, bool bAffectsRightSmall, TEnumAsByte < EDynamicForceFeedbackAction :: Type > Action, FLatentActionInfoLatentInfo` | Latent action that controls the playing of force feedback Begins playing when Start is called. Calling Update or Stop if the feedback is not active will have no effect. Completed will execute when Sto |
| `void` | **PlayHapticEffect** | `UHapticFeedbackEffect_Base * HapticEffect, EControllerHand Hand, float Scale, boolbLoop` | Play a haptic feedback curve on the player's controller params HapticEffect - The haptic effect to play params Hand - Which hand to play the effect on params Scale - Scale between 0.0 and 1.0 on the i |
| `void` | **StopHapticEffect** | `EControllerHandHand` | Stops a playing haptic feedback curve params Hand - Which hand to stop the effect for |
| `void` | **SetHapticsByValue** | `float Frequency, float Amplitude, EControllerHandHand` | Sets the value of the haptics for the specified hand directly, using frequency and amplitude. NOTE: If a curve is already playing for this hand, it will be cancelled in favour of the specified values. |
| `void` | **SetControllerLightColor** | `FColorColor` | Sets the light color of the player's controller params Color - The color for the light to be |
| `void` | **ClientTravel** | `FString & URL, ETravelType TravelType, bool bSeamless, FGuidMapPackageGuid` | Travel to a different map or IP address. Calls the PreClientTravel event before doing anything. NOTE: This is implemented as a locally executed wrapper for ClientTravelInternal, to avoid API compatabi |

