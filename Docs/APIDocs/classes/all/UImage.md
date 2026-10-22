# UImage

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UImage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUImage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UImage](https://developer.gp.qq.com/api/#/searchContent/UImage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUImage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UImage)

类

全文搜索

The image widget allows you to display a Slate Brush, or texture or material in the UI. No Children

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| F | **SlateBrushGetBrush** |  |  |
| void | **SetColorAndOpacity** | FLinearColorInColorAndOpacity |  |
| void | **SetColorRGBStr** | FString &HexString |  |
| void | **SetBrushImageReference** | FStringAssetReferenceAssetReference |  |
| void | **SetBrushImageReferenceWithMatchSize** | FStringAssetReference AssetReference, boolbMatchSize |  |
| void | **SetBrushImageReferenceWithColor** | FStringAssetReference AssetReference, FLinearColor Color, boolbMatchSize |  |
| void | **SetOpacity** | floatInOpacity |  |
| void | **SetBrush** | FSlateBrush &InBrush |  |
| void | **SetBrushFromAsset** | USlateBrushAsset *Asset |  |
| void | **SetBrushFromTexture** | UTexture2D * Texture, boolbMatchSize |  |
| void | **SetBrushFromTextureDynamic** | UTexture2DDynamic * Texture, boolbMatchSize |  |
| void | **SetBrushFromMaterial** | UMaterialInterface *Material |  |
| UMaterialInstanceDynamic * | **GetDynamicMaterial** |  |  |
| void | **SetDisablePaint** | boolInDisablePaint |  |
| void | **ReleaseAsyncSetBrushHandle** |  |  |
| void | **OnAsyncLoadImageAssetComplete** |  |  |
| void | **OnAsyncLoadAssetComplete** |  | GetBrush SetColorAndOpacity SetColorRGBStr SetBrushImageReference SetBrushImageReferenceWithMatchSize SetBrushImageReferenceWithColor SetOpacity SetBrush SetBrushFromAsset SetBrushFromTexture SetBrushFromTextureDynamic SetBrushFromMaterial GetDynamicMaterial SetDisablePaint ReleaseAsyncSetBrushHandl |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Image | **to** | draw A bindable delegate for the Image. Color and opacity A bindable delegate for the ColorAndOpacity. 是否使用自定义触摸响应区域，在运行时修改无效 圆形响应区域的半径，最大为控件边长一半，-1为控件大小一半 BrushImage bIsEnhancedImage ForceAsyncLoadReference BrushAssetReference Brush BrushMaterialParamNames BrushDelegate ColorAndOpacity ColorAndOpac |

## 委托

- voidOnImageChangeDelegate(const FSlateBrush&BrushChanged)
- OnImageChangeDelegate

