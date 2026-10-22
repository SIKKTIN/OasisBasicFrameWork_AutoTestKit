# UPaperFlipbook

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperFlipbook?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperFlipbook.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperFlipbook](https://developer.gp.qq.com/api/#/searchContent/UPaperFlipbook?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperFlipbook.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperFlipbook)

类

全文搜索

Contains an animation sequence of sprite frames

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| int32 | **GetNumFrames** |  |  |
| float | **GetTotalDuration** |  |  |
| int32 | **GetKeyFrameIndexAtTime** | float Time, boolbClampToEnds |  |
| UPaperSprite * | **GetSpriteAtTime** | float Time, boolbClampToEnds |  |
| UPaperSprite * | **GetSpriteAtFrame** | int32FrameIndex |  |
| int32 | **GetNumKeyFrames** |  |  |
| bool | **IsValidKeyFrameIndex** | int32Index | GetNumFrames GetTotalDuration GetKeyFrameIndexAtTime GetSpriteAtTime GetSpriteAtFrame GetNumKeyFrames IsValidKeyFrameIndex |

