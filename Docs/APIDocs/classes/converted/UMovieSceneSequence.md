# UMovieSceneSequence

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSequence?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSequence.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSequence](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSequence?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSequence.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSequence)

类

全文搜索

Abstract base class for movie scene animations (C++ version).

---


## 属性

- **if** — the result of GetParentObject is significant in object resolution for LocateBoundObjects. When true, if GetParentObject returns nullptr, the PlaybackContext will be used for LocateBoundObjects, other wise the object's parent will be used When false, the PlaybackContext will always be used for Locate