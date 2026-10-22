# UAssetRegistryHelpers

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAssetRegistryHelpers?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAssetRegistryHelpers.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAssetRegistryHelpers](https://developer.gp.qq.com/api/#/searchContent/UAssetRegistryHelpers?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAssetRegistryHelpers.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAssetRegistryHelpers)

类

全文搜索

---


## 函数

- **GetAssetRegistry**()
- **AssetDataCreateAssetData**(UObject* InAsset, boolbAllowBlueprintClass) — Creates asset data from a UObject. params InAsset -The asset to create asset data for params bAllowBlueprintClass -By default trying to create asset data for a blueprint class will create one for the UBlueprint instead
- **IsValid**(FAssetData &InAssetData) — Checks to see if this AssetData refers to an asset or is NULL
- **IsUAsset**(FAssetData &InAssetData) — Returns true if this asset was found in a UAsset file
- **IsRedirector**(FAssetData &InAssetData) — Returns true if the this asset is a redirector.
- **StringGetFullName**(FAssetData &InAssetData) — Returns the full name for the asset in the form: Class ObjectPath
- **SoftObjectPathToSoftObjectPath**(FAssetData &InAssetData) — Convert to a SoftObjectPath for loading
- **GetClass**(FAssetData &InAssetData)
- **GetAsset**(FAssetData &InAssetData) — Returns the asset UObject if it is loaded or loads the asset if it is unloaded then returns the result
- **IsAssetLoaded**(FAssetData &InAssetData) — Returns true if the asset is loaded
- **StringGetExportTextName**(FAssetData &InAssetData) — Returns the name for the asset in the form: Class'ObjectPath' Gets the value associated with the given tag as a string
- **ARFilterSetFilterTagsAndValues**(FARFilter& InFilter, TArray < FTagAndValue > &InTagsAndValues) — Populates the FARFilters tags and values map with the passed in tags and values GetAssetRegistry CreateAssetData IsValid IsUAsset IsRedirector GetFullName ToSoftObjectPath GetClass GetAsset IsAssetLoaded GetExportTextName GetTagValue < FName > SetFilterTagsAndValues