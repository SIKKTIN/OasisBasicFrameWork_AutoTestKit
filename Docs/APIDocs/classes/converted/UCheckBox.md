# UCheckBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCheckBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCheckBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCheckBox](https://developer.gp.qq.com/api/#/searchContent/UCheckBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCheckBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCheckBox)

类

全文搜索

The checkbox widget allows you to display a toggled state of 'unchecked', 'checked' and 'indeterminable. You can use the checkbox for a classic checkbox, or as a toggle button, or as radio buttons. Single Child Toggle

---


## 函数

- **IsPressed**(Returns true if this button is currently pressed)
- **IsChecked**(Returns true if the checkbox is currently checked)
- **CheckBoxStateGetCheckedState**(return -the full current checked state.)
- **SetIsChecked**(boolInIsChecked) — Sets the checked state.
- **SetCheckedState**(ECheckBoxStateInCheckedState) — Sets the checked state. IsPressed IsChecked GetCheckedState SetIsChecked SetCheckedState

## 属性

- **the** — check box is currently in a checked state A bindable delegate for the IsChecked. The checkbox bar style USlateWidgetStyleAsset *Style_DEPRECATED Style of the check box USlateBrushAsset *UncheckedImage_DEPRECATED Image to use when the checkbox is unchecked USlateBrushAsset *UncheckedHoveredImage_DEPR

## 委托

- voidOnCheckStateChanged(boolbIsChecked)
- Called when the checked state has changed
- OnCheckStateChanged