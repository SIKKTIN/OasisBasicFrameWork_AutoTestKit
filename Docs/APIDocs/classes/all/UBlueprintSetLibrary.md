# UBlueprintSetLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlueprintSetLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintSetLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintSetLibrary](https://developer.gp.qq.com/api/#/searchContent/UBlueprintSetLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintSetLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintSetLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **Set_Add** | TSet < int32 > & TargetSet, int32 &NewItem | Adds item to set. Output value indicates whether the item was successfully added, meaning an output of False indicates the item was already in the Set. return -True if NewItem was added to the set (False indicates an equivalent item was present) params TargetSet -The set to add item to params NewIte |
| void | **Set_AddItems** | TSet < int32 > & TargetSet, TArray < int32 > &NewItems | Adds all elements from an Array to a Set params TargetSet -The set to search for the item params NewItems -The items to add to the set |
| bool | **Set_Remove** | TSet < int32 > & TargetSet, int32 &Item | Remove item from set. Output value indicates if something was actually removed. False indicates no equivalent item was found. return -True if an item was removed (False indicates no equivalent item was present) params TargetSet -The set to remove from params Item - The item to remove from the set |
| void | **Set_RemoveItems** | TSet < int32 > & TargetSet, TArray < int32 > &Items | Removes all elements in an Array from a set. params TargetSet -The set to remove from params Items - The items to remove from the set |
| void | **Set_ToArray** | TSet < int32 > & A, TArray < int32 > &Result | Outputs an Array containing copies of the entries of a Set. params A -Set params Result -Array |
| void | **Set_Clear** | TSet < int32 > &TargetSet | Clear a set, removes all content. params TargetSet -The set to clear |
| int32 | **Set_Length** | TSet < int32 > &TargetSet | Get the number of items in a set. return -The length of the set params TargetSet -The set to get the length of |
| bool | **Set_Contains** | TSet < int32 > & TargetSet, int32 &ItemToFind | Returns true if the set contains the given item. return -True if the item was found within the set params TargetSet -The set to search for the item params ItemToFind -The item to look for |
| void | **Set_Intersection** | TSet < int32 > & A, TSet < int32 > & B, TSet < int32 > &Result | Assigns Result to the intersection of Set A and Set B. That is, Result will contain all elements that are in both Set A and Set B. To intersect with the empty set use Clear. params A -One set to intersect params B -Another set to intersect params Result -Set to store results in |
| void | **Set_Union** | TSet < int32 > & A, TSet < int32 > & B, TSet < int32 > &Result | Assigns Result to the union of two sets, A and B. That is, Result will contain all elements that are in Set A and in addition all elements in Set B. Note that a Set is a collection of unique elements, so duplicates will be eliminated. params A -One set to union params B -Another set to union params  |
| void | **Set_Difference** | TSet < int32 > & A, TSet < int32 > & B, TSet < int32 > &Result | Assigns Result to the relative difference of two sets, A and B. That is, Result will contain all elements that are in Set A but are not found in Set B. Note that the difference between two sets is not commutative. The Set whose elements you wish to preserve should be the first (top) parameter. Also  |
| void | **SetSetPropertyByName** | UObject * Object, FName PropertyName, TSet < int32 > &Value | Not exposed to users. Supports setting a set property on an object by name. Set_Add Set_AddItems Set_Remove Set_RemoveItems Set_ToArray Set_Clear Set_Length Set_Contains Set_Intersection Set_Union Set_Difference SetSetPropertyByName |

