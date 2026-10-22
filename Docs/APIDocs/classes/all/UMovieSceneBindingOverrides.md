# UMovieSceneBindingOverrides

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneBindingOverrides?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneBindingOverrides.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneBindingOverrides](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneBindingOverrides?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneBindingOverrides.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneBindingOverrides)

类

全文搜索

A one-to-many definition of movie scene object binding IDs to overridden objects that should be bound to that binding.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| const TArray < FMovieSceneBindingOverrideData > & | **GetBindingData** |  |  |
| F | **MovieSceneObjectBindingIDMakeBindingID** | FGuid & InBindingID, FMovieSceneSequenceID InSequenceID, EMovieSceneObjectBindingSpaceInSpace |  |
| F | **StringGetGuidStr** | FMovieSceneObjectBindingID &BindingID | GetBindingData MakeBindingID GetGuidStr |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **actual** | binding data BindingData |

