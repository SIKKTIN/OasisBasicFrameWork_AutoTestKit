# UFontFace

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFontFace?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFontFace.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFontFace](https://developer.gp.qq.com/api/#/searchContent/UFontFace?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFontFace.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFontFace)

类

全文搜索

A font face asset contains the raw payload data for a source TTFOTF file as used by FreeType. During cook this asset type generates a ".ufont" file containing the raw payload data (unless loaded "Inline").

---


## 属性

- **filename** — of the font face we were created from. This may not always exist on disk, as we may have previously loaded and cached the font data inside this asset. EFontHintingHinting The hinting algorithm to use with the font face. EFontLoadingPolicyLoadingPolicy Enum controlling how this font face should be lo