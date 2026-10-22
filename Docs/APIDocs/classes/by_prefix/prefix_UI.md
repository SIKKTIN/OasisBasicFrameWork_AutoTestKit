# Image / UI 图像  (前缀: UI)
_共 44 个类_
---
## UIdeaGrassFieldFunctionLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UIdeaGrassFieldFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUIdeaGrassFieldFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UIdeaGrassFieldFunctionLibrary](https://developer.gp.qq.com/api/#/searchContent/UIdeaGrassFieldFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUIdeaGrassFieldFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UIdeaGrassFieldFunctionLibrary)

类

全文搜索

---


## 函数

- **IdeaGrassRenderForceTexture**(FIdeaGrassFieldDataGrassFieldData)
- **IdeaGrassRenderForceTextureFade**(FIdeaGrassFieldDataGrassFieldData)
- **IdeaGrassRenderForceTextureTrample**(FIdeaGrassFieldDataGrassFieldData)
- **IdeaGrassRenderForceTextureSkill**(FIdeaGrassFieldDataGrassFieldData) — IdeaGrassRenderForceTexture IdeaGrassRenderForceTextureFade IdeaGrassRenderForceTextureTrample IdeaGrassRenderForceTextureSkill

## UImage

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UImage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUImage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UImage](https://developer.gp.qq.com/api/#/searchContent/UImage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUImage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UImage)

类

全文搜索

The image widget allows you to display a Slate Brush, or texture or material in the UI. No Children

---


## 函数

- **SlateBrushGetBrush**()
- **SetColorAndOpacity**(FLinearColorInColorAndOpacity)
- **SetColorRGBStr**(FString &HexString)
- **SetBrushImageReference**(FStringAssetReferenceAssetReference)
- **SetBrushImageReferenceWithMatchSize**(FStringAssetReference AssetReference, boolbMatchSize)
- **SetBrushImageReferenceWithColor**(FStringAssetReference AssetReference, FLinearColor Color, boolbMatchSize)
- **SetOpacity**(floatInOpacity)
- **SetBrush**(FSlateBrush &InBrush)
- **SetBrushFromAsset**(USlateBrushAsset *Asset)
- **SetBrushFromTexture**(UTexture2D* Texture, boolbMatchSize)
- **SetBrushFromTextureDynamic**(UTexture2DDynamic* Texture, boolbMatchSize)
- **SetBrushFromMaterial**(UMaterialInterface *Material)
- **GetDynamicMaterial**()
- **SetDisablePaint**(boolInDisablePaint)
- **ReleaseAsyncSetBrushHandle**()
- **OnAsyncLoadImageAssetComplete**()
- **OnAsyncLoadAssetComplete**(GetBrush SetColorAndOpacity SetColorRGBStr SetBrushImageReference SetBrushImageReferenceWithMatchSize SetBrushImageReferenceWithColor SetOpacity SetBrush SetBrushFromAsset SetBrushFromTexture SetBrushFromTextureDynamic SetBrushFromMaterial GetDynamicMaterial SetDisablePaint ReleaseAsyncSetBrushHandl)

## 属性

- **to** — draw A bindable delegate for the Image. Color and opacity A bindable delegate for the ColorAndOpacity. 是否使用自定义触摸响应区域，在运行时修改无效 圆形响应区域的半径，最大为控件边长一半，-1为控件大小一半 BrushImage bIsEnhancedImage ForceAsyncLoadReference BrushAssetReference Brush BrushMaterialParamNames BrushDelegate ColorAndOpacity ColorAndOpac

## 委托

- voidOnImageChangeDelegate(const FSlateBrush&BrushChanged)
- OnImageChangeDelegate

## UImageCaptureSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UImageCaptureSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUImageCaptureSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UImageCaptureSettings](https://developer.gp.qq.com/api/#/searchContent/UImageCaptureSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUImageCaptureSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UImageCaptureSettings)

类

全文搜索

---


## 属性

- **of** — compression to apply to the image, between 1 (worst quality, best compression) and 100 (best quality, worst compression) CompressionQuality

## UImportanceSamplingLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UImportanceSamplingLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUImportanceSamplingLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UImportanceSamplingLibrary](https://developer.gp.qq.com/api/#/searchContent/UImportanceSamplingLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUImportanceSamplingLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UImportanceSamplingLibrary)

类

全文搜索

---


## 函数

- **RandomSobolFloat**(int32 Index, int32 Dimension, floatSeed) — return -Sobol-distributed random number between 0 and 1 params Index -- Which sequential point params Dimension -- Which Sobol dimension (0 to 15) params Seed -- Random seed (in the range 0-1) to randomize across multiple sequences
- **NextSobolFloat**(int32 Index, int32 Dimension, floatPreviousValue) — return -Sobol-distributed random number between 0 and 1 params Index -- Which sequential point params Dimension -- Which Sobol dimension (0 to 15) params PreviousValue -- The Sobol value for Index-1
- **FVector2DRandomSobolCell2D**(int32 Index, int32 NumCells, FVector2D Cell, FVector2DSeed) — return -Sobol-distributed random 2D position in the given grid cell params Index -- Which sequential point in the cell (starting at 0) params NumCells -- Size of cell grid, 1 to 32768. Rounded up to the next power of two params Cell -- Give a point from this integer grid cell params Seed -- Random 2
- **FVector2DNextSobolCell2D**(int32 Index, int32 NumCells, FVector2DPreviousValue) — return -Sobol-distributed random 2D position in the same grid cell params Index -- Which sequential point params NumCells -- Size of cell grid, 1 to 32768. Rounded up to the next power of two params PreviousValue -- The Sobol value for Index-1
- **FVectorRandomSobolCell3D**(int32 Index, int32 NumCells, FVector Cell, FVectorSeed) — return -Sobol-distributed random 3D vector in the given grid cell params Index -- Which sequential point in the cell (starting at 0) params NumCells -- Size of cell grid, 1 to 1024. Rounded up to the next power of two params Cell -- Give a point from this integer grid cell params Seed -- Random 3D s
- **FVectorNextSobolCell3D**(int32 Index, int32 NumCells, FVectorPreviousValue) — return -Sobol-distributed random 3D position in the same grid cell params Index -- Which sequential point params NumCells -- Size of cell grid, 1 to 1024. Rounded up to the next power of two params PreviousValue -- The Sobol value for Index-1
- **FImportanceTextureMakeImportanceTexture**(UTexture2D* Texture, TEnumAsByte < EImportanceWeight :: Type >WeightingFunc) — Create an FImportanceTexture object for texture-driven importance sampling from a 2D RGBA8 texture return -new ImportanceTexture object for use with ImportanceSample params Texture -- Texture object to use. Must be RGBA8 format. params WeightingFunc -- How to turn the texture data into probability w
- **BreakImportanceTexture**(FImportanceTexture& ImportanceTexture, UTexture2D* & Texture, TEnumAsByte < EImportanceWeight :: Type > &WeightingFunc) — Get texture used to create an ImportanceTexture object return -new ImportanceTexture object for use with ImportanceSample params ImportanceTexture -- The source ImportanceTexture object params WeightingFunc -- How to turn the texture data into probability weights
- **ImportanceSample**(FImportanceTexture& Texture, FVector2D& Rand, int Samples, float Intensity, FVector2D& SamplePosition, FLinearColor& SampleColor, float& SampleIntensity, float &SampleSize) — Distribute sample points proportional to Texture2D luminance. params Rand -- Random 2D point with components evenly distributed between 0 and 1 params Samples -- Total number of samples that will be used params Intensity -- Total intensity for light RandomSobolFloat NextSobolFloat RandomSobolCell2D

## UInGameAdManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInGameAdManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInGameAdManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInGameAdManager](https://developer.gp.qq.com/api/#/searchContent/UInGameAdManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInGameAdManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInGameAdManager)

类

全文搜索

---


## 属性

- **true** — , the game will pause when the user clicks on the ad, which could take over the screen @todo document @todo document bShouldPauseWhileAdOpen ClickedBannerDelegates ClosedAdDelegates

## UInheritableComponentHandler

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInheritableComponentHandler?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInheritableComponentHandler.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInheritableComponentHandler](https://developer.gp.qq.com/api/#/searchContent/UInheritableComponentHandler?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInheritableComponentHandler.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInheritableComponentHandler)

类

全文搜索

---


## 属性

- **component** — records List of components that were marked unnecessary, need to keep these around so it doesn't regenerate them when a child asks for one Records UnnecessaryComponents

## UInputComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInputComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputComponent](https://developer.gp.qq.com/api/#/searchContent/UInputComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputComponent)

类

全文搜索

Implement an Actor component for input bindings. An Input Component is a transient component that enables an Actor to bind various forms of input events to delegate functions. Input components are processed from a stack managed by the PlayerController and processed by the PlayerInput. Each binding can consume the input event preventing other components on the input stack from processing the input.

---


## 函数

- **IsControllerKeyDown**(FKeyKey) — Returns true if the given keybutton is pressed on the input of the controller (if present)
- **WasControllerKeyJustPressed**(FKeyKey) — Returns true if the given keybutton was up last frame and down this frame.
- **WasControllerKeyJustReleased**(FKeyKey) — Returns true if the given keybutton was down last frame and up this frame.
- **GetControllerAnalogKeyState**(FKeyKey) — Returns the analog value for the given keybutton. If analog isn't supported, returns 1 for down and 0 for up.
- **VectorGetControllerVectorKeyState**(FKeyKey) — Returns the vector value for the given keybutton.
- **GetTouchState**(int32 FingerIndex, float& LocationX, float& LocationY, bool &bIsCurrentlyPressed) — Returns the location of a touch, and if it's held down
- **GetControllerKeyTimeDown**(FKeyKey) — Returns how long the given keybutton has been down. Returns 0 if it's up or it just went down this frame.
- **GetControllerMouseDelta**(float& DeltaX, float &DeltaY) — Retrieves how far the mouse moved this frame.
- **GetControllerAnalogStickState**(EControllerAnalogStick :: Type WhichStick, float& StickX, float &StickY) — Retrieves the X and Y displacement of the given analog stick. For WhickStick, 0 = left, 1 = right. IsControllerKeyDown WasControllerKeyJustPressed WasControllerKeyJustReleased GetControllerAnalogKeyState GetControllerVectorKeyState GetTouchState GetControllerKeyTimeDown GetControllerMouseDelta GetCo

## UInputKeySelector

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInputKeySelector?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputKeySelector.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputKeySelector](https://developer.gp.qq.com/api/#/searchContent/UInputKeySelector?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputKeySelector.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputKeySelector)

类

全文搜索

A widget for selecting a single key or a single key with a modifier.

---


## 函数

- **SetSelectedKey**(FInputChord &InSelectedKey) — Sets the currently selected key.
- **SetKeySelectionText**(FTextInKeySelectionText) — Sets the text which is displayed while selecting keys.
- **SetNoKeySpecifiedText**(FTextInNoKeySpecifiedText) — Sets the text to display when no key text is available or not selecting a key.
- **SetAllowModifierKeys**(boolbInAllowModifierKeys) — Sets whether or not modifier keys are allowed in the selected key.
- **SetAllowGamepadKeys**(boolbInAllowGamepadKeys) — Sets whether or not gamepad keys are allowed in the selected key.
- **GetIsSelectingKey**(Returns true if the widget is currently selecting a key, otherwise returns false.)
- **SetTextBlockVisibility**(ESlateVisibilityInVisibility) — Sets the visibility of the text block. SetSelectedKey SetKeySelectionText SetNoKeySpecifiedText SetAllowModifierKeys SetAllowGamepadKeys GetIsSelectingKey SetTextBlockVisibility

## 属性

- **button** — style used at runtime The button style used at runtime The currently selected key chord. The amount of blank space around the text used to display the currently selected key. Sets the text which is displayed while selecting keys. Sets the text to display when no key text is available or not selectin

## 委托

- voidOnKeySelected(FInputChordSelectedKey)
- Called whenever a new key is selected by the user.
- voidOnIsSelectingKeyChanged()
- Called whenever the key selection mode starts or stops.
- OnKeySelected
- OnIsSelectingKeyChanged

## UInputSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInputSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputSettings](https://developer.gp.qq.com/api/#/searchContent/UInputSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputSettings)

类

全文搜索

Project wide settings for input handling

---


## 函数

- **GetInputSettings**(Returns the game local input settings (action mappings, axis mappings, etc...))
- **AddActionMapping**(FInputActionKeyMapping& KeyMapping, boolbForceRebuildKeymaps) — Programmatically add an action mapping to the project defaults
- **GetActionMappingByName**(FName InActionName, TArray < FInputActionKeyMapping > &OutMappings)
- **RemoveActionMapping**(FInputActionKeyMapping& KeyMapping, boolbForceRebuildKeymaps) — Programmatically remove an action mapping to the project defaults
- **AddAxisMapping**(FInputAxisKeyMapping& KeyMapping, boolbForceRebuildKeymaps) — Programmatically add an axis mapping to the project defaults
- **GetAxisMappingByName**(FName InAxisName, TArray < FInputAxisKeyMapping > &OutMappings) — Retrieve all axis mappings by a certain name.
- **RemoveAxisMapping**(FInputAxisKeyMapping& KeyMapping, boolbForceRebuildKeymaps) — Programmatically remove an axis mapping to the project defaults
- **SaveKeyMappings**(Flush the current mapping values to the config file)
- **GetActionNames**(TArray < FName > &ActionNames) — Populate a list of all defined action names
- **GetAxisNames**(TArray < FName > &AxisNames) — Populate a list of all defined axis names
- **ForceRebuildKeymaps**(When changes are made to the default mappings, push those changes out to PlayerInput key maps)
- **ApplySettings**()
- **ResetToDefaultEditorSettings**()
- **SaveToConfig**()
- **GetActionMappings**()
- **GetAxisMappings**(GetInputSettings AddActionMapping GetActionMappingByName RemoveActionMapping AddAxisMapping GetAxisMappingByName RemoveAxisMapping SaveKeyMappings GetActionNames GetAxisNames ForceRebuildKeymaps ApplySettings ResetToDefaultEditorSettings SaveToConfig GetActionMappings GetAxisMappings)

## 属性

- **of** — Axis controls If a key is pressed twice in this amount of time it is considered a "double click" Controls if the viewport will capture the mouse on Launch of the application EMouseCaptureModeDefaultViewportMouseCaptureMode The default mouse capture mode for the game viewport The default mouse lock s

## UInstancedStaticMeshComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInstancedStaticMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInstancedStaticMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInstancedStaticMeshComponent](https://developer.gp.qq.com/api/#/searchContent/UInstancedStaticMeshComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInstancedStaticMeshComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInstancedStaticMeshComponent)

类

全文搜索

A component that efficiently renders multiple instances of the same StaticMesh.

---


## 函数

- **AddInstance**(FTransform &InstanceTransform) — Add an instance to this component. Transform is given in local space of this component.
- **AddInstanceWorldSpace**(FTransform &WorldTransform) — Add an instance to this component. Transform is given in world space.
- **GetInstanceTransform**(int32 InstanceIndex, FTransform& OutInstanceTransform, boolbWorldSpace) — Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set. Returns True on success.
- **UpdateInstanceTransform**(int32 InstanceIndex, FTransform& NewInstanceTransform, bool bWorldSpace, bool bMarkRenderStateDirty, boolbTeleport) — Update the transform for the instance specified. return - True on success. params InstanceIndex - The index of the instance to update params NewInstanceTransform -The new transform params bWorldSpace - If true, the new transform interpreted as a World Space transform, otherwise it is interpreted as
- **RemoveInstance**(int32InstanceIndex) — Remove the instance specified. Returns True on success. Note that this will leave the array in order, but may shrink it.
- **ClearInstances**(Clear all instances being rendered by this component.)
- **GetInstanceCount**(Get the number of instances in this component.)
- **SetCullDistances**(int32 StartCullDistance, int32EndCullDistance) — Sets the fading start and culling end distances for this component.
- **SetNearCullDistance**(int32CullDistance) — Sets the cull near distance for this component.
- **GetInstancesOverlappingSphere**(FVector& Center, float Radius, boolbSphereInWorldSpace) — Returns the instances with instance bounds overlapping the specified sphere. The return value is an array of instance indices.
- **GetInstancesOverlappingBox**(FBox& Box, boolbBoxInWorldSpace) — Returns the instances with instance bounds overlapping the specified box. The return value is an array of instance indices.
- **HideInstance**(TArray < int32 > &InstanceIndices) — Update the transform for the instance specified. return - True on success.
- **ShowInstance**(TArray < int32 > &InstanceIndices) — AddInstance AddInstanceWorldSpace GetInstanceTransform UpdateInstanceTransform RemoveInstance ClearInstances GetInstanceCount SetCullDistances SetNearCullDistance GetInstancesOverlappingSphere GetInstancesOverlappingBox HideInstance ShowInstance

## 属性

- **of** — instances, bulk serialized. Value used to seed the random number stream that generates random numbers for each of this mesh's instances. this is set to zero (default), it will be populated automatically by the editor. Distance from camera at which each instance begins to fade out. Distance from came

## UInterpData

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpData](https://developer.gp.qq.com/api/#/searchContent/UInterpData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpData)

类

全文搜索

Interpolation data, containing keyframe tracks, event tracks etc. This does not contain any AActor references or state, so can safely be stored in packages, shared between multiple MatineeActors etc.

---


## 属性

- **of** — interpolation sequence - in seconds. Position in Interp to move things to for path-building in editor. Actual interpolation data. Groups of InterpTracks. UInterpCurveEdSetup *CurveEdSetup Used for curve editor to remember curve-editing setup. Only loaded in editor. Used in editor for defining sectio

## UInterpFilter_Classes

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpFilter_Classes?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpFilter_Classes.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpFilter_Classes](https://developer.gp.qq.com/api/#/searchContent/UInterpFilter_Classes?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpFilter_Classes.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpFilter_Classes)

类

全文搜索

---


## 属性

- **class** — to filter groups by. List of allowed track classes. If empty, then all track classes will be included. Only groups that contain at least one of these types of tracks will be displayed. ClassToFilterBy TrackClasses

## UInterpGroup

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpGroup?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpGroup.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpGroup](https://developer.gp.qq.com/api/#/searchContent/UInterpGroup?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpGroup.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpGroup)

类

全文搜索

---


## 属性

- **an** — InterpData, all GroupNames must be unique. Used for naming Variable connectors on the Action in Kismet and finding each groups object. Colour used for drawing tracks etc. related to this group. Whether or not this group is folded away in the editor. Whether or not this group is visible in the editor

## UInterpGroupInst

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpGroupInst?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpGroupInst.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpGroupInst](https://developer.gp.qq.com/api/#/searchContent/UInterpGroupInst?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpGroupInst.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpGroupInst)

类

全文搜索

---


## 属性

- **instance** — of an UInterpGroup for a particular Actor. There may be multiple InterpGroupInsts for a single UInterpGroup in the InterpData, if multiple Actors are connected to the same UInterpGroup. The Outer of an UInterpGroupInst is a MatineeActor UInterpGroup within the InterpData that this is an instance of.

## UInterpToMovementComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpToMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpToMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpToMovementComponent](https://developer.gp.qq.com/api/#/searchContent/UInterpToMovementComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpToMovementComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpToMovementComponent)

类

全文搜索

Move the root component between a series of points over a given time @see UMovementComponent

---


## 函数

- **StopSimulating**(FHitResult &HitResult) — Clears the reference to UpdatedComponent, fires stop event, and stops ticking.
- **RestartMovement**(floatInitialDirection) — Reset to start. Sets time to zero and direction to 1.
- **FinaliseControlPoints**(Initialise the control points array. Call after adding control points if they are add after begin play . StopSimulating RestartMovement FinaliseControlPoints)

## 属性

- **long** — to take to move from the first point to the last (or vice versa) If true, will pause movement on impact. If false it will behave as if the end of the movement range was reached based on the BehaviourType. EInterpToBehaviourTypeBehaviourType Movement behaviour of the component If true, forces sub-ste

## 委托

- voidOnInterpToReverse(const FHitResult&ImpactResult, floatTime)
- Called when InterpTo impacts something and reverse is enabled.
- voidOnInterpToStop(const FHitResult&ImpactResult, floatTime)
- Called when InterpTo has come to a stop.
- voidOnWaitBeginDelegate(const FHitResult&ImpactResult, floatTime)
- Called when InterpTo has come to a stop but will resume when possible.
- voidOnWaitEndDelegate(const FHitResult&ImpactResult, floatTime)
- Called when InterpTo has resumed following a stop.
- voidOnResetDelegate(const FHitResult&ImpactResult, floatTime)
- Called when InterpTo reached the end and reset back to start .
- OnInterpToReverse
- OnInterpToStop
- OnWaitBeginDelegate
- OnWaitEndDelegate
- OnResetDelegate

## UInterpTrack

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrack](https://developer.gp.qq.com/api/#/searchContent/UInterpTrack?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrack.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrack)

类

全文搜索

---


## 属性

- **list** — of subtracks that belong to this track Sets the condition that must be met for this track to be enabled Title of track type. Whether there may only be one of this track in an UInterpGroup. If this track can only exist inside the Director group. Whether or not this track should actually update the ta

## UInterpTrackAnimControl

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackAnimControl?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackAnimControl.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackAnimControl](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackAnimControl?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackAnimControl.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackAnimControl)

类

全文搜索

---


## 属性

- **of** — slot to use when playing animation. Passed to Actor. When multiple tracks use the same slot name, they are each given a different ChannelIndex when SetAnimPosition is called. Track of different animations to play and when to start playing them. Skip all anim notifiers SlotName AnimSeqs bSkipAnimNoti

## UInterpTrackBoolProp

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackBoolProp?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackBoolProp.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackBoolProp](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackBoolProp?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackBoolProp.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackBoolProp)

类

全文搜索

---


## 属性

- **of** — booleans to set. Name of property in Group AActor which this track will modify over time. BoolTrack PropertyName

## UInterpTrackDirector

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackDirector?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackDirector.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackDirector](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackDirector?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackDirector.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackDirector)

类

全文搜索

---


## 属性

- **of** — cuts between cameras. True to allow clients to simulate their own camera cuts. Can help with latency-induced timing issues. ACameraActor *PreviewCamera The camera actor which the track is currently focused on. Only valid if this track or it's group is selected CutTrack bSimulateCameraCutsOnClients P

## UInterpTrackEvent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackEvent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackEvent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackEvent](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackEvent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackEvent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackEvent)

类

全文搜索

---


## 属性

- **of** — events to fire off. If events should be fired when passed playing the sequence forwards. If events should be fired when passed playing the sequence backwards. If true, events on this track are fired even when jumping forwads through a sequence - for example, skipping a cinematic. If checked each key

## UInterpTrackFade

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackFade?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackFade.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackFade](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackFade?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackFade.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackFade)

类

全文搜索

---


## 属性

- **float** — property track that controls camera fading over time. Should live in a Director group. True to set master audio volume along with the visual fade. Color to fade to. bPersistFade bFadeAudio FadeColor

## UInterpTrackFloatAnimBPParam

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackFloatAnimBPParam?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackFloatAnimBPParam.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackFloatAnimBPParam](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackFloatAnimBPParam?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackFloatAnimBPParam.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackFloatAnimBPParam)

类

全文搜索

---


## 属性

- **whose** — parameters we want to change and the references to those materials. Name of parameter in the MaterialInstance which this track will modify over time. AnimBlueprintClass AnimClass ParamName

## UInterpTrackFloatBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackFloatBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackFloatBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackFloatBase](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackFloatBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackFloatBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackFloatBase)

类

全文搜索

---


## 属性

- **track** — data containing keyframes of float as it varies over time. Tension of curve, used for keypoints using automatic tangents. FloatTrack CurveTension

## UInterpTrackFloatMaterialParam

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackFloatMaterialParam?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackFloatMaterialParam.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackFloatMaterialParam](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackFloatMaterialParam?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackFloatMaterialParam.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackFloatMaterialParam)

类

全文搜索

---


## 属性

- **whose** — parameters we want to change and the references to those materials. Name of parameter in the MaterialInstance which this track will modify over time. TargetMaterials ParamName

## UInterpTrackInstBoolProp

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstBoolProp?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstBoolProp.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstBoolProp](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstBoolProp?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstBoolProp.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstBoolProp)

类

全文搜索

---


## 属性

- **that** — indicates which bit the boolean property actually uses of the value pointed to by BoolProp. Saved value for restoring state when exiting Matinee. BoolProperty ResetBool

## UInterpTrackInstEvent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstEvent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstEvent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstEvent](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstEvent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstEvent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstEvent)

类

全文搜索

---


## 属性

- **we** — were in last time we evaluated Events. During UpdateTrack, events between this time and the current time will be fired. LastUpdatePosition

## UInterpTrackInstFloatAnimBPParam

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstFloatAnimBPParam?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstFloatAnimBPParam.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstFloatAnimBPParam](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstFloatAnimBPParam?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstFloatAnimBPParam.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstFloatAnimBPParam)

类

全文搜索

---


## 属性

- **we** — 're using to set the desired parameter. Saved values for restoring state when exiting Matinee. AnimScriptInstance ResetFloat

## UInterpTrackInstFloatMaterialParam

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstFloatMaterialParam?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstFloatMaterialParam.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstFloatMaterialParam](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstFloatMaterialParam?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstFloatMaterialParam.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstFloatMaterialParam)

类

全文搜索

---


## 属性

- **we** — 're using to set the desired parameter. Saved values for restoring state when exiting Matinee. Primitive components on which materials have been overridden. UInterpTrackFloatMaterialParam *InstancedTrack track we are an instance of - used in the editor to propagate changes to the track's Materials a

## UInterpTrackInstMove

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstMove?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstMove.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstMove](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstMove?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstMove.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstMove)

类

全文搜索

---


## 属性

- **position** — . Used in editor for resetting when quitting Matinee. Saved rotation. Used in editor for resetting when quitting Matinee. ResetLocation ResetRotation

## UInterpTrackInstParticleReplay

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstParticleReplay?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstParticleReplay.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstParticleReplay](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstParticleReplay?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstParticleReplay.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstParticleReplay)

类

全文搜索

---


## 属性

- **we** — were in last time we evaluated. During UpdateTrack, events between this time and the current time will be processed. LastUpdatePosition

## UInterpTrackInstProperty

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstProperty?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstProperty.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstProperty](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstProperty?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstProperty.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstProperty)

类

全文搜索

---


## 属性

- **to** — call after updating the value of the color property. Pointer to the UObject instance that is the outer of the color property we are interpolating on, this is used to process the property update callback. InterpProperty PropertyOuterObjectInst

## UInterpTrackInstToggle

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstToggle?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstToggle.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstToggle](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstToggle?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstToggle.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstToggle)

类

全文搜索

---


## 属性

- **we** — were in last time we evaluated. During UpdateTrack, toggles between this time and the current time will be processed. Cached 'active' state for the toggleable actor before we possessed it; restored when Matinee exits Action LastUpdatePosition bSavedActiveState

## UInterpTrackInstVectorMaterialParam

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstVectorMaterialParam?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstVectorMaterialParam.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstVectorMaterialParam](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstVectorMaterialParam?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstVectorMaterialParam.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstVectorMaterialParam)

类

全文搜索

---


## 属性

- **we** — 're using to set the desired parameter. Saved values for restoring state when exiting Matinee. Primitive components on which materials have been overridden. UInterpTrackVectorMaterialParam *InstancedTrack Track we are an instance of - used in the editor to propagate changes to the track's Materials

## UInterpTrackInstVisibility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstVisibility?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstVisibility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstVisibility](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackInstVisibility?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackInstVisibility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackInstVisibility)

类

全文搜索

---


## 属性

- **we** — were in last time we evaluated. During UpdateTrack, events between this time and the current time will be processed. Action LastUpdatePosition

## UInterpTrackLinearColorBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackLinearColorBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackLinearColorBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackLinearColorBase](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackLinearColorBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackLinearColorBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackLinearColorBase)

类

全文搜索

---


## 属性

- **track** — data containing keyframes of a FVector as it varies over time. Tension of curve, used for keypoints using automatic tangents. LinearColorTrack CurveTension

## UInterpTrackMove

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackMove?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackMove.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackMove](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackMove?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackMove.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackMove)

类

全文搜索

Track containing data for moving an actor around over time.

---


## 属性

- **position** — keyframe data. Actual rotation keyframe data, stored as Euler angles in degrees, for easy editing on curve. When using IMR_LookAtGroup, specifies the Group which this track should always point its actor at. Controls the tightness of the curve for the translation path. Controls the tightness of the c

## UInterpTrackMoveAxis

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackMoveAxis?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackMoveAxis.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackMoveAxis](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackMoveAxis?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackMoveAxis.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackMoveAxis)

类

全文搜索

---


## 属性

- **axis** — which this track will use when transforming an actor Lookup track to use when looking at different groups for transform information MoveAxis LookupTrack

## UInterpTrackParticleReplay

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackParticleReplay?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackParticleReplay.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackParticleReplay](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackParticleReplay?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackParticleReplay.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackParticleReplay)

类

全文搜索

---


## 属性

- **of** — keys True in the editor if track should be used to capture replay frames instead of play them back Current replay fixed time quantum between frames (one over frame rate) TrackKeys bIsCapturingReplay FixedTimeStep

## UInterpTrackSound

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackSound?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackSound.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackSound](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackSound?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackSound.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackSound)

类

全文搜索

---


## 属性

- **of** — sounds to play at specific times. if set, sound plays only when playing the matinee in reverse instead of when the matinee plays forward If true, sounds on this track will not be forced to finish when the matinee sequence finishes. If true, don't show subtitles for sounds played by this track. If tr

## UInterpTrackToggle

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackToggle?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackToggle.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackToggle](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackToggle?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackToggle.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackToggle)

类

全文搜索

---


## 属性

- **of** — events to fire off. If true, the track will call ActivateSystem on the emitter each update (the old 'incorrect' behavior). If false (the default), the System will only be activated if it was previously inactive. If true, the track will activate the system w the 'Just Attached' flag. If events should

## UInterpTrackVectorBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackVectorBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackVectorBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackVectorBase](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackVectorBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackVectorBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackVectorBase)

类

全文搜索

---


## 属性

- **track** — data containing keyframes of a FVector as it varies over time. Tension of curve, used for keypoints using automatic tangents. VectorTrack CurveTension

## UInterpTrackVectorMaterialParam

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackVectorMaterialParam?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackVectorMaterialParam.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackVectorMaterialParam](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackVectorMaterialParam?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackVectorMaterialParam.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackVectorMaterialParam)

类

全文搜索

---


## 属性

- **whose** — parameters we want to change and the references to those materials. Name of parameter in the MaterialInstance which this track will modify over time. TargetMaterials ParamName

## UInterpTrackVisibility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpTrackVisibility?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackVisibility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackVisibility](https://developer.gp.qq.com/api/#/searchContent/UInterpTrackVisibility?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpTrackVisibility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpTrackVisibility)

类

全文搜索

---


## 属性

- **of** — events to fire off. If events should be fired when passed playing the sequence forwards. If events should be fired when passed playing the sequence backwards. If true, events on this track are fired even when jumping forwads through a sequence - for example, skipping a cinematic. VisibilityTrack bFi

## UInvalidationBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInvalidationBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInvalidationBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInvalidationBox](https://developer.gp.qq.com/api/#/searchContent/UInvalidationBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInvalidationBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInvalidationBox)

类

全文搜索

Invalidate Single Child Caching Performance

---


## 函数

- **InvalidateCache**()
- **GetCanCache**()
- **SetCanCache**(boolCanCache) — InvalidateCache GetCanCache SetCanCache

## 属性

- **the** — invalidation panel cache the widgets? Making this false makes it so the invalidation panel stops acting like an invalidation panel, just becomes a simple container widget. Caches the locations for child draw elements relative to the invalidation box, this adds extra overhead to drawing them every fr

