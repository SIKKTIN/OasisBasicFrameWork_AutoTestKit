# UCanvasPanelSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCanvasPanelSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvasPanelSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvasPanelSlot](https://developer.gp.qq.com/api/#/searchContent/UCanvasPanelSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvasPanelSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvasPanelSlot)

类

全文搜索

---


## 函数

- **SetLayout**(FAnchorData &InLayoutData) — Sets the layout data of the slot
- **AnchorDataGetLayout**(Gets the layout data of the slot)
- **SetPosition**(FVector2DInPosition) — Sets the position of the slot
- **Vector2DGetPosition**(Gets the position of the slot)
- **SetSize**(FVector2DInSize) — Sets the size of the slot
- **Vector2DGetSize**(Gets the size of the slot)
- **SetOffsets**(FMarginInOffset) — Sets the offset data of the slot, which could be position and size, or margins depending on the anchor points
- **MarginGetOffsets**(Gets the offset data of the slot, which could be position and size, or margins depending on the anchor points)
- **SetAnchors**(FAnchorsInAnchors) — Sets the anchors on the slot
- **AnchorsGetAnchors**(Gets the anchors on the slot)
- **SetAlignment**(FVector2DInAlignment) — Sets the alignment on the slot
- **Vector2DGetAlignment**(Gets the alignment on the slot)
- **SetAutoSize**(boolInbAutoSize) — Sets if the slot to be auto-sized
- **GetAutoSize**(Gets if the slot to be auto-sized)
- **SetZOrder**(int32InZOrder) — Sets the z-order on the slot
- **GetZOrder**(Gets the z-order on the slot)
- **SetAntiAdaptation**(boolInbAntiAdaptation) — Sets the bAntiAdaptation on the slot
- **GetAntiAdaptation**(Gets the bAntiAdaptation on the slot)
- **SetMinimum**(FVector2DInMinimumAnchors) — Sets the anchors on the slot
- **SetMaximum**(FVector2DInMaximumAnchors) — Sets the anchors on the slot
- **OnAntiAdaptationOffsetsChange**(SetLayout GetLayout SetPosition GetPosition SetSize GetSize SetOffsets GetOffsets SetAnchors GetAnchors SetAlignment GetAlignment SetAutoSize GetAutoSize SetZOrder GetZOrder SetAntiAdaptation GetAntiAdaptation SetMinimum SetMaximum OnAntiAdaptationOffsetsChange)

## 属性

- **anchoring** — information for the slot When AutoSize is true we use the widget's desired size The order priority this widget is rendered in. Higher values are rendered last (and so they will appear to be on top). LayoutData bAutoSize ZOrder bAntiAdaptation