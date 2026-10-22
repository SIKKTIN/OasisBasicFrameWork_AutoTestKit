# UAssetManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAssetManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAssetManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAssetManager](https://developer.gp.qq.com/api/#/searchContent/UAssetManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAssetManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAssetManager)

类

全文搜索

A singleton UObject that is responsible for loading and unloading PrimaryAssets, and maintaining game-specific asset references Games should override this class and change the class reference

---

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| List | **of** | UObjects that are being kept from being GCd, derived from the asset type map. Arrays are currently more efficient than Sets True if we are running a build that is already scanning assets globally so we can perhaps avoid scanning paths synchronously True if PrimaryAssetTypeName will be implied for lo |

