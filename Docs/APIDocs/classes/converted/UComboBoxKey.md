# UComboBoxKey

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UComboBoxKey?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUComboBoxKey.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UComboBoxKey](https://developer.gp.qq.com/api/#/searchContent/UComboBoxKey?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUComboBoxKey.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UComboBoxKey)

类

全文搜索

The combobox allows you to display a list of options to the user in a dropdown menu for them to select one. Use OnGenerateConentWidgetEvent to return a custom built widget.

---


## 函数

- **AddOption**(FNameOption) — Add an element to the option list.
- **RemoveOption**(FNameOption) — Remove an element to the option list.
- **ClearOptions**(Remove all the elements of the option list.)
- **ClearSelection**(Clear the current selection.)
- **SetSelectedOption**(FNameOption) — Set the current selected option.
- **FNameGetSelectedOption**(Get the current selected option)
- **IsOpen**(Is the combobox menu opened.)
- **SetContentPadding**(FMarginInPadding) — Set the padding for content.
- **FMarginGetContentPadding**(Get the padding for content.)
- **IsEnableGamepadNavigationMode**(Is the combobox navigated by gamepad.)
- **SetEnableGamepadNavigationMode**(boolInEnableGamepadNavigationMode) — Set whether the combobox is navigated by gamepad.
- **IsHasDownArrow**(Is the combobox arrow showing.)
- **SetHasDownArrow**(boolInHasDownArrow) — Set whether the combobox arrow is showing.
- **GetMaxListHeight**(Get the maximum height of the combobox list.)
- **SetMaxListHeight**(floatInMaxHeight) — Set the maximum height of the combobox list.
- **GetWidgetStyle**(Get the style of the combobox.)
- **SetWidgetStyle**(FComboBoxStyle &InWidgetStyle) — Set the style of the combobox.
- **GetItemStyle**(Get the style of the items.)
- **SetItemStyle**(FTableRowStyle &InItemStyle) — Set the style of the items.
- **GetScrollBarStyle**(Get the style of the scrollbar.)
- **IsFocusable**(Is the combobox focusable.)
- **FSlateColorGetForegroundColor**(Get the foreground color of the button. AddOption RemoveOption ClearOptions ClearSelection SetSelectedOption GetSelectedOption IsOpen SetContentPadding GetContentPadding IsEnableGamepadNavigationMode SetEnableGamepadNavigationMode IsHasDownArrow SetHasDownArrow GetMaxListHeight SetMaxListHeight GetW)

## 属性

- **combobox** — style. The item row style. The scroll bar style. The foreground color to pass through the hierarchy. The max height of the combobox list that opens When false, the down arrow is not generated and it is up to the API consumer to make their own visual hint that this is a drop down. When false, directi

## 委托

- UWidget*OnGenerateContentWidget(FNameItem)
- Called when the widget is needed for the content.
- UWidget*OnGenerateItemWidget(FNameItem)
- Called when the widget is needed for the item.
- voidOnSelectionChanged(FNameSelectedItem, ESelectInfo::TypeSelectionType)
- Called when a new item is selected in the combobox.
- voidOnOpening()
- Called when the combobox is opening
- OnGenerateContentWidget
- OnGenerateItemWidget
- OnSelectionChanged
- OnOpening