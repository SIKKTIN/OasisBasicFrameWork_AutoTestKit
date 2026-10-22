# UBlueprintMapLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlueprintMapLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintMapLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintMapLibrary](https://developer.gp.qq.com/api/#/searchContent/UBlueprintMapLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintMapLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintMapLibrary)

类

全文搜索

---


## 函数

- **Map_Add**(TMap < int32 , int32 >& TargetMap, int32& Key, int32 &Value) — Adds a key and value to the map. If something already uses the provided key it will be overwritten with the new value. After calling Key is guaranteed to be associated with Value until a subsequent mutation of the Map. return -True if a Value was added, or False if the Key was already present and ha
- **Map_Remove**(TMap < int32 , int32 >& TargetMap, int32 &Key) — Removes a key and its associated value from the map. return -True if an item was removed (False indicates nothing in the map uses the provided key) params TargetMap -The map to remove the key and its associated value from params Key - The key that will be used to look the value up
- **Map_Find**(TMap < int32 , int32 >& TargetMap, int32& Key, int32 &Value) — Finds the value associated with the provided Key return -True if an item was found (False indicates nothing in the map uses the provided key) params TargetMap -The map to perform the lookup on params Key - The key that will be used to look the value up params Value - The value associated with the ke
- **Map_Contains**(TMap < int32 , int32 >& TargetMap, int32 &Key) — Checks whether key is in a provided Map return -True if an item was found (False indicates nothing in the map uses the provided key) params TargetMap -The map to perform the lookup on params Key - The key that will be used to lookup
- **Map_Keys**(TMap < int32 , int32 >& TargetMap, TArray < int32 > &Keys) — Outputs an array of all keys present in the map params TargetMap -The map to get the list of keys from params Keys - All keys present in the map
- **Map_Values**(TMap < int32 , int32 >& TargetMap, TArray < int32 > &Values) — Outputs an array of all values present in the map params TargetMap -The map to get the list of values from params Values - All values present in the map
- **Map_Length**(TMap < int32 , int32 > &TargetMap) — Determines the number of entries in a provided Map return -The number of entries in the map params TargetMap -The map in question
- **Map_Clear**(TMap < int32 , int32 > &TargetMap) — Clears a map of all entries, resetting it to empty params TargetMap -The map to clear
- **SetMapPropertyByName**(UObject* Object, FName PropertyName, TMap < int32 , int32 > &Value) — Not exposed to users. Supports setting a map property on an object by name. Map_Add Map_Remove Map_Find Map_Contains Map_Keys Map_Values Map_Length Map_Clear SetMapPropertyByName