# UWidgetAnimation

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetAnimation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetAnimation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetAnimation](https://developer.gp.qq.com/api/#/searchContent/UWidgetAnimation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetAnimation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetAnimation)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| UMG_API float | **GetStartTime** |  | Get the start time of this animation. return -Start time in seconds. |
| UMG_API float | **GetEndTime** |  | Get the end time of this animation. return -End time in seconds. |
| void | **BindToAnimationStarted** | UUserWidget * Widget, FWidgetAnimationDynamicEventDelegate |  |
| void | **UnbindFromAnimationStarted** | UUserWidget * Widget, FWidgetAnimationDynamicEventDelegate |  |
| void | **UnbindAllFromAnimationStarted** | UUserWidget *Widget |  |
| void | **BindToAnimationFinished** | UUserWidget * Widget, FWidgetAnimationDynamicEventDelegate |  |
| void | **UnbindFromAnimationFinished** | UUserWidget * Widget, FWidgetAnimationDynamicEventDelegate |  |
| void | **UnbindAllFromAnimationFinished** | UUserWidget *Widget | GetStartTime GetEndTime BindToAnimationStarted UnbindFromAnimationStarted UnbindAllFromAnimationStarted BindToAnimationFinished UnbindFromAnimationFinished UnbindAllFromAnimationFinished |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Pointer | **to** | the movie scene that controls this animation. MovieScene AnimationBindings |

## 委托

- voidOnAnimationStarted()
- Fires when the widget animation starts playing. compatible for lua, to be deleted
- voidOnAnimationFinished()
- Fires when the widget animation is finished. compatible for lua, to be deleted
- OnAnimationStarted
- OnAnimationFinished

