# UFileMediaSource

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFileMediaSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFileMediaSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFileMediaSource](https://developer.gp.qq.com/api/#/searchContent/UFileMediaSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFileMediaSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFileMediaSource)

类

全文搜索

---


## 函数

- **SetFilePath**(FString &Path) — Set the path to the media file that this source represents. Automatically converts full paths to media sources that reside in the Engine's or project's ContentMovies directory into relative paths. params Path -The path to set. SetFilePath

## 属性

- **path** — to the media file to be played. @see SetFilePath Load entire media file into memory and play from there (if possible). FilePath PrecacheFile