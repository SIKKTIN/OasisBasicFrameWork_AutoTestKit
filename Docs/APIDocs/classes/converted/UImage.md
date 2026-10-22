# UImage

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UImage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUImage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UImage](https://developer.gp.qq.com/api/#/searchContent/UImage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUImage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UImage)

类

全文搜索

The image widget allows you to display a Slate Brush, or texture or material in the UI. No Children

---


## 函数

- **SlateBrushGetBrush**()
- **SetColorAndOpacity**(FLinearColorInColorAndOpacity)
- **SetColorRGBStr**(FString &HexString)
- **SetBrushImageReference**(FStringAssetReferenceAssetReference)
- **SetBrushImageReferenceWithMatchSize**(FStringAssetReference AssetReference, boolbMatchSize)
- **SetBrushImageReferenceWithColor**(FStringAssetReference AssetReference, FLinearColor Color, boolbMatchSize)
- **SetOpacity**(floatInOpacity)
- **SetBrush**(FSlateBrush &InBrush)
- **SetBrushFromAsset**(USlateBrushAsset *Asset)
- **SetBrushFromTexture**(UTexture2D* Texture, boolbMatchSize)
- **SetBrushFromTextureDynamic**(UTexture2DDynamic* Texture, boolbMatchSize)
- **SetBrushFromMaterial**(UMaterialInterface *Material)
- **GetDynamicMaterial**()
- **SetDisablePaint**(boolInDisablePaint)
- **ReleaseAsyncSetBrushHandle**()
- **OnAsyncLoadImageAssetComplete**()
- **OnAsyncLoadAssetComplete**(GetBrush SetColorAndOpacity SetColorRGBStr SetBrushImageReference SetBrushImageReferenceWithMatchSize SetBrushImageReferenceWithColor SetOpacity SetBrush SetBrushFromAsset SetBrushFromTexture SetBrushFromTextureDynamic SetBrushFromMaterial GetDynamicMaterial SetDisablePaint ReleaseAsyncSetBrushHandl)

## 属性

- **to** — draw A bindable delegate for the Image. Color and opacity A bindable delegate for the ColorAndOpacity. 是否使用自定义触摸响应区域，在运行时修改无效 圆形响应区域的半径，最大为控件边长一半，-1为控件大小一半 BrushImage bIsEnhancedImage ForceAsyncLoadReference BrushAssetReference Brush BrushMaterialParamNames BrushDelegate ColorAndOpacity ColorAndOpac

## 委托

- voidOnImageChangeDelegate(const FSlateBrush&BrushChanged)
- OnImageChangeDelegate