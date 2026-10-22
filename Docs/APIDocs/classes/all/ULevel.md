# ULevel

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevel](https://developer.gp.qq.com/api/#/searchContent/ULevel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevel)

类

全文搜索

A Level is a collection of Actors (lights, volumes, mesh instances etc.). Multiple Levels can be loaded and unloaded into the World to create a streaming experience. @see UActor

---

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **World** | that has this level in its Levels array. This is not the same as GetOuter(), because GetOuter() for a streaming level is a vestigial world that is not used. It should not be accessed during BeginDestroy(), just like any other UObject references, since GC may occur in any order. UModel *Model BSP UMo |

