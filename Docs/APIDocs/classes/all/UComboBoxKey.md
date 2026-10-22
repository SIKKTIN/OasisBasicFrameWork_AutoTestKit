# UComboBoxKey

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UComboBoxKey?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUComboBoxKey.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UComboBoxKey](https://developer.gp.qq.com/api/#/searchContent/UComboBoxKey?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUComboBoxKey.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UComboBoxKey)

类

全文搜索

The combobox allows you to display a list of options to the user in a dropdown menu for them to select one. Use OnGenerateConentWidgetEvent to return a custom built widget.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| UMG_API void | **AddOption** | FNameOption | Add an element to the option list. |
| UMG_API bool | **RemoveOption** | FNameOption | Remove an element to the option list. |
| UMG_API void | **ClearOptions** |  | Remove all the elements of the option list. |
| UMG_API void | **ClearSelection** |  | Clear the current selection. |
| UMG_API void | **SetSelectedOption** | FNameOption | Set the current selected option. |
| UMG_API | **FNameGetSelectedOption** |  | Get the current selected option |
| UMG_API bool | **IsOpen** |  | Is the combobox menu opened. |
| UMG_API void | **SetContentPadding** | FMarginInPadding | Set the padding for content. |
| UMG_API | **FMarginGetContentPadding** |  | Get the padding for content. |
| UMG_API bool | **IsEnableGamepadNavigationMode** |  | Is the combobox navigated by gamepad. |
| UMG_API void | **SetEnableGamepadNavigationMode** | boolInEnableGamepadNavigationMode | Set whether the combobox is navigated by gamepad. |
| UMG_API bool | **IsHasDownArrow** |  | Is the combobox arrow showing. |
| UMG_API void | **SetHasDownArrow** | boolInHasDownArrow | Set whether the combobox arrow is showing. |
| UMG_API float | **GetMaxListHeight** |  | Get the maximum height of the combobox list. |
| UMG_API void | **SetMaxListHeight** | floatInMaxHeight | Set the maximum height of the combobox list. |
| const UMG_API FComboBoxStyle & | **GetWidgetStyle** |  | Get the style of the combobox. |
| UMG_API void | **SetWidgetStyle** | FComboBoxStyle &InWidgetStyle | Set the style of the combobox. |
| const UMG_API FTableRowStyle & | **GetItemStyle** |  | Get the style of the items. |
| UMG_API void | **SetItemStyle** | FTableRowStyle &InItemStyle | Set the style of the items. |
| const UMG_API FScrollBarStyle & | **GetScrollBarStyle** |  | Get the style of the scrollbar. |
| UMG_API bool | **IsFocusable** |  | Is the combobox focusable. |
| UMG_API | **FSlateColorGetForegroundColor** |  | Get the foreground color of the button. AddOption RemoveOption ClearOptions ClearSelection SetSelectedOption GetSelectedOption IsOpen SetContentPadding GetContentPadding IsEnableGamepadNavigationMode SetEnableGamepadNavigationMode IsHasDownArrow SetHasDownArrow GetMaxListHeight SetMaxListHeight GetW |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **combobox** | style. The item row style. The scroll bar style. The foreground color to pass through the hierarchy. The max height of the combobox list that opens When false, the down arrow is not generated and it is up to the API consumer to make their own visual hint that this is a drop down. When false, directi |

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

