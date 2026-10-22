# UEditableText

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEditableText?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEditableText.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEditableText](https://developer.gp.qq.com/api/#/searchContent/UEditableText?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEditableText.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEditableText)

类

全文搜索

Editable text box widget

---


## 函数

- **TextGetText**(Gets the widget text return -The widget text)
- **SetText**(FTextInText) — Directly sets the widget text. Warning: This will wipe any binding created for the Text property! params InText -The text to assign to the widget
- **SetIsPassword**(boolInbIsPassword)
- **SetHintText**(FTextInHintText)
- **SetIsReadOnly**(boolInbIsReadyOnly)
- **SetFont**(FSlateFontInfoFont)
- **SetColorAndOpacity**(FSlateColorColor) — GetText SetText SetIsPassword SetHintText SetIsReadOnly SetFont SetColorAndOpacity

## 属性

- **text** — content for this editable text box widget A bindable delegate to allow logic to drive the text of the widget Hint text that appears when there is no text in the text box A bindable delegate to allow logic to drive the hint text of the widget The style USlateWidgetStyleAsset *Style_DEPRECATED Text st

## 委托

- voidOnTextChanged(const FText&Text)
- Called whenever the text is changed interactively by the user
- voidOnTextCommitted(const FText&Text, ETextCommit::TypeCommitMethod)
- Called whenever the text is committed. This happens when the user presses enter or the text box loses focus.
- voidOnTextBeginEditTransation()
- Called to begin an undoable editable text transaction
- voidOnTextEndEditTransaction(const FText&Text)
- Called to end an undoable editable text transaction
- voidOnTextFocusReceived()
- OnTextChanged
- OnTextCommitted
- OnTextBeginEditTransation
- OnTextEndEditTransaction
- OnTextFocusReceived