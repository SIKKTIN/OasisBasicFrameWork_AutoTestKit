# UKismetNodeHelperLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetNodeHelperLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetNodeHelperLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetNodeHelperLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetNodeHelperLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetNodeHelperLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetNodeHelperLibrary)

类

全文搜索

---


## 函数

- **BitIsMarked**(int32 Data, int32Index) — Returns whether the bit at index "Index" is set or not in the data return - - Whether the bit at index "Index" is set or not params Data -- The integer containing the bits that are being tested against params Index -- The bit index into the Data that we are inquiring
- **MarkBit**(int32& Data, int32Index) — Sets the bit at index "Index" in the data params Data -- The integer containing the bits that are being set params Index -- The bit index into the Data that we are setting
- **ClearBit**(int32& Data, int32Index) — Clears the bit at index "Index" in the data params Data -- The integer containing the bits that are being cleared params Index -- The bit index into the Data that we are clearing
- **ClearAllBits**(int32 &Data) — Clears all of the bit in the data params Data -- The integer containing the bits that are being cleared
- **HasUnmarkedBit**(int32 Data, int32NumBits) — Returns whether there exists an unmarked bit in the data return -- Whether there is a bit not marked in the data params Data -- The data being tested against params NumBits -- The logical number of bits we want to track
- **HasMarkedBit**(int32 Data, int32NumBits) — Returns whether there exists a marked bit in the data return -- Whether there is a bit marked in the data params Data -- The data being tested against params NumBits -- The logical number of bits we want to track
- **GetUnmarkedBit**(int32 Data, int32 StartIdx, int32 NumBits, boolbRandom) — Gets an already unmarked bit and returns the bit index selected return -- The index that was selected (returns INDEX_NONE if there was no unmarked bits to choose from) params Data -- The integer containing the bits that are being set params StartIdx -- The index to start with when determining the se
- **GetRandomUnmarkedBit**(int32 Data, int32 StartIdx, int32NumBits) — Gets a random not already marked bit and returns the bit index selected return -- The index that was selected (returns INDEX_NONE if there was no unmarked bits to choose from) params Data -- The integer containing the bits that are being set params NumBits -- The logical number of bits we want to tr
- **GetFirstUnmarkedBit**(int32 Data, int32 StartIdx, int32NumBits) — Gets the first index not already marked starting from a specific index and returns the bit index selected return -- The index that was selected (returns INDEX_NONE if there was no unmarked bits to choose from) params Data -- The integer containing the bits that are being set params StartIdx -- The i
- **NameGetEnumeratorName**(UEnum* Enum, uint8EnumeratorValue) — Gets enumerator name. return -- name of the searched enumerator, or NAME_None params Enum -- Enumeration params EnumeratorValue -- Value of searched enumeration
- **StringGetEnumeratorUserFriendlyName**(UEnum* Enum, uint8EnumeratorValue) — Gets enumerator name as FString. Use DeisplayName when possible. return -- name of the searched enumerator, or NAME_None params Enum -- Enumeration params EnumeratorValue -- Value of searched enumeration
- **GetValidValue**(UEnum* Enum, uint8EnumeratorValue) — return -- if EnumeratorIndex is valid return EnumeratorIndex, otherwise return MAX value of Enum params Enum -- Enumeration
- **GetEnumeratorValueFromIndex**(UEnum* Enum, uint8EnumeratorIndex) — return -- The value of the enumerator, or INDEX_NONE params Enum -- Enumeration params EnumeratorIndex -- Input index BitIsMarked MarkBit ClearBit ClearAllBits HasUnmarkedBit HasMarkedBit GetUnmarkedBit GetRandomUnmarkedBit GetFirstUnmarkedBit GetEnumeratorName GetEnumeratorUserFriendlyName GetValid