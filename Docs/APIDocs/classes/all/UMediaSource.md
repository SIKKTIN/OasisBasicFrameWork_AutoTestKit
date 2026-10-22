# UMediaSource

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMediaSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaSource](https://developer.gp.qq.com/api/#/searchContent/UMediaSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaSource)

类

全文搜索

Abstract base class for media sources. Media sources describe the location andor settings of media objects that can be played in a media player, such as a video file on disk, a video stream on the internet, or a web cam attached to or built into the target device. The location is encoded as a media URL string, whose URI scheme and optional file extension will be used to locate a suitable media player.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| F | **StringGetUrl** |  | Get the media source's URL string (must be implemented in child classes). return -The media URL. |
| bool | **Validate** |  | Validate the media source settings (must be implemented in child classes). return -true if validation passed, false otherwise. GetUrl Validate |

