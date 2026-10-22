# UComboBoxString

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UComboBoxString?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUComboBoxString.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UComboBoxString](https://developer.gp.qq.com/api/#/searchContent/UComboBoxString?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUComboBoxString.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UComboBoxString)

类

全文搜索

The combobox allows you to display a list of options to the user in a dropdown menu for them to select one.

---


## 函数

- **AddOption**(FString &Option)
- **RemoveOption**(FString &Option)
- **FindOptionIndex**(FString &Option)
- **StringGetOptionAtIndex**(int32Index)
- **ClearOptions**()
- **ClearSelection**()
- **RefreshOptions**(Refreshes the list of options. If you added new ones, and want to update the list even if it's currently being displayed use this.)
- **SetSelectedOption**(FStringOption)
- **StringGetSelectedOption**()
- **GetOptionCount**(return -The number of options AddOption RemoveOption FindOptionIndex GetOptionAtIndex ClearOptions ClearSelection RefreshOptions SetSelectedOption GetSelectedOption GetOptionCount)

## 属性

- **default** — list of items to be displayed on the combobox. The item in the combobox to select by default The style. The item row style. The scroll bar style. The max height of the combobox list that opens When false, the down arrow is not generated and it is up to the API consumer to make their own visual hint

## 委托

- voidOnSelectionChanged(FStringSelectedItem, ESelectInfo::TypeSelectionType)
- Called when a new item is selected in the combobox.
- voidOnOpening()
- Called when the combobox is opening
- voidOnClosing()
- Called when the combobox is closing
- OnSelectionChanged
- OnOpening
- OnClosing