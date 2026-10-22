# UKismetArrayLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetArrayLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetArrayLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetArrayLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetArrayLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetArrayLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetArrayLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| int32 | **Array_Add** | TArray < int32 > & TargetArray, int32 &NewItem | Add item to array return -The index of the newly added item params TargetArray -The array to add item to params NewItem - The item to add to the array |
| int32 | **Array_AddUnique** | TArray < int32 > & TargetArray, int32 &NewItem | Add item to array (unique) return -The index of the newly added item, or INDEX_NONE if the item is already present in the array params TargetArray -The array to add item to params NewItem - The item to add to the array |
| void | **Array_Shuffle** | TArray < int32 > &TargetArray | Shuffle (randomize) the elements of an array params TargetArray -The array to shuffle |
| void | **Array_Append** | TArray < int32 > & TargetArray, TArray < int32 > &SourceArray | Append an array to another array params TargetArray -The array to add the source array to params SourceArray -The array to add to the target array |
| void | **Array_Insert** | TArray < int32 > & TargetArray, int32 & NewItem, int32Index | Insert item at the given index into the array. params TargetArray -The array to insert into params NewItem - The item to insert into the array params Index - The index at which to insert the item into the array |
| void | **Array_Remove** | TArray < int32 > & TargetArray, int32IndexToRemove | Remove item at the given index from the array. params TargetArray -The array to remove from params IndexToRemove -The index into the array to remove from |
| bool | **Array_RemoveItem** | TArray < int32 > & TargetArray, int32 &Item | Remove all instances of item from array. return -True if one or more items were removed params TargetArray -The array to remove from params Item - The item to remove from the array |
| void | **Array_Clear** | TArray < int32 > &TargetArray | Clear an array, removes all content params TargetArray -The array to clear |
| void | **Array_Resize** | TArray < int32 > & TargetArray, int32Size | Resize Array to specified size. params TargetArray -The array to resize params Size - The new size of the array |
| int32 | **Array_Length** | TArray < int32 > &TargetArray | Get the number of items in an array return -The length of the array params TargetArray -The array to get the length of |
| int32 | **Array_LastIndex** | TArray < int32 > &TargetArray | Get the last valid index into an array return -The last valid index of the array params TargetArray -The array to perform the operation on |
| void | **Array_Get** | TArray < int32 > & TargetArray, int32 Index, int32 &Item | Given an array and an index, returns a copy of the item found at that index return -A copy of the item stored at the index params TargetArray -The array to get an item from params Index - The index in the array to get an item from |
| void | **Array_Set** | TArray < int32 > & TargetArray, int32 Index, int32 & Item, boolbSizeToFit | Given an array and an index, assigns the item to that array element params TargetArray -The array to perform the operation on params Index - The index to assign the item to params Item - The item to assign to the index of the array params bSizeToFit -If true, the array will expand if Index is greate |
| void | **Array_Swap** | TArray < int32 > & TargetArray, int32 FirstIndex, int32SecondIndex | Swaps the elements at the specified positions in the specified array If the specified positions are equal, invoking this method leaves the array unchanged params TargetArray -The array to perform the operation on |
| int32 | **Array_Find** | TArray < int32 > & TargetArray, int32 &ItemToFind | Finds the index of the first instance of the item within the array return -The index the item was found at, or -1 if not found params TargetArray -The array to search for the item params ItemToFind -The item to look for |
| bool | **Array_Contains** | TArray < int32 > & TargetArray, int32 &ItemToFind | Returns true if the array contains the given item return -True if the item was found within the array params TargetArray -The array to search for the item params ItemToFind -The item to look for |
| void | **FilterArray** | TArray < AActor * > & TargetArray, TSubclassOf < AActor > FilterClass, TArray < AActor * > &FilteredArray | Filter an array based on a Class derived from Actor. return -An array containing only those objects which are derived from the class specified. params TargetArray -The array to filter from params FilterClass -The Actor sub-class type that acts as the filter, only objects derived from it will be retu |
| void | **SetArrayPropertyByName** | UObject * Object, FName PropertyName, TArray < int32 > &Value | Not exposed to users. Supports setting an array property on an object by name. |
| bool | **Array_IsValidIndex** | TArray < int32 > & TargetArray, int32IndexToTest | Tests if IndexToTest is valid, i.e. greater than or equal to zero, and less than the number of elements in TargetArray. return -True if the Index is Valid, i.e. greater than or equal to zero, and less than the number of elements in TargetArray. params TargetArray -Array to use for the IsValidIndex t |

