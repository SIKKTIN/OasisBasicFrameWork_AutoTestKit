# UEditableTextBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEditableTextBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEditableTextBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEditableTextBox](https://developer.gp.qq.com/api/#/searchContent/UEditableTextBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEditableTextBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEditableTextBox)

类

全文搜索

Allows the user to type in custom text. Only permits a single line of text to be entered. No Children Text Entry

---


## 函数

- **TextGetText**(Provide a alternative mechanism for error reporting.)
- **SetText**(FTextInText)
- **SetHintText**(FTextInText)
- **SetError**(FTextInError)
- **SetIsReadOnly**(boolbReadOnly)
- **ClearError**()
- **HasError**(GetText SetText SetHintText SetError SetIsReadOnly ClearError HasError)

## 属性

- **text** — content for this editable text box widget A bindable delegate to allow logic to drive the text of the widget The style USlateWidgetStyleAsset *Style_DEPRECATED Style used for the text box Hint text that appears when there is no text in the text box A bindable delegate to allow logic to drive the hin

## 委托

- voidOnTextChanged(const FText&Text)
- Called whenever the text is changed interactively by the user
- voidOnTextCommitted(const FText&Text, ETextCommit::TypeCommitMethod)
- Called whenever the text is committed. This happens when the user presses enter or the text box loses focus.
- OnTextChanged
- OnTextCommitted