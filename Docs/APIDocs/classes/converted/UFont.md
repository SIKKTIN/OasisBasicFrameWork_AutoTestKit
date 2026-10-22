# UFont

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFont?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFont.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFont](https://developer.gp.qq.com/api/#/searchContent/UFont?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFont.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFont)

类

全文搜索

A font object, for use by Slate, UMG, and Canvas. A font can either be: Runtime cached - The font contains a series of TTF files that combine to form a composite font. The glyphs are cached on demand when required at runtime. Offline cached - The font contains a series of textures containing pre-baked cached glyphs and their associated texture coordinates.

---


## 属性

- **kind** — of font caching should we use? This controls which options we see List of characters in the font. For a MultiFont, this will include all characters in all sub-fonts! Thus, the number of characters in this array isn't necessary the number of characters available in the font Textures that store this f