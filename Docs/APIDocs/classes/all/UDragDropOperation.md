# UDragDropOperation

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDragDropOperation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDragDropOperation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDragDropOperation](https://developer.gp.qq.com/api/#/searchContent/UDragDropOperation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDragDropOperation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDragDropOperation)

类

全文搜索

This class is the base drag drop operation for UMG, extend it to add additional data and add new functionality.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **Drop** | FPointerEvent &PointerEvent |  |
| void | **DragCancelled** | FPointerEvent &PointerEvent |  |
| void | **Dragged** | FPointerEvent &PointerEvent | Drop DragCancelled Dragged |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| A | **simple** | string tag you can optionally use to provide extra metadata about the operation. The payload of the drag operation. This can be any UObject that you want to pass along as dragged data. If you were building an inventory screen this would be the UObject representing the item being moved to another slo |

## 委托

- voidOnDrop(UDragDropOperation*Operation)
- voidOnDragCancelled(UDragDropOperation*Operation)
- voidOnDragged(UDragDropOperation*Operation)
- OnDrop
- OnDragCancelled
- OnDragged

