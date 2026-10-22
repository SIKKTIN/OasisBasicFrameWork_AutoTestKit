# UBorder

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBorder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBorder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBorder](https://developer.gp.qq.com/api/#/searchContent/UBorder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBorder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBorder)

类

全文搜索

A border is a container widget that can contain one child widget, providing an opportunity to surround it with a background image and adjustable padding. Single Child Image

---


## 函数

- **SetContentColorAndOpacity**(FLinearColorInContentColorAndOpacity)
- **SetResetBlendColor**(boolbResetBlendColor)
- **SetPadding**(FMarginInPadding)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment)
- **SetBrushColor**(FLinearColorInBrushColor)
- **SetBrush**(FSlateBrush &InBrush)
- **SetBrushFromAsset**(USlateBrushAsset *Asset)
- **SetBrushFromTexture**(UTexture2D *Texture)
- **SetBrushFromMaterial**(UMaterialInterface *Material)
- **GetDynamicMaterial**()
- **SetDesiredSizeScale**(FVector2DInScale) — Sets the DesireSizeScale of this border. params InScale - The X and Y multipliers for the desired size SetContentColorAndOpacity SetResetBlendColor SetPadding SetHorizontalAlignment SetVerticalAlignment SetBrushColor SetBrush SetBrushFromAsset SetBrushFromTexture SetBrushFromMaterial GetDynamicMater

## 属性

- **alignment** — of the content horizontally. The alignment of the content vertically. Whether or not to show the disabled effect when this border is disabled Color and opacity multiplier of content in the border A bindable delegate for the ContentColorAndOpacity. The padding area between the slot and the content it