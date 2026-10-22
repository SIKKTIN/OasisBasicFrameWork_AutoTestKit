# UWidgetBlueprintLibrary

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