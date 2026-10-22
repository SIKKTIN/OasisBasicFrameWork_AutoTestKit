# UGCCommonDragDropItem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCCommonDragDropItem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCCommonDragDropItem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCommonDragDropItem](https://developer.gp.qq.com/api/#/searchContent/UGCCommonDragDropItem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCCommonDragDropItem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCommonDragDropItem)

类

全文搜索

拖拽控件

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Set | **DragWidget** | UUserWidget|ClassWidget, booleanbCreate | 设置拖拽时的控件 params Widget -拖拽时的控件实例 或 类 params bCreate -是否创建控件，传入Class则创建控件实例 |
| Set | **DragDirectionMode** | EDragDirectionModeDirectionMode | 设置拖拽方向模式 params DirectionMode -拖拽方向模式 |
| Set | **DragDropMode** | EDragDropModeDragDropMode | 设置拖拽模式 params DragDropMode -拖拽模式 |
| Register | **DragDropData** | tableDragDropData, EDragDropModeDragDropMode | 注册拖拽(入口) params DragDropData -拖拽数据 params DragDropMode -拖拽模式 |
| Set | **Data** | tableData | 设置拖拽数据 params Data -拖拽数据 SetDragWidget SetDragDirectionMode SetDragDropMode RegisterDragDropData SetData |

