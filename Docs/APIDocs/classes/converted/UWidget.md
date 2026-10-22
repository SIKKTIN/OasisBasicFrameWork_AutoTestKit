# UWidget

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