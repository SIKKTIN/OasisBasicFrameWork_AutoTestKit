# UMultiLineEditableTextBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMultiLineEditableTextBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMultiLineEditableTextBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMultiLineEditableTextBox](https://developer.gp.qq.com/api/#/searchContent/UMultiLineEditableTextBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMultiLineEditableTextBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMultiLineEditableTextBox)

类

全文搜索

Allows a user to enter multiple lines of text

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| F | **TextGetText** |  | Provide a alternative mechanism for error reporting. |
| void | **SetText** | FTextInText |  |
| void | **SetHintText** | FTextInText |  |
| void | **SetError** | FTextInError |  |
| void | **SetIsReadOnly** | boolbReadOnly |  |
| void | **SetIsEnableMultiLineTextInsertNewLine** | boolbEnable | GetText SetText SetHintText SetError SetIsReadOnly SetIsEnableMultiLineTextInsertNewLine |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **text** | content for this editable text box widget Hint text that appears when there is no text in the text box A bindable delegate to allow logic to drive the hint text of the widget The style The text style Sets whether this text block can be modified interactively by the user Whether the context menu can  |

## 委托

- voidOnTextChanged(const FText&Text)
- Called whenever the text is changed interactively by the user
- voidOnTextCommitted(const FText&Text, ETextCommit::TypeCommitMethod)
- Called whenever the text is committed. This happens when the user presses enter or the text box loses focus.
- OnTextChanged
- OnTextCommitted

