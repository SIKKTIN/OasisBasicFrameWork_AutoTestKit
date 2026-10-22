# UWidgetAnimation

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