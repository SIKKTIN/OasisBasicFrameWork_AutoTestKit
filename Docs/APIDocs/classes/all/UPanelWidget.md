# UPanelWidget

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPanelWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPanelWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPanelWidget](https://developer.gp.qq.com/api/#/searchContent/UPanelWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPanelWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPanelWidget)

类

全文搜索

The base class for all UMG panel widgets. Panel widgets layout a collection of child widgets.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| int32 | **GetChildrenCount** |  | Gets number of child widgets in the container. |
| UWidget * | **GetChildAt** | int32Index | Gets the widget at an index. return -The widget at the given index, or nothing if there is no widget there. params Index -The index of the widget. |
| int32 | **GetChildIndex** | UWidget *Content | Gets the index of a specific child widget |
| bool | **HasChild** | UWidget *Content | return -true if panel contains this widget |
| bool | **RemoveChildAt** | int32Index | Removes a child by it's index. |
| UPanelSlot * | **AddChild** | UWidget *Content | Adds a new child widget to the container. Returns the base slot type, requires casting to turn it into the type specific to the container. |
| UPanelSlot * | **InsertChildAtIndex** | int32 Index, UWidget *Content | Insert a widget at a specific index, available in game. |
| void | **ShiftChildToIndex** | int32 Index, UWidget *Child | Moves the child widget from its current index to the new index provided, available in game. |
| bool | **RemoveChild** | UWidget *Content | Removes a specific widget from the container. return -true if the widget was found and removed. |
| bool | **HasAnyChildren** |  | return -true if there are any child widgets in the panel |
| void | **ClearChildren** |  | Remove all child widgets from the panel widget. GetChildrenCount GetChildAt GetChildIndex HasChild RemoveChildAt AddChild InsertChildAtIndex ShiftChildToIndex RemoveChild HasAnyChildren ClearChildren |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **slots** | in the widget holding the child widgets of this panel. Slots CachedContents_ForGC |

