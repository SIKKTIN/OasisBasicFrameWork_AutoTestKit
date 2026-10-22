# UBorder

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBorder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBorder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBorder](https://developer.gp.qq.com/api/#/searchContent/UBorder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBorder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBorder)

类

全文搜索

A border is a container widget that can contain one child widget, providing an opportunity to surround it with a background image and adjustable padding. Single Child Image

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetContentColorAndOpacity** | FLinearColorInContentColorAndOpacity |  |
| void | **SetResetBlendColor** | boolbResetBlendColor |  |
| void | **SetPadding** | FMarginInPadding |  |
| void | **SetHorizontalAlignment** | EHorizontalAlignmentInHorizontalAlignment |  |
| void | **SetVerticalAlignment** | EVerticalAlignmentInVerticalAlignment |  |
| void | **SetBrushColor** | FLinearColorInBrushColor |  |
| void | **SetBrush** | FSlateBrush &InBrush |  |
| void | **SetBrushFromAsset** | USlateBrushAsset *Asset |  |
| void | **SetBrushFromTexture** | UTexture2D *Texture |  |
| void | **SetBrushFromMaterial** | UMaterialInterface *Material |  |
| UMaterialInstanceDynamic * | **GetDynamicMaterial** |  |  |
| void | **SetDesiredSizeScale** | FVector2DInScale | Sets the DesireSizeScale of this border. params InScale - The X and Y multipliers for the desired size SetContentColorAndOpacity SetResetBlendColor SetPadding SetHorizontalAlignment SetVerticalAlignment SetBrushColor SetBrush SetBrushFromAsset SetBrushFromTexture SetBrushFromMaterial GetDynamicMater |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **alignment** | of the content horizontally. The alignment of the content vertically. Whether or not to show the disabled effect when this border is disabled Color and opacity multiplier of content in the border A bindable delegate for the ContentColorAndOpacity. The padding area between the slot and the content it |

