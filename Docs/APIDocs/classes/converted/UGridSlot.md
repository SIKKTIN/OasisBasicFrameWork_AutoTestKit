# UGridSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGridSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridSlot](https://developer.gp.qq.com/api/#/searchContent/UGridSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridSlot)

类

全文搜索

A slot for UGridPanel, these slots all share the same size as the largest slot in the grid.

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetRow**(int32InRow) — Sets the row index of the slot, this determines what cell the slot is in the panel
- **SetRowSpan**(int32InRowSpan) — How many rows this this slot spans over
- **SetColumn**(int32InColumn) — Sets the column index of the slot, this determines what cell the slot is in the panel
- **SetColumnSpan**(int32InColumnSpan) — How many columns this slot spans over
- **SetLayer**(int32InLayer) — Sets positive values offset this cell to be hit-tested and drawn on top of others.
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment) — SetPadding SetRow SetRowSpan SetColumn SetColumnSpan SetLayer SetHorizontalAlignment SetVerticalAlignment

## 属性

- **padding** — area between the slot and the content it contains. The alignment of the object horizontally. The alignment of the object vertically. The row index of the cell this slot is in The column index of the cell this slot is in Positive values offset this cell to be hit-tested and drawn on top of others. De