# UInputKeySelector

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInputKeySelector?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputKeySelector.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputKeySelector](https://developer.gp.qq.com/api/#/searchContent/UInputKeySelector?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputKeySelector.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputKeySelector)

类

全文搜索

A widget for selecting a single key or a single key with a modifier.

---


## 函数

- **SetSelectedKey**(FInputChord &InSelectedKey) — Sets the currently selected key.
- **SetKeySelectionText**(FTextInKeySelectionText) — Sets the text which is displayed while selecting keys.
- **SetNoKeySpecifiedText**(FTextInNoKeySpecifiedText) — Sets the text to display when no key text is available or not selecting a key.
- **SetAllowModifierKeys**(boolbInAllowModifierKeys) — Sets whether or not modifier keys are allowed in the selected key.
- **SetAllowGamepadKeys**(boolbInAllowGamepadKeys) — Sets whether or not gamepad keys are allowed in the selected key.
- **GetIsSelectingKey**(Returns true if the widget is currently selecting a key, otherwise returns false.)
- **SetTextBlockVisibility**(ESlateVisibilityInVisibility) — Sets the visibility of the text block. SetSelectedKey SetKeySelectionText SetNoKeySpecifiedText SetAllowModifierKeys SetAllowGamepadKeys GetIsSelectingKey SetTextBlockVisibility

## 属性

- **button** — style used at runtime The button style used at runtime The currently selected key chord. The amount of blank space around the text used to display the currently selected key. Sets the text which is displayed while selecting keys. Sets the text to display when no key text is available or not selectin

## 委托

- voidOnKeySelected(FInputChordSelectedKey)
- Called whenever a new key is selected by the user.
- voidOnIsSelectingKeyChanged()
- Called whenever the key selection mode starts or stops.
- OnKeySelected
- OnIsSelectingKeyChanged