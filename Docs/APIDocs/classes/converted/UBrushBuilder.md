# UBrushBuilder

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBrushBuilder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBrushBuilder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBrushBuilder](https://developer.gp.qq.com/api/#/searchContent/UBrushBuilder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBrushBuilder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBrushBuilder)

类

全文搜索

Base class of UnrealEd brush builders. Tips for writing brush builders: - Always validate the user-specified and call BadParameters function if anything is wrong, instead of actually building geometry. If you build an invalid brush due to bad user parameters, you'll cause an extraordinary amount of pain for the poor user. - When generating polygons with more than 3 vertices, BE SURE all the polygon's vertices are coplanar! Out-of-plane polygons will cause geometry to be corrupted.

---


## 属性

- **FString** — that will be displayed as the name of this brush builder in the editor If false, disabled the bad param notifications BitmapFilename ToolTip NotifyBadParams Vertices Polys Layer MergeCoplanars