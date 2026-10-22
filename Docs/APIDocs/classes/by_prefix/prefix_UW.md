# Widget / UI 控件  (前缀: UW)
_共 19 个类_
---
## UWidget

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidget](https://developer.gp.qq.com/api/#/searchContent/UWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidget)

类

全文搜索

This is the base class for all wrapped Slate controls that are exposed to UObjects.

---


## 函数

- **SetRenderTransform**(FWidgetTransformInTransform)
- **SetRenderScale**(FVector2DScale)
- **SetRenderShear**(FVector2DShear)
- **SetRenderAngle**(floatAngle)
- **SetRenderTranslation**(FVector2DTranslation)
- **SetRenderTransformPivot**(FVector2DPivot)
- **GetIsEnabled**(Gets the current enabled status of the widget)
- **SetIsEnabled**(boolbInIsEnabled) — Sets the current enabled status of the widget
- **SetToolTipText**(FText &InToolTipText) — Sets the tooltip text for the widget.
- **SetToolTip**(UWidget *Widget) — Sets a custom widget as the tooltip of the widget.
- **SetCursor**(EMouseCursor :: TypeInCursor) — Sets the cursor to show over the widget.
- **ResetCursor**(Resets the cursor to use on the widget, removing any customization for it.)
- **IsVisible**(return -true if the widget is Visible, HitTestInvisible or SelfHitTestInvisible.)
- **SlateVisibilityGetVisibility**(Gets the current visibility of the widget.)
- **SlateVisibilityGetUVisibility**()
- **SetLocalVisibility**(ESlateVisibility OldVisibility, ESlateVisibility NewVisibility, UWidget *Widget)
- **SetLocalVisibilityWithoutPCUIStyle**(ESlateVisibility OldVisibility, ESlateVisibility NewVisibility, UWidget *Widget)
- **SlateVisibilityGetPCVisibility**()
- **IsPCVisible**()
- **SetVisibility**(ESlateVisibilityInVisibility) — Sets the visibility of the widget.
- **SetAdvancedCollapsed**(boolIsAdvancedCollapsed)
- **GetRenderOpacity**(Gets the current visibility of the widget.)
- **SetRenderOpacity**(floatInOpacity) — Sets the visibility of the widget.
- **WidgetClippingGetClipping**(Gets the clipping state of this widget.)
- **SetClipping**(EWidgetClippingInClipping) — Sets the clipping state of this widget.
- **ForceVolatile**(boolbForce) — Sets the forced volatility of the widget.
- **IsVolatile**()
- **IsHovered**(return -true if the widget is currently being hovered by a pointer device)
- **SetWriteSceneZBuffer**(boolbInWriteSceneZBuffer)
- **HasKeyboardFocus**(Checks to see if this widget currently has the keyboard focus return - True if this widget has keyboard focus)
- **HasMouseCapture**(Checks to see if this widget is the current mouse captor return - True if this widget has captured the mouse)
- **SetKeyboardFocus**(Sets the focus to this widget.)
- **HasUserFocus**(APlayerController *PlayerController) — return -true if this widget is focused by a specific user.
- **HasAnyUserFocus**(return -true if this widget is focused by any user.)
- **HasFocusedDescendants**(return -true if any descendant widget is focused by any user.)
- **HasUserFocusedDescendants**(APlayerController *PlayerController) — return -true if any descendant widget is focused by a specific user.
- **SetUserFocus**(APlayerController *PlayerController) — Sets the focus to this widget for a specific user
- **ForceLayoutPrepass**(Forces a pre-pass. A pre-pass caches the desired size of the widget hierarchy owned by this widget. One pre-pass is already happens for every widget before Tick occurs. You only need to perform another pre-pass if you are adding child widgets this frame and want them to immediately be visible this f)
- **InvalidateLayoutAndVolatility**(Invalidates the widget from the view of a layout caching widget that may own this widget. will force the owning widget to redraw and cache children on the next paint pass.)
- **Vector2DGetDesiredSize**(Gets the widgets desired size. NOTE: The underlying Slate widget must exist and be valid, also at least one pre-pass must have occurred before this value will be of any use. return -The widget's desired size)
- **SetAllNavigationRules**(EUINavigationRule Rule, FNameWidgetToFocus) — Sets the widget navigation rules for all directions. This can only be called on widgets that are in a widget tree. params Rule -The rule to use when navigation is taking place params WidgetToFocus -When using the Explicit rule, focus on this widget
- **SetNavigationRule**(EUINavigation Direction, EUINavigationRule Rule, FNameWidgetToFocus) — Sets the widget navigation rules for a specific direction. This can only be called on widgets that are in a widget tree. params Rule -The rule to use when navigation is taking place params WidgetToFocus -When using the Explicit rule, focus on this widget
- **GetParent**(Gets the parent widget)
- **RemoveFromParent**(Removes the widget from its parent widget. If this widget was added to the player's screen or the viewport it will also be removed from those containers.)
- **GetCachedGeometry**(Gets the last geometry used to Tick the widget. This data may not exist yet if this call happens prior to the widget having been tickedpainted, or it may be out of date, or a frame behind. We recommend not to use this data unless there's no other way to solve your problem. Normally in Slate we try a)
- **GetCachedAllottedGeometry**()
- **SetIgnorePixelSnapping**(boolIgnore)
- **GetOwningPlayer**(Gets the player controller associated with this UI. return -The player controller that owns the UI.)
- **AddAdvancedCollapsedCount**(uint8Num)
- **SubAdvancedCollapsedCount**(uint8Num)
- **StringGetWidgetOutlineName**()
- **IsCachedWidgetValid**(SetRenderTransform SetRenderScale SetRenderShear SetRenderAngle SetRenderTranslation SetRenderTransformPivot GetIsEnabled SetIsEnabled SetToolTipText SetToolTip SetCursor ResetCursor IsVisible GetVisibility GetUVisibility SetLocalVisibility SetLocalVisibilityWithoutPCUIStyle GetPCVisibility IsPCVisi)

## 属性

- **parent** — slot of the UWidget. Allows us to easily inline edit the layout controlling this widget. UPanelWidget *CachedPanel_ForGC Tooltip text to show when the user hovers over the widget with the mouse UWidget *ToolTipWidget Tooltip widget to show when the user hovers over the widget with the mouse The rend

## 委托

- boolbIsEnabledDelegate()
- A bindable delegate for bIsEnabled
- FTextToolTipTextDelegate()
- A bindable delegate for ToolTipText
- UWidget*ToolTipWidgetDelegate()
- A bindable delegate for ToolTipWidget
- ESlateVisibilityVisibilityDelegate()
- A bindable delegate for Visibility
- boolIgnorePixelSnappingDelegate()
- voidOnWidgetVisibilityChanged(ESlateVisibilityOldVisibility, ESlateVisibilityNewVisibility, UWidget*Widget)
- voidOnWidgetSlateVisibilityChanged(ESlateVisibilityOldVisibility, ESlateVisibilityNewVisibility, UWidget*Widget)
- voidOnWidgetIsEnabledSet(boolbIsEnabled, UWidget*Widget)
- bIsEnabledDelegate
- ToolTipTextDelegate
- ToolTipWidgetDelegate
- VisibilityDelegate
- IgnorePixelSnappingDelegate
- OnWidgetVisibilityChanged
- OnWidgetSlateVisibilityChanged
- OnWidgetIsEnabledSet

## UWidgetAnimation

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetAnimation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetAnimation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetAnimation](https://developer.gp.qq.com/api/#/searchContent/UWidgetAnimation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetAnimation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetAnimation)

类

全文搜索

---


## 函数

- **GetStartTime**(Get the start time of this animation. return -Start time in seconds.)
- **GetEndTime**(Get the end time of this animation. return -End time in seconds.)
- **BindToAnimationStarted**(UUserWidget* Widget, FWidgetAnimationDynamicEventDelegate)
- **UnbindFromAnimationStarted**(UUserWidget* Widget, FWidgetAnimationDynamicEventDelegate)
- **UnbindAllFromAnimationStarted**(UUserWidget *Widget)
- **BindToAnimationFinished**(UUserWidget* Widget, FWidgetAnimationDynamicEventDelegate)
- **UnbindFromAnimationFinished**(UUserWidget* Widget, FWidgetAnimationDynamicEventDelegate)
- **UnbindAllFromAnimationFinished**(UUserWidget *Widget) — GetStartTime GetEndTime BindToAnimationStarted UnbindFromAnimationStarted UnbindAllFromAnimationStarted BindToAnimationFinished UnbindFromAnimationFinished UnbindAllFromAnimationFinished

## 属性

- **to** — the movie scene that controls this animation. MovieScene AnimationBindings

## 委托

- voidOnAnimationStarted()
- Fires when the widget animation starts playing. compatible for lua, to be deleted
- voidOnAnimationFinished()
- Fires when the widget animation is finished. compatible for lua, to be deleted
- OnAnimationStarted
- OnAnimationFinished

## UWidgetBlueprintGeneratedClass

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetBlueprintGeneratedClass?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetBlueprintGeneratedClass.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetBlueprintGeneratedClass](https://developer.gp.qq.com/api/#/searchContent/UWidgetBlueprintGeneratedClass?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetBlueprintGeneratedClass.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetBlueprintGeneratedClass)

类

全文搜索

The widget blueprint generated class allows us to create blueprint-able widgets for UMG at runtime. All WBPGC's are of UUserWidget classes, and they perform special post initialization using this class to give themselves many of the same capabilities as AActor blueprints, like dynamic delegate binding for widgets.

---


## 属性

- **tree** — of the widget templates to be created UUserWidget *Template WidgetTree WidgetTreePath bAutoReleaseWidgetTree bAllowTemplate bValidTemplate bTemplateInitialized bCookedTemplate Bindings Animations NamedSlots TemplateAsset Template

## UWidgetBlueprintLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetBlueprintLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetBlueprintLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetBlueprintLibrary](https://developer.gp.qq.com/api/#/searchContent/UWidgetBlueprintLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetBlueprintLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetBlueprintLibrary)

类

全文搜索

---


## 函数

- **Create**(UObject* WorldContextObject, TSubclassOf < UUserWidget > WidgetType, APlayerController *OwningPlayer) — Creates a widget
- **CreateDragDropOperation**(TSubclassOf < UDragDropOperation >OperationClass) — Creates a new drag and drop operation that can be returned from a drag begin to inform the UI what i being dragged and dropped and what it looks like.
- **SetInputMode_UIOnly**(APlayerController* Target, UWidget* InWidgetToFocus, boolbLockMouseToViewport) — Setup an input mode that allows only the UI to respond to user input.
- **SetInputMode_UIOnlyEx**(APlayerController* Target, UWidget* InWidgetToFocus, EMouseLockModeInMouseLockMode) — Setup an input mode that allows only the UI to respond to user input.
- **SetInputMode_GameAndUI**(APlayerController* Target, UWidget* InWidgetToFocus, bool bLockMouseToViewport, boolbHideCursorDuringCapture) — Setup an input mode that allows only the UI to respond to user input, and if the UI doesn't handle it player input player controller gets a chance.
- **SetInputMode_GameAndUIEx**(APlayerController* Target, UWidget* InWidgetToFocus, EMouseLockMode InMouseLockMode, boolbHideCursorDuringCapture) — Setup an input mode that allows only the UI to respond to user input, and if the UI doesn't handle it player input player controller gets a chance.
- **SetInputMode_GameOnly**(APlayerController *Target) — Setup an input mode that allows only player input player controller to respond to user input.
- **SetFocusToGameViewport**()
- **DrawBox**(FPaintContext& Context, FVector2D Position, FVector2D Size, USlateBrushAsset* Brush, FLinearColorTint) — Draws a box
- **DrawLine**(FPaintContext& Context, FVector2D PositionA, FVector2D PositionB, FLinearColor Tint, boolbAntiAlias) — Draws a line. params PositionA -Starting position of the line in local space. params PositionB -Ending position of the line in local space. params Tint - Color to render the line.
- **DrawLines**(FPaintContext& Context, TArray < FVector2D >& Points, FLinearColor Tint, boolbAntiAlias) — Draws several line segments. params Points -Line pairs, each line needs to be 2 separate points in the array. params Tint - Color to render the line.
- **DrawText**(FPaintContext& Context, FString& InString, FVector2D Position, FLinearColorTint) — Draws text. params InString -The string to draw. params Position -The starting position where the text is drawn in local space. params Tint - Color to render the line.
- **DrawTextFormatted**(FPaintContext& Context, FText& Text, FVector2D Position, UFont* Font, int32 FontSize, FName FontTypeFace, FLinearColorTint) — Draws text. params Text - The string to draw. params Position -The starting position where the text is drawn in local space. params Tint - Color to render the line.
- **EventReplyHandled**(The event reply to use when you choose to handle an event. This will prevent the event from continuing to bubble up down the widget hierarchy.)
- **EventReplyUnhandled**(The event reply to use when you choose not to handle an event.)
- **EventReplyCaptureMouse**(FEventReply& Reply, UWidget *CapturingWidget)
- **EventReplyReleaseMouseCapture**(FEventReply &Reply)
- **EventReplyLockMouse**(FEventReply& Reply, UWidget *CapturingWidget)
- **EventReplyUnlockMouse**(FEventReply &Reply)
- **EventReplySetUserFocus**(FEventReply& Reply, UWidget* FocusWidget, boolbInAllUsers)
- **EventReplyCaptureJoystick**(FEventReply& Reply, UWidget* CapturingWidget, boolbInAllJoysticks)
- **EventReplyClearUserFocus**(FEventReply& Reply, boolbInAllUsers)
- **EventReplyReleaseJoystickCapture**(FEventReply& Reply, boolbInAllJoysticks)
- **EventReplySetMousePosition**(FEventReply& Reply, FVector2DNewMousePosition)
- **EventReplyDetectDrag**(FEventReply& Reply, UWidget* WidgetDetectingDrag, FKeyDragKey) — Ask Slate to detect if a user starts dragging in this widget later. Slate internally tracks the movement and if it surpasses the drag threshold, Slate will send an OnDragDetected event to the widget. params WidgetDetectingDrag -Detect dragging in this widget params DragKey - This button should be pr
- **EventReplyDetectDragIfPressed**(FPointerEvent& PointerEvent, UWidget* WidgetDetectingDrag, FKeyDragKey) — Given the pointer event, emit the DetectDrag reply if the provided key was pressed. If the DragKey is a touch key, that will also automatically work. params PointerEvent -The pointer device event coming in. params WidgetDetectingDrag -Detect dragging in this widget. params DragKey - This button shou
- **EventReplyEndDragDrop**(FEventReply &Reply)
- **Handled**()
- **IsDragDropping**(Returns true if a dragdrop event is occurring that a widget can handle.)
- **GetDragDroppingContent**(Returns the drag and drop operation that is currently occurring if any, otherwise nothing.)
- **CancelDragDrop**(Cancels any current drag drop operation.)
- **SlateBrushMakeBrushFromAsset**(USlateBrushAsset *BrushAsset) — Creates a Slate Brush from a Slate Brush Asset return -A new slate brush using the asset's brush.
- **SlateBrushMakeBrushFromTexture**(UTexture2D* Texture, int32 Width, int32Height) — Creates a Slate Brush from a Texture2D return -A new slate brush using the texture. params Width -When less than or equal to zero, the Width of the brush will default to the Width of the Texture params Height -When less than or equal to zero, the Height of the brush will default to the Height of the
- **SlateBrushMakeBrushFromMaterial**(UMaterialInterface* Material, int32 Width, int32Height) — Creates a Slate Brush from a Material. Materials don't have an implicit size, so providing a widget and height is required to hint slate with how large the image wants to be by default. return -A new slate brush using the material.
- **GetBrushResource**(FSlateBrush &Brush) — Gets the resource object on a brush. This could be a UTexture2D or a UMaterialInterface.
- **GetBrushResourceConst**(FSlateBrush &Brush)
- **GetBrushResourceAsTexture2D**(FSlateBrush &Brush) — Gets the brush resource as a texture 2D.
- **GetBrushResourceAsMaterial**(FSlateBrush &Brush) — Gets the brush resource as a material.
- **SetBrushResourceToTexture**(FSlateBrush& Brush, UTexture2D *Texture) — Sets the resource on a brush to be a UTexture2D.
- **SetBrushResourceToMaterial**(FSlateBrush& Brush, UMaterialInterface *Material) — Sets the resource on a brush to be a Material.
- **SlateBrushNoResourceBrush**(Creates a Slate Brush that wont draw anything, the "Null Brush". return -A new slate brush that wont draw anything.)
- **GetDynamicMaterial**(FSlateBrush &Brush) — Gets the material that allows changes to parameters at runtime. The brush must already have a material assigned to it, if it does it will automatically be converted to a MID. return -A material that supports dynamic input from the game.
- **DismissAllMenus**(Closes any popup menu)
- **GetAllWidgetsOfClass**(UObject* WorldContextObject, TArray < UUserWidget* >& FoundWidgets, TSubclassOf < UUserWidget > WidgetClass, boolTopLevelOnly) — Find all widgets of a certain class. params FoundWidgets -The widgets that were found matching the filter. params WidgetClass -The widget class to filter by. params TopLevelOnly -Only the widgets that are direct children of the viewport will be returned.
- **GetAllWidgetsWithInterface**(UObject* WorldContextObject, TSubclassOf < UInterface > Interface, TArray < UUserWidget* >& FoundWidgets, boolTopLevelOnly) — Find all widgets in the world with the specified interface. This is a slow operation, use with caution e.g. do not use every frame. params Interface -The interface to find. Must be specified or result array will be empty. params FoundWidgets -Output array of widgets that implement the specified inte
- **InputEventGetInputEventFromKeyEvent**(FKeyEvent &Event)
- **KeyEventGetKeyEventFromAnalogInputEvent**(FAnalogInputEvent &Event)
- **InputEventGetInputEventFromCharacterEvent**(FCharacterEvent &Event)
- **InputEventGetInputEventFromPointerEvent**(FPointerEvent &Event)
- **InputEventGetInputEventFromNavigationEvent**(FNavigationEvent &Event)
- **GetSafeZonePadding**(UObject* WorldContextObject, FVector2D& SafePadding, FVector2D& SafePaddingScale, FVector2D &SpillOverPadding) — Gets the amount of padding that needs to be added when accounting for the safe zone on TVs.
- **SetHardwareCursor**(UObject* WorldContextObject, EMouseCursor :: Type CursorShape, FName CursorName, FVector2DHotSpot) — Loads or sets a hardware cursor from the content directory in the game.
- **ApplyUserWidgetSkin**(UUserWidget* UserWidget, TSoftClassPtr < UUserWidgetSkin > SkinPathPtr, boolbAsyncLoad)
- **RevertUserWidgetSkin**(UUserWidget* UserWidget, TSoftClassPtr < UUserWidgetSkin >SkinPathPtr) — Create CreateDragDropOperation SetInputMode_UIOnly SetInputMode_UIOnlyEx SetInputMode_GameAndUI SetInputMode_GameAndUIEx SetInputMode_GameOnly SetFocusToGameViewport DrawBox DrawLine DrawLines DrawText DrawTextFormatted Handled Unhandled CaptureMouse ReleaseMouseCapture LockMouse UnlockMouse SetUser

## UWidgetComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetComponent](https://developer.gp.qq.com/api/#/searchContent/UWidgetComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetComponent)

类

全文搜索

The widget component provides a surface in the 3D environment on which to render widgets normally rendered to the screen. Widgets are first rendered to a render target, then that render target is displayed in the world. Material Properties set by this component on whatever material overrides the default. SlateUI [Texture] BackColor [Vector] TintColorAndOpacity [Vector] OpacityFromTexture [Scalar]

---


## 函数

- **GetUserWidgetObject**(return -The user widget object displayed by this component)
- **GetRenderTarget**(return -The render target to which the user widget is rendered)
- **ForceWidgetUpdateImmediate**()
- **ForceWidgetUpdateImmediately**()
- **ForceUpdateRenderTarget**()
- **GetMaterialInstance**(return -The dynamic material instance used to render the user widget)
- **SetWidget**(UUserWidget *Widget) — Sets the widget to use directly. This function will keep track of the widget till the next time it's called with either a newer widget or a nullptr
- **SetOwnerPlayer**(ULocalPlayer *LocalPlayer) — Sets the local player that owns this widget component. Setting the owning player controls which player's viewport the widget appears on in a split screen scenario. Additionally it forwards the owning player to the actual UserWidget that is spawned.
- **GetOwnerPlayer**(Gets the local player that owns this widget component.)
- **Vector2DGetDrawSize**(return -The draw size of the quad in the world)
- **Vector2DGetCurrentDrawSize**(Returns the "actual" draw size of the quad in the world)
- **SetDrawSize**(FVector2DSize) — Sets the draw size of the quad in the world
- **RequestRedraw**(Requests that the widget be redrawn.)
- **GetTickWhenOffscreen**(Gets whether the widget ticks when offscreen or not)
- **SetTickWhenOffscreen**(boolbWantTickWhenOffscreen) — Sets whether the widget ticks when offscreen or not
- **SetBackgroundColor**(FLinearColorNewBackgroundColor) — Sets the background color and opacityscale for this widget
- **SetTintColorAndOpacity**(FLinearColorNewTintColorAndOpacity) — Sets the tint color and opacity scale for this widget GetUserWidgetObject GetRenderTarget ForceWidgetUpdateImmediate ForceWidgetUpdateImmediately ForceUpdateRenderTarget GetMaterialInstance SetWidget SetOwnerPlayer GetOwnerPlayer GetDrawSize GetCurrentDrawSize SetDrawSize RequestRedraw GetTickWhenOf

## 属性

- **coordinate** — space in which to render the widget EWidgetTimingPolicyTimingPolicy How this widget should deal with timing, pausing, etc. The class of User Widget to create and display an instance of The size of the displayed quad. Should we wait to be told to redraw to actually draw? Should LowDevice Phone draw U

## UWidgetInteractionComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetInteractionComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetInteractionComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetInteractionComponent](https://developer.gp.qq.com/api/#/searchContent/UWidgetInteractionComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetInteractionComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetInteractionComponent)

类

全文搜索

This is a component to allow interaction with the Widget Component. This class allows you to simulate a sort of laser pointer device, when it hovers over widgets it will send the basic signals to show as if the mouse were moving on top of it. You'll then tell the component to simulate key presses, like Left Mouse, down and up, to simulate a mouse click.

---


## 函数

- **PressPointerKey**(FKeyKey) — Presses a key as if the mousepointer were the source of it. Normally you would just use LeftRight mouse button for the Key. However - advanced uses could also be imagined where you send other keys to signal widgets to take special actions if they're under the cursor.
- **ReleasePointerKey**(FKeyKey) — Releases a key as if the mousepointer were the source of it. Normally you would just use LeftRight mouse button for the Key. However - advanced uses could also be imagined where you send other keys to signal widgets to take special actions if they're under the cursor.
- **PressKey**(FKey Key, boolbRepeat) — Press a key as if it had come from the keyboard. Avoid using this for 'a-z
- **ReleaseKey**(FKeyKey) — Releases a key as if it had been released by the keyboard.
- **PressAndReleaseKey**(FKeyKey) — Does both the press and release of a simulated keyboard key.
- **SendKeyChar**(FString Characters, boolbRepeat) — Transmits a list of characters to a widget by simulating a OnKeyChar event for each key listed in the string.
- **ScrollWheel**(floatScrollDelta) — Sends a scroll wheel event to the widget under the last hit result.
- **GetHoveredWidgetComponent**(Get the currently hovered widget component.)
- **IsOverInteractableWidget**(Returns true if a widget under the hit result is interactive. e.g. Slate widgets)
- **IsInteractable**()
- **IsOverFocusableWidget**(Returns true if a widget under the hit result is focusable. e.g. Slate widgets that)
- **SupportsKeyboardFocus**()
- **IsOverHitTestVisibleWidget**(Returns true if a widget under the hit result is has a visibility that makes it hit test)
- **GetVisibility**()
- **GetLastHitResult**(Gets the last hit result generated by the component. Returns the custom hit result if that was set.)
- **Vector2DGet2DHitLocation**(Gets the last hit location on the widget in 2D, local pixel units of the render target.)
- **SetCustomHitResult**(FHitResult &HitResult) — Set custom hit result. This is only taken into account if InteractionSource is set to EWidgetInteractionSource::Custom. PressPointerKey ReleasePointerKey PressKey ReleaseKey PressAndReleaseKey SendKeyChar ScrollWheel GetHoveredWidgetComponent IsOverInteractableWidget IsOverFocusableWidget IsOverHitT

## 属性

- **the** — Virtual User Index. Each virtual user should be represented by a different index number, this will maintain separate capture and focus states for them. Each controller or finger-tip should get a unique PointerIndex. Each user virtual controller or virtual finger tips being simulated should use a dif

## 委托

- voidOnHoveredWidgetChanged(UWidgetComponent*WidgetComponent, UWidgetComponent*PreviousWidgetComponent)
- Called when the hovered Widget Component changes. The interaction component functions at the Slate
- level - so it's unable to report anything about what UWidget is under the hit result.
- OnHoveredWidgetChanged

## UWidgetLayoutLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetLayoutLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetLayoutLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetLayoutLibrary](https://developer.gp.qq.com/api/#/searchContent/UWidgetLayoutLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetLayoutLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetLayoutLibrary)

类

全文搜索

---


## 函数

- **ProjectWorldLocationToWidgetPosition**(APlayerController* PlayerController, FVector WorldLocation, FVector2D &ScreenPosition) — Gets the projected world to screen position for a player, then converts it into a widget position, which takes into account any quality scaling. return -true if the position projects onto the screen. params PlayerController -The player controller to project the position in the world to their screen.
- **GetViewportScale**(UObject *WorldContextObject) — Gets the current DPI Scale being applied to the viewport and all the Widgets.
- **Vector2DGetViewportSize**(UObject *WorldContextObject) — Gets the size of the game viewport.
- **GeometryGetViewportWidgetGeometry**(UObject *WorldContextObject) — Gets the geometry of the widget holding all widgets added to the "Viewport". You can use this geometry to convert between absolute and local space of widgets held on this widget.
- **GeometryGetPlayerScreenWidgetGeometry**(APlayerController *PlayerController) — Gets the geometry of the widget holding all widgets added to the "Player Screen". You can use this geometry to convert between absolute and local space of widgets held on this widget.
- **Vector2DGetMousePositionOnPlatform**(Gets the platform's mouse cursor position. This is the 'absolute' desktop location of the mouse.)
- **Vector2DGetMousePositionOnViewport**(UObject *WorldContextObject) — Gets the platform's mouse cursor position in the local space of the viewport widget.
- **GetMousePositionScaledByDPI**(APlayerController* Player, float& LocationX, float &LocationY) — Gets the mouse position of the player controller, scaled by the DPI. If you're trying to go from raw mouse screenspace coordinates to fullscreen widget space, you'll need to transform the mouse into DPI Scaled space. This function performs that scaling. MousePositionScaledByDPI = MousePosition (1 Vi
- **SlotAsBorderSlot**(UWidget *Widget) — Gets the slot object on the child widget as a Border Slot, allowing you to manipulate layout information. params Widget -The child widget of a border panel.
- **SlotAsCanvasSlot**(UWidget *Widget) — Gets the slot object on the child widget as a Canvas Slot, allowing you to manipulate layout information. params Widget -The child widget of a canvas panel.
- **SlotAsGridSlot**(UWidget *Widget) — Gets the slot object on the child widget as a Grid Slot, allowing you to manipulate layout information. params Widget -The child widget of a grid panel.
- **SlotAsHorizontalBoxSlot**(UWidget *Widget) — Gets the slot object on the child widget as a Horizontal Box Slot, allowing you to manipulate its information. params Widget -The child widget of a Horizontal Box.
- **SlotAsOverlaySlot**(UWidget *Widget) — Gets the slot object on the child widget as a Overlay Slot, allowing you to manipulate layout information. params Widget -The child widget of a overlay panel.
- **SlotAsUniformGridSlot**(UWidget *Widget) — Gets the slot object on the child widget as a Uniform Grid Slot, allowing you to manipulate layout information. params Widget -The child widget of a uniform grid panel.
- **SlotAsVerticalBoxSlot**(UWidget *Widget) — Gets the slot object on the child widget as a Vertical Box Slot, allowing you to manipulate its information. params Widget -The child widget of a Vertical Box.
- **RemoveAllWidgets**(UObject *WorldContextObject) — Removes all widgets from the viewport.
- **SetNewUsedLayerPolicy**(UWidget* Widget, int32NewLayerPolicy) — ProjectWorldLocationToWidgetPosition GetViewportScale GetViewportSize GetViewportWidgetGeometry GetPlayerScreenWidgetGeometry GetMousePositionOnPlatform GetMousePositionOnViewport GetMousePositionScaledByDPI SlotAsBorderSlot SlotAsCanvasSlot SlotAsGridSlot SlotAsHorizontalBoxSlot SlotAsOverlaySlot S

## UWidgetNavigation

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetNavigation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetNavigation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetNavigation](https://developer.gp.qq.com/api/#/searchContent/UWidgetNavigation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetNavigation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetNavigation)

类

全文搜索

---


## 属性

- **when** — the user presses up arrow, joystick, d-pad. Happens when the user presses down arrow, joystick, d-pad. Happens when the user presses left arrow, joystick, d-pad. Happens when the user presses right arrow, joystick, d-pad. Happens when the user presses Tab. Happens when the user presses Shift+Tab. Up

## UWidgetSkinProxy

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetSkinProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetSkinProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetSkinProxy](https://developer.gp.qq.com/api/#/searchContent/UWidgetSkinProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetSkinProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetSkinProxy)

类

全文搜索

The user widget proxy, using this proxy to activate widget skin for an user widget.

---


## 函数

- **ApplySkin**(TSoftClassPtr < UUserWidgetSkin > SkinPathPtr, boolbAsyncLoad)
- **RevertSkin**(TSoftClassPtr < UUserWidgetSkin >SkinPathPtr)
- **RevertRevertableSkin**()
- **GetActiveSkins**()
- **GetRevertableSkin**()
- **ContainsSkin**(UUserWidgetSkin *InSkin)
- **GetOwnerUserWidget**(ApplySkin RevertSkin RevertRevertableSkin GetActiveSkins GetRevertableSkin ContainsSkin GetOwnerUserWidget)

## UWidgetSwitcher

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetSwitcher?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetSwitcher.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetSwitcher](https://developer.gp.qq.com/api/#/searchContent/UWidgetSwitcher?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetSwitcher.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetSwitcher)

类

全文搜索

A widget switcher is like a tab control, but without tabs. At most one widget is visible at time.

---


## 函数

- **GetNumWidgets**(Gets the number of widgets that this switcher manages.)
- **GetActiveWidgetIndex**(Gets the slot index of the currently active widget)
- **GetLocalActiveWidgetIndex**()
- **SetActiveWidgetIndex**(int32Index) — Activates the widget at the specified index.
- **SetActiveWidget**(UWidget *Widget) — Activates the widget and makes it the active index.
- **GetWidgetAtIndex**(int32Index) — Get a widget at the provided index
- **GetActiveWidget**(Get the reference of the currently active widget GetNumWidgets GetActiveWidgetIndex GetLocalActiveWidgetIndex SetActiveWidgetIndex SetActiveWidget GetWidgetAtIndex GetActiveWidget)

## 属性

- **slot** — index to display ActiveWidgetIndex bHideInactiveWidgets ActiveWidgetIndexDelegate

## 委托

- voidOnActiveIndexChanged(int32WidgetIndex)
- voidOnActiveIndexChangeDelegate(int32Percent)
- OnActiveIndexChanged
- OnActiveIndexChangeDelegate

## UWidgetSwitcherSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetSwitcherSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetSwitcherSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetSwitcherSlot](https://developer.gp.qq.com/api/#/searchContent/UWidgetSwitcherSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetSwitcherSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetSwitcherSlot)

类

全文搜索

The Slot for the UWidgetSwitcher, contains the widget that is flowed vertically

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment) — SetPadding SetHorizontalAlignment SetVerticalAlignment

## 属性

- **padding** — area between the slot and the content it contains. The alignment of the object horizontally. The alignment of the object vertically. Padding HorizontalAlignment VerticalAlignment

## UWidgetTree

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetTree?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetTree.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetTree](https://developer.gp.qq.com/api/#/searchContent/UWidgetTree?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetTree.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetTree)

类

全文搜索

The widget tree manages the collection of widgets in a blueprint widget.

---


## 属性

- **root** — widget of the tree RootWidget VariableWidgetMarks AllWidgets

## UWindDirectionalSourceComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWindDirectionalSourceComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWindDirectionalSourceComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWindDirectionalSourceComponent](https://developer.gp.qq.com/api/#/searchContent/UWindDirectionalSourceComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWindDirectionalSourceComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWindDirectionalSourceComponent)

类

全文搜索

Component that provides a directional wind source. Only affects SpeedTree assets.

---


## 函数

- **SetStrength**(floatInNewStrength) — Because the actual data used to query wind is stored on the render thread in an instance of FWindSourceSceneProxy all of our properties are read only. The data can be manipulated with the following functions which will queue a render thread update for this component Sets the strength of the generate
- **SetSpeed**(floatInNewSpeed) — Sets the windspeed of the generated wind
- **SetMinimumGustAmount**(floatInNewMinGust) — Set minimum deviation for wind gusts
- **SetMaximumGustAmount**(floatInNewMaxGust) — Set maximum deviation for wind gusts
- **SetRadius**(floatInNewRadius) — Set the effect radius for point wind
- **SetWindType**(EWindSourceTypeInNewType) — Set the type of wind generator to use SetStrength SetSpeed SetMinimumGustAmount SetMaximumGustAmount SetRadius SetWindType

## UWindow

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWindow?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWindow.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWindow](https://developer.gp.qq.com/api/#/searchContent/UWindow?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWindow.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWindow)

类

全文搜索

---


## 函数

- **SetTitle**(FTextInTitle)
- **SetContent**(UWidget *Content)
- **Resize**(FVector2DNewSize) — SetTitle SetContent Resize

## UWindowTitleBarArea

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWindowTitleBarArea?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWindowTitleBarArea.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWindowTitleBarArea](https://developer.gp.qq.com/api/#/searchContent/UWindowTitleBarArea?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWindowTitleBarArea.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWindowTitleBarArea)

类

全文搜索

A panel for defining a region of the UI that should allow users to drag the window on desktop platforms.

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment) — SetPadding SetHorizontalAlignment SetVerticalAlignment

## 属性

- **double** — clicking the title bar area toggle fullscreen instead of maximizing the window. bDoubleClickTogglesFullscreen

## UWindowTitleBarAreaSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWindowTitleBarAreaSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWindowTitleBarAreaSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWindowTitleBarAreaSlot](https://developer.gp.qq.com/api/#/searchContent/UWindowTitleBarAreaSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWindowTitleBarAreaSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWindowTitleBarAreaSlot)

类

全文搜索

The Slot for the UWindowTitleBarArea

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment) — SetPadding SetHorizontalAlignment SetVerticalAlignment

## 属性

- **padding** — area between the slot and the content it contains. The alignment of the object horizontally. The alignment of the object vertically. Padding HorizontalAlignment VerticalAlignment

## UWorldComposition

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWorldComposition?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWorldComposition.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWorldComposition](https://developer.gp.qq.com/api/#/searchContent/UWorldComposition?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWorldComposition.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWorldComposition)

类

全文搜索

WorldComposition represents world structure: - Holds list of all level packages participating in this world and theirs base parameters (bounding boxes, offset from origin) - Holds list of streaming level objects to stream in and out based on distance from current view point - Handles properly levels repositioning during level loading and saving

---


## 函数

- **CheckBisNeedSavedLevelToFileInServer**(CheckBisNeedSavedLevelToFileInServer)

## UWrapBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWrapBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWrapBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWrapBox](https://developer.gp.qq.com/api/#/searchContent/UWrapBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWrapBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWrapBox)

类

全文搜索

Arranges widgets left-to-right. When the widgets exceed the Width it will place widgets on the next line. Many Children Flows Wraps

---


## 函数

- **SetInnerSlotPadding**(FVector2DInPadding) — Sets the inner slot padding goes between slots sharing borders
- **AddChildWrapBox**(UWidget *Content) — SetInnerSlotPadding AddChildWrapBox

## 属性

- **inner** — slot padding goes between slots sharing borders When this width is exceeded, elements will start appearing on the next line. Use explicit wrap width whenever possible. It greatly simplifies layout calculations and reduces likelihood of "wiggling UI" InnerSlotPadding WrapWidth bExplicitWrapWidth

## UWrapBoxSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWrapBoxSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWrapBoxSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWrapBoxSlot](https://developer.gp.qq.com/api/#/searchContent/UWrapBoxSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWrapBoxSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWrapBoxSlot)

类

全文搜索

The Slot for the UWrapBox, contains the widget that is flowed vertically

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetFillEmptySpace**(boolInbFillEmptySpace)
- **SetFillSpanWhenLessThan**(floatInFillSpanWhenLessThan)
- **SetForceNewLine**(boolbInForceNewLine)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment) — SetPadding SetFillEmptySpace SetFillSpanWhenLessThan SetForceNewLine SetHorizontalAlignment SetVerticalAlignment

## 属性

- **padding** — area between the slot and the content it contains. Should this slot fill the remaining space on the line? Force this slot display to a new line If the total available space in the wrap panel drops below this threshold, this slot will attempt to fill an entire line. NOTE: A value of 0, denotes no fil

