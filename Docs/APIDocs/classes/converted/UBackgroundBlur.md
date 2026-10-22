# UBackgroundBlur

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBackgroundBlur?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBackgroundBlur.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBackgroundBlur](https://developer.gp.qq.com/api/#/searchContent/UBackgroundBlur?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBackgroundBlur.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBackgroundBlur)

类

全文搜索

A background blur is a container widget that can contain one child widget, providing an opportunity to surround it with adjustable padding and apply a post-process Gaussian blur to all content beneath the widget. Single Child Blur Effect

---


## 函数

- **SetPadding**(FMarginInPadding)
- **SetHorizontalAlignment**(EHorizontalAlignmentInHorizontalAlignment)
- **SetVerticalAlignment**(EVerticalAlignmentInVerticalAlignment)
- **SetApplyAlphaToBlur**(boolbInApplyAlphaToBlur)
- **SetBlurRadius**(int32InBlurRadius)
- **SetBlurStrength**(floatInStrength)
- **SetBlurDirection**(floatInDirection)
- **SetBlurCenter**(FVector2DInCenter)
- **SetBlurMask**(UTexture *InTexture)
- **SetLowQualityFallbackBrush**(FSlateBrush &InBrush) — SetPadding SetHorizontalAlignment SetVerticalAlignment SetApplyAlphaToBlur SetBlurRadius SetBlurStrength SetBlurDirection SetBlurCenter SetBlurMask SetLowQualityFallbackBrush

## 属性

- **padding** — area between the slot and the content it contains. The alignment of the content horizontally. The alignment of the content vertically. True to modulate the strength of the blur based on the widget alpha. How blurry the background is. Larger numbers mean more blurry but will result in larger runtime