# UCanvasPanelSlot

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCanvasPanelSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvasPanelSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvasPanelSlot](https://developer.gp.qq.com/api/#/searchContent/UCanvasPanelSlot?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvasPanelSlot.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvasPanelSlot)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetLayout** | FAnchorData &InLayoutData | Sets the layout data of the slot |
| F | **AnchorDataGetLayout** |  | Gets the layout data of the slot |
| void | **SetPosition** | FVector2DInPosition | Sets the position of the slot |
| F | **Vector2DGetPosition** |  | Gets the position of the slot |
| void | **SetSize** | FVector2DInSize | Sets the size of the slot |
| F | **Vector2DGetSize** |  | Gets the size of the slot |
| void | **SetOffsets** | FMarginInOffset | Sets the offset data of the slot, which could be position and size, or margins depending on the anchor points |
| F | **MarginGetOffsets** |  | Gets the offset data of the slot, which could be position and size, or margins depending on the anchor points |
| void | **SetAnchors** | FAnchorsInAnchors | Sets the anchors on the slot |
| F | **AnchorsGetAnchors** |  | Gets the anchors on the slot |
| void | **SetAlignment** | FVector2DInAlignment | Sets the alignment on the slot |
| F | **Vector2DGetAlignment** |  | Gets the alignment on the slot |
| void | **SetAutoSize** | boolInbAutoSize | Sets if the slot to be auto-sized |
| bool | **GetAutoSize** |  | Gets if the slot to be auto-sized |
| void | **SetZOrder** | int32InZOrder | Sets the z-order on the slot |
| int32 | **GetZOrder** |  | Gets the z-order on the slot |
| void | **SetAntiAdaptation** | boolInbAntiAdaptation | Sets the bAntiAdaptation on the slot |
| bool | **GetAntiAdaptation** |  | Gets the bAntiAdaptation on the slot |
| void | **SetMinimum** | FVector2DInMinimumAnchors | Sets the anchors on the slot |
| void | **SetMaximum** | FVector2DInMaximumAnchors | Sets the anchors on the slot |
| void | **OnAntiAdaptationOffsetsChange** |  | SetLayout GetLayout SetPosition GetPosition SetSize GetSize SetOffsets GetOffsets SetAnchors GetAnchors SetAlignment GetAlignment SetAutoSize GetAutoSize SetZOrder GetZOrder SetAntiAdaptation GetAntiAdaptation SetMinimum SetMaximum OnAntiAdaptationOffsetsChange |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **anchoring** | information for the slot When AutoSize is true we use the widget's desired size The order priority this widget is rendered in. Higher values are rendered last (and so they will appear to be on top). LayoutData bAutoSize ZOrder bAntiAdaptation |

