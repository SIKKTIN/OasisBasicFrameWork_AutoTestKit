# UMultiLineEditableText

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMultiLineEditableText?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMultiLineEditableText.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMultiLineEditableText](https://developer.gp.qq.com/api/#/searchContent/UMultiLineEditableText?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMultiLineEditableText.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMultiLineEditableText)

类

全文搜索

Editable text box widget

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| F | **TextGetText** |  |  |
| void | **SetText** | FTextInText |  |
| void | **SetHintText** | FTextInHintText |  |
| void | **SetIsReadOnly** | boolbReadOnly |  |
| void | **SetWidgetStyle** | FTextBlockStyle &InWidgetStyle |  |
| void | **SetModiferKeyForNewLine** | boolbReadOnly |  |
| void | **SetWrapTextAt** | floatInWrapTextAt |  |
| void | **SetFont** | FSlateFontInfoInFontInfo |  |
| void | **SetColorAndOpacity** | FSlateColorColor | GetText SetText SetHintText SetIsReadOnly SetWidgetStyle SetModiferKeyForNewLine SetWrapTextAt SetFont SetColorAndOpacity |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **text** | content for this editable text box widget Hint text that appears when there is no text in the text box A bindable delegate to allow logic to drive the hint text of the widget The style Sets whether this text block can be modified interactively by the user Font color and opacity (overrides Style) Whe |

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
- Called when editable text received focus
- OnTextChanged
- OnTextCommitted
- OnTextBeginEditTransation
- OnTextEndEditTransaction
- OnTextFocusReceived

