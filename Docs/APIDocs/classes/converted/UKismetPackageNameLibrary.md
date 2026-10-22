# UKismetPackageNameLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetPackageNameLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetPackageNameLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetPackageNameLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetPackageNameLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetPackageNameLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetPackageNameLibrary)

类

全文搜索

---


## 函数

- **IsValidLongPackageName**(FString& InLongPackageName, bool bIncludeReadOnlyRoots, FText &OutReason) — Helper function for converting short to long script package name (InputCore -> ScriptInputCore) return - true if a valid long package name params InLongPackageName -Long Package Name params bIncludeReadOnlyRoots -If true, will include roots that you should not save to. (Temp, Script) params OutReaso
- **IsValidObjectPath**(FString& InObjectPath, FText &OutReason) — Returns true if the path starts with a valid root (i.e. Game, Engine, etc) and contains no illegal characters. This validates that the packagename is valid, and also makes sure the object after package name is also correct. This will return false if passed a path starting with Classname' return - tr
- **DoesPackageExist**(FString& LongPackageName, FGuid& Guid, FString &OutFilename) — Checks if the given string is a long package name or not. return -true if the specified package name points to an existing package, false otherwise. params LongPackageName -Package name. params OutFilename -Package filename on disk. IsValidLongPackageName IsValidObjectPath DoesPackageExist