# UBillboardComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBillboardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBillboardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBillboardComponent](https://developer.gp.qq.com/api/#/searchContent/UBillboardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBillboardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBillboardComponent)

类

全文搜索

A 2d texture that will be rendered always facing the camera.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetSprite** | UTexture2D *NewSprite | Change the sprite texture used by this component |
| void | **SetUV** | int32 NewU, int32 NewUL, int32 NewV, int32NewVL | Change the sprite's UVs |
| void | **SetSpriteAndUV** | UTexture2D * NewSprite, int32 NewU, int32 NewUL, int32 NewV, int32NewVL | Change the sprite texture and the UV's used by this component SetSprite SetUV SetSpriteAndUV |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Sprite | **category** | that the component belongs to. Value serves as a key into the localization file. Sprite category information regarding the component Whether to use in-editor arrow scaling (i.e. to be affected by the global arrow scale) Sprite bIsScreenSizeScaled ScreenSize U UL V VL SpriteCategoryName_DEPRECATED Sp |

