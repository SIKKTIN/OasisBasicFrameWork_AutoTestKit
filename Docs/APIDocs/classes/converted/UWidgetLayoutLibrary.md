# UWidgetLayoutLibrary

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