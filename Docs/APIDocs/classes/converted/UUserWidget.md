# UUserWidget

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UUserWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUserWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUserWidget](https://developer.gp.qq.com/api/#/searchContent/UUserWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUUserWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UUserWidget)

类

全文搜索

The user widget is extensible by users through the WidgetBlueprint.

---


## 函数

- **AddToViewport**(int32ZOrder) — Adds it to the game's viewport and fills the entire screen, unless SetDesiredSizeInViewport is called to explicitly set the size. params ZOrder -The higher the number, the more on top this widget will be.
- **AddToPlayerScreen**(int32ZOrder) — Adds the widget to the game's viewport in a section dedicated to the player. This is valuable in a split screen game where you need to only show a widget over a player's portion of the viewport. params ZOrder -The higher the number, the more on top this widget will be.
- **RemoveFromViewport**(Removes the widget from the viewport.)
- **GetZOrderOfViewportWidget**(Get Z-order of Viewport Widget, added by fourthchen)
- **SetPositionInViewport**(FVector2D Position, boolbRemoveDPIScale) — Sets the widgets position in the viewport. params Position -The 2D position to set the widget to in the viewport. params bRemoveDPIScale -If you've already calculated inverse DPI, set this to false.
- **SetDesiredSizeInViewport**(FVector2DSize)
- **SetOffsetsInViewport**(FMarginMargin)
- **SetAnchorsInViewport**(FAnchorsAnchors)
- **SetAlignmentInViewport**(FVector2DAlignment)
- **AnchorsGetAnchorsInViewport**()
- **Vector2DGetAlignmentInViewport**()
- **GetIsVisible**()
- **IsInViewport**(return -true if the widget was added to the viewport using AddToViewport.)
- **GetOwningLocalPlayer**(Gets the local player associated with this UI. return -The owning local player.)
- **SetOwningLocalPlayer**(ULocalPlayer *LocalPlayer) — Sets the player associated with this UI via LocalPlayer reference. params LocalPlayer -The local player you want to be the conceptual owner of this UI.
- **GetOwningPlayer**(Gets the player controller associated with this UI. return -The player controller that owns the UI.)
- **SetOwningPlayer**(APlayerController *LocalPlayerController) — Sets the local player associated with this UI via PlayerController reference. params LocalPlayerController -The PlayerController of the local player you want to be the conceptual owner of this UI.
- **GetOwningPlayerPawn**(Gets the player pawn associated with this UI. return -Gets the owning player pawn that's owned by the player controller assigned to this widget.)
- **PreConstruct**(boolIsDesignTime) — Called by both the game and the editor. Allows users to run initial setup for their widgets to better preview the setup in the designer and since generally that same setup code is required at runtime, it's called there as well. WARNING This is intended purely for cosmetic updates using locally owned
- **Construct**(Called after the underlying slate widget is constructed. Depending on how the slate object is used this event may be called multiple times due to adding and removing from the hierarchy.)
- **ConstructForLua**()
- **Destruct**(Called when a widget is no longer referenced causing the slate resource to destroyed. Just like Construct this event can be called multiple times.)
- **Tick**(FGeometry MyGeometry, floatInDeltaTime) — Ticks this widget. Override in derived classes, but always call the parent implementation. params MyGeometry -The space allotted for this widget params InDeltaTime -Real time passed since last tick
- **OnPaint**(FPaintContext &Context)
- **IsInteractable**(Gets a value indicating if the widget is interactive.)
- **EventReplyOnFocusReceived**(FGeometry MyGeometry, FFocusEventInFocusEvent) — Called when keyboard focus is given to this widget. This event does not bubble. return - Returns whether the event was handled, along with other possible actions params MyGeometry -The Geometry of the widget receiving the event params InFocusEvent -FocusEvent
- **OnFocusLost**(FFocusEventInFocusEvent) — Called when this widget loses focus. This event does not bubble. params InFocusEvent -FocusEvent
- **OnAddedToFocusPath**(FFocusEventInFocusEvent) — If focus is gained on on this widget or on a child widget and this widget is added to the focus path, and wasn't previously part of it, this event is called. params InFocusEvent -FocusEvent
- **OnRemovedFromFocusPath**(FFocusEventInFocusEvent) — If focus is lost on on this widget or on a child widget and this widget is no longer part of the focus path. params InFocusEvent -FocusEvent
- **EventReplyOnKeyChar**(FGeometry MyGeometry, FCharacterEventInCharacterEvent) — Called after a character is entered while this widget has focus return - Returns whether the event was handled, along with other possible actions params MyGeometry -The Geometry of the widget receiving the event params InCharacterEvent -Character event
- **EventReplyOnPreviewKeyDown**(FGeometry MyGeometry, FKeyEventInKeyEvent) — Called after a key (keyboard, controller, ...) is pressed when this widget or a child of this widget has focus If a widget handles this event, OnKeyDown will not be passed to the focused widget. This event is primarily to allow parent widgets to consume an event before a child widget processes it an
- **EventReplyOnKeyDown**(FGeometry MyGeometry, FKeyEventInKeyEvent) — Called after a key (keyboard, controller, ...) is pressed when this widget has focus (this event bubbles if not handled) return - Returns whether the event was handled, along with other possible actions params MyGeometry -The Geometry of the widget receiving the event params InKeyEvent -Key event
- **EventReplyOnKeyUp**(FGeometry MyGeometry, FKeyEventInKeyEvent) — Called after a key (keyboard, controller, ...) is released when this widget has focus return - Returns whether the event was handled, along with other possible actions params MyGeometry -The Geometry of the widget receiving the event params InKeyEvent -Key event
- **EventReplyOnAnalogValueChanged**(FGeometry MyGeometry, FAnalogInputEventInAnalogInputEvent) — Called when an analog value changes on a button that supports analog return - Returns whether the event was handled, along with other possible actions params MyGeometry -The Geometry of the widget receiving the event params InAnalogInputEvent -Analog Event
- **EventReplyOnMouseButtonDown**(FGeometry MyGeometry, FPointerEvent &MouseEvent) — The system calls this method to notify the widget that a mouse button was pressed within it. This event is bubbled. return -Whether the event was handled along with possible requests for the system to take action. params MyGeometry -The Geometry of the widget receiving the event params MouseEvent -I
- **EventReplyOnPreviewMouseButtonDown**(FGeometry MyGeometry, FPointerEvent &MouseEvent) — Just like OnMouseButtonDown, but tunnels instead of bubbling. If this even is handled, OnMouseButtonDown will not be sent. Use this event sparingly as preview events generally make UIs more difficult to reason about. return -Whether the event was handled along with possible requests for the system t
- **EventReplyOnMouseButtonUp**(FGeometry MyGeometry, FPointerEvent &MouseEvent) — The system calls this method to notify the widget that a mouse button was release within it. This event is bubbled. return -Whether the event was handled along with possible requests for the system to take action. params MyGeometry -The Geometry of the widget receiving the event params MouseEvent -I
- **EventReplyOnMouseMove**(FGeometry MyGeometry, FPointerEvent &MouseEvent) — The system calls this method to notify the widget that a mouse moved within it. This event is bubbled. return -Whether the event was handled along with possible requests for the system to take action. params MyGeometry -The Geometry of the widget receiving the event params MouseEvent -Information ab
- **OnMouseEnter**(FGeometry MyGeometry, FPointerEvent &MouseEvent) — The system will use this event to notify a widget that the cursor has entered it. This event is NOT bubbled. params MyGeometry -The Geometry of the widget receiving the event params MouseEvent -Information about the input event
- **OnMouseLeave**(FPointerEvent &MouseEvent) — The system will use this event to notify a widget that the cursor has left it. This event is NOT bubbled. params MouseEvent -Information about the input event
- **EventReplyOnMouseWheel**(FGeometry MyGeometry, FPointerEvent &MouseEvent) — Called when the mouse wheel is spun. This event is bubbled. return - Returns whether the event was handled, along with other possible actions params MouseEvent -Mouse event
- **EventReplyOnMouseButtonDoubleClick**(FGeometry InMyGeometry, FPointerEvent &InMouseEvent) — Called when a mouse button is double clicked. Override this in derived classes. return - Returns whether the event was handled, along with other possible actions params InMyGeometry -Widget geometry params InMouseEvent -Mouse button event
- **OnDragDetected**(FGeometry MyGeometry, FPointerEvent& PointerEvent, UDragDropOperation* &Operation) — Called when Slate detects that a widget started to be dragged. params PointerEvent -MouseMove that triggered the drag params Operation - The drag operation that was detected.
- **OnDragCancelled**(FPointerEvent& PointerEvent, UDragDropOperation *Operation) — Called when the user cancels the drag operation, typically when they simply release the mouse button after beginning a drag operation, but failing to complete the drag. params PointerEvent -Last mouse event from when the drag was canceled. params Operation - The drag operation that was canceled.
- **OnDragEnter**(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation *Operation) — Called during drag and drop when the drag enters the widget. params MyGeometry - The geometry of the widget receiving the event. params PointerEvent - The mouse event from when the drag entered the widget. params Operation - The drag operation that entered the widget.
- **OnDragLeave**(FPointerEvent PointerEvent, UDragDropOperation *Operation) — Called during drag and drop when the drag leaves the widget. params PointerEvent - The mouse event from when the drag left the widget. params Operation - The drag operation that entered the widget.
- **OnDragOver**(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation *Operation) — Called during drag and drop when the the mouse is being dragged over a widget. return -'true' to indicate that you handled the drag over operation. Returning 'false' will cause the operation to continue to bubble up. params MyGeometry - The geometry of the widget receiving the event. params PointerE
- **OnDrop**(FGeometry MyGeometry, FPointerEvent PointerEvent, UDragDropOperation *Operation) — Called when the user is dropping something onto a widget. Ends the drag and drop operation, even if no widget handles this. return -'true' to indicate you handled the drop operation. params MyGeometry - The geometry of the widget receiving the event. params PointerEvent - The mouse event from when t
- **EventReplyOnTouchGesture**(FGeometry MyGeometry, FPointerEvent &GestureEvent) — Called when the user performs a gesture on trackpad. This event is bubbled. return - Returns whether the event was handled, along with other possible actions params MyGeometry - The geometry of the widget receiving the event. params GestureEvent -gesture event
- **EventReplyOnTouchStarted**(FGeometry MyGeometry, FPointerEvent &InTouchEvent) — Called when a touchpad touch is started (finger down) params MyGeometry - The geometry of the widget receiving the event. params InTouchEvent -The touch event generated
- **EventReplyOnTouchMoved**(FGeometry MyGeometry, FPointerEvent &InTouchEvent) — Called when a touchpad touch is moved (finger moved) params MyGeometry - The geometry of the widget receiving the event. params InTouchEvent -The touch event generated
- **EventReplyOnTouchEnded**(FGeometry MyGeometry, FPointerEvent &InTouchEvent) — Called when a touchpad touch is ended (finger lifted) params MyGeometry - The geometry of the widget receiving the event. params InTouchEvent -The touch event generated
- **EventReplyOnMotionDetected**(FGeometry MyGeometry, FMotionEventInMotionEvent) — Called when motion is detected (controller or device) e.g. Someone tilts or shakes their controller. params MyGeometry - The geometry of the widget receiving the event.
- **OnMouseCaptureLost**(Called when mouse capture is lost if it was owned by this widget.)
- **GetAllChildrenOfType**(FString Type, TArray < UWidget* > &Children)
- **GetTypedChildrenOfWidget**(UWidget* Parent, FString Type, TArray < UWidget* > &Children)
- **BindToAnimationStarted**(UWidgetAnimation* Animation, FWidgetAnimationDynamicEventDelegate) — Bind an animation started delegate. params Animation -the animation to listen for starting or finishing. params Delegate -the delegate to call when the animation's state changes
- **UnbindFromAnimationStarted**(UWidgetAnimation* Animation, FWidgetAnimationDynamicEventDelegate) — Unbind an animation started delegate. params Animation -the animation to listen for starting or finishing. params Delegate -the delegate to call when the animation's state changes
- **UnbindAllFromAnimationStarted**(UWidgetAnimation *Animation)
- **BindToAnimationFinished**(UWidgetAnimation* Animation, FWidgetAnimationDynamicEventDelegate) — Bind an animation finished delegate. params Animation -the animation to listen for starting or finishing. params Delegate -the delegate to call when the animation's state changes
- **UnbindFromAnimationFinished**(UWidgetAnimation* Animation, FWidgetAnimationDynamicEventDelegate) — Unbind an animation finished delegate. params Animation -the animation to listen for starting or finishing. params Delegate -the delegate to call when the animation's state changes
- **UnbindAllFromAnimationFinished**(UWidgetAnimation *Animation)
- **BindToAnimationEvent**(UWidgetAnimation* Animation, FWidgetAnimationDynamicEvent Delegate, EWidgetAnimationEvent AnimationEvent, FNameUserTag) — Allows binding to a specific animation's event. params Animation -the animation to listen for starting or finishing. params Delegate -the delegate to call when the animation's state changes params AnimationEvent -the event to watch for. params UserTag -Scopes the delegate to only be called when the
- **OnAnimationStarted**(UWidgetAnimation *Animation) — Called when an animation is started. params Animation -the animation that started
- **OnAnimationFinished**(UWidgetAnimation *Animation) — Called when an animation has either played all the way through or is stopped params Animation -The animation that has finished playing
- **SetColorAndOpacity**(FLinearColorInColorAndOpacity) — Sets the tint of the widget, this affects all child widgets. params InColorAndOpacity -The tint to apply to all child widgets.
- **SetForegroundColor**(FSlateColorInForegroundColor) — Sets the foreground color of the widget, this is inherited by sub widgets. Any color property that is marked as inherit will use this color. params InForegroundColor -The foreground color.
- **SetPadding**(FMarginInPadding)
- **PlayAnimation**(UWidgetAnimation* InAnimation, float StartAtTime, int32 NumLoopsToPlay, EUMGSequencePlayMode :: Type PlayMode, floatPlaybackSpeed) — Plays an animation in this widget a specified number of times params InAnimation -The animation to play params StartAtTime -The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playback of the animation. params
- **PlayAnimationTo**(UWidgetAnimation* InAnimation, float StartAtTime, float EndAtTime, int32 NumLoopsToPlay, EUMGSequencePlayMode :: Type PlayMode, floatPlaybackSpeed) — Plays an animation in this widget a specified number of times stoping at a specified time params InAnimation -The animation to play params StartAtTime -The time in the animation from which to start playing, relative to the start position. For looped animations, this will only affect the first playba
- **StopAnimation**(UWidgetAnimation *InAnimation) — Stops an already running animation in this widget
- **JumpAnimation**(UWidgetAnimation* InAnimation, floatJumpAtTime) — Stop and jump to the specified time in this widget params InAnimation -The animation to jump params JumpAtTime -specified time
- **PauseAnimation**(UWidgetAnimation *InAnimation) — Pauses an already running animation in this widget return -the time point the animation was at when it was paused, relative to its start position. Use this as the StartAtTime when you trigger PlayAnimation.
- **GetAnimationCurrentTime**(UWidgetAnimation *InAnimation) — Gets the current time of the animation in this widget return -the current time of the animation.
- **IsAnimationPlaying**(UWidgetAnimation *InAnimation) — Gets whether an animation is currently playing on this widget. return -True if the animation is currently playing params InAnimation -The animation to check the playback status of
- **IsAnyAnimationPlaying**(return -True if any animation is currently playing)
- **SetNumLoopsToPlay**(UWidgetAnimation* InAnimation, int32NumLoopsToPlay) — Changes the number of loops to play given a playing animation params InAnimation -The animation that is already playing params NumLoopsToPlay -The number of loops to play. (0 to loop indefinitely)
- **SetPlaybackSpeed**(UWidgetAnimation* InAnimation, floatPlaybackSpeed) — Changes the playback rate of a playing animation params InAnimation -The animation that is already playing
- **ReverseAnimation**(UWidgetAnimation *InAnimation) — If an animation is playing, this function will reverse the playback. params InAnimation -The playing animation that we want to reverse
- **IsAnimationPlayingForward**(UWidgetAnimation *InAnimation) — returns true if the animation is currently playing forward, false otherwise. params InAnimation -The playing animation that we want to know about
- **PlaySound**(USoundBase *SoundToPlay) — Plays a sound through the UI
- **GetWidgetFromName**(FName &Name) — return - The uobject widget corresponding to a given name
- **GetVariableWidgetFromName**(FName &Name)
- **IsPlayingAnimation**(Are we currently playing any animations?)
- **NewWidgetObjectBP**(UObject* Outer, UClass *UserWidgetClass)
- **GetCacheLayerId**(return CacheLayerId only windows)
- **ListenForInputAction**(FName ActionName, TEnumAsByte < EInputEvent > EventType, bool bConsume, FOnInputActionCallback) — Listens for a particular Player Input Action by name. This requires that those actions are being executed, and that we're not currently in UI-Only Input Mode.
- **StopListeningForInputAction**(FName ActionName, TEnumAsByte < EInputEvent >EventType) — Removes the binding for a particular action's callback.
- **StopListeningForAllInputActions**(Stops listening to all input actions, and unregisters the input component with the player controller.)
- **RegisterInputComponent**(ListenForInputAction will automatically Register an Input Component with the player input system. If you however, want to Pause and Resume, listening for a set of actions, the best way is to use UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.)
- **UnregisterInputComponent**(StopListeningForAllInputActions will automatically Register an Input Component with the player input system. If you however, want to Pause and Resume, listening for a set of actions, the best way is to use UnregisterInputComponent to pause, and RegisterInputComponent to resume listening.)
- **IsListeningForInputAction**(FNameActionName) — Checks if the action has a registered callback with the input component.
- **SetInputActionPriority**(int32NewPriority)
- **SetInputActionBlocking**(boolbShouldBlock) — AddToViewport AddToPlayerScreen RemoveFromViewport GetZOrderOfViewportWidget SetPositionInViewport SetDesiredSizeInViewport SetOffsetsInViewport SetAnchorsInViewport SetAlignmentInViewport GetAnchorsInViewport GetAlignmentInViewport GetIsVisible IsInViewport GetOwningLocalPlayer SetOwningLocalPlayer

## 属性

- **color** — and opacity of this widget. Tints all child widgets. The foreground color of the widget, this is inherited by sub widgets. Any color property that is marked as inherit will use this color. The padding area around the content. All the sequence players currently playing List of sequence players to cac