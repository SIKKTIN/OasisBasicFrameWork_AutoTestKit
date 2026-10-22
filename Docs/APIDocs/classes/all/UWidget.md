# UWidget

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidget](https://developer.gp.qq.com/api/#/searchContent/UWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidget)

类

全文搜索

This is the base class for all wrapped Slate controls that are exposed to UObjects.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetRenderTransform** | FWidgetTransformInTransform |  |
| void | **SetRenderScale** | FVector2DScale |  |
| void | **SetRenderShear** | FVector2DShear |  |
| void | **SetRenderAngle** | floatAngle |  |
| void | **SetRenderTranslation** | FVector2DTranslation |  |
| void | **SetRenderTransformPivot** | FVector2DPivot |  |
| bool | **GetIsEnabled** |  | Gets the current enabled status of the widget |
| void | **SetIsEnabled** | boolbInIsEnabled | Sets the current enabled status of the widget |
| void | **SetToolTipText** | FText &InToolTipText | Sets the tooltip text for the widget. |
| void | **SetToolTip** | UWidget *Widget | Sets a custom widget as the tooltip of the widget. |
| void | **SetCursor** | EMouseCursor :: TypeInCursor | Sets the cursor to show over the widget. |
| void | **ResetCursor** |  | Resets the cursor to use on the widget, removing any customization for it. |
| bool | **IsVisible** |  | return -true if the widget is Visible, HitTestInvisible or SelfHitTestInvisible. |
| E | **SlateVisibilityGetVisibility** |  | Gets the current visibility of the widget. |
| E | **SlateVisibilityGetUVisibility** |  |  |
| void | **SetLocalVisibility** | ESlateVisibility OldVisibility, ESlateVisibility NewVisibility, UWidget *Widget |  |
| void | **SetLocalVisibilityWithoutPCUIStyle** | ESlateVisibility OldVisibility, ESlateVisibility NewVisibility, UWidget *Widget |  |
| E | **SlateVisibilityGetPCVisibility** |  |  |
| bool | **IsPCVisible** |  |  |
| void | **SetVisibility** | ESlateVisibilityInVisibility | Sets the visibility of the widget. |
| void | **SetAdvancedCollapsed** | boolIsAdvancedCollapsed |  |
| float | **GetRenderOpacity** |  | Gets the current visibility of the widget. |
| void | **SetRenderOpacity** | floatInOpacity | Sets the visibility of the widget. |
| E | **WidgetClippingGetClipping** |  | Gets the clipping state of this widget. |
| void | **SetClipping** | EWidgetClippingInClipping | Sets the clipping state of this widget. |
| void | **ForceVolatile** | boolbForce | Sets the forced volatility of the widget. |
| bool | **IsVolatile** |  |  |
| bool | **IsHovered** |  | return -true if the widget is currently being hovered by a pointer device |
| void | **SetWriteSceneZBuffer** | boolbInWriteSceneZBuffer |  |
| bool | **HasKeyboardFocus** |  | Checks to see if this widget currently has the keyboard focus return - True if this widget has keyboard focus |
| bool | **HasMouseCapture** |  | Checks to see if this widget is the current mouse captor return - True if this widget has captured the mouse |
| void | **SetKeyboardFocus** |  | Sets the focus to this widget. |
| bool | **HasUserFocus** | APlayerController *PlayerController | return -true if this widget is focused by a specific user. |
| bool | **HasAnyUserFocus** |  | return -true if this widget is focused by any user. |
| bool | **HasFocusedDescendants** |  | return -true if any descendant widget is focused by any user. |
| bool | **HasUserFocusedDescendants** | APlayerController *PlayerController | return -true if any descendant widget is focused by a specific user. |
| void | **SetUserFocus** | APlayerController *PlayerController | Sets the focus to this widget for a specific user |
| void | **ForceLayoutPrepass** |  | Forces a pre-pass. A pre-pass caches the desired size of the widget hierarchy owned by this widget. One pre-pass is already happens for every widget before Tick occurs. You only need to perform another pre-pass if you are adding child widgets this frame and want them to immediately be visible this f |
| void | **InvalidateLayoutAndVolatility** |  | Invalidates the widget from the view of a layout caching widget that may own this widget. will force the owning widget to redraw and cache children on the next paint pass. |
| F | **Vector2DGetDesiredSize** |  | Gets the widgets desired size. NOTE: The underlying Slate widget must exist and be valid, also at least one pre-pass must have occurred before this value will be of any use. return -The widget's desired size |
| void | **SetAllNavigationRules** | EUINavigationRule Rule, FNameWidgetToFocus | Sets the widget navigation rules for all directions. This can only be called on widgets that are in a widget tree. params Rule -The rule to use when navigation is taking place params WidgetToFocus -When using the Explicit rule, focus on this widget |
| void | **SetNavigationRule** | EUINavigation Direction, EUINavigationRule Rule, FNameWidgetToFocus | Sets the widget navigation rules for a specific direction. This can only be called on widgets that are in a widget tree. params Rule -The rule to use when navigation is taking place params WidgetToFocus -When using the Explicit rule, focus on this widget |
| UPanelWidget * | **GetParent** |  | Gets the parent widget |
| void | **RemoveFromParent** |  | Removes the widget from its parent widget. If this widget was added to the player's screen or the viewport it will also be removed from those containers. |
| const FGeometry & | **GetCachedGeometry** |  | Gets the last geometry used to Tick the widget. This data may not exist yet if this call happens prior to the widget having been tickedpainted, or it may be out of date, or a frame behind. We recommend not to use this data unless there's no other way to solve your problem. Normally in Slate we try a |
| const FGeometry & | **GetCachedAllottedGeometry** |  |  |
| void | **SetIgnorePixelSnapping** | boolIgnore |  |
| APlayerController * | **GetOwningPlayer** |  | Gets the player controller associated with this UI. return -The player controller that owns the UI. |
| void | **AddAdvancedCollapsedCount** | uint8Num |  |
| void | **SubAdvancedCollapsedCount** | uint8Num |  |
| F | **StringGetWidgetOutlineName** |  |  |
| bool | **IsCachedWidgetValid** |  | SetRenderTransform SetRenderScale SetRenderShear SetRenderAngle SetRenderTranslation SetRenderTransformPivot GetIsEnabled SetIsEnabled SetToolTipText SetToolTip SetCursor ResetCursor IsVisible GetVisibility GetUVisibility SetLocalVisibility SetLocalVisibilityWithoutPCUIStyle GetPCVisibility IsPCVisi |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **parent** | slot of the UWidget. Allows us to easily inline edit the layout controlling this widget. UPanelWidget *CachedPanel_ForGC Tooltip text to show when the user hovers over the widget with the mouse UWidget *ToolTipWidget Tooltip widget to show when the user hovers over the widget with the mouse The rend |

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

