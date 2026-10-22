# UButton

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UButton?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUButton.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UButton](https://developer.gp.qq.com/api/#/searchContent/UButton?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUButton.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UButton)

类

全文搜索

The button is a click-able primitive widget to enable basic interaction, you can place any other widget inside a button to make a more complex and interesting click-able element in your UI. Single Child Clickable

---


## 函数

- **SetStyle**(FButtonStyle &InStyle) — Sets the color multiplier for the button background
- **SetColorAndOpacity**(FLinearColorInColorAndOpacity) — Sets the color multiplier for the button content
- **SetBackgroundColor**(FLinearColorInBackgroundColor) — Sets the color multiplier for the button background
- **IsPressed**(Returns true if the user is actively pressing the button. Do not use this for detecting 'Clicks', use the OnClicked event instead. return -true if the user is actively pressing the button otherwise false.)
- **Release**()
- **SetClickMethod**(EButtonClickMethod :: TypeInClickMethod)
- **SetTouchMethod**(EButtonTouchMethod :: TypeInTouchMethod)
- **GetReleasedReason**()
- **SetListenEscMethod**(EListenEscMethod :: TypeInListenEscMethod)
- **TypeGetListenEscMethod**()
- **SetShowHover**(boolInShowHover)
- **AddListenAction**(FName InActionName, EButtonListenActionEvent :: TypeInType)
- **RemoveListenAction**(FNameInActionName)
- **ClearListenActions**()
- **GetCacheLayerId**(return CacheLayerId only windows)
- **RespondEscape**()
- **GetButtonsFromAction**(TArray < UButton* >& OutButtons, FNameInAction)
- **ClearInvalidForListenActions**()
- **GetButtonsFromTipsBg**()
- **SetButtonClickedGlobalEvent**(FOnButtonClickedGlobalEventInEvent)
- **ClearButtonClickedGlobalEvent**()
- **SetIsFocusable**(boolInFocusable) — SetStyle SetColorAndOpacity SetBackgroundColor IsPressed Release SetClickMethod SetTouchMethod GetReleasedReason SetListenEscMethod GetListenEscMethod SetShowHover AddListenAction RemoveListenAction ClearListenActions GetCacheLayerId RespondEscape GetButtonsFromAction ClearInvalidForListenActions Ge

## 属性

- **template** — style asset, used to seed the mutable instance of the style. The button style used at runtime The color multiplier for the button content The color multiplier for the button background The type of mouse action required by the user to trigger the buttons 'Click' The type of touch action required by t

## 委托

- voidOnClicked()
- Called when the button is clicked
- voidOnPressed()
- Called when the button is pressed
- voidOnReleased()
- Called when the button is released
- voidOnHovered()
- voidOnUnhovered()
- voidOnPressedParam(FGeometryMyGeometry, const FPointerEvent&MouseEvent)
- voidOnReleasedParam(FGeometryMyGeometry, const FPointerEvent&MouseEvent)
- voidOnReplayRecordNotify(int32EventIndex)
- OnClicked
- OnPressed
- OnReleased
- OnHovered
- OnUnhovered
- OnPressedParam
- OnReleasedParam
- OnReplayRecordNotify