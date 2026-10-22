# ULevelStreaming

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevelStreaming?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelStreaming.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelStreaming](https://developer.gp.qq.com/api/#/searchContent/ULevelStreaming?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelStreaming.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelStreaming)

类

全文搜索

Abstract base class of container object encapsulating data required for streaming and providing interface for when a level should be streamed in and out of memory.

---


## 函数

- **FNameGetWorldAssetPackageFName**(Gets the package name for the world asset referred to by this level streaming as an FName)
- **GetLoadedLevel**(Gets a pointer to the LoadedLevel value)
- **IsLevelVisible**(Returns whether streaming level is visible)
- **IsLevelLoaded**(Returns whether streaming level is loaded)
- **IsStreamingStatePending**(Returns whether level has streaming state change pending)
- **CreateInstance**(FStringUniqueInstanceName) — Creates a new instance of this streaming level with a provided unique instance name
- **GetLevelScriptActor**(Returns the Level Script Actor of the level if the level is loaded and valid GetWorldAssetPackageFName GetLoadedLevel IsLevelVisible IsLevelLoaded IsStreamingStatePending CreateInstance GetLevelScriptActor)

## 属性

- **name** — of the package containing the level to load. Use GetWorldAsset() or GetWorldAssetPackageFName() instead. The reference to the world containing the level to load If this isn't Name_None, then we load from this package on disk to the new package named PackageName LOD versions of this level Transform a

## 委托

- voidOnLevelLoaded()
- Called when level is streamed in
- voidOnLevelUnloaded()
- Called when level is streamed out
- voidOnLevelShown()
- Called when level is added to the world
- voidOnLevelHidden()
- Called when level is removed from the world
- OnLevelLoaded
- OnLevelUnloaded
- OnLevelShown
- OnLevelHidden