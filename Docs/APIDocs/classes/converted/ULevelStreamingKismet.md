# ULevelStreamingKismet

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevelStreamingKismet?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelStreamingKismet.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelStreamingKismet](https://developer.gp.qq.com/api/#/searchContent/ULevelStreamingKismet?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelStreamingKismet.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelStreamingKismet)

类

全文搜索

---


## 函数

- **LoadLevelInstance**(UObject* WorldContextObject, FString& LevelName, FVector& Location, FRotator& Rotation, bool &bOutSuccess) — Stream in a level with a specific location and rotation. You can create multiple instances of the same level! The level to be loaded does not have to be in the persistent map's Levels list, however to ensure that the .umap does get packaged, please be sure to include the .umap in your Packaging Sett
- **CreateLevelInstanceWithLevelName**(UObject* WorldContextObject, FString& LevelName, FString& UniqueName, FTransform& Trans, bool &bOutSuccess)
- **CreateLevelInstanceWithLevel**(ULevelStreaming* OriStreamingLevel, FString& UniqueName, FTransform& Trans, bool &bOutSuccess) — LoadLevelInstance CreateLevelInstanceWithLevelName CreateLevelInstanceWithLevel

## 属性

- **the** — level should be loaded at startup Whether the level should be visible at startup if it is loaded bInitiallyLoaded bInitiallyVisible