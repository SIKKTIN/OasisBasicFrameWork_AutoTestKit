# UWidgetSwitcher

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetSwitcher?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetSwitcher.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetSwitcher](https://developer.gp.qq.com/api/#/searchContent/UWidgetSwitcher?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetSwitcher.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetSwitcher)

类

全文搜索

A widget switcher is like a tab control, but without tabs. At most one widget is visible at time.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| int32 | **GetNumWidgets** |  | Gets the number of widgets that this switcher manages. |
| int32 | **GetActiveWidgetIndex** |  | Gets the slot index of the currently active widget |
| int32 | **GetLocalActiveWidgetIndex** |  |  |
| void | **SetActiveWidgetIndex** | int32Index | Activates the widget at the specified index. |
| void | **SetActiveWidget** | UWidget *Widget | Activates the widget and makes it the active index. |
| UWidget * | **GetWidgetAtIndex** | int32Index | Get a widget at the provided index |
| UWidget * | **GetActiveWidget** |  | Get the reference of the currently active widget GetNumWidgets GetActiveWidgetIndex GetLocalActiveWidgetIndex SetActiveWidgetIndex SetActiveWidget GetWidgetAtIndex GetActiveWidget |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **slot** | index to display ActiveWidgetIndex bHideInactiveWidgets ActiveWidgetIndexDelegate |

## 委托

- voidOnActiveIndexChanged(int32WidgetIndex)
- voidOnActiveIndexChangeDelegate(int32Percent)
- OnActiveIndexChanged
- OnActiveIndexChangeDelegate

