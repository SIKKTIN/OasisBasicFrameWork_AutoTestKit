# UWidgetComponent

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