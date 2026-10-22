# Kismet 工具库  (前缀: UK)
_共 15 个类_
---
## UKismetAnimationLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetAnimationLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetAnimationLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetAnimationLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetAnimationLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetAnimationLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetAnimationLibrary)

类

全文搜索

---


## 函数

- **K2_TwoBoneIK**(FVector& RootPos, FVector& JointPos, FVector& EndPos, FVector& JointTarget, FVector& Effector, FVector& OutJointPos, FVector& OutEndPos, bool bAllowStretching, float StartStretchRatio, floatMax)
- **TransformK2_LookAt**(FTransform& CurrentTransform, FVector& TargetPosition, FVector LookAtVector, bool bUseUpVector, FVector UpVector, floatClampConeInDegree) — K2_TwoBoneIK K2_LookAt

## UKismetArrayLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetArrayLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetArrayLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetArrayLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetArrayLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetArrayLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetArrayLibrary)

类

全文搜索

---


## 函数

- **Array_Add**(TArray < int32 >& TargetArray, int32 &NewItem) — Add item to array return -The index of the newly added item params TargetArray -The array to add item to params NewItem - The item to add to the array
- **Array_AddUnique**(TArray < int32 >& TargetArray, int32 &NewItem) — Add item to array (unique) return -The index of the newly added item, or INDEX_NONE if the item is already present in the array params TargetArray -The array to add item to params NewItem - The item to add to the array
- **Array_Shuffle**(TArray < int32 > &TargetArray) — Shuffle (randomize) the elements of an array params TargetArray -The array to shuffle
- **Array_Append**(TArray < int32 >& TargetArray, TArray < int32 > &SourceArray) — Append an array to another array params TargetArray -The array to add the source array to params SourceArray -The array to add to the target array
- **Array_Insert**(TArray < int32 >& TargetArray, int32& NewItem, int32Index) — Insert item at the given index into the array. params TargetArray -The array to insert into params NewItem - The item to insert into the array params Index - The index at which to insert the item into the array
- **Array_Remove**(TArray < int32 >& TargetArray, int32IndexToRemove) — Remove item at the given index from the array. params TargetArray -The array to remove from params IndexToRemove -The index into the array to remove from
- **Array_RemoveItem**(TArray < int32 >& TargetArray, int32 &Item) — Remove all instances of item from array. return -True if one or more items were removed params TargetArray -The array to remove from params Item - The item to remove from the array
- **Array_Clear**(TArray < int32 > &TargetArray) — Clear an array, removes all content params TargetArray -The array to clear
- **Array_Resize**(TArray < int32 >& TargetArray, int32Size) — Resize Array to specified size. params TargetArray -The array to resize params Size - The new size of the array
- **Array_Length**(TArray < int32 > &TargetArray) — Get the number of items in an array return -The length of the array params TargetArray -The array to get the length of
- **Array_LastIndex**(TArray < int32 > &TargetArray) — Get the last valid index into an array return -The last valid index of the array params TargetArray -The array to perform the operation on
- **Array_Get**(TArray < int32 >& TargetArray, int32 Index, int32 &Item) — Given an array and an index, returns a copy of the item found at that index return -A copy of the item stored at the index params TargetArray -The array to get an item from params Index - The index in the array to get an item from
- **Array_Set**(TArray < int32 >& TargetArray, int32 Index, int32& Item, boolbSizeToFit) — Given an array and an index, assigns the item to that array element params TargetArray -The array to perform the operation on params Index - The index to assign the item to params Item - The item to assign to the index of the array params bSizeToFit -If true, the array will expand if Index is greate
- **Array_Swap**(TArray < int32 >& TargetArray, int32 FirstIndex, int32SecondIndex) — Swaps the elements at the specified positions in the specified array If the specified positions are equal, invoking this method leaves the array unchanged params TargetArray -The array to perform the operation on
- **Array_Find**(TArray < int32 >& TargetArray, int32 &ItemToFind) — Finds the index of the first instance of the item within the array return -The index the item was found at, or -1 if not found params TargetArray -The array to search for the item params ItemToFind -The item to look for
- **Array_Contains**(TArray < int32 >& TargetArray, int32 &ItemToFind) — Returns true if the array contains the given item return -True if the item was found within the array params TargetArray -The array to search for the item params ItemToFind -The item to look for
- **FilterArray**(TArray < AActor* >& TargetArray, TSubclassOf < AActor > FilterClass, TArray < AActor* > &FilteredArray) — Filter an array based on a Class derived from Actor. return -An array containing only those objects which are derived from the class specified. params TargetArray -The array to filter from params FilterClass -The Actor sub-class type that acts as the filter, only objects derived from it will be retu
- **SetArrayPropertyByName**(UObject* Object, FName PropertyName, TArray < int32 > &Value) — Not exposed to users. Supports setting an array property on an object by name.
- **Array_IsValidIndex**(TArray < int32 >& TargetArray, int32IndexToTest) — Tests if IndexToTest is valid, i.e. greater than or equal to zero, and less than the number of elements in TargetArray. return -True if the Index is Valid, i.e. greater than or equal to zero, and less than the number of elements in TargetArray. params TargetArray -Array to use for the IsValidIndex t

## UKismetGuidLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetGuidLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetGuidLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetGuidLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetGuidLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetGuidLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetGuidLibrary)

类

全文搜索

---


## 函数

- **EqualEqual_GuidGuid**(FGuid& A, FGuid &B) — Returns true if the values are equal (A == B)
- **NotEqual_GuidGuid**(FGuid& A, FGuid &B) — Returns true if the values are not equal (A != B)
- **IsValid_Guid**(FGuid &InGuid) — Checks whether the given GUID is valid
- **Invalidate_Guid**(FGuid &InGuid) — Invalidates the given GUID
- **GuidNewGuid**(Returns a new unique GUID)
- **StringConv_GuidToString**(FGuid &InGuid) — Converts a GUID value to a string, in the form 'A-B-C-D'
- **Parse_StringToGuid**(FString& GuidString, FGuid& OutGuid, bool &Success) — Converts a String of format EGuidFormats to a Guid. Returns Guid OutGuid, Returns bool Success EqualEqual_GuidGuid NotEqual_GuidGuid IsValid_Guid Invalidate_Guid NewGuid Conv_GuidToString Parse_StringToGuid

## UKismetInputLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetInputLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetInputLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetInputLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetInputLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetInputLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetInputLibrary)

类

全文搜索

---


## 函数

- **CalibrateTilt**(Calibrate the tilt for the input device)
- **EqualEqual_KeyKey**(FKey A, FKeyB) — Test if the input key are equal (A == B) return - True if the key are equal, false otherwise params A -- The key to compare against params B -- The key to compare
- **EqualEqual_InputChordInputChord**(FInputChord A, FInputChordB) — Test if the input chords are equal (A == B) return - True if the chords are equal, false otherwise params A -- The chord to compare against params B -- The chord to compare
- **Key_IsModifierKey**(FKey &Key) — return - True if the key is a modifier key: Ctrl, Command, Alt, Shift
- **Key_IsGamepadKey**(FKey &Key) — return - True if the key is a gamepad button
- **Key_IsMouseButton**(FKey &Key) — return - True if the key is a mouse button
- **Key_IsKeyboardKey**(FKey &Key) — return - True if the key is a keyboard button
- **Key_IsFloatAxis**(FKey &Key) — return - True if the key is a float axis
- **Key_IsVectorAxis**(FKey &Key) — return - True if the key is a vector axis
- **TextKey_GetDisplayName**(FKey &Key) — return - The display name of the key.
- **InputEvent_IsRepeat**(FInputEvent &Input) — Returns whether or not this character is an auto-repeated keystroke return - True if this character is a repeat
- **InputEvent_IsShiftDown**(FInputEvent &Input) — Returns true if either shift key was down when this event occurred return - True if shift is pressed
- **InputEvent_IsLeftShiftDown**(FInputEvent &Input) — Returns true if left shift key was down when this event occurred return -True if left shift is pressed.
- **InputEvent_IsRightShiftDown**(FInputEvent &Input) — Returns true if right shift key was down when this event occurred return -True if right shift is pressed.
- **InputEvent_IsControlDown**(FInputEvent &Input) — Returns true if either control key was down when this event occurred return - True if control is pressed
- **InputEvent_IsLeftControlDown**(FInputEvent &Input) — Returns true if left control key was down when this event occurred return - True if left control is pressed
- **InputEvent_IsRightControlDown**(FInputEvent &Input) — Returns true if left control key was down when this event occurred return - True if left control is pressed
- **InputEvent_IsAltDown**(FInputEvent &Input) — Returns true if either alt key was down when this event occurred return - True if alt is pressed
- **InputEvent_IsLeftAltDown**(FInputEvent &Input) — Returns true if left alt key was down when this event occurred return - True if left alt is pressed
- **InputEvent_IsRightAltDown**(FInputEvent &Input) — Returns true if right alt key was down when this event occurred return - True if right alt is pressed
- **InputEvent_IsCommandDown**(FInputEvent &Input) — Returns true if either command key was down when this event occurred return - True if command is pressed
- **InputEvent_IsLeftCommandDown**(FInputEvent &Input) — Returns true if left command key was down when this event occurred return - True if left command is pressed
- **InputEvent_IsRightCommandDown**(FInputEvent &Input) — Returns true if right command key was down when this event occurred return - True if right command is pressed
- **KeyGetKeyByName**(FName &KeyName)
- **KeyGetKey**(FKeyEvent &Input) — Returns the key for this event. return - Key name
- **GetUserIndex**(FKeyEvent &Input)
- **GetAnalogValue**(FAnalogInputEvent &Input)
- **Vector2DPointerEvent_GetScreenSpacePosition**(FPointerEvent &Input) — return -The position of the cursor in screen space
- **Vector2DPointerEvent_GetLastScreenSpacePosition**(FPointerEvent &Input) — return -The position of the cursor in screen space last time we handled an input event
- **Vector2DPointerEvent_GetCursorDelta**(FPointerEvent &Input) — return -the distance the mouse traveled since the last event was handled.
- **PointerEvent_IsMouseButtonDown**(FPointerEvent& Input, FKeyMouseButton) — Mouse buttons that are currently pressed
- **KeyPointerEvent_GetEffectingButton**(FPointerEvent &Input) — Mouse button that caused this event to be raised (possibly EB_None)
- **PointerEvent_GetWheelDelta**(FPointerEvent &Input) — How much did the mouse wheel turn since the last mouse event
- **PointerEvent_GetUserIndex**(FPointerEvent &Input) — return -The index of the user that caused the event
- **PointerEvent_GetPointerIndex**(FPointerEvent &Input) — return -The unique identifier of the pointer (e.g., finger index)
- **PointerEvent_GetTouchpadIndex**(FPointerEvent &Input) — return -The index of the touch pad that generated this event (for platforms with multiple touch pads per user)
- **PointerEvent_IsTouchEvent**(FPointerEvent &Input) — return -Is this event a result from a touch (as opposed to a mouse)
- **PointerEvent_TouchForce**(FPointerEvent &Input)
- **SlateGesturePointerEvent_GetGestureType**(FPointerEvent &Input) — return -The type of touch gesture
- **Vector2DPointerEvent_GetGestureDelta**(FPointerEvent &Input) — return -The change in gesture value since the last gesture event of the same type. CalibrateTilt EqualEqual_KeyKey EqualEqual_InputChordInputChord Key_IsModifierKey Key_IsGamepadKey Key_IsMouseButton Key_IsKeyboardKey Key_IsFloatAxis Key_IsVectorAxis Key_GetDisplayName InputEvent_IsRepeat InputEvent

## UKismetInternationalizationLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetInternationalizationLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetInternationalizationLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetInternationalizationLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetInternationalizationLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetInternationalizationLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetInternationalizationLibrary)

类

全文搜索

---


## 函数

- **SetCurrentCulture**(FString& Culture, boolSaveToConfig) — Set the current culture. return -True if the culture was set, false otherwise. params Culture -The culture to set, as an IETF language tag (eg, "zh-Hans-CN"). params SaveToConfig -If true, save the new setting to the users' "GameUserSettings" config so that it persists after a reload.
- **StringGetCurrentCulture**(Get the current culture as an IETF language tag: - A two-letter ISO 639-1 language code (eg, "zh"). - An optional four-letter ISO 15924 script code (eg, "Hans"). - An optional two-letter ISO 3166-1 country code (eg, "CN"). return -The culture as an IETF language tag (eg, "zh-Hans-CN").)
- **SetCurrentLanguage**(FString& Culture, boolSaveToConfig) — Set only the current language (for localization). return -True if the language was set, false otherwise. params Culture -The language to set, as an IETF language tag (eg, "zh-Hans-CN"). params SaveToConfig -If true, save the new setting to the users' "GameUserSettings" config so that it persists aft
- **StringGetCurrentLanguage**(Get the current language (for localization) as an IETF language tag: - A two-letter ISO 639-1 language code (eg, "zh"). - An optional four-letter ISO 15924 script code (eg, "Hans"). - An optional two-letter ISO 3166-1 country code (eg, "CN"). return -The language as an IETF language tag (eg, "zh-Han)
- **SetCurrentLocale**(FString& Culture, boolSaveToConfig) — Set only the current locale (for internationalization). return -True if the locale was set, false otherwise. params Culture -The locale to set, as an IETF language tag (eg, "zh-Hans-CN"). params SaveToConfig -If true, save the new setting to the users' "GameUserSettings" config so that it persists a
- **StringGetCurrentLocale**(Get the current locale (for internationalization) as an IETF language tag: - A two-letter ISO 639-1 language code (eg, "zh"). - An optional four-letter ISO 15924 script code (eg, "Hans"). - An optional two-letter ISO 3166-1 country code (eg, "CN"). return -The locale as an IETF language tag (eg, "zh)
- **SetCurrentLanguageAndLocale**(FString& Culture, boolSaveToConfig) — Set the current language (for localization) and locale (for internationalization). return -True if the language and locale were set, false otherwise. params Culture -The language and locale to set, as an IETF language tag (eg, "zh-Hans-CN"). params SaveToConfig -If true, save the new setting to the
- **SetCurrentAssetGroupCulture**(FName AssetGroup, FString& Culture, boolSaveToConfig) — Set the given asset group category culture from an IETF language tag (eg, "zh-Hans-CN"). return -True if the culture was set, false otherwise. params AssetGroup -The asset group to set the culture for. params Culture -The culture to set, as an IETF language tag (eg, "zh-Hans-CN"). params SaveToConfi
- **StringGetCurrentAssetGroupCulture**(FNameAssetGroup) — Get the given asset group category culture. return -The culture as an IETF language tag (eg, "zh-Hans-CN"). params AssetGroup -The asset group to get the culture for.
- **ClearCurrentAssetGroupCulture**(FName AssetGroup, boolSaveToConfig) — Clear the given asset group category culture. params AssetGroup -The asset group to clear the culture for. params SaveToConfig -If true, save the new setting to the users' "GameUserSettings" config so that it persists after a reload. SetCurrentCulture GetCurrentCulture SetCurrentLanguage GetCurrentL

## UKismetMaterialLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetMaterialLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetMaterialLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetMaterialLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetMaterialLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetMaterialLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetMaterialLibrary)

类

全文搜索

---


## 函数

- **SetScalarParameterValue**(UObject* WorldContextObject, UMaterialParameterCollection* Collection, FName ParameterName, floatParameterValue) — Sets a scalar parameter value on the material collection instance. Logs if ParameterName is invalid.
- **SetVectorParameterValue**(UObject* WorldContextObject, UMaterialParameterCollection* Collection, FName ParameterName, FLinearColor &ParameterValue) — Sets a vector parameter value on the material collection instance. Logs if ParameterName is invalid.
- **GetScalarParameterValue**(UObject* WorldContextObject, UMaterialParameterCollection* Collection, FNameParameterName) — Gets a scalar parameter value from the material collection instance. Logs if ParameterName is invalid.
- **FLinearColorGetVectorParameterValue**(UObject* WorldContextObject, UMaterialParameterCollection* Collection, FNameParameterName) — Gets a vector parameter value from the material collection instance. Logs if ParameterName is invalid.
- **CreateDynamicMaterialInstance**(UObject* WorldContextObject, UMaterialInterface *Parent) — Creates a Dynamic Material Instance which you can modify during gameplay. SetScalarParameterValue SetVectorParameterValue GetScalarParameterValue GetVectorParameterValue CreateDynamicMaterialInstance

## UKismetMathLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetMathLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetMathLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetMathLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetMathLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetMathLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetMathLibrary)

类

全文搜索

---


## 函数

- **RandomBool**(Returns a uniformly distributed random bool)
- **RandomBoolWithWeight**(floatWeight) — Get a random chance with the specified weight. Range of weight is 0.0 - 1.0 E.g., Weight = .6 return value = True 60% of the time
- **RandomBoolWithWeightFromStream**(float Weight, FRandomStream &RandomStream) — Get a random chance with the specified weight. Range of weight is 0.0 - 1.0 E.g., Weight = .6 return value = True 60% of the time
- **Not_PreBool**(boolA) — Returns the logical complement of the Boolean value (NOT A)
- **EqualEqual_BoolBool**(bool A, boolB) — Returns true if the values are equal (A == B)
- **NotEqual_BoolBool**(bool A, boolB) — Returns true if the values are not equal (A != B)
- **BooleanAND**(bool A, boolB) — Returns the logical AND of two values (A AND B)
- **BooleanNAND**(bool A, boolB) — Returns the logical NAND of two values (A AND B)
- **BooleanOR**(bool A, boolB) — Returns the logical OR of two values (A OR B)
- **BooleanXOR**(bool A, boolB) — Returns the logical eXclusive OR of two values (A XOR B)
- **BooleanNOR**(bool A, boolB) — Returns the logical Not OR of two values (A NOR B)
- **Multiply_ByteByte**(uint8 A, uint8B) — Multiplication (A B)
- **FUNCTION**(BlueprintPure, meta=(DisplayName = "Byte Byte", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true")
- **Divide_ByteByte**(uint8 A, uint8B) — Division (A B)
- **Percent_ByteByte**(uint8 A, uint8B) — Modulo (A % B)
- **Add_ByteByte**(uint8 A, uint8B) — Addition (A + B)
- **Subtract_ByteByte**(uint8 A, uint8B) — Subtraction (A - B)
- **BMin**(uint8 A, uint8B) — Returns the minimum value of A and B
- **BMax**(uint8 A, uint8B) — Returns the maximum value of A and B
- **Less_ByteByte**(uint8 A, uint8B) — Returns true if A is less than B (A < B)
- **Greater_ByteByte**(uint8 A, uint8B) — Returns true if A is greater than B (A > B)
- **LessEqual_ByteByte**(uint8 A, uint8B) — Returns true if A is less than or equal to B (A <= B)
- **GreaterEqual_ByteByte**(uint8 A, uint8B) — Returns true if A is greater than or equal to B (A >= B)
- **EqualEqual_ByteByte**(uint8 A, uint8B) — Returns true if A is equal to B (A == B)
- **NotEqual_ByteByte**(uint8 A, uint8B) — Returns true if A is not equal to B (A != B)
- **Multiply_IntInt**(int32 A, int32B) — Multiplication (A B)
- **FUNCTION**(BlueprintPure, meta=(DisplayName = "integer integer", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true")
- **Divide_IntInt**(int32 A, int32B) — Division (A B)
- **Percent_IntInt**(int32 A, int32B) — Modulo (A % B)
- **Add_IntInt**(int32 A, int32B) — Addition (A + B)
- **Subtract_IntInt**(int32 A, int32B) — Subtraction (A - B)
- **Less_IntInt**(int32 A, int32B) — Returns true if A is less than B (A < B)
- **Greater_IntInt**(int32 A, int32B) — Returns true if A is greater than B (A > B)
- **LessEqual_IntInt**(int32 A, int32B) — Returns true if A is less than or equal to B (A <= B)
- **GreaterEqual_IntInt**(int32 A, int32B) — Returns true if A is greater than or equal to B (A >= B)
- **EqualEqual_IntInt**(int32 A, int32B) — Returns true if A is equal to B (A == B)
- **NotEqual_IntInt**(int32 A, int32B) — Returns true if A is not equal to B (A != B)
- **InRange_IntInt**(int32 Value, int32 Min, int32 Max, bool InclusiveMin, boolInclusiveMax) — Returns true if value is between Min and Max (V >= Min && V <= Max) If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller
- **And_IntInt**(int32 A, int32B) — Bitwise AND (A & B)
- **Xor_IntInt**(int32 A, int32B) — Bitwise XOR (A ^ B)
- **Or_IntInt**(int32 A, int32B) — Bitwise OR (A
- **Not_Int**(int32A) — Bitwise NOT (~A)
- **LeftShift_Int**(int32 A, int32N) — Bitwise LeftShift (A << N)
- **RightShift_Int**(int32 A, int32N) — Bitwise RightShift (A >> N)
- **LeftShift_Int64**(int64 A, int32N) — Bitwise LeftShift (A << N)
- **RightShift_Int64**(int64 A, int32N) — Bitwise RightShift (A >> N)
- **SignOfInteger**(int32A) — Sign (integer, returns -1 if A < 0, 0 if A is zero, and +1 if A > 0)
- **RandomInteger**(int32A) — Returns a uniformly distributed random number between 0 and Max - 1
- **RandomIntegerInRange**(int32 Min, int32Max) — Return a random integer between Min and Max (>= Min and <= Max)
- **Min**(int32 A, int32B) — Returns the minimum value of A and B
- **Max**(int32 A, int32B) — Returns the maximum value of A and B
- **Clamp**(int32 V, int32 A, int32B) — Returns Value clamped to be between A and B (inclusive)
- **Abs_Int**(int32A) — Returns the absolute (positive) value of A
- **Multiply_Int64Int64**(int64 A, int64B) — Multiplication (A B)
- **FUNCTION**(BlueprintPure, meta=(DisplayName = "integer64 integer64", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true")
- **Divide_Int64Int64**(int64 A, int64B) — Division (A B)
- **Add_Int64Int64**(int64 A, int64B) — Addition (A + B)
- **Subtract_Int64Int64**(int64 A, int64B) — Subtraction (A - B)
- **Less_Int64Int64**(int64 A, int64B) — Returns true if A is less than B (A < B)
- **Greater_Int64Int64**(int64 A, int64B) — Returns true if A is greater than B (A > B)
- **LessEqual_Int64Int64**(int64 A, int64B) — Returns true if A is less than or equal to B (A <= B)
- **GreaterEqual_Int64Int64**(int64 A, int64B) — Returns true if A is greater than or equal to B (A >= B)
- **EqualEqual_Int64Int64**(int64 A, int64B) — Returns true if A is equal to B (A == B)
- **NotEqual_Int64Int64**(int64 A, int64B) — Returns true if A is not equal to B (A != B)
- **InRange_Int64Int64**(int64 Value, int64 Min, int64 Max, bool InclusiveMin, boolInclusiveMax) — Returns true if value is between Min and Max (V >= Min && V <= Max) If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller
- **And_Int64Int64**(int64 A, int64B) — Bitwise AND (A & B)
- **Xor_Int64Int64**(int64 A, int64B) — Bitwise XOR (A ^ B)
- **Or_Int64Int64**(int64 A, int64B) — Bitwise OR (A
- **Not_Int64**(int64A) — Bitwise NOT (~A)
- **SignOfInteger64**(int64A) — Sign (integer64, returns -1 if A < 0, 0 if A is zero, and +1 if A > 0)
- **RandomInteger64**(int64A) — Returns a uniformly distributed random number between 0 and Max - 1
- **RandomInteger64InRange**(int64 Min, int64Max) — Return a random integer64 between Min and Max (>= Min and <= Max)
- **MinInt64**(int64 A, int64B) — Returns the minimum value of A and B
- **MaxInt64**(int64 A, int64B) — Returns the maximum value of A and B
- **ClampInt64**(int64 V, int64 A, int64B) — Returns Value clamped to be between A and B (inclusive)
- **Abs_Int64**(int64A) — Returns the absolute (positive) value of A
- **Multiply_UInt64UInt64**(uint64 A, uint64B) — Multiplication (A B)
- **FUNCTION**(BlueprintPure, meta = (DisplayName = "uinteger64 uinteger64", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true")
- **Divide_UInt64UInt64**(uint64 A, uint64B) — Division (A B)
- **Add_UInt64UInt64**(uint64 A, uint64B) — Addition (A + B)
- **Subtract_UInt64UInt64**(uint64 A, uint64B) — Subtraction (A - B)
- **Less_UInt64UInt64**(uint64 A, uint64B) — Returns true if A is less than B (A < B)
- **Greater_UInt64UInt64**(uint64 A, uint64B) — Returns true if A is greater than B (A > B)
- **LessEqual_UInt64UInt64**(uint64 A, uint64B) — Returns true if A is less than or equal to B (A <= B)
- **GreaterEqual_UInt64UInt64**(uint64 A, uint64B) — Returns true if A is greater than or equal to B (A >= B)
- **EqualEqual_UInt64UInt64**(uint64 A, uint64B) — Returns true if A is equal to B (A == B)
- **NotEqual_UInt64UInt64**(uint64 A, uint64B) — Returns true if A is not equal to B (A != B)
- **InRange_UInt64UInt64**(uint64 Value, uint64 Min, uint64 Max, bool InclusiveMin, boolInclusiveMax) — Returns true if value is between Min and Max (V >= Min && V <= Max) If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller
- **And_UInt64UInt64**(uint64 A, uint64B) — Bitwise AND (A & B)
- **Xor_UInt64UInt64**(uint64 A, uint64B) — Bitwise XOR (A ^ B)
- **Or_UInt64UInt64**(uint64 A, uint64B) — Bitwise OR (A
- **Not_UInt64**(uint64A) — Bitwise NOT (~A)
- **RandomUInteger64**(uint64A) — Returns a uniformly distributed random number between 0 and Max - 1
- **RandomUInteger64InRange**(uint64 Min, uint64Max) — Return a random integer64 between Min and Max (>= Min and <= Max)
- **MinUInt64**(uint64 A, uint64B) — Returns the minimum value of A and B
- **MaxUInt64**(uint64 A, uint64B) — Returns the maximum value of A and B
- **ClampUInt64**(uint64 V, uint64 A, uint64B) — Returns Value clamped to be between A and B (inclusive)
- **MultiplyMultiply_FloatFloat**(float Base, floatExp) — Power (Base to the Exp-th power)
- **Multiply_FloatFloat**(float A, floatB) — Multiplication (A B)
- **FUNCTION**(BlueprintPure, meta=(DisplayName = "float float", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true")
- **Multiply_IntFloat**(int32 A, floatB) — Multiplication (A B)
- **FUNCTION**(BlueprintPure, meta=(DisplayName = "int float", CompactNodeTitle = "", Keywords = " multiply")
- **Divide_FloatFloat**(float A, floatB) — Division (A B)
- **Percent_FloatFloat**(float A, floatB) — Modulo (A % B)
- **Fraction**(floatA) — Returns the fractional part of a float.
- **Add_FloatFloat**(float A, floatB) — Addition (A + B)
- **Subtract_FloatFloat**(float A, floatB) — Subtraction (A - B)
- **Less_FloatFloat**(float A, floatB) — Returns true if A is Less than B (A < B)
- **Greater_FloatFloat**(float A, floatB) — Returns true if A is greater than B (A > B)
- **LessEqual_FloatFloat**(float A, floatB) — Returns true if A is Less than or equal to B (A <= B)
- **GreaterEqual_FloatFloat**(float A, floatB) — Returns true if A is greater than or equal to B (A >= B)
- **EqualEqual_FloatFloat**(float A, floatB) — Returns true if A is exactly equal to B (A == B)
- **NearlyEqual_FloatFloat**(float A, float B, floatErrorTolerance) — Returns true if A is nearly equal to B (
- **NotEqual_FloatFloat**(float A, floatB) — Returns true if A does not equal B (A != B)
- **InRange_FloatFloat**(float Value, float Min, float Max, bool InclusiveMin, boolInclusiveMax) — Returns true if value is between Min and Max (V >= Min && V <= Max) If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller
- **Hypotenuse**(float Width, floatHeight) — Returns the hypotenuse of a right-angled triangle given the width and height.
- **GridSnap_Float**(float Location, floatGridSize) — Snaps a value to the nearest grid multiple. E.g., Location = 5.1, GridSize = 10.0 : return value = 10.0 If GridSize is 0 Location is returned if GridSize is very small precision issues may occur.
- **Abs**(floatA) — Returns the absolute (positive) value of A
- **Sin**(floatA) — Returns the sine of A (expects Radians)
- **Asin**(floatA) — Returns the inverse sine (arcsin) of A (result is in Radians)
- **Cos**(floatA) — Returns the cosine of A (expects Radians)
- **Acos**(floatA) — Returns the inverse cosine (arccos) of A (result is in Radians)
- **Tan**(floatA) — Returns the tan of A (expects Radians)
- **Atan**(floatA) — Returns the inverse tan (atan) (result is in Radians)
- **Atan2**(float A, floatB) — Returns the inverse tan (atan2) of AB (result is in Radians)
- **Exp**(floatA) — Returns exponential(e) to the power A (e^A)
- **Log**(float A, floatBase) — Returns log of A base B (if B^R == A, returns R)
- **Loge**(floatA) — Returns natural log of A (if e^R == A, returns R)
- **Sqrt**(floatA) — Returns square root of A
- **Square**(floatA) — Returns square of A (AA)
- **RandomFloat**(Returns a random float between 0 and 1)
- **RandomFloatInRange**(float Min, floatMax) — Generate a random number between Min and Max
- **GetPI**(Returns the value of PI)
- **GetTAU**(Returns the value of TAU (= 2 PI))
- **DegreesToRadians**(floatA) — Returns radians value based on the input degrees
- **RadiansToDegrees**(floatA) — Returns degrees value based on the input radians
- **DegSin**(floatA) — Returns the sin of A (expects Degrees)
- **DegAsin**(floatA) — Returns the inverse sin (arcsin) of A (result is in Degrees)
- **DegCos**(floatA) — Returns the cos of A (expects Degrees)
- **DegAcos**(floatA) — Returns the inverse cos (arccos) of A (result is in Degrees)
- **DegTan**(floatA) — Returns the tan of A (expects Degrees)
- **DegAtan**(floatA) — Returns the inverse tan (atan) (result is in Degrees)
- **DegAtan2**(float A, floatB) — Returns the inverse tan (atan2) of AB (result is in Degrees)
- **ClampAngle**(float AngleDegrees, float MinAngleDegrees, floatMaxAngleDegrees) — Clamps an arbitrary angle to be between the given angles. Will clamp to nearest boundary. return -Returns clamped angle in the range -180..180. params MinAngleDegrees -"from" angle that defines the beginning of the range of valid angles (sweeping clockwise) params MaxAngleDegrees -"to" angle that de
- **FMin**(float A, floatB) — Returns the minimum value of A and B
- **FMax**(float A, floatB) — Returns the maximum value of A and B
- **FClamp**(float V, float A, floatB) — Returns Value clamped between A and B (inclusive)
- **MaxOfIntArray**(TArray < int32 >& IntArray, int32& IndexOfMaxValue, int32 &MaxValue) — Returns max of all array entries and the index at which it was found. Returns value of 0 and index of -1 if the supplied array is empty.
- **MinOfIntArray**(TArray < int32 >& IntArray, int32& IndexOfMinValue, int32 &MinValue) — Returns min of all array entries and the index at which it was found. Returns value of 0 and index of -1 if the supplied array is empty.
- **MaxOfFloatArray**(TArray < float >& FloatArray, int32& IndexOfMaxValue, float &MaxValue) — Returns max of all array entries and the index at which it was found. Returns value of 0 and index of -1 if the supplied array is empty.
- **MinOfFloatArray**(TArray < float >& FloatArray, int32& IndexOfMinValue, float &MinValue) — Returns min of all array entries and the index at which it was found. Returns value of 0 and index of -1 if the supplied array is empty.
- **MaxOfByteArray**(TArray < uint8 >& ByteArray, int32& IndexOfMaxValue, uint8 &MaxValue) — Returns max of all array entries and the index at which it was found. Returns value of 0 and index of -1 if the supplied array is empty.
- **MinOfByteArray**(TArray < uint8 >& ByteArray, int32& IndexOfMinValue, uint8 &MinValue) — Returns min of all array entries and the index at which it was found. Returns value of 0 and index of -1 if the supplied array is empty.
- **Lerp**(float A, float B, floatV) — Linearly interpolates between A and B based on Alpha (100% of A when Alpha=0 and 100% of B when Alpha=1)
- **InverseLerp**(float A, float B, floatValue) — Returns the fraction (alpha) of the range B-A that corresponds to Value, e.g., inputs A = 0, B = 8, Value = 3 : outputs Return Value = 38, indicating Value is 38 from A to B inputs A = 8, B = 0, Value = 3 : outputs Return Value = 58, indicating Value is 58 from A to B
- **Lerp**(A, B, InverseLerp(A, B, Value) — return -A normalized alpha value considering A and B. params A -The "from" value this float could be, usually but not necessarily a minimum. Returned as 0. params B -The "to" value this float could be, usually but not necessarily a maximum. Returned as 1. params Value -A value intended to be normali
- **Ease**(float A, float B, float Alpha, TEnumAsByte < EEasingFunc :: Type > EasingFunc, float BlendExp, int32Steps) — Easeing between A and B using a specified easing function
- **Round**(floatA) — Rounds A to the nearest integer
- **FFloor**(floatA) — Rounds A to the largest previous integer
- **FTrunc**(floatA) — Rounds A to an integer with truncation towards zero. (e.g. -1.7 truncated to -1, 2.8 truncated to 2)
- **IntVectorFTruncVector**(FVector &InVector) — Rounds A to an integer with truncation towards zero for each element in a vector. (e.g. -1.7 truncated to -1, 2.8 truncated to 2)
- **FCeil**(floatA) — Rounds A to the smallest following integer
- **FMod**(float Dividend, float Divisor, float &Remainder) — Returns the number of times Divisor will go into Dividend (i.e., Dividend divided by Divisor), as well as the remainder
- **SignOfFloat**(floatA) — Sign (float, returns -1 if A < 0, 0 if A is zero, and +1 if A > 0)
- **NormalizeToRange**(float Value, float RangeMin, floatRangeMax) — Returns Value normalized to the given range. (e.g. 20 normalized to the range 10->50 would result in 0.25)
- **MapRangeUnclamped**(float Value, float InRangeA, float InRangeB, float OutRangeA, floatOutRangeB) — Returns Value mapped from one range into another. (e.g. 20 normalized from the range 10->50 to 20->40 would result in 25)
- **MapRangeClamped**(float Value, float InRangeA, float InRangeB, float OutRangeA, floatOutRangeB) — Returns Value mapped from one range into another where the Value is clamped to the Input Range. (e.g. 0.5 normalized from the range 0->1 to 0->50 would result in 25)
- **MultiplyByPi**(floatValue) — Multiplies the input value by pi.
- **FUNCTION**(BlueprintPure, meta=(Keywords = " multiply")
- **FInterpEaseInOut**(float A, float B, float Alpha, floatExponent) — Interpolate between A and B, applying an ease inout function. Exp controls the degree of the curve.
- **MakePulsatingValue**(float InCurrentTime, float InPulsesPerSecond, floatInPhase) — Simple function to create a pulsating scalar value return - Pulsating value (0.0-1.0) params InCurrentTime -Current absolute time params InPulsesPerSecond -How many full pulses per second? params InPhase -Optional phase amount, between 0.0 and 1.0 (to synchronize pulses)
- **FixedTurn**(float InCurrent, float InDesired, floatInDeltaRate) — Returns a new rotation component value return -a new rotation component value clamped in the range (-360,360) params InCurrent -is the current rotation value params InDesired -is the desired rotation value
- **VectorMultiply_VectorFloat**(FVector A, floatB) — Scales Vector A by B
- **FUNCTION**(BlueprintPure, meta=(DisplayName = "vector float", CompactNodeTitle = "", Keywords = " multiply")
- **VectorMultiply_VectorInt**(FVector A, int32B) — Scales Vector A by B
- **FUNCTION**(BlueprintPure, meta=(DisplayName = "vector int", CompactNodeTitle = "", Keywords = " multiply")
- **VectorMultiply_VectorVector**(FVector A, FVectorB)
- **FUNCTION**(BlueprintPure, meta=(DisplayName = "vector vector", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true")
- **VectorDivide_VectorFloat**(FVector A, floatB) — Vector divide by a float
- **VectorDivide_VectorInt**(FVector A, int32B) — Vector divide by an integer
- **VectorDivide_VectorVector**(FVector A, FVectorB)
- **VectorAdd_VectorVector**(FVector A, FVectorB) — Vector addition
- **VectorAdd_VectorFloat**(FVector A, floatB) — Adds a float to each component of a vector
- **VectorAdd_VectorInt**(FVector A, int32B) — Adds an integer to each component of a vector
- **VectorSubtract_VectorVector**(FVector A, FVectorB) — Vector subtraction
- **VectorSubtract_VectorFloat**(FVector A, floatB) — Subtracts a float from each component of a vector
- **VectorSubtract_VectorInt**(FVector A, int32B) — Subtracts an integer from each component of a vector
- **VectorLessLess_VectorRotator**(FVector A, FRotatorB) — Returns result of vector A rotated by the inverse of Rotator B
- **VectorGreaterGreater_VectorRotator**(FVector A, FRotatorB) — Returns result of vector A rotated by Rotator B
- **VectorRotateAngleAxis**(FVector InVect, float AngleDeg, FVectorAxis) — Returns result of vector A rotated by AngleDeg around Axis
- **EqualEqual_VectorVector**(FVector A, FVector B, floatErrorTolerance) — Returns true if vector A is equal to vector B (A == B) within a specified error tolerance
- **NotEqual_VectorVector**(FVector A, FVector B, floatErrorTolerance) — Returns true if vector A is not equal to vector B (A != B) within a specified error tolerance
- **Dot_VectorVector**(FVector A, FVectorB) — Returns the dot product of two 3d vectors
- **VectorCross_VectorVector**(FVector A, FVectorB) — Returns the cross product of two 3d vectors
- **DotProduct2D**(FVector2D A, FVector2DB) — Returns the dot product of two 2d vectors
- **CrossProduct2D**(FVector2D A, FVector2DB) — Returns the cross product of two 2d vectors
- **VSize**(FVectorA) — Returns the length of the FVector
- **VSize2D**(FVector2DA) — Returns the length of a 2d FVector.
- **VSizeSquared**(FVectorA) — Returns the squared length of the FVector
- **VSize2DSquared**(FVector2DA) — Returns the squared length of a 2d FVector.
- **VectorNormal**(FVectorA) — Returns a unit normal version of the FVector A
- **Vector2DNormal2D**(FVector2DA) — Returns a unit normal version of the vector2d A
- **VectorVLerp**(FVector A, FVector B, floatV) — Linearly interpolates between A and B based on Alpha (100% of A when Alpha=0 and 100% of B when Alpha=1)
- **VectorVEase**(FVector A, FVector B, float Alpha, TEnumAsByte < EEasingFunc :: Type > EasingFunc, float BlendExp, int32Steps) — Easeing between A and B using a specified easing function
- **VContainsNan**(FVectorA) — Returns true if the vector contains NAN
- **VectorRandomUnitVector**(Returns a random vector with length of 1)
- **VectorRandomPointInBoundingBox**(FVector& Origin, FVector &BoxExtent) — Returns a random point within the specified bounding box
- **VectorRandomUnitVectorInConeInRadians**(FVector ConeDir, floatConeHalfAngleInRadians) — Returns a random vector with length of 1, within the specified cone, with uniform random distribution. params ConeDir - The base "center" direction of the cone. params ConeHalfAngleInRadians -The half-angle of the cone (from ConeDir to edge), in radians.
- **VectorRandomUnitVectorInConeInDegrees**(FVector ConeDir, floatConeHalfAngleInDegrees) — Returns a random vector with length of 1, within the specified cone, with uniform random distribution. params ConeDir - The base "center" direction of the cone. params ConeHalfAngleInDegrees -The half-angle of the cone (from ConeDir to edge), in degrees.
- **VectorRandomUnitVectorInEllipticalConeInRadians**(FVector ConeDir, float MaxYawInRadians, floatMaxPitchInRadians) — Returns a random vector with length of 1, within the specified cone, with uniform random distribution. The shape of the cone can be modified according to the yaw and pitch angles. params MaxYawInRadians -The yaw angle of the cone (from ConeDir to horizontal edge), in radians. params MaxPitchInRadian
- **VectorRandomUnitVectorInEllipticalConeInDegrees**(FVector ConeDir, float MaxYawInDegrees, floatMaxPitchInDegrees) — Returns a random vector with length of 1, within the specified cone, with uniform random distribution. The shape of the cone can be modified according to the yaw and pitch angles. params MaxYawInDegrees -The yaw angle of the cone (from ConeDir to horizontal edge), in degrees. params MaxPitchInDegree
- **VectorMirrorVectorByNormal**(FVector A, FVectorB) — Mirrors a vector by a normal
- **VectorProjectVectorOnToVector**(FVector V, FVectorTarget) — Projects one vector (V) onto another (Target) and returns the projected vector. If Target is nearly zero in length, returns the zero vector. return -V projected on to Target. params V -Vector to project. params Target -Vector on which we are projecting.
- **VectorGetReflectionVector**(FVector Direction, FVectorSurfaceNormal) — Given a direction vector and a surface normal, returns the vector reflected across the surface normal. Produces a result like shining a laser at a mirror! return - Reflected vector. params Direction -Direction vector the ray is coming from. params SurfaceNormal -A normal of the surface the ray shoul
- **FindNearestPointsOnLineSegments**(FVector Segment1Start, FVector Segment1End, FVector Segment2Start, FVector Segment2End, FVector& Segment1Point, FVector &Segment2Point) — Find closest points between 2 segments. params Segment1Start -Start of the 1st segment. params Segment1End -End of the 1st segment. params Segment2Start -Start of the 2nd segment. params Segment2End -End of the 2nd segment. params Segment1Point -Closest point on segment 1 to segment 2. params Segmen
- **VectorFindClosestPointOnSegment**(FVector Point, FVector SegmentStart, FVectorSegmentEnd) — Find the closest point on a segment to a given point. return -The closest point on the segment to the given point. params Point - Point for which we find the closest point on the segment. params SegmentStart -Start of the segment. params SegmentEnd -End of the segment.
- **VectorFindClosestPointOnLine**(FVector Point, FVector LineOrigin, FVectorLineDirection) — Find the closest point on an infinite line to a given point. return -The closest point on the line to the given point. params Point - Point for which we find the closest point on the line. params LineOrigin -Point of reference on the line. params LineDirection -Direction of the line. Not required to
- **GetPointDistanceToSegment**(FVector Point, FVector SegmentStart, FVectorSegmentEnd) — Find the distance from a point to the closest point on a segment. return -The distance from the given point to the closest point on the segment. params Point - Point for which we find the distance to the closest point on the segment. params SegmentStart -Start of the segment. params SegmentEnd -End
- **GetPointDistanceToLine**(FVector Point, FVector LineOrigin, FVectorLineDirection) — Find the distance from a point to the closest point on an infinite line. return -The distance from the given point to the closest point on the line. params Point - Point for which we find the distance to the closest point on the line. params LineOrigin -Point of reference on the line. params LineDir
- **VectorProjectPointOnToPlane**(FVector Point, FVector PlaneBase, FVectorPlaneNormal) — Projects a point onto a plane defined by a point on the plane and a plane normal. return -Point projected onto the plane. params Point -Point to project onto the plane. params PlaneBase -A point on the plane. params PlaneNormal -Normal of the plane.
- **VectorProjectVectorOnToPlane**(FVector V, FVectorPlaneNormal) — Projects a vector onto a plane defined by a normalized vector (PlaneNormal). return -Vector projected onto the plane. params V -Vector to project onto the plane. params PlaneNormal -Normal of the plane.
- **VectorNegateVector**(FVectorA) — Negate a vector.
- **VectorClampVectorSize**(FVector A, float Min, floatMax) — Clamp the vector size between a min and max length
- **GetMinElement**(FVectorA) — Find the minimum element (X, Y or Z) of a vector
- **GetMaxElement**(FVectorA) — Find the maximum element (X, Y or Z) of a vector
- **VectorGetVectorArrayAverage**(TArray < FVector > &Vectors) — Find the average of an array of vectors
- **VectorGetDirectionUnitVector**(FVector From, FVectorTo) — Find the unit direction vector from one position to another.
- **EqualEqual_RotatorRotator**(FRotator A, FRotator B, floatErrorTolerance) — Returns true if rotator A is equal to rotator B (A == B) within a specified error tolerance
- **NotEqual_RotatorRotator**(FRotator A, FRotator B, floatErrorTolerance) — Returns true if rotator A is not equal to rotator B (A != B) within a specified error tolerance
- **RotatorMultiply_RotatorFloat**(FRotator A, floatB) — Returns rotator representing rotator A scaled by B
- **FUNCTION**(BlueprintPure, meta=(DisplayName = "ScaleRotator", CompactNodeTitle = "", Keywords = " multiply rotate rotation")
- **RotatorMultiply_RotatorInt**(FRotator A, int32B) — Returns rotator representing rotator A scaled by B
- **FUNCTION**(BlueprintPure, meta=(DisplayName = "ScaleRotator (int)
- **RotatorComposeRotators**(FRotator A, FRotatorB) — Combine 2 rotations to give you the resulting rotation of first applying A, then B.
- **RotatorNegateRotator**(FRotatorA) — Negate a rotator
- **RotatorNormalRotator**(FRotatorA) — Negate a rotator
- **GetAxes**(FRotator A, FVector& X, FVector& Y, FVector &Z) — Get the reference frame direction vectors (axes) described by this rotation
- **RotatorRandomRotator**(boolbRoll) — Generates a random rotation, with optional random roll.
- **RotatorRLerp**(FRotator A, FRotator B, float Alpha, boolbShortestPath) — Linearly interpolates between A and B based on Alpha (100% of A when Alpha=0 and 100% of B when Alpha=1)
- **RotatorREase**(FRotator A, FRotator B, float Alpha, bool bShortestPath, TEnumAsByte < EEasingFunc :: Type > EasingFunc, float BlendExp, int32Steps) — Easeing between A and B using a specified easing function
- **RContainsNan**(FRotatorA) — Returns true if the rotation contains NAN
- **RotatorNormalizedDeltaRotator**(FRotator A, FRotatorB) — Normalized A-B
- **RotatorRotatorFromAxisAndAngle**(FVector Axis, floatAngle) — Create a rotation from an axis and and angle (in degrees)
- **ClampAxis**(floatAngle) — Clamps an angle to the range of [0, 360]. return -The clamped angle. params Angle -The angle to clamp.
- **NormalizeAxis**(floatAngle) — Clamps an angle to the range of [-180, 180]. return -The clamped angle. params Angle -The Angle to clamp.
- **LinearColorLinearColorLerp**(FLinearColor A, FLinearColor B, floatAlpha) — Linearly interpolates between A and B based on Alpha (100% of A when Alpha=0 and 100% of B when Alpha=1)
- **LinearColorLinearColorLerpUsingHSV**(FLinearColor A, FLinearColor B, floatAlpha) — Linearly interpolates between two colors by the specified Alpha amount (100% of A when Alpha=0 and 100% of B when Alpha=1). The interpolation is performed in HSV color space taking the shortest path to the new color's hue. This can give better results than a normal lerp, but is much more expensive.
- **LinearColorMultiply_LinearColorLinearColor**(FLinearColor A, FLinearColorB) — Element-wise multiplication of two linear colors (RR, GG, BB, AA)
- **FUNCTION**(BlueprintPure, meta=(DisplayName = "LinearColor (LinearColor)
- **LinearColorMultiply_LinearColorFloat**(FLinearColor A, floatB) — Element-wise multiplication of a linear color by a float (FR, FG, FB, FA)
- **FUNCTION**(BlueprintPure, meta=(DisplayName = "LinearColor Float", CompactNodeTitle = "", Keywords = " multiply")
- **PlaneMakePlaneFromPointAndNormal**(FVector Point, FVectorNormal) — Creates a plane with a facing direction of Normal at the given Point return -Plane instance params Point -A point on the plane params Normal -The Normal of the plane at Point
- **DateTimeMakeDateTime**(int32 Year, int32 Month, int32 Day, int32 Hour, int32 Minute, int32 Second, int32Millisecond) — Makes a DateTime struct
- **DateTimeMakeDateTimeFromString**(FString &InString) — Makes a DateTime struct
- **BreakDateTime**(FDateTime InDateTime, int32& Year, int32& Month, int32& Day, int32& Hour, int32& Minute, int32& Second, int32 &Millisecond) — Breaks a DateTime into its components
- **DateTimeAdd_DateTimeTimespan**(FDateTime A, FTimespanB) — Addition (A + B)
- **DateTimeSubtract_DateTimeTimespan**(FDateTime A, FTimespanB) — Subtraction (A - B)
- **TimespanSubtract_DateTimeDateTime**(FDateTime A, FDateTimeB) — Subtraction (A - B)
- **EqualEqual_DateTimeDateTime**(FDateTime A, FDateTimeB) — Returns true if the values are equal (A == B)
- **NotEqual_DateTimeDateTime**(FDateTime A, FDateTimeB) — Returns true if the values are not equal (A != B)
- **Greater_DateTimeDateTime**(FDateTime A, FDateTimeB) — Returns true if A is greater than B (A > B)
- **GreaterEqual_DateTimeDateTime**(FDateTime A, FDateTimeB) — Returns true if A is greater than or equal to B (A >= B)
- **Less_DateTimeDateTime**(FDateTime A, FDateTimeB) — Returns true if A is less than B (A < B)
- **LessEqual_DateTimeDateTime**(FDateTime A, FDateTimeB) — Returns true if A is less than or equal to B (A <= B)
- **DateTimeGetDate**(FDateTimeA) — Returns the date component of A
- **GetDay**(FDateTimeA) — Returns the day component of A (1 to 31)
- **GetDayOfYear**(FDateTimeA) — Returns the day of year of A
- **GetHour**(FDateTimeA) — Returns the hour component of A (24h format)
- **GetHour12**(FDateTimeA) — Returns the hour component of A (12h format)
- **GetMillisecond**(FDateTimeA) — Returns the millisecond component of A
- **GetMinute**(FDateTimeA) — Returns the minute component of A
- **GetMonth**(FDateTimeA) — Returns the month component of A
- **GetSecond**(FDateTimeA) — Returns the second component of A
- **TimespanGetTimeOfDay**(FDateTimeA) — Returns the time elapsed since midnight of A
- **GetYear**(FDateTimeA) — Returns the year component of A
- **IsAfternoon**(FDateTimeA) — Returns whether A's time is in the afternoon
- **IsMorning**(FDateTimeA) — Returns whether A's time is in the morning
- **DaysInMonth**(int32 Year, int32Month) — Returns the number of days in the given year and month
- **DaysInYear**(int32Year) — Returns the number of days in the given year
- **IsLeapYear**(int32Year) — Returns whether given year is a leap year
- **DateTimeDateTimeMaxValue**(Returns the maximum date and time value)
- **DateTimeDateTimeMinValue**(Returns the minimum date and time value)
- **DateTimeNow**(Returns the local date and time on this computer)
- **DateTimeToday**(Returns the local date on this computer)
- **DateTimeUtcNow**(Returns the UTC date and time on this computer)
- **DateTimeFromIsoString**(FString IsoString, FDateTime &Result) — Converts a date string in ISO-8601 format to a DateTime object
- **DateTimeFromString**(FString DateTimeString, FDateTime &Result) — Converts a date string to a DateTime object
- **TimespanMakeTimespan**(int32 Days, int32 Hours, int32 Minutes, int32 Seconds, int32Milliseconds) — Makes a Timespan struct
- **TimespanMakeTimespan2**(int32 Days, int32 Hours, int32 Minutes, int32 Seconds, int32FractionNano) — Makes a Timespan struct
- **BreakTimespan**(FTimespan InTimespan, int32& Days, int32& Hours, int32& Minutes, int32& Seconds, int32 &Milliseconds) — Breaks a Timespan into its components
- **BreakTimespan2**(FTimespan InTimespan, int32& Days, int32& Hours, int32& Minutes, int32& Seconds, int32 &FractionNano) — Breaks a Timespan into its components
- **TimespanAdd_TimespanTimespan**(FTimespan A, FTimespanB) — Addition (A + B)
- **TimespanSubtract_TimespanTimespan**(FTimespan A, FTimespanB) — Subtraction (A - B)
- **TimespanMultiply_TimespanFloat**(FTimespan A, floatScalar) — Scalar multiplication (A s)
- **FUNCTION**(BlueprintPure, meta=(DisplayName="Timespan float", CompactNodeTitle="", Keywords=" multiply")
- **TimespanDivide_TimespanFloat**(FTimespan A, floatScalar) — Scalar division (A s)
- **FUNCTION**(BlueprintPure, meta=(DisplayName="Timespan float", CompactNodeTitle="", Keywords=" divide")
- **EqualEqual_TimespanTimespan**(FTimespan A, FTimespanB) — Returns true if the values are equal (A == B)
- **NotEqual_TimespanTimespan**(FTimespan A, FTimespanB) — Returns true if the values are not equal (A != B)
- **Greater_TimespanTimespan**(FTimespan A, FTimespanB) — Returns true if A is greater than B (A > B)
- **GreaterEqual_TimespanTimespan**(FTimespan A, FTimespanB) — Returns true if A is greater than or equal to B (A >= B)
- **Less_TimespanTimespan**(FTimespan A, FTimespanB) — Returns true if A is less than B (A < B)
- **LessEqual_TimespanTimespan**(FTimespan A, FTimespanB) — Returns true if A is less than or equal to B (A <= B)
- **GetDays**(FTimespanA) — Returns the days component of A
- **TimespanGetDuration**(FTimespanA) — Returns the absolute value of A
- **GetHours**(FTimespanA) — Returns the hours component of A
- **GetMilliseconds**(FTimespanA) — Returns the milliseconds component of A
- **GetMinutes**(FTimespanA) — Returns the minutes component of A
- **GetSeconds**(FTimespanA) — Returns the seconds component of A
- **GetTotalDays**(FTimespanA) — Returns the total number of days in A
- **GetTotalHours**(FTimespanA) — Returns the total number of hours in A
- **GetTotalMilliseconds**(FTimespanA) — Returns the total number of milliseconds in A
- **GetTotalMinutes**(FTimespanA) — Returns the total number of minutes in A
- **GetTotalSeconds**(FTimespanA) — Returns the total number of seconds in A
- **TimespanFromDays**(floatDays) — Returns a time span that represents the specified number of days
- **TimespanFromHours**(floatHours) — Returns a time span that represents the specified number of hours
- **TimespanFromMilliseconds**(floatMilliseconds) — Returns a time span that represents the specified number of milliseconds
- **TimespanFromMinutes**(floatMinutes) — Returns a time span that represents the specified number of minutes
- **TimespanFromSeconds**(floatSeconds) — Returns a time span that represents the specified number of seconds
- **TimespanTimespanMaxValue**(Returns the maximum time span value)
- **TimespanTimespanMinValue**(Returns the minimum time span value)
- **TimespanRatio**(FTimespan A, FTimespanB) — Returns the ratio between two time spans (A B), handles zero values
- **TimespanTimespanZeroValue**(Returns a zero time span value)
- **TimespanFromString**(FString TimespanString, FTimespan &Result) — Converts a time span string to a Timespan object
- **Conv_ByteToFloat**(uint8InByte) — Converts a byte to a float
- **Conv_IntToFloat**(int32InInt) — Converts an integer to a float
- **Conv_IntToInt64**(int32InInt) — Converts an integer to a 64 bit integer
- **Conv_Int64ToInt**(int64InInt) — Converts an 64 bit integer to a 32 bit integer
- **Conv_IntToByte**(int32InInt) — Converts an integer to a byte (if the integer is too large, returns the low 8 bits)
- **IntVectorConv_IntToIntVector**(int32InInt) — Converts an integer to an IntVector
- **Conv_IntToBool**(int32InInt) — Converts a int to a bool
- **Conv_BoolToInt**(boolInBool) — Converts a bool to an int
- **Conv_BoolToFloat**(boolInBool) — Converts a bool to a float (0.0f or 1.0f)
- **Conv_BoolToByte**(boolInBool) — Converts a bool to a byte
- **Conv_ByteToInt**(uint8InByte) — Converts a byte to an integer
- **LinearColorConv_VectorToLinearColor**(FVectorInVec) — Converts a vector to LinearColor
- **VectorConv_LinearColorToVector**(FLinearColorInLinearColor) — Converts a LinearColor to a vector
- **LinearColorConv_ColorToLinearColor**(FColorInColor) — Converts a color to LinearColor
- **ColorConv_LinearColorToColor**(FLinearColorInLinearColor) — Converts a LinearColor to a color
- **TransformConv_VectorToTransform**(FVectorInTranslation) — Convert a vector to a transform. Uses vector as location
- **Vector2DConv_VectorToVector2D**(FVectorInVec) — Convert a Vector to a Vector2D
- **VectorConv_Vector2DToVector**(FVector2D InVec2D, floatZ) — Convert a Vector2D to a Vector
- **VectorConv_IntVectorToVector**(FIntVector &InIntVector) — Convert an IntVector to a vector
- **VectorConv_FloatToVector**(floatInFloat) — Convert a float into a vector, where each element is that float
- **LinearColorConv_FloatToLinearColor**(floatInFloat) — Convert a float into a LinearColor, where each element is that float
- **BoxMakeBox**(FVector Min, FVectorMax) — Makes an FBox from Min and Max and sets IsValid to true
- **Box2DMakeBox2D**(FVector2D Min, FVector2DMax) — Makes an FBox2D from Min and Max and sets IsValid to true
- **VectorMakeVector**(float X, float Y, floatZ)
- **BreakVector**(FVector InVec, float& X, float& Y, float &Z) — Breaks a vector apart into X, Y, Z
- **Vector2DMakeVector2D**(float X, floatY)
- **BreakVector2D**(FVector2D InVec, float& X, float &Y) — Breaks a 2D vector apart into X, Y.
- **VectorGetForwardVector**(FRotatorInRot) — Rotate the world forward vector by the given rotation
- **VectorGetRightVector**(FRotatorInRot) — Rotate the world right vector by the given rotation
- **VectorGetUpVector**(FRotatorInRot) — Rotate the world up vector by the given rotation
- **VectorCreateVectorFromYawPitch**(float Yaw, float Pitch, floatLength)
- **GetYawPitchFromVector**(FVector InVec, float& Yaw, float &Pitch) — Breaks a vector apart into Yaw, Pitch rotation values given in degrees. (non-clamped)
- **GetAzimuthAndElevation**(FVector InDirection, FTransform& ReferenceFrame, float& Azimuth, float &Elevation) — Breaks a direction vector apart into Azimuth (Yaw) and Elevation (Pitch) rotation values given in degrees. (non-clamped) Relative to the provided reference frame (an Actor's WorldTransform for example)
- **RotatorMakeRotator**(float Roll, float Pitch, floatYaw)
- **RotatorFindLookAtRotation**(FVector& Start, FVector &Target) — Find a rotation for an object at Start location to point at Target location.
- **RotatorMakeRotFromX**(FVector &X) — Builds a rotator given only a XAxis. Y and Z are unspecified but will be orthonormal. XAxis need not be normalized.
- **RotatorMakeRotFromY**(FVector &Y) — Builds a rotation matrix given only a YAxis. X and Z are unspecified but will be orthonormal. YAxis need not be normalized.
- **RotatorMakeRotFromZ**(FVector &Z) — Builds a rotation matrix given only a ZAxis. X and Y are unspecified but will be orthonormal. ZAxis need not be normalized.
- **RotatorMakeRotFromXY**(FVector& X, FVector &Y) — Builds a matrix with given X and Y axes. X will remain fixed, Y may be changed minimally to enforce orthogonality. Z will be computed. Inputs need not be normalized.
- **RotatorMakeRotFromXZ**(FVector& X, FVector &Z) — Builds a matrix with given X and Z axes. X will remain fixed, Z may be changed minimally to enforce orthogonality. Y will be computed. Inputs need not be normalized.
- **RotatorMakeRotFromYX**(FVector& Y, FVector &X) — Builds a matrix with given Y and X axes. Y will remain fixed, X may be changed minimally to enforce orthogonality. Z will be computed. Inputs need not be normalized.
- **RotatorMakeRotFromYZ**(FVector& Y, FVector &Z) — Builds a matrix with given Y and Z axes. Y will remain fixed, Z may be changed minimally to enforce orthogonality. X will be computed. Inputs need not be normalized.
- **RotatorMakeRotFromZX**(FVector& Z, FVector &X) — Builds a matrix with given Z and X axes. Z will remain fixed, X may be changed minimally to enforce orthogonality. Y will be computed. Inputs need not be normalized.
- **RotatorMakeRotFromZY**(FVector& Z, FVector &Y) — Builds a matrix with given Z and Y axes. Z will remain fixed, Y may be changed minimally to enforce orthogonality. X will be computed. Inputs need not be normalized.
- **BreakRotator**(FRotator InRot, float& Roll, float& Pitch, float &Yaw)
- **BreakRotIntoAxes**(FRotator& InRot, FVector& X, FVector& Y, FVector &Z) — Breaks apart a rotator into its component axes
- **TransformMakeTransform**(FVector Translation, FRotator Rotation, FVectorScale) — Make a transform from location, rotation and scale
- **BreakTransform**(FTransform& InTransform, FVector& Translation, FRotator& Rotation, FVector &Scale) — Breaks apart a transform into location, rotation and scale
- **RandomStreamMakeRandomStream**(int32InitialSeed) — Makes a SRand-based random number generator
- **BreakRandomStream**(FRandomStream& InRandomStream, int32 &InitialSeed) — Breaks apart a random number generator
- **LinearColorMakeColor**(float R, float G, float B, floatA) — Make a color from individual color components (RGB space)
- **BreakColor**(FLinearColor InColor, float& R, float& G, float& B, float &A) — Breaks apart a color into individual RGB components (as well as alpha)
- **LinearColorHSVToRGB**(float H, float S, float V, floatA) — Make a color from individual color components (HSV space)
- **RGBToHSV**(FLinearColor InColor, float& H, float& S, float& V, float &A) — Breaks apart a color into individual HSV components (as well as alpha)
- **HSVToRGB_Vector**(FLinearColor HSV, FLinearColor &RGB) — Converts a HSV linear color (where H is in R, S is in G, and V is in B) to RGB
- **RGBToHSV_Vector**(FLinearColor RGB, FLinearColor &HSV) — Converts a RGB linear color to HSV (where H is in R, S is in G, and V is in B)
- **LinearColorHexToRGB_Vector**(FString HexString, boolbSRGB)
- **StringRGB_VectorToHex**(FLinearColor RGB, boolbSRGB)
- **StringSelectString**(FString& A, FString& B, boolbSelectA) — If bPickA is true, A is returned, otherwise B is
- **SelectInt**(int32 A, int32 B, boolbSelectA) — If bPickA is true, A is returned, otherwise B is
- **SelectFloat**(float A, float B, boolbSelectA) — If bPickA is true, A is returned, otherwise B is
- **VectorSelectVector**(FVector A, FVector B, boolbSelectA) — If bPickA is true, A is returned, otherwise B is
- **RotatorSelectRotator**(FRotator A, FRotator B, boolbSelectA) — If bPickA is true, A is returned, otherwise B is
- **LinearColorSelectColor**(FLinearColor A, FLinearColor B, boolbSelectA) — If bPickA is true, A is returned, otherwise B is
- **TransformSelectTransform**(FTransform& A, FTransform& B, boolbSelectA) — If bPickA is true, A is returned, otherwise B is
- **SelectObject**(UObject* A, UObject* B, boolbSelectA) — If bPickA is true, A is returned, otherwise B is
- **SelectClass**(UClass* A, UClass* B, boolbSelectA) — If bPickA is true, A is returned, otherwise B is
- **RotatorMakeRotationFromAxes**(FVector Forward, FVector Right, FVectorUp)
- **RotatorConv_VectorToRotator**(FVectorInVec) — Create a rotator which orients X along the supplied direction vector
- **VectorConv_RotatorToVector**(FRotatorInRot) — Get the X direction vector after this rotation
- **EqualEqual_ObjectObject**(UObject* A, UObject *B) — Returns true if A and B are equal (A == B)
- **NotEqual_ObjectObject**(UObject* A, UObject *B) — Returns true if A and B are not equal (A != B)
- **EqualEqual_ClassClass**(UClass* A, UClass *B) — Returns true if A and B are equal (A == B)
- **NotEqual_ClassClass**(UClass* A, UClass *B) — Returns true if A and B are not equal (A != B)
- **ClassIsChildOf**(TSubclassOf < UObject > TestClass, TSubclassOf < UObject >ParentClass) — Determine if a class is a child of another class. return -true if TestClass == ParentClass, or if TestClass is a child of ParentClass; false otherwise, or if either
- **EqualEqual_NameName**(FName A, FNameB) — Returns true if A and B are equal (A == B)
- **NotEqual_NameName**(FName A, FNameB) — Returns true if A and B are not equal (A != B)
- **VectorTransformLocation**(FTransform& T, FVectorLocation) — Transform a position by the supplied transform. For example, if T was an object's transform, this would transform a position from local space to world space.
- **VectorTransformDirection**(FTransform& T, FVectorDirection) — Transform a direction vector by the supplied transform - will not change its length. For example, if T was an object's transform, this would transform a direction from local space to world space.
- **RotatorTransformRotation**(FTransform& T, FRotatorRotation) — Transform a rotator by the supplied transform. For example, if T was an object's transform, this would transform a rotation from local space to world space.
- **VectorInverseTransformLocation**(FTransform& T, FVectorLocation) — Transform a position by the inverse of the supplied transform. For example, if T was an object's transform, this would transform a position from world space to local space.
- **VectorInverseTransformDirection**(FTransform& T, FVectorDirection) — Transform a direction vector by the inverse of the supplied transform - will not change its length. For example, if T was an object's transform, this would transform a direction from world space to local space.
- **RotatorInverseTransformRotation**(FTransform& T, FRotatorRotation) — Transform a rotator by the inverse of the supplied transform. For example, if T was an object's transform, this would transform a rotation from world space to local space.
- **TransformComposeTransforms**(FTransform& A, FTransform &B) — Compose two transforms in order: A B. Order matters when composing transforms: A B will yield a transform that logically first applies A then B to any subsequent transformation. Example: LocalToWorld = ComposeTransforms(DeltaRotation, LocalToWorld) will change rotation in local space by DeltaRotatio
- **TransformConvertTransformToRelative**(FTransform& Transform, FTransform &ParentTransform) — Returns the given transform, converted to be relative to the given ParentTransform. Example: AToB = ConvertTransformToRelative(AToWorld, BToWorld) to compute A relative to B. return - The new relative transform params Transform -The transform you wish to convert params ParentTransform -The transform
- **TransformInvertTransform**(FTransform &T) — Returns the inverse of the given transform T. Example: Given a LocalToWorld transform, WorldToLocal will be returned. return -The inverse of T. params T -The transform you wish to invert
- **TransformTLerp**(FTransform& A, FTransform& B, float Alpha, TEnumAsByte < ELerpInterpolationMode :: Type >InterpMode) — Linearly interpolates between A and B based on Alpha (100% of A when Alpha=0 and 100% of B when Alpha=1).
- **TransformTEase**(FTransform& A, FTransform& B, float Alpha, TEnumAsByte < EEasingFunc :: Type > EasingFunc, float BlendExp, int32Steps) — Ease between A and B using a specified easing function.
- **TransformTInterpTo**(FTransform& Current, FTransform& Target, float DeltaTime, floatInterpSpeed) — Tries to reach a target transform.
- **EqualEqual_TransformTransform**(FTransform& A, FTransform &B) — Returns true if transform A is equal to transform B
- **NearlyEqual_TransformTransform**(FTransform& A, FTransform& B, float LocationTolerance, float RotationTolerance, floatScale3DTolerance) — Returns true if transform A is nearly equal to B params LocationTolerance -How close position of transforms need to be to be considered equal params RotationTolerance -How close rotations of transforms need to be to be considered equal params Scale3DTolerance -How close scale of transforms need to b
- **Vector2DAdd_Vector2DVector2D**(FVector2D A, FVector2DB) — Returns addition of Vector A and Vector B (A + B)
- **Vector2DSubtract_Vector2DVector2D**(FVector2D A, FVector2DB) — Returns subtraction of Vector B from Vector A (A - B)
- **Vector2DMultiply_Vector2DFloat**(FVector2D A, floatB) — Returns Vector A scaled by B
- **FUNCTION**(BlueprintPure, meta=(DisplayName = "vector2d float", CompactNodeTitle = "", Keywords = " multiply")
- **Vector2DMultiply_Vector2DVector2D**(FVector2D A, FVector2DB)
- **FUNCTION**(BlueprintPure, meta = (DisplayName = "vector2d vector2d", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true")
- **Vector2DDivide_Vector2DFloat**(FVector2D A, floatB) — Returns Vector A divided by B
- **Vector2DDivide_Vector2DVector2D**(FVector2D A, FVector2DB)
- **Vector2DAdd_Vector2DFloat**(FVector2D A, floatB) — Returns Vector A added by B
- **Vector2DSubtract_Vector2DFloat**(FVector2D A, floatB) — Returns Vector A subtracted by B
- **EqualEqual_Vector2DVector2D**(FVector2D A, FVector2D B, floatErrorTolerance) — Returns true if vector2D A is equal to vector2D B (A == B) within a specified error tolerance
- **NotEqual_Vector2DVector2D**(FVector2D A, FVector2D B, floatErrorTolerance) — Returns true if vector2D A is not equal to vector2D B (A != B) within a specified error tolerance
- **FInterpTo**(float Current, float Target, float DeltaTime, floatInterpSpeed) — Tries to reach Target based on distance from Current position, giving a nice smooth feeling when tracking a position. return - New interpolated position params Current - Actual position params Target - Target position params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed
- **FInterpTo_Constant**(float Current, float Target, float DeltaTime, floatInterpSpeed) — Tries to reach Target at a constant rate. return - New interpolated position params Current - Actual position params Target - Target position params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed
- **VectorVInterpTo**(FVector Current, FVector Target, float DeltaTime, floatInterpSpeed) — Tries to reach Target based on distance from Current position, giving a nice smooth feeling when tracking a position. return - New interpolated position params Current - Actual position params Target - Target position params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed
- **VectorVInterpTo_Constant**(FVector Current, FVector Target, float DeltaTime, floatInterpSpeed) — Tries to reach Target at a constant rate. return - New interpolated position params Current - Actual position params Target - Target position params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed
- **Vector2DVector2DInterpTo**(FVector2D Current, FVector2D Target, float DeltaTime, floatInterpSpeed) — Tries to reach Target based on distance from Current position, giving a nice smooth feeling when tracking a position. return - New interpolated position params Current - Actual position params Target - Target position params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed
- **Vector2DVector2DInterpTo_Constant**(FVector2D Current, FVector2D Target, float DeltaTime, floatInterpSpeed) — Tries to reach Target at a constant rate. return - New interpolated position params Current - Actual position params Target - Target position params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed
- **RotatorRInterpTo**(FRotator Current, FRotator Target, float DeltaTime, floatInterpSpeed) — Tries to reach Target rotation based on Current rotation, giving a nice smooth feeling when rotating to Target rotation. return - New interpolated position params Current - Actual rotation params Target - Target rotation params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed
- **RotatorRInterpTo_Constant**(FRotator Current, FRotator Target, float DeltaTime, floatInterpSpeed) — Tries to reach Target rotation at a constant rate. return - New interpolated position params Current - Actual rotation params Target - Target rotation params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed
- **LinearColorCInterpTo**(FLinearColor Current, FLinearColor Target, float DeltaTime, floatInterpSpeed) — Interpolates towards a varying target color smoothly. return - New interpolated Color params Current - Current Color params Target - Target Color params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed
- **FloatSpringInterp**(float Current, float Target, FFloatSpringState& SpringState, float Stiffness, float CriticalDampingFactor, float DeltaTime, floatMass) — Uses a simple spring model to interpolate a float from Current to Target. params Current - Current value params Target - Target value params SpringState - Data related to spring model (velocity, error, etc..) - Create a unique variable per spring params Stiffness - How stiff the spring model is (mor
- **VectorVectorSpringInterp**(FVector Current, FVector Target, FVectorSpringState& SpringState, float Stiffness, float CriticalDampingFactor, float DeltaTime, floatMass) — Uses a simple spring model to interpolate a vector from Current to Target. params Current - Current value params Target - Target value params SpringState - Data related to spring model (velocity, error, etc..) - Create a unique variable per spring params Stiffness - How stiff the spring model is (mo
- **ResetFloatSpringState**(FFloatSpringState &SpringState) — Resets the state of a given spring
- **ResetVectorSpringState**(FVectorSpringState &SpringState) — Resets the state of a given spring
- **RandomIntegerFromStream**(int32 Max, FRandomStream &Stream) — Returns a uniformly distributed random number between 0 and Max - 1
- **RandomIntegerInRangeFromStream**(int32 Min, int32 Max, FRandomStream &Stream) — Return a random integer between Min and Max (>= Min and <= Max)
- **RandomBoolFromStream**(FRandomStream &Stream) — Returns a random bool
- **RandomFloatFromStream**(FRandomStream &Stream) — Returns a random float between 0 and 1
- **RandomFloatInRangeFromStream**(float Min, float Max, FRandomStream &Stream) — Generate a random number between Min and Max
- **VectorRandomUnitVectorFromStream**(FRandomStream &Stream) — Returns a random vector with length of 1.0
- **RotatorRandomRotatorFromStream**(bool bRoll, FRandomStream &Stream) — Create a random rotation
- **ResetRandomStream**(FRandomStream &Stream) — Reset a random stream
- **SeedRandomStream**(FRandomStream &Stream) — Create a new random seed for a random stream
- **SetRandomStreamSeed**(FRandomStream& Stream, int32NewSeed) — Set the seed of a random stream to a specific number
- **VectorRandomUnitVectorInConeInRadiansFromStream**(FVector& ConeDir, float ConeHalfAngleInRadians, FRandomStream &Stream) — Returns a random vector with length of 1, within the specified cone, with uniform random distribution. params ConeDir - The base "center" direction of the cone. params ConeHalfAngleInRadians -The half-angle of the cone (from ConeDir to edge), in radians. params Stream - The random stream from which
- **VectorRandomUnitVectorInConeInDegreesFromStream**(FVector& ConeDir, float ConeHalfAngleInDegrees, FRandomStream &Stream) — Returns a random vector with length of 1, within the specified cone, with uniform random distribution. params ConeDir - The base "center" direction of the cone. params ConeHalfAngleInDegrees -The half-angle of the cone (from ConeDir to edge), in degrees. params Stream - The random stream from which
- **VectorRandomUnitVectorInEllipticalConeInRadiansFromStream**(FVector& ConeDir, float MaxYawInRadians, float MaxPitchInRadians, FRandomStream &Stream) — Returns a random vector with length of 1, within the specified cone, with uniform random distribution. The shape of the cone can be modified according to the yaw and pitch angles. params MaxYawInRadians -The yaw angle of the cone (from ConeDir to horizontal edge), in radians. params MaxPitchInRadian
- **VectorRandomUnitVectorInEllipticalConeInDegreesFromStream**(FVector& ConeDir, float MaxYawInDegrees, float MaxPitchInDegrees, FRandomStream &Stream) — Returns a random vector with length of 1, within the specified cone, with uniform random distribution. The shape of the cone can be modified according to the yaw and pitch angles. params MaxYawInDegrees -The yaw angle of the cone (from ConeDir to horizontal edge), in degrees. params MaxPitchInDegree
- **MinimumAreaRectangle**(UObject* WorldContextObject, TArray < FVector >& InVerts, FVector& SampleSurfaceNormal, FVector& OutRectCenter, FRotator& OutRectRotation, float& OutSideLengthX, float& OutSideLengthY, boolbDeb) — Finds the minimum area rectangle that encloses all of the points in InVerts params InVerts -- Points to enclose in the rectangle
- **PointsAreCoplanar**(TArray < FVector >& Points, floatTolerance) — Determines whether a given set of points are coplanar, with a tolerance. Any three points or less are always coplanar. return -Whether the points are relatively coplanar, based on the tolerance params Points -- The set of points to determine coplanarity for. params Tolerance -- Larger numbers means
- **IsPointInBox**(FVector Point, FVector BoxOrigin, FVectorBoxExtent) — Determines whether the given point is in a box. Includes points on the box. return -Whether the point is in the box. params Point - Point to test params BoxOrigin -Origin of the box params BoxExtent -Extents of the box (distance in each axis from origin)
- **IsPointInBoxWithTransform**(FVector Point, FTransform& BoxWorldTransform, FVectorBoxExtent) — Determines whether a given point is in a box with a given transform. Includes points on the box. return -Whether the point is in the box. params Point - Point to test params BoxWorldTransform -Component-to-World transform of the box. params BoxExtent - Extents of the box (distance in each axis from
- **LinePlaneIntersection**(FVector& LineStart, FVector& LineEnd, FPlane& APlane, float& T, FVector &Intersection) — Computes the intersection point between a line and a plane. return - True if the intersection test was successful. params T -- The t of the intersection between the line and the plane params Intersection -- The point of intersection between the line and the plane
- **LinePlaneIntersection_OriginNormal**(FVector& LineStart, FVector& LineEnd, FVector PlaneOrigin, FVector PlaneNormal, float& T, FVector &Intersection) — Computes the intersection point between a line and a plane. return - True if the intersection test was successful. params T -- The t of the intersection between the line and the plane params Intersection -- The point of intersection between the line and the plane RandomBool RandomBoolWithWeight Rand

## UKismetMetaDataLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetMetaDataLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetMetaDataLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetMetaDataLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetMetaDataLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetMetaDataLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetMetaDataLibrary)

类

全文搜索

---


## 函数

- **HasMetaData**(UField* Field, FName Key, int32NameIndex)
- **GetMetaData**(UField* Field, FName Key, int32NameIndex)
- **GetEnum**(UEnumProperty *EnumProperty)
- **GetEnumFromByte**(UByteProperty *ByteProperty)
- **GetNumOfEnum**(UEnum *Enum)
- **NameGetEnumName**(UEnum* Enum, int32NameIndex)
- **GetEnumValue**(UEnum* Enum, int32NameIndex)
- **GetEnumIndexByValue**(UEnum* Enum, int64Value)
- **GetScriptStructOfStructProperty**(UStructProperty *StructProperty)
- **GetClassOfObjectPropertyBase**(UObjectPropertyBase *ObjectPropertyBase)
- **GetObjectsWithOuter**(UObject* Outer, bool bIncludeNestedObjects, int32 ExclusionFlags, int32ExclusionInternalFlags) — HasMetaData GetMetaData GetEnum GetEnumFromByte GetNumOfEnum GetEnumName GetEnumValue GetEnumIndexByValue GetScriptStructOfStructProperty GetClassOfObjectPropertyBase GetObjectsWithOuter

## UKismetNodeHelperLibrary

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

## UKismetPackageNameLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetPackageNameLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetPackageNameLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetPackageNameLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetPackageNameLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetPackageNameLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetPackageNameLibrary)

类

全文搜索

---


## 函数

- **IsValidLongPackageName**(FString& InLongPackageName, bool bIncludeReadOnlyRoots, FText &OutReason) — Helper function for converting short to long script package name (InputCore -> ScriptInputCore) return - true if a valid long package name params InLongPackageName -Long Package Name params bIncludeReadOnlyRoots -If true, will include roots that you should not save to. (Temp, Script) params OutReaso
- **IsValidObjectPath**(FString& InObjectPath, FText &OutReason) — Returns true if the path starts with a valid root (i.e. Game, Engine, etc) and contains no illegal characters. This validates that the packagename is valid, and also makes sure the object after package name is also correct. This will return false if passed a path starting with Classname' return - tr
- **DoesPackageExist**(FString& LongPackageName, FGuid& Guid, FString &OutFilename) — Checks if the given string is a long package name or not. return -true if the specified package name points to an existing package, false otherwise. params LongPackageName -Package name. params OutFilename -Package filename on disk. IsValidLongPackageName IsValidObjectPath DoesPackageExist

## UKismetRenderingLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetRenderingLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetRenderingLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetRenderingLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetRenderingLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetRenderingLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetRenderingLibrary)

类

全文搜索

---


## 函数

- **ClearRenderTarget2D**(UObject* WorldContextObject, UTextureRenderTarget2D* TextureRenderTarget, FLinearColorClearColor) — Clears the specified render target with the given ClearColor.
- **CreateRenderTarget2D**(UObject* WorldContextObject, int32 Width, int32 Height, ETextureRenderTargetFormatFormat) — Creates a new render target and initializes it to the specified dimensions
- **CreateRenderTarget2DExt**(UObject* WorldContextObject, int32 Width, int32 Height, ETextureRenderTargetFormat Format, FLinearColor &ClearColor) — Creates a new render target and initializes it to the specified dimensions
- **CreateRenderTarget2DWithFilter**(UObject* WorldContextObject, int32 Width, int32 Height, ETextureRenderTargetFormat Format, TextureFilterFilter) — Creates a new render target and initializes it to the specified dimensions
- **ReleaseRenderTarget2D**(UTextureRenderTarget2D *TextureRenderTarget) — Manually releases GPU resources of a render target. This is useful for blueprint creating a lot of render target that would normally be released too late by the garbage collector that can be problematic on platforms that have tight GPU memory constrains.
- **DrawMaterialToRenderTarget**(UObject* WorldContextObject, UTextureRenderTarget2D* TextureRenderTarget, UMaterialInterface *Material) — Renders a quad with the material applied to the specified render target. This sets the render target even if it is already set, which is an expensive operation. Use BeginDrawCanvasToRenderTarget EndDrawCanvasToRenderTarget instead if rendering multiple primitives to the same render target.
- **RenderTargetCreateStaticTexture2DEditorOnly**(UTextureRenderTarget2D* RenderTarget, FString Name, TextureCompressionSettings CompressionSettings, TextureMipGenSettingsMipSettings) — Creates a new Static Texture from a Render Target 2D. Render Target Must be power of two and use four channels. Only works in the editor
- **ConvertRenderTargetToTexture2DEditorOnly**(UObject* WorldContextObject, UTextureRenderTarget2D* RenderTarget, UTexture2D *Texture) — Copies the contents of a render target to a UTexture2D Only works in the editor
- **ExportRenderTarget**(UObject* WorldContextObject, UTextureRenderTarget2D* TextureRenderTarget, FString& FilePath, FString &FileName) — Exports a render target as a HDR or PNG image onto the disk (depending on the format of the render target)
- **ExportTexture2D**(UObject* WorldContextObject, UTexture2D* Texture, FString& FilePath, FString &FileName) — Exports a Texture2D as a HDR image onto the disk.
- **BeginDrawCanvasToRenderTarget**(UObject* WorldContextObject, UTextureRenderTarget2D* TextureRenderTarget, UCanvas* & Canvas, FVector2D& Size, FDrawToRenderTargetContext &Context) — Returns a Canvas object that can be used to draw to the specified render target. Canvas has functions like DrawMaterial with size parameters that can be used to draw to a specific area of a render target. Be sure to call EndDrawCanvasToRenderTarget to complete the rendering!
- **EndDrawCanvasToRenderTarget**(UObject* WorldContextObject, FDrawToRenderTargetContext &Context) — Must be paired with a BeginDrawCanvasToRenderTarget to complete rendering to a render target.
- **FSkelMeshSkinWeightInfoMakeSkinWeightInfo**(int32 Bone0, uint8 Weight0, int32 Bone1, uint8 Weight1, int32 Bone2, uint8 Weight2, int32 Bone3, uint8Weight3) — Create FSkelMeshSkinWeightInfo
- **BreakSkinWeightInfo**(FSkelMeshSkinWeightInfo InWeight, int32& Bone0, uint8& Weight0, int32& Bone1, uint8& Weight1, int32& Bone2, uint8& Weight2, int32& Bone3, uint8 &Weight3) — Break FSkelMeshSkinWeightInfo
- **FLinearColorReadRenderTargetRawPixel**(UObject* WorldContextObject, UTextureRenderTarget2D* TextureRenderTarget, int32 X, int32Y) — Incredibly inefficient and slow operation! Read a value as-is from a render target using integer pixel coordinates.
- **FLinearColorReadRenderTargetRawUV**(UObject* WorldContextObject, UTextureRenderTarget2D* TextureRenderTarget, float U, floatV) — Incredibly inefficient and slow operation! Read a value as-is color from a render target using UV [0,1]x[0,1] coordinates.
- **NeedsToSwitchVerticalAxis**()
- **SetCastInsetShadowForAllAttachments**(UObject* WorldContextObject, UPrimitiveComponent* PrimitiveComponent, bool bCastInsetShadow, boolbLightAttachmentsAsGroup) — Set the inset shadow casting state of the given component and all its child attachments. Also choose if all attachments should be grouped for the inset shadow rendering. If enabled, one depth target will be shared for all attachments.
- **SetupFPPShadowForAllAttachments**(UObject* WorldContextObject, UPrimitiveComponent* PrimitiveComponent, TArray < FFppTppShadowChangeRecord > &ChangeRecords)
- **SetupTPPShadowForAllAttachments**(UObject* WorldContextObject, UPrimitiveComponent* PrimitiveComponent, TArray < FFppTppShadowChangeRecord > &ChangeRecords)
- **ResetShadowForAllAttachments**(UObject* WorldContextObject, UPrimitiveComponent* PrimitiveComponent, TArray < FFppTppShadowChangeRecord > &ChangeRecords)
- **RecordForAllAttachments**(UObject* WorldContextObject, UPrimitiveComponent* PrimitiveComponent, TArray < FFppTppShadowChangeRecord > &ChangeRecords)
- **FScalabilityQualityGetScalabilityQualityLevels**()
- **ApplyMaxScalabilityQualityLevels**()
- **ApplyScalabilityQualityLevels**(FScalabilityQuality &QualityLevels)
- **CreateRenderTarget2D**(UObject* WorldContextObject, int32 Width, int32 Height, ETextureRenderTargetFormat Format, boolbAutoGenerateMipmap) — Creates a new render target and initializes it to the specified dimensions ClearRenderTarget2D CreateRenderTarget2D CreateRenderTarget2DExt CreateRenderTarget2DWithFilter ReleaseRenderTarget2D DrawMaterialToRenderTarget RenderTargetCreateStaticTexture2DEditorOnly ConvertRenderTargetToTexture2DEditor

## UKismetStringLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetStringLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetStringLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetStringLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetStringLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetStringLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetStringLibrary)

类

全文搜索

---


## 函数

- **StringConv_FloatToString**(floatInFloat) — Converts a float value to a string
- **StringConv_IntToString**(int32InInt) — Converts an integer value to a string
- **StringConv_Int64ToString**(int64InInt64) — Converts an integer64 value to a string
- **StringConv_UInt64ToString**(uint64InUInt64) — Converts an uinteger64 value to a string
- **StringConv_ByteToString**(uint8InByte) — Converts a byte value to a string
- **StringConv_BoolToString**(boolInBool) — Converts a boolean value to a string, either 'true' or 'false'
- **StringConv_VectorToString**(FVectorInVec) — Converts a vector value to a string, in the form 'X= Y= Z='
- **StringConv_IntVectorToString**(FIntVectorInIntVec) — Converts an IntVector value to a string, in the form 'X= Y= Z='
- **StringConv_Vector2dToString**(FVector2DInVec) — Converts a vector2d value to a string, in the form 'X= Y='
- **StringConv_RotatorToString**(FRotatorInRot) — Converts a rotator value to a string, in the form 'P= Y= R='
- **StringConv_TransformToString**(FTransform &InTrans) — Converts a transform value to a string, in the form 'Translation: X= Y= Z= Rotation: P= Y= R= Scale: X= Y= Z='
- **StringConv_ObjectToString**(UObject *InObj) — Converts a UObject value to a string by calling the object's GetName method
- **StringConv_ColorToString**(FLinearColorInColor) — Converts a linear color value to a string, in the form '(R=,G=,B=,A=)'
- **StringConv_DateTimeToString**(FDateTimeInDateTime) — Converts a date time value to a string, in the form '%Y.%m.%d-%H.%M.%S'
- **StringConv_NameToString**(FNameInName) — Converts a name value to a string
- **NameConv_StringToName**(FString &InString) — Converts a string to a name value
- **Conv_StringToInt**(FString &InString) — Converts a string to a int value
- **Conv_StringToInt64**(FString &InString) — Converts a string to a int64 value
- **Conv_StringToFloat**(FString &InString) — Converts a string to a float value
- **Conv_StringToVector**(FString& InString, FVector& OutConvertedVector, bool &OutIsValid) — Convert String Back To Vector. IsValid indicates whether or not the string could be successfully converted.
- **Conv_StringToVector2D**(FString& InString, FVector2D& OutConvertedVector2D, bool &OutIsValid) — Convert String Back To Vector2D. IsValid indicates whether or not the string could be successfully converted.
- **Conv_StringToRotator**(FString& InString, FRotator& OutConvertedRotator, bool &OutIsValid) — Convert String Back To Rotator. IsValid indicates whether or not the string could be successfully converted.
- **Conv_StringToColor**(FString& InString, FLinearColor& OutConvertedColor, bool &OutIsValid) — Convert String Back To Color. IsValid indicates whether or not the string could be successfully converted.
- **StringBuildString_Float**(FString& AppendTo, FString& Prefix, float InFloat, FString &Suffix) — Converts a float->string, create a new string in the form AppendTo+Prefix+InFloat+Suffix return -A new string built from the passed parameters params AppendTo -- An existing string to use as the start of the conversion string params Prefix -- A string to use as a prefix, after the AppendTo string pa
- **StringBuildString_Int**(FString& AppendTo, FString& Prefix, int32 InInt, FString &Suffix) — Converts a int->string, creating a new string in the form AppendTo+Prefix+InInt+Suffix return -A new string built from the passed parameters params AppendTo -- An existing string to use as the start of the conversion string params Prefix -- A string to use as a prefix, after the AppendTo string para
- **StringBuildString_Int64**(FString& AppendTo, FString& Prefix, int64 InInt64, FString &Suffix) — Converts a int->string, creating a new string in the form AppendTo+Prefix+InInt+Suffix return -A new string built from the passed parameters params AppendTo -- An existing string to use as the start of the conversion string params Prefix -- A string to use as a prefix, after the AppendTo string para
- **StringBuildString_Bool**(FString& AppendTo, FString& Prefix, bool InBool, FString &Suffix) — Converts a boolean->string, creating a new string in the form AppendTo+Prefix+InBool+Suffix return -A new string built from the passed parameters params AppendTo -- An existing string to use as the start of the conversion string params Prefix -- A string to use as a prefix, after the AppendTo string
- **StringBuildString_Vector**(FString& AppendTo, FString& Prefix, FVector InVector, FString &Suffix) — Converts a vector->string, creating a new string in the form AppendTo+Prefix+InVector+Suffix return -A new string built from the passed parameters params AppendTo -- An existing string to use as the start of the conversion string params Prefix -- A string to use as a prefix, after the AppendTo strin
- **StringBuildString_IntVector**(FString& AppendTo, FString& Prefix, FIntVector InIntVector, FString &Suffix) — Converts an IntVector->string, creating a new string in the form AppendTo+Prefix+InIntVector+Suffix return -A new string built from the passed parameters params AppendTo -- An existing string to use as the start of the conversion string params Prefix -- A string to use as a prefix, after the AppendT
- **StringBuildString_Vector2d**(FString& AppendTo, FString& Prefix, FVector2D InVector2d, FString &Suffix) — Converts a vector2d->string, creating a new string in the form AppendTo+Prefix+InVector2d+Suffix return -A new string built from the passed parameters params AppendTo -- An existing string to use as the start of the conversion string params Prefix -- A string to use as a prefix, after the AppendTo s
- **StringBuildString_Rotator**(FString& AppendTo, FString& Prefix, FRotator InRot, FString &Suffix) — Converts a rotator->string, creating a new string in the form AppendTo+Prefix+InRot+Suffix return -A new string built from the passed parameters params AppendTo -- An existing string to use as the start of the conversion string params Prefix -- A string to use as a prefix, after the AppendTo string
- **StringBuildString_Object**(FString& AppendTo, FString& Prefix, UObject* InObj, FString &Suffix) — Converts a object->string, creating a new string in the form AppendTo+Prefix+object name+Suffix return -A new string built from the passed parameters params AppendTo -- An existing string to use as the start of the conversion string params Prefix -- A string to use as a prefix, after the AppendTo st
- **StringBuildString_Color**(FString& AppendTo, FString& Prefix, FLinearColor InColor, FString &Suffix) — Converts a color->string, creating a new string in the form AppendTo+Prefix+InColor+Suffix return -A new string built from the passed parameters params AppendTo -- An existing string to use as the start of the conversion string params Prefix -- A string to use as a prefix, after the AppendTo string
- **StringBuildString_Name**(FString& AppendTo, FString& Prefix, FName InName, FString &Suffix) — Converts a color->string, creating a new string in the form AppendTo+Prefix+InName+Suffix return -A new string built from the passed parameters params AppendTo -- An existing string to use as the start of the conversion string params Prefix -- A string to use as a prefix, after the AppendTo string p
- **StringConcat_StrStr**(FString& A, FString &B) — Concatenates two strings together to make a new string return - A new string which is the concatenation of A+B params A -- The original string params B -- The string to append to A
- **EqualEqual_StrStr**(FString& A, FString &B) — Test if the input strings are equal (A == B) return - True if the strings are equal, false otherwise params A -- The string to compare against params B -- The string to compare
- **EqualEqual_StriStri**(FString& A, FString &B) — Test if the input strings are equal (A == B), ignoring case return - True if the strings are equal, false otherwise params A -- The string to compare against params B -- The string to compare
- **NotEqual_StrStr**(FString& A, FString &B) — Test if the input string are not equal (A != B) return -Returns true if the input strings are not equal, false if they are equal params A -- The string to compare against params B -- The string to compare
- **NotEqual_StriStri**(FString& A, FString &B) — Test if the input string are not equal (A != B), ignoring case differences return -Returns true if the input strings are not equal, false if they are equal params A -- The string to compare against params B -- The string to compare
- **Len**(FString &S) — Returns the number of characters in the string return -The number of chars in the string
- **StringGetSubstring**(FString& SourceString, int32 StartIndex, int32Length) — Returns a substring from the string starting at the specified position return -The requested substring params SourceString -- The string to get the substring from params StartIndex -- The location in SourceString to use as the start of the substring params Length -The length of the requested substri
- **FindSubstring**(FString& SearchIn, FString& Substring, bool bUseCase, bool bSearchFromEnd, int32StartPosition) — Finds the starting index of a substring in the a specified string return -The index (starting from 0 if bSearchFromEnd is false) of the first occurence of the substring params SearchIn -The string to search within params Substring -The string to look for in the SearchIn string params bUseCase -Wheth
- **Contains**(FString& SearchIn, FString& Substring, bool bUseCase, boolbSearchFromEnd) — Returns whether this string contains the specified substring. return - Returns whether the string contains the substring
- **GetCharacterAsNumber**(FString& SourceString, int32Index) — Gets a single character from the string (as an integer) return -The integer value of the character or 0 if index is out of range params SourceString -- The string to convert params Index -- Location of the character whose value is required
- **ParseIntoArray**(FString& SourceString, FString& Delimiter, boolCullEmptyStrings) — Gets an array of strings from a source string divided up by a separator and empty strings can optionally be culled. return -The array of string that have been separated params SourceString -- The string to chop up params Delimiter -- The string to delimit on params CullEmptyStrings -= true - Cull (t
- **StringJoinStringArray**(TArray < FString >& SourceArray, FString &Separator) — Concatenates an array of strings into a single string. return -The final, joined, separated string. params SourceArray -- The array of strings to concatenate. params Separator -- The string used to separate each element.
- **GetCharacterArrayFromString**(FString &SourceString) — Returns an array that contains one entry for each character in SourceString return -An array containing one entry for each character in SourceString params SourceString -The string to break apart into characters
- **StringToUpper**(FString &SourceString) — Returns a string converted to Upper case return -The string in upper case params SourceString -The string to convert
- **StringToLower**(FString &SourceString) — Returns a string converted to Lower case return -The string in lower case params SourceString -The string to convert
- **StringLeftPad**(FString& SourceString, int32ChCount) — Pad the left of this string for a specified number of characters return -The padded string params SourceString -The string to pad params ChCount - Amount of padding required
- **StringRightPad**(FString& SourceString, int32ChCount) — Pad the right of this string for a specified number of characters return -The padded string params SourceString -The string to pad params ChCount - Amount of padding required
- **IsNumeric**(FString &SourceString) — Checks if a string contains only numeric characters return -true if the string only contains numeric characters params SourceString -The string to check
- **StartsWith**(FString& SourceString, FString& InPrefix, ESearchCase :: TypeSearchCase) — Test whether this string starts with given string. return -true if this string begins with specified text, false otherwise params SearchCase -Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase )
- **EndsWith**(FString& SourceString, FString& InSuffix, ESearchCase :: TypeSearchCase) — Test whether this string ends with given string. return -true if this string ends with specified text, false otherwise params SearchCase -Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase )
- **MatchesWildcard**(FString& SourceString, FString& Wildcard, ESearchCase :: TypeSearchCase) — Searches this string for a given wild card return -true if this string matches the ?-type wildcard given. params Wildcard -?-type wildcard params SearchCase -Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase )
- **StringTrim**(FString &SourceString) — Removes whitespace characters from the front of this string.
- **StringTrimTrailing**(FString &SourceString) — Removes trailing whitespace characters
- **CullArray**(FString& SourceString, TArray < FString > &InArray) — Takes an array of strings and removes any zero length entries. return -The number of elements left in InArray params InArray -The array to cull
- **StringReverse**(FString &SourceString) — Returns a copy of this string, with the characters in reverse order
- **StringReplace**(FString& SourceString, FString& From, FString& To, ESearchCase :: TypeSearchCase) — Replace all occurrences of a substring in this string return -a copy of this string with the replacement made params From -substring to replace params To -substring to replace From with params SearchCase -Indicates whether the search is case sensitive or not ( defaults to ESearchCase::IgnoreCase )
- **ReplaceInline**(FString& SourceString, FString& SearchText, FString& ReplacementText, ESearchCase :: TypeSearchCase) — Replace all occurrences of SearchText with ReplacementText in this string. return -the number of occurrences of SearchText that were replaced. params SearchText -the text that should be removed from this string params ReplacementText -the text to insert in its place params SearchCase -Indicates whet
- **Split**(FString& SourceString, FString& InStr, FString& LeftS, FString& RightS, ESearchCase :: Type SearchCase, ESearchDir :: TypeSearchDir) — Splits this string at given string position case sensitive. return -true if string is split, otherwise false params InStr -The string to search and split at params LeftS -out the string to the left of InStr, not updated if return is false params RightS -out the string to the right of InStr, not upda
- **StringLeft**(FString& SourceString, int32Count) — return -the left most given number of characters
- **StringLeftChop**(FString& SourceString, int32Count) — return -the left most characters from the string chopping the given number of characters from the end
- **StringRight**(FString& SourceString, int32Count) — return -the string to the right of the specified location, counting back from the right (end of the word).
- **StringRightChop**(FString& SourceString, int32Count) — return -the string to the right of the specified location, counting forward from the left (from the beginning of the word).
- **StringMid**(FString& SourceString, int32 Start, int32Count) — return -the substring from Start position for Count characters.
- **StringTimeSecondsToString**(floatInSeconds) — Convert a number of seconds into minutes:seconds.milliseconds format string
- **StringTimeSecondsToStringSec**(floatInSeconds) — Convert a number of seconds into minutes:seconds Conv_FloatToString Conv_IntToString Conv_Int64ToString Conv_UInt64ToString Conv_ByteToString Conv_BoolToString Conv_VectorToString Conv_IntVectorToString Conv_Vector2dToString Conv_RotatorToString Conv_TransformToString Conv_ObjectToString Conv_ColorT

## UKismetStringTableLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetStringTableLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetStringTableLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetStringTableLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetStringTableLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetStringTableLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetStringTableLibrary)

类

全文搜索

---


## 函数

- **IsRegisteredTableId**(FNameTableId) — Returns true if the given table ID corresponds to a registered string table.
- **IsRegisteredTableEntry**(FName TableId, FString &Key) — Returns true if the given table ID corresponds to a registered string table, and that table has.
- **StringGetTableNamespace**(FNameTableId) — Returns the namespace of the given string table.
- **StringGetTableEntrySourceString**(FName TableId, FString &Key) — Returns the source string of the given string table entry (or an empty string).
- **StringGetTableEntryMetaData**(FName TableId, FString& Key, FNameMetaDataId) — Returns the specified meta-data of the given string table entry (or an empty string).
- **GetRegisteredStringTables**(Returns an array of all registered string table IDs)
- **GetKeysFromStringTable**(FNameTableId) — Returns an array of all keys within the given string table
- **GetMetaDataIdsFromStringTableEntry**(FName TableId, FString &Key) — Returns an array of all meta-data IDs within the given string table entry IsRegisteredTableId IsRegisteredTableEntry GetTableNamespace GetTableEntrySourceString GetTableEntryMetaData GetRegisteredStringTables GetKeysFromStringTable GetMetaDataIdsFromStringTableEntry

## UKismetSystemLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetSystemLibrary?classDetailShow=true&path=class%2Fdetail%2F%E5%BC%95%E6%93%8E%2F%E5%B8%B8%E7%94%A8%E5%85%A8%E5%B1%80%E7%B1%BB%2FUKismetSystemLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetSystemLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetSystemLibrary?classDetailShow=true&path=class%2Fdetail%2F%E5%BC%95%E6%93%8E%2F%E5%B8%B8%E7%94%A8%E5%85%A8%E5%B1%80%E7%B1%BB%2FUKismetSystemLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetSystemLibrary)

类

全文搜索

---


## 函数

- **StackTrace**(Prints a stack trace to the log, so you can see how a blueprint got to this node)
- **IsValid**(UObject *Object) — 对象是否可用 return -true可用，false不可用
- **IsRecycled**(UObject *Object)
- **IsValidClass**(UClass *Class) — 类型是否可用 return -true可用，false不可用
- **StringGetObjectName**(UObject *Object) — 获取对象名称 return -对象实际名称
- **StringGetPathName**(UObject *Object) — 获取对象路径 return -对象完整路径
- **StringGetDisplayName**(UObject *Object) — 获取对象展示名称 return -对象展示名称
- **StringGetClassDisplayName**(UClass *Class) — 获取类展示名称 return -类展示名称
- **StringStripObjectClass**(FString& PathName, boolbAssertOnBadPath) — If there is an object class, strips it off.
- **StringGetEngineVersion**()
- **StringGetGameName**(Get the name of the current game)
- **StringGetGameBundleId**(Retrieves the game's platform-specific bundle identifier or package name of the game return -The game's bundle identifier or package name.)
- **StringGetPlatformUserName**(Get the current user name from the OS)
- **DoesImplementInterface**(UObject* TestObject, TSubclassOf < UInterface >Interface)
- **GetGameTimeInSeconds**(UObject *WorldContextObject) — Get the current game time, in seconds. This stops when the game is paused and is affected by slomo. params WorldContextObject -World context
- **IsServer**(UObject *WorldContextObject) — Returns whether the world this object is in is the host or not
- **IsDedicatedServer**(UObject *WorldContextObject) — Returns whether this is running on a dedicated server
- **IsStandalone**(UObject *WorldContextObject) — Returns whether this game instance is stand alone (no networking).
- **IsPackagedForDistribution**(Returns whether this is a build that is packaged for distribution)
- **StringGetUniqueDeviceId**(Returns the platform specific unique device id)
- **StringGetDeviceId**(Returns the platform specific unique device id)
- **Conv_InterfaceToObject**(FScriptInterface &Interface) — Converts an interfance into an object
- **SoftObjectPathMakeSoftObjectPath**(FString &PathString) — 将路径字符串转换为SoftObjectPath return -SoftObjectPath
- **BreakSoftObjectPath**(FSoftObjectPath InSoftObjectPath, FString &PathString) — 将SoftObjectPath转换为路径字符串 return -PathString
- **BreakSoftClassPath**(FSoftClassPath InSoftClassPath, FString &PathString) — 将SoftClassPath转换为路径字符串 return -PathString
- **IsValidSoftObjectReference**(TSoftObjectPtr < UObject > &SoftObjectReference) — SoftObjectPath是否有效 return -true为有效
- **StringConv_SoftObjectReferenceToString**(TSoftObjectPtr < UObject > &SoftObjectReference) — Converts a Soft Object Reference to a string. The other direction is not provided because it cannot be validated
- **EqualEqual_SoftObjectReference**(TSoftObjectPtr < UObject >& A, TSoftObjectPtr < UObject > &B) — Returns true if the values are equal (A == B)
- **NotEqual_SoftObjectReference**(TSoftObjectPtr < UObject >& A, TSoftObjectPtr < UObject > &B) — Returns true if the values are not equal (A != B)
- **IsValidSoftClassReference**(TSoftClassPtr < UObject > &SoftClassReference) — Returns true if the Soft Class Reference is not null
- **StringConv_SoftClassReferenceToString**(TSoftClassPtr < UObject > &SoftClassReference) — Converts a Soft Class Reference to a string. The other direction is not provided because it cannot be validated
- **EqualEqual_SoftClassReference**(TSoftClassPtr < UObject >& A, TSoftClassPtr < UObject > &B) — Returns true if the values are equal (A == B)
- **Conv_SoftClassReferenceToClass**(TSoftClassPtr < UObject > &SoftClass)
- **NotEqual_SoftClassReference**(TSoftClassPtr < UObject >& A, TSoftClassPtr < UObject > &B) — Returns true if the values are not equal (A != B)
- **Conv_SoftObjectReferenceToObject**(TSoftObjectPtr < UObject > &SoftObject)
- **Conv_ObjectToSoftObjectReference**(UObject *Object)
- **Conv_ClassToSoftClassReference**(TSubclassOf < UObject > &Class)
- **LoadAsset**(UObject* WorldContextObject, TSoftObjectPtr < UObject > Asset, FOnAssetLoaded OnLoaded, FLatentActionInfoLatentInfo)
- **LoadAssetClass**(UObject* WorldContextObject, TSoftClassPtr < UObject > AssetClass, FOnAssetClassLoaded OnLoaded, FLatentActionInfoLatentInfo)
- **MakeLiteralInt**(int32Value) — Creates a literal integer return -The literal integer params Value -value to set the integer to
- **MakeLiteralInt64**(int64Value) — Creates a literal integer return -The literal integer params Value -value to set the integer to
- **MakeLiteralFloat**(floatValue) — Creates a literal float return -The literal float params Value -value to set the float to
- **MakeLiteralBool**(boolValue) — Creates a literal bool return -The literal bool params Value -value to set the bool to
- **NameMakeLiteralName**(FNameValue) — Creates a literal name return -The literal name params Value -value to set the name to
- **MakeLiteralByte**(uint8Value) — Creates a literal byte return -The literal byte params Value -value to set the byte to
- **StringMakeLiteralString**(FString &Value) — Creates a literal string return -The literal string params Value -value to set the string to
- **TextMakeLiteralText**(FTextValue) — Creates a literal FText return -The literal FText params Value -value to set the FText to
- **PrintString**(UObject* WorldContextObject, FString& InString, bool bPrintToScreen, bool bPrintToLog, FLinearColor TextColor, floatDuration) — Prints a string to the log, and optionally, to the screen If Print To Log is true, it will be visible in the Output Log window. Otherwise it will be logged only as 'Verbose', so it generally won't show up. params InString -The string to log out params bPrintToScreen -Whether or not to print the outp
- **PrintText**(UObject* WorldContextObject, FText InText, bool bPrintToScreen, bool bPrintToLog, FLinearColor TextColor, floatDuration) — Prints text to the log, and optionally, to the screen If Print To Log is true, it will be visible in the Output Log window. Otherwise it will be logged only as 'Verbose', so it generally won't show up. params InText - The text to log out params bPrintToScreen -Whether or not to print the output to t
- **PrintWarning**(FString &InString) — Prints a warning string to the log and the screen. Meant to be used as a way to inform the user that they misused the node. WARNING!! Don't change the signature of this function without fixing up all nodes using it in the compiler params InString -The string to log out
- **SetWindowTitle**(FText &Title) — Sets the game window title
- **ExecuteConsoleCommand**(UObject* WorldContextObject, FString& Command, APlayerController* SpecificPlayer, boolbDisableCheck) — Executes a console command, optionally on a specific controller params Command - Command to send to the console params SpecificPlayer -If specified, the console command will be routed through the specified player
- **ExecuteConsoleCommandDisableCheck**(UObject* WorldContextObject, FString& Command, APlayerController *SpecificPlayer)
- **GetConsoleVariableFloatValue**(FString &VariableName) — Attempts to retrieve the value of the specified float console variable, if it exists. return -The value if found, 0 otherwise. params VariableName -Name of the console variable to find.
- **GetConsoleVariableIntValue**(FString &VariableName) — Attempts to retrieve the value of the specified integer console variable, if it exists. return -The value if found, 0 otherwise. params VariableName -Name of the console variable to find.
- **GetConsoleVariableBoolValue**(FString &VariableName) — Evaluates, if it exists, whether the specified integer console variable has a non-zero value (true) or not (false). return -True if found and has a non-zero value, false otherwise. params VariableName -Name of the console variable to find.
- **QuitGame**(UObject* WorldContextObject, APlayerController* SpecificPlayer, TEnumAsByte < EQuitPreference :: Type >QuitPreference) — Exit the current game params SpecificPlayer -The specific player to quit the game. If not specified, player 0 will quit.
- **Delay**(UObject* WorldContextObject, float Duration, FLatentActionInfoLatentInfo) — Perform a latent action with a delay (specified in seconds). Calling again while it is counting down will be ignored. params Duration - length of delay (in seconds). params LatentInfo -The latent action.
- **DelayUntilNextTick**(UObject* WorldContextObject, FLatentActionInfoLatentInfo) — Perform a latent action with a delay of one tick. Calling again while it is counting down will be ignored. params LatentInfo -The latent action.
- **DelayReplacePreDuration**(UObject* WorldContextObject, float Duration, bool IsReplacePreDuration, FLatentActionInfoLatentInfo) — Perform a latent action with a delay (specified in seconds). Calling again while it is counting down will be ignored. params Duration - length of delay (in seconds). params IsReplacePreDuration -replace previous action Duration params LatentInfo -The latent action.
- **RetriggerableDelay**(UObject* WorldContextObject, float Duration, FLatentActionInfoLatentInfo) — Perform a latent action with a retriggerable delay (specified in seconds). Calling again while it is counting down will reset the countdown to Duration. params Duration - length of delay (in seconds). params LatentInfo -The latent action.
- **MoveComponentTo**(USceneComponent* Component, FVector TargetRelativeLocation, FRotator TargetRelativeRotation, bool bEaseOut, bool bEaseIn, float OverTime, bool bForceShortestRotationPath, TEnumAsByte < EMoveComponent) — Interpolate a component to the specified relative location and rotation over the course of OverTime seconds. params Component - Component to interpolate params TargetRelativeLocation -Relative target location params TargetRelativeRotation -Relative target rotation params bEaseOut - if true we will e
- **TimerHandleK2_SetTimerDelegate**(FTimerDynamicDelegate Delegate, float Time, boolbLooping) — Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters. return - The timer handle to pass to other timer functions to manipulate this timer. params Time - How long to wait before executing the delegate, in seconds. Setting a timer to <= 0 seconds wil
- **K2_SetTimerForNextTickDelegate**(FTimerDynamicDelegateDelegate) — Set a timer to execute a delegate next tick. return - The timer handle to pass to other timer functions to manipulate this timer.
- **TimerHandleK2_SetTimerTickDelegate**(FTimerDynamicParamDelegate Delegate, float Time, boolInExeFirst) — Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters. return - The timer handle to pass to other timer functions to manipulate this timer. params Time - How long to wait before executing the delegate, in seconds. Setting a timer to <= 0 seconds wil
- **TimerHandleK2_SetTimerDelegateForLua**(FTimerDynamicDelegate Delegate, UObject* Object, float Time, boolbLooping) — Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters. return - The timer handle to pass to other timer functions to manipulate this timer. params Object -Object that implements the delegate function. Defaults to self (this blueprint) params Time -
- **K2_ClearTimerDelegate**(FTimerDynamicDelegateDelegate) — Clears a set timer.
- **K2_PauseTimerDelegate**(FTimerDynamicDelegateDelegate) — Pauses a set timer at its current elapsed time.
- **K2_UnPauseTimerDelegate**(FTimerDynamicDelegateDelegate) — Resumes a paused timer from its current elapsed time.
- **K2_IsTimerActiveDelegate**(FTimerDynamicDelegateDelegate) — Returns true if a timer exists and is active for the given delegate, false otherwise. return - True if the timer exists and is active.
- **K2_IsTimerPausedDelegate**(FTimerDynamicDelegateDelegate) — Returns true if a timer exists and is paused for the given delegate, false otherwise. return - True if the timer exists and is paused.
- **K2_TimerExistsDelegate**(FTimerDynamicDelegateDelegate) — Returns true is a timer for the given delegate exists, false otherwise. return - True if the timer exists.
- **K2_GetTimerElapsedTimeDelegate**(FTimerDynamicDelegateDelegate) — Returns elapsed time for the given delegate (time since current countdown iteration began). return - How long has elapsed since the current iteration of the timer began.
- **K2_GetTimerRemainingTimeDelegate**(FTimerDynamicDelegateDelegate) — Returns time until the timer will next execute its delegate. return - How long is remaining in the current iteration of the timer.
- **K2_IsValidTimerHandle**(FTimerHandleHandle) — Returns whether the timer handle is valid. This does not indicate that there is an active timer that this handle references, but rather that it once referenced a valid timer. return - Whether the timer handle is valid. params Handle -The handle of the timer to check validity of.
- **TimerHandleK2_InvalidateTimerHandle**(FTimerHandle &Handle) — Returns whether the timer handle is valid. This does not indicate that there is an active timer that this handle references, but rather that it once referenced a valid timer. return - Return the invalidated timer handle for convenience. params Handle -The handle of the timer to check validity of.
- **K2_ClearTimerHandle**(UObject* WorldContextObject, FTimerHandleHandle) — Clears a set timer. params Handle -The handle of the timer to clear.
- **K2_ClearAndInvalidateTimerHandle**(UObject* WorldContextObject, FTimerHandle &Handle) — Clears a set timer. params Handle -The handle of the timer to clear.
- **K2_PauseTimerHandle**(UObject* WorldContextObject, FTimerHandleHandle) — Pauses a set timer at its current elapsed time. params Handle -The handle of the timer to pause.
- **K2_UnPauseTimerHandle**(UObject* WorldContextObject, FTimerHandleHandle) — Resumes a paused timer from its current elapsed time. params Handle -The handle of the timer to unpause.
- **K2_IsTimerActiveHandle**(UObject* WorldContextObject, FTimerHandleHandle) — Returns true if a timer exists and is active for the given handle, false otherwise. return - True if the timer exists and is active. params Handle -The handle of the timer to check whether it is active.
- **K2_IsTimerPausedHandle**(UObject* WorldContextObject, FTimerHandleHandle) — Returns true if a timer exists and is paused for the given handle, false otherwise. return - True if the timer exists and is paused. params Handle -The handle of the timer to check whether it is paused.
- **K2_TimerExistsHandle**(UObject* WorldContextObject, FTimerHandleHandle) — Returns true is a timer for the given handle exists, false otherwise. return - True if the timer exists. params Handle -The handle to check whether it exists.
- **K2_GetTimerElapsedTimeHandle**(UObject* WorldContextObject, FTimerHandleHandle) — Returns elapsed time for the given handle (time since current countdown iteration began). return - How long has elapsed since the current iteration of the timer began. params Handle -The handle of the timer to get the elapsed time of.
- **K2_GetTimerRemainingTimeHandle**(UObject* WorldContextObject, FTimerHandleHandle) — Returns time until the timer will next execute its handle. return - How long is remaining in the current iteration of the timer. params Handle -The handle of the timer to time remaining of.
- **TimerHandleK2_SetTimer**(UObject* Object, FString FunctionName, float Time, boolbLooping) — Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters. return - The timer handle to pass to other timer functions to manipulate this timer. params Object -Object that implements the delegate function. Defaults to self (this blueprint) params Functio
- **K2_SetTimerForNextTick**(UObject* Object, FStringFunctionName) — Set a timer to execute a delegate on the next tick. return - The timer handle to pass to other timer functions to manipulate this timer. params Object - Object that implements the delegate function. Defaults to self (this blueprint) params FunctionName - Delegate function name. Can be a K2 function
- **K2_ClearTimer**(UObject* Object, FStringFunctionName) — Clears a set timer. params Object -Object that implements the delegate function. Defaults to self (this blueprint) params FunctionName -Delegate function name. Can be a K2 function or a Custom Event.
- **K2_PauseTimer**(UObject* Object, FStringFunctionName) — Pauses a set timer at its current elapsed time. params Object -Object that implements the delegate function. Defaults to self (this blueprint) params FunctionName -Delegate function name. Can be a K2 function or a Custom Event.
- **K2_UnPauseTimer**(UObject* Object, FStringFunctionName) — Resumes a paused timer from its current elapsed time. params Object -Object that implements the delegate function. Defaults to self (this blueprint) params FunctionName -Delegate function name. Can be a K2 function or a Custom Event.
- **K2_IsTimerActive**(UObject* Object, FStringFunctionName) — Returns true if a timer exists and is active for the given delegate, false otherwise. return - True if the timer exists and is active. params Object -Object that implements the delegate function. Defaults to self (this blueprint) params FunctionName -Delegate function name. Can be a K2 function or a
- **K2_IsTimerPaused**(UObject* Object, FStringFunctionName) — Returns true if a timer exists and is paused for the given delegate, false otherwise. return - True if the timer exists and is paused. params Object -Object that implements the delegate function. Defaults to self (this blueprint) params FunctionName -Delegate function name. Can be a K2 function or a
- **K2_TimerExists**(UObject* Object, FStringFunctionName) — Returns true is a timer for the given delegate exists, false otherwise. return - True if the timer exists. params Object -Object that implements the delegate function. Defaults to self (this blueprint) params FunctionName -Delegate function name. Can be a K2 function or a Custom Event.
- **K2_GetTimerElapsedTime**(UObject* Object, FStringFunctionName) — Returns elapsed time for the given delegate (time since current countdown iteration began). return - How long has elapsed since the current iteration of the timer began. params Object -Object that implements the delegate function. Defaults to self (this blueprint) params FunctionName -Delegate funct
- **K2_GetTimerRemainingTime**(UObject* Object, FStringFunctionName) — Returns time until the timer will next execute its delegate. return - How long is remaining in the current iteration of the timer. params Object -Object that implements the delegate function. Defaults to self (this blueprint) params FunctionName -Delegate function name. Can be a K2 function or a Cus
- **SetIntPropertyByName**(UObject* Object, FName PropertyName, int32Value) — Set an int32 property by name
- **SetInt64PropertyByName**(UObject* Object, FName PropertyName, int64Value) — Set an int64 property by name
- **SetUInt64PropertyByName**(UObject* Object, FName PropertyName, uint64Value) — Set an uint64 property by name
- **SetBytePropertyByName**(UObject* Object, FName PropertyName, uint8Value) — Set an uint8 or enum property by name
- **SetFloatPropertyByName**(UObject* Object, FName PropertyName, floatValue) — Set a float property by name
- **SetBoolPropertyByName**(UObject* Object, FName PropertyName, boolValue) — Set a bool property by name
- **SetObjectPropertyByName**(UObject* Object, FName PropertyName, UObject *Value) — Set an OBJECT property by name
- **SetClassPropertyByName**(UObject* Object, FName PropertyName, TSubclassOf < UObject >Value) — Set a CLASS property by name
- **SetInterfacePropertyByName**(UObject* Object, FName PropertyName, FScriptInterface &Value) — Set an INTERFACE property by name
- **SetNamePropertyByName**(UObject* Object, FName PropertyName, FName &Value) — Set a NAME property by name
- **SetSoftObjectPropertyByName**(UObject* Object, FName PropertyName, TSoftObjectPtr < UObject > &Value) — Set a SOFTOBJECT property by name
- **SetSoftClassPropertyByName**(UObject* Object, FName PropertyName, TSoftClassPtr < UObject > &Value) — Set a SOFTCLASS property by name
- **SetStringPropertyByName**(UObject* Object, FName PropertyName, FString &Value) — Set a STRING property by name
- **SetTextPropertyByName**(UObject* Object, FName PropertyName, FText &Value) — Set a TEXT property by name
- **SetVectorPropertyByName**(UObject* Object, FName PropertyName, FVector &Value) — Set a VECTOR property by name
- **SetRotatorPropertyByName**(UObject* Object, FName PropertyName, FRotator &Value) — Set a ROTATOR property by name
- **SetLinearColorPropertyByName**(UObject* Object, FName PropertyName, FLinearColor &Value) — Set a LINEAR COLOR property by name
- **SetTransformPropertyByName**(UObject* Object, FName PropertyName, FTransform &Value) — Set a TRANSFORM property by name
- **SetCollisionProfileNameProperty**(UObject* Object, FName PropertyName, FCollisionProfileName &Value) — Set a CollisionProfileName property by name
- **SetStructurePropertyByName**(UObject* Object, FName PropertyName, FGenericStruct &Value) — Set a custom structure property by name
- **SphereOverlapActors**(UObject* WorldContextObject, FVector SpherePos, float SphereRadius, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, UClass* ActorClassFilter, TArray < AActor* >& ActorsToIgnore, TArray) — 返回一组跟指定球体范围发生重叠的Actor return - true if there was an overlap that passed the filters, false otherwise. params WorldContextObject -world上下文对象 params SpherePos -球心位置 params SphereRadius -球体半径 params ObjectTypes -将结果限制为仅静态或仅动态的选项 params ActorClassFilter -对象类型过滤，只检测指定类型的Actor params ActorsToIgnore -需要忽略的
- **SphereOverlapComponents**(UObject* WorldContextObject, FVector SpherePos, float SphereRadius, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, UClass* ComponentClassFilter, TArray < AActor* >& ActorsToIgnore, TAr) — 返回一组跟指定球体范围发生重叠的Component return - true if there was an overlap that passed the filters, false otherwise. params WorldContextObject -world上下文对象 params SpherePos -球心位置 params SphereRadius -球体半径 params ObjectTypes -将结果限制为仅静态或仅动态的选项 params ComponentClassFilter -组件类型过滤，只检测指定类型的组件 params ActorsToIgnore -
- **BoxOverlapAnyTest**(UObject* WorldContextObject, FVector BoxPos, FRotator Rotator, FVector BoxExtent, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, UClass* ActorClassFilter, TArray < AActor* > &ActorsToIg) — 检测指定Box范围是否发生重叠 return - true if there was an overlap that passed the filters, false otherwise. params WorldContextObject -world上下文对象 params BoxPos -Box中心位置 params Rotator -Box旋转量 params BoxExtent -Box范围 params ObjectTypes -将结果限制为仅静态或仅动态的选项 params ActorClassFilter -对象类型过滤，只检测指定类型的Actor params Actors
- **BoxOverlapActors**(UObject* WorldContextObject, FVector BoxPos, FRotator BoxRotation, FVector BoxExtent, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, UClass* ActorClassFilter, TArray < AActor* >& Actor) — 返回一组跟指定Box范围发生重叠的Actor return - true if there was an overlap that passed the filters, false otherwise. params WorldContextObject -world上下文对象 params BoxPos -Box中心位置 params BoxExtent -Box范围 params ObjectTypes -将结果限制为仅静态或仅动态的选项 params ActorClassFilter -对象类型过滤，只检测指定类型的Actor params ActorsToIgnore -需要忽略的A
- **BoxOverlapOBBActors**(UObject* WorldContextObject, FVector& BoxPos, FRotator& BoxRot, FVector& BoxExtent, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, UClass* ActorClassFilter, TArray < AActor* >& Acto) — Returns an array of actors that overlap the given axis-aligned box. return - true if there was an overlap that passed the filters, false otherwise. params BoxPos -Center of box. params BoxRot -Rotator of box. params BoxExtent -Extents of box. params ActorsToIgnore -Ignore these actors in the list pa
- **BoxOverlapComponents**(UObject* WorldContextObject, FVector BoxPos, FRotator BoxRotation, FVector Extent, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, UClass* ComponentClassFilter, TArray < AActor* >& Acto) — 返回一组跟指定Box范围发生重叠的Component return - true if there was an overlap that passed the filters, false otherwise. params WorldContextObject -world上下文对象 params BoxPos -Box中心位置 params ObjectTypes -将结果限制为仅静态或仅动态的选项 params ActorsToIgnore -需要忽略的Actor列表 params OutComponents -输出的产生碰撞的组件列表
- **BoxOverlapOBBComponents**(UObject* WorldContextObject, FVector& BoxPos, FRotator& BoxRot, FVector& Extent, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, UClass* ComponentClassFilter, TArray < AActor* >& Act) — Returns an array of components that overlap the given axis-aligned box. return - true if there was an overlap that passed the filters, false otherwise. params BoxPos -Center of box. params BoxRot -Rotator of box. params ActorsToIgnore -Ignore these actors in the list
- **CapsuleOverlapActors**(UObject* WorldContextObject, FVector CapsulePos, float Radius, float HalfHeight, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, UClass* ActorClassFilter, TArray < AActor* >& ActorsToIg) — 返回一组跟指定胶囊体范围发生重叠的Actor return - true if there was an overlap that passed the filters, false otherwise. params WorldContextObject -world上下文对象 params CapsulePos -胶囊体中心位置 params Radius -胶囊体半径 params HalfHeight -胶囊体半高 params ObjectTypes -将结果限制为仅静态或仅动态的选项 params ActorClassFilter -对象类型过滤，只检测指定类型的Actor par
- **CapsuleOverlapComponents**(UObject* WorldContextObject, FVector CapsulePos, float Radius, float HalfHeight, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, UClass* ComponentClassFilter, TArray < AActor* >& Actors) — 返回一组跟指定胶囊体范围发生重叠的Component return - true if there was an overlap that passed the filters, false otherwise. params WorldContextObject -world上下文对象 params CapsulePos -胶囊体中心位置 params Radius -胶囊体半径 params HalfHeight -胶囊体半高 params ObjectTypes -将结果限制为仅静态或仅动态的选项 params ActorsToIgnore -需要忽略的Actor列表 params Ou
- **ComponentOverlapActors**(UPrimitiveComponent* Component, FTransform& ComponentTransform, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, UClass* ActorClassFilter, TArray < AActor* >& ActorsToIgnore, TArray < A) — 返回一组跟指定Component发生重叠的Actor return - true if there was an overlap that passed the filters, false otherwise. params Component -Component对象 params ComponentTransform -Component的Transform params ObjectTypes -将结果限制为仅静态或仅动态的选项 params ActorClassFilter -对象类型过滤，只检测指定类型的Actor params ActorsToIgnore -需要忽略的Actor
- **ComponentOverlapComponents**(UPrimitiveComponent* Component, FTransform& ComponentTransform, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, UClass* ComponentClassFilter, TArray < AActor* >& ActorsToIgnore, TArray) — 返回一组跟指定Component发生重叠的Component return - true if there was an overlap that passed the filters, false otherwise. params Component -Component对象 params ComponentTransform -Component的Transform params ObjectTypes -将结果限制为仅静态或仅动态的选项 params ActorsToIgnore -需要忽略的Actor列表 params OutComponents -输出的产生碰撞的组件列表
- **LineTraceSingle**(UObject* WorldContextObject, FVector Start, FVector End, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult& Ou) — 返回第一个跟射线碰撞的物体的碰撞信息 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params TraceChannel -轨迹检测通道 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHit -输出的HitResult
- **LineTraceMulti**(UObject* WorldContextObject, FVector Start, FVector End, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitRe) — 返回所有跟射线碰撞的物体的碰撞信息 return - True if there was a blocking hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params TraceChannel -轨迹检测通道 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHits -输出的HitResult列表
- **SphereTraceSingle**(UObject* WorldContextObject, FVector Start, FVector End, float Radius, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, F) — 返回第一个跟球体沿射线移动扫过区域碰撞物体的碰撞信息 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params Radius -球体半径 params TraceChannel -轨迹检测通道 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHit -输出的HitResult
- **SphereTraceMulti**(UObject* WorldContextObject, FVector Start, FVector End, float Radius, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, T) — 返回所有跟球体沿射线移动扫过区域碰撞物体的碰撞信息 return - True if there was a blocking hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params Radius -球体半径 params TraceChannel -轨迹检测通道 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHits -输出的HitResult列表
- **BoxTraceSingle**(UObject* WorldContextObject, FVector Start, FVector End, FVector HalfSize, FRotator Orientation, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrac) — 返回第一个跟Box沿射线移动扫过区域碰撞物体的碰撞信息 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params HalfSize -Box边的半长尺寸 params Orientation -Box的朝向 params TraceChannel -轨迹检测通道 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHit -输
- **BoxTraceMulti**(UObject* WorldContextObject, FVector Start, FVector End, FVector HalfSize, FRotator Orientation, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrac) — 返回所有跟Box沿射线移动扫过区域碰撞物体的碰撞信息 return - True if there was a blocking hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params HalfSize -Box边的半长尺寸 params Orientation -Box的朝向 params TraceChannel -轨迹检测通道 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params O
- **CapsuleTraceSingle**(UObject* WorldContextObject, FVector Start, FVector End, float Radius, float HalfHeight, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Typ) — 返回第一个跟胶囊体沿射线移动扫过区域碰撞物体的碰撞信息 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params Radius -胶囊体半径 params HalfHeight -胶囊体半长高度 params TraceChannel -轨迹检测通道 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHit -输出的HitR
- **CapsuleTraceMulti**(UObject* WorldContextObject, FVector Start, FVector End, float Radius, float HalfHeight, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Typ) — 返回所有跟胶囊体沿射线移动扫过区域碰撞物体的碰撞信息 return - True if there was a blocking hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params Radius -胶囊体半径 params HalfHeight -胶囊体半长高度 params TraceChannel -轨迹检测通道 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHits
- **LineTraceSingleForObjects**(UObject* WorldContextObject, FVector Start, FVector End, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type D) — 返回第一个跟射线碰撞的物体的碰撞信息，只查询指定对象类型 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params ObjectTypes -对象类型列表 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHit -输出的HitResult
- **LineTraceSingleByObjectType**(UObject* WorldContextObject, FVector Start, FVector End, TArray < TEnumAsByte < ECollisionChannel > >& ObjectTypes, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type)
- **LineTraceMultiForObjects**(UObject* WorldContextObject, FVector Start, FVector End, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type D) — 返回所有跟射线碰撞的物体的碰撞信息，只查询指定对象类型 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params ObjectTypes -对象类型列表 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHits -输出的HitResult列表
- **SphereTraceSingleForObjects**(UObject* WorldContextObject, FVector Start, FVector End, float Radius, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugT) — 返回第一个跟球体沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params Radius -球体半径 params ObjectTypes -对象类型列表 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHit -输出的HitResult
- **SphereTraceMultiForObjects**(UObject* WorldContextObject, FVector Start, FVector End, float Radius, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugT) — 返回所有跟球体沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params Radius -球体半径 params ObjectTypes -对象类型列表 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHits -输出的HitResult列表
- **BoxTraceSingleForObjects**(UObject* WorldContextObject, FVector Start, FVector End, FVector HalfSize, FRotator Orientation, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, bool bTraceComplex, TArray < AActor* >& A) — 返回第一个跟Box沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params HalfSize -Box边的半长尺寸 params Orientation -Box的朝向 params ObjectTypes -对象类型列表 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params
- **BoxTraceMultiForObjects**(UObject* WorldContextObject, FVector Start, FVector End, FVector HalfSize, FRotator Orientation, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, bool bTraceComplex, TArray < AActor* >& A) — 返回所有跟Box沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params HalfSize -Box边的半长尺寸 params Orientation -Box的朝向 params ObjectTypes -对象类型列表 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params O
- **CapsuleTraceSingleForObjects**(UObject* WorldContextObject, FVector Start, FVector End, float Radius, float HalfHeight, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, bool bTraceComplex, TArray < AActor* >& ActorsToI) — 返回第一个跟胶囊体沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params Radius -胶囊体半径 params HalfHeight -胶囊体半长高度 params ObjectTypes -对象类型列表 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHit
- **CapsuleTraceMultiForObjects**(UObject* WorldContextObject, FVector Start, FVector End, float Radius, float HalfHeight, TArray < TEnumAsByte < EObjectTypeQuery > >& ObjectTypes, bool bTraceComplex, TArray < AActor* >& ActorsToI) — 返回所有跟胶囊体沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params Radius -胶囊体半径 params HalfHeight -胶囊体半长高度 params ObjectTypes -对象类型列表 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHits
- **LineTraceSingleByProfile**(UObject* WorldContextObject, FVector Start, FVector End, FName ProfileName, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult& OutHit, bool) — 返回第一个跟射线碰撞的物体的碰撞信息，按照指定碰撞预设查询 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params ProfileName -预设名称 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHit -输出的HitResult
- **LineTraceMultiByProfile**(UObject* WorldContextObject, FVector Start, FVector End, FName ProfileName, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitResult >& Ou) — 返回所有跟射线碰撞的物体的碰撞信息，按照指定碰撞预设查询 return - True if there was a blocking hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params ProfileName -预设名称 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHits -输出的HitResult列表
- **SphereTraceSingleByProfile**(UObject* WorldContextObject, FVector Start, FVector End, float Radius, FName ProfileName, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult &) — 返回第一个跟球体沿射线移动扫过区域碰撞物体的碰撞信息，按照指定碰撞预设查询 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params Radius -球体半径 params ProfileName -预设名称 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHit -输出的HitResult
- **SphereTraceMultiByProfile**(UObject* WorldContextObject, FVector Start, FVector End, float Radius, FName ProfileName, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHi) — 返回所有跟球体沿射线移动扫过区域碰撞物体的碰撞信息，按照指定碰撞预设查询 return - True if there was a blocking hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params Radius -球体半径 params ProfileName -预设名称 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHits -输出的HitResult列表
- **BoxTraceSingleByProfile**(UObject* WorldContextObject, FVector Start, FVector End, FVector HalfSize, FRotator Orientation, FName ProfileName, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type D) — 返回第一个跟Box沿射线移动扫过区域碰撞物体的碰撞信息，按照指定碰撞预设查询 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params HalfSize -Box边的半长尺寸 params Orientation -Box的朝向 params ProfileName -预设名称 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params O
- **BoxTraceMultiByProfile**(UObject* WorldContextObject, FVector Start, FVector End, FVector HalfSize, FRotator Orientation, FName ProfileName, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type D) — 返回所有跟Box沿射线移动扫过区域碰撞物体的碰撞信息，按照指定碰撞预设查询 return - True if there was a blocking hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params HalfSize -Box边的半长尺寸 params Orientation -Box的朝向 params ProfileName -预设名称 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表
- **CapsuleTraceSingleByProfile**(UObject* WorldContextObject, FVector Start, FVector End, float Radius, float HalfHeight, FName ProfileName, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type DrawDebug) — 返回第一个跟胶囊体沿射线移动扫过区域碰撞物体的碰撞信息，按照指定碰撞预设查询 return - True if there was a hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params Radius -胶囊体半径 params HalfHeight -胶囊体半长高度 params ProfileName -预设名称 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params OutHit
- **CapsuleTraceMultiByProfile**(UObject* WorldContextObject, FVector Start, FVector End, float Radius, float HalfHeight, FName ProfileName, bool bTraceComplex, TArray < AActor* >& ActorsToIgnore, EDrawDebugTrace :: Type DrawDebug) — 返回所有跟胶囊体沿射线移动扫过区域碰撞物体的碰撞信息，按照指定碰撞预设查询 return - True if there was a blocking hit, false otherwise. params Start -射线检测起点 params End -射线检测终点 params Radius -胶囊体半径 params HalfHeight -胶囊体半长高度 params ProfileName -预设名称 params bTraceComplex -true为复杂碰撞检测，false为简单碰撞检测 params ActorsToIgnore -需要忽略的Actor列表 params
- **GetActorListFromComponentList**(TArray < UPrimitiveComponent* >& ComponentList, UClass* ActorClassFilter, TArray < AActor* > &OutActorList) — Returns an array of unique actors represented by the given list of components. params ComponentList -List of components. params OutActorList -Start of line segment.
- **PrintToScreen**(FString& InString, FLinearColor TextColor, FVector2D TextScale, float Duration, boolbIsUGC)
- **FlushOnScreenDebugMessages**()
- **DrawDebugLine**(UObject* WorldContextObject, FVector LineStart, FVector LineEnd, FLinearColor LineColor, float Duration, floatThickness) — Draw a debug line
- **DrawDebugCircle**(UObject* WorldContextObject, FVector Center, float Radius, int32 NumSegments, FLinearColor LineColor, float Duration, float Thickness, FVector YAxis, FVector ZAxis, boolbDrawAxis) — Draw a debug circle!
- **DrawDebugPoint**(UObject* WorldContextObject, FVector Position, float Size, FLinearColor PointColor, floatDuration) — Draw a debug point
- **DrawDebugArrow**(UObject* WorldContextObject, FVector LineStart, FVector LineEnd, float ArrowSize, FLinearColor LineColor, float Duration, floatThickness) — Draw directional arrow, pointing from LineStart to LineEnd.
- **DrawDebugBox**(UObject* WorldContextObject, FVector Center, FVector Extent, FLinearColor LineColor, FRotator Rotation, float Duration, floatThickness) — Draw a debug box
- **DrawDebugCoordinateSystem**(UObject* WorldContextObject, FVector AxisLoc, FRotator AxisRot, float Scale, float Duration, floatThickness) — Draw a debug coordinate system.
- **DrawDebugSphere**(UObject* WorldContextObject, FVector Center, float Radius, int32 Segments, FLinearColor LineColor, float Duration, floatThickness) — Draw a debug sphere
- **DrawDebugCylinder**(UObject* WorldContextObject, FVector Start, FVector End, float Radius, int32 Segments, FLinearColor LineColor, float Duration, floatThickness) — Draw a debug cylinder
- **DrawDebugCone**(UObject* WorldContextObject, FVector Origin, FVector Direction, float Length, float AngleWidth, float AngleHeight, int32 NumSides, FLinearColor LineColor, float Duration, floatThickness) — Draw a debug cone
- **DrawDebugConeInDegrees**(UObject* WorldContextObject, FVector Origin, FVector Direction, float Length, float AngleWidth, float AngleHeight, int32 NumSides, FLinearColor LineColor, float Duration, floatThickness) — Draw a debug cone Angles are specified in degrees
- **DrawDebugCapsule**(UObject* WorldContextObject, FVector Center, float HalfHeight, float Radius, FRotator Rotation, FLinearColor LineColor, float Duration, floatThickness) — Draw a debug capsule
- **DrawDebugString**(UObject* WorldContextObject, FVector TextLocation, FString& Text, AActor* TestBaseActor, FLinearColor TextColor, floatDuration) — Draw a debug string at a 3d world location.
- **FlushDebugStrings**(UObject *WorldContextObject) — Removes all debug strings.
- **DrawDebugPlane**(UObject* WorldContextObject, FPlane& PlaneCoordinates, FVector Location, float Size, FLinearColor PlaneColor, floatDuration) — Draws a debug plane.
- **FlushPersistentDebugLines**(UObject *WorldContextObject) — Flush all persistent debug lines and shapes.
- **DrawDebugFrustum**(UObject* WorldContextObject, FTransform& FrustumTransform, FLinearColor FrustumColor, float Duration, floatThickness) — Draws a debug frustum.
- **DrawDebugCamera**(ACameraActor* CameraActor, FLinearColor CameraColor, floatDuration) — Draw a debug camera shape.
- **DrawDebugFloatHistoryTransform**(UObject* WorldContextObject, FDebugFloatHistory& FloatHistory, FTransform& DrawTransform, FVector2D DrawSize, FLinearColor DrawColor, floatDuration) — Draws a 2D Histogram of size 'DrawSize' based FDebugFloatHistory struct, using DrawTransform for the position in the world.
- **DrawDebugFloatHistoryLocation**(UObject* WorldContextObject, FDebugFloatHistory& FloatHistory, FVector DrawLocation, FVector2D DrawSize, FLinearColor DrawColor, floatDuration) — Draws a 2D Histogram of size 'DrawSize' based FDebugFloatHistory struct, using DrawLocation for the location in the world, rotation will face camera of first player.
- **DebugFloatHistoryAddFloatHistorySample**(float Value, FDebugFloatHistory &FloatHistory)
- **DrawDebugActorName**(AActor* Actor, FVector Offset, FLinearColor LinearColor, floatDuration) — 绘制Actor名称
- **DrawDebugActorMoveTrack**(AActor* Actor, FLinearColor LinearColor, float Duration, floatThickness) — 绘制Actor运动轨迹
- **DrawDebugDistance**(UObject* WorldContextObject, FVector Self, FVector Target, FLinearColor LinearColor, float Duration, floatThickness) — 绘制Self到Tartget的连线与距离
- **DrawDebugTargetAimedAt**(UObject* WorldContextObject, float Length, floatDrawTime) — 绘制准心瞄准物体名称
- **DrawDebugActorCollision**(AActor* Actor, FLinearColor LinearColor, float Duration, floatThickness) — 绘制碰撞盒
- **DrawDebugActorBounds**(AActor* Actor, FLinearColor LinearColor, float Duration, floatThickness) — 绘制Actor的包围盒
- **CreateCopyForUndoBuffer**(UObject *ObjectToModify) — Mark as modified.
- **GetComponentBounds**(USceneComponent* Component, FVector& Origin, FVector& BoxExtent, float &SphereRadius) — Get bounds
- **GetActorBounds**(AActor* Actor, FVector& Origin, FVector &BoxExtent)
- **GetRenderingDetailMode**(Get the clamped state of r.DetailMode, see console variable help (allows for scalability, cannot be used in construction scripts) 0: low, show only object with DetailMode low or higher 1: medium, show all object with DetailMode medium or higher 2: high, show all objects)
- **GetRenderingMaterialQualityLevel**(Get the clamped state of r.MaterialQualityLevel, see console variable help (allows for scalability, cannot be used in construction scripts) 0: low 1: high 2: medium 3: ultimatehigh)
- **GetSupportedFullscreenResolutions**(TArray < FIntPoint > &Resolutions) — Gets the list of support fullscreen resolutions. return -true if successfully queried the device for available resolutions.
- **GetConvenientWindowedResolutions**(TArray < FIntPoint > &Resolutions) — Gets the list of windowed resolutions which are convenient for the current primary display size. return -true if successfully queried the device for available resolutions.
- **GetMinYResolutionForUI**(Gets the smallest Y resolution we want to support in the UI, clamped within reasons return -value in pixels)
- **GetMinYResolutionFor3DView**(Gets the smallest Y resolution we want to support in the 3D view, clamped within reasons return -value in pixels)
- **LaunchURL**(FString &URL)
- **CanLaunchURL**(FString &URL)
- **CollectGarbage**(boolbFullPurge)
- **GetTimeSinceLastPendingKillPurge**()
- **ShowAdBanner**(int32 AdIdIndex, boolbShowOnBottomOfScreen) — Will show an ad banner (iAd on iOS, or AdMob on Android) on the top or bottom of screen, on top of the GL view (doesn't resize the view) (iOS and Android only) params AdIdIndex -The index of the ID to select for the ad to show params bShowOnBottomOfScreen -If true, the iAd will be shown at the botto
- **GetAdIDCount**(Retrieves the total number of Ad IDs that can be selected between)
- **HideAdBanner**(Hides the ad banner (iAd on iOS, or AdMob on Android). Will force close the ad if it's open (iOS and Android only))
- **ForceCloseAdBanner**(Forces closed any displayed ad. Can lead to loss of revenue (iOS and Android only))
- **LoadInterstitialAd**(int32AdIdIndex) — Will load a fullscreen interstitial AdMob ad. Call this before using ShowInterstitialAd (Android only) params AdIdIndex -The index of the ID to select for the ad to show
- **IsInterstitialAdAvailable**(Returns true if the requested interstitial ad is loaded and ready (Android only))
- **IsInterstitialAdRequested**(Returns true if the requested interstitial ad has been successfully requested (false if load request fails) (Android only))
- **ShowInterstitialAd**(Shows the loaded interstitial ad (loaded with LoadInterstitialAd) (Android only))
- **ShowPlatformSpecificLeaderboardScreen**(FString &CategoryName) — Displays the built-in leaderboard GUI (iOS and Android only; this function may be renamed or moved in a future release)
- **ShowPlatformSpecificAchievementsScreen**(APlayerController *SpecificPlayer) — Displays the built-in achievements GUI (iOS and Android only; this function may be renamed or moved in a future release) params SpecificPlayer -Specific player's achievements to show. May not be supported on all platforms. If null, defaults to the player with ControllerId 0
- **IsLoggedIn**(APlayerController *SpecificPlayer) — Returns whether the player is logged in to the currently active online subsystem.
- **ControlScreensaver**(boolbAllowScreenSaver) — Allows or inhibits screensaver params bAllowScreenSaver -If false, don't allow screensaver if possible, otherwise allow default behavior
- **SetVolumeButtonsHandledBySystem**(boolbEnabled) — Allows or inhibits system default handling of volume up and volume down buttons (Android only) params bEnabled - If true, allow Android to handle volume up and down events
- **GetVolumeButtonsHandledBySystem**(Returns true if system default handling of volume up and volume down buttons enabled (Android only))
- **ResetGamepadAssignments**(Resets the gamepad to player controller id assignments (Android only))
- **ResetGamepadAssignmentToController**(int32ControllerId) — Resets the gamepad assignment to player controller id (Android only)
- **IsControllerAssignedToGamepad**(int32ControllerId) — Returns true if controller id assigned to a gamepad (Android only)
- **SetSuppressViewportTransitionMessage**(UObject* WorldContextObject, boolbState) — Sets the state of the transition message rendered by the viewport. (The blue text displayed when the game is paused and so forth.) params WorldContextObject -World context
- **GetPreferredLanguages**(Returns an array of the user's preferred languages in order of preference return -An array of language IDs ordered from most preferred to least)
- **StringGetDefaultLanguage**(Get the default language (for localization) used by this platform return -The language as an IETF language tag (eg, "zh-Hans-CN"))
- **StringGetDefaultLocale**(Get the default locale (for internationalization) used by this platform return -The locale as an IETF language tag (eg, "zh-Hans-CN"))
- **StringGetLocalCurrencyCode**(Returns the currency code associated with the device's locale return -the currency code associated with the device's locale)
- **StringGetLocalCurrencySymbol**(Returns the currency symbol associated with the device's locale return -the currency symbol associated with the device's locale)
- **RegisterForRemoteNotifications**(Requests permission to send remote notifications to the user's device. (Android and iOS only))
- **UnregisterForRemoteNotifications**(Requests Requests unregistering from receiving remote notifications to the user's device. (Android only))
- **SetUserActivity**(FUserActivity &UserActivity) — Tells the engine what the user is doing for debug, analytics, etc.
- **StringGetCommandLine**(Returns the command line that the process was launched with.)
- **GetObjectFromPrimaryAssetId**(FPrimaryAssetIdPrimaryAssetId) — Returns the Object associated with a Primary Asset Id, this will only return a valid object if it is in memory, it will not load it
- **GetClassFromPrimaryAssetId**(FPrimaryAssetIdPrimaryAssetId) — Returns the Blueprint Class associated with a Primary Asset Id, this will only return a valid object if it is in memory, it will not load it
- **GetSoftObjectReferenceFromPrimaryAssetId**(FPrimaryAssetIdPrimaryAssetId) — Returns the Object Id associated with a Primary Asset Id, this works even if the asset is not loaded
- **GetSoftClassReferenceFromPrimaryAssetId**(FPrimaryAssetIdPrimaryAssetId) — Returns the Blueprint Class Id associated with a Primary Asset Id, this works even if the asset is not loaded
- **PrimaryAssetIdGetPrimaryAssetIdFromObject**(UObject *Object) — Returns the Primary Asset Id for an Object, this can return an invalid one if not registered
- **PrimaryAssetIdGetPrimaryAssetIdFromClass**(TSubclassOf < UObject >Class) — Returns the Primary Asset Id for a Class, this can return an invalid one if not registered
- **PrimaryAssetIdGetPrimaryAssetIdFromSoftObjectReference**(TSoftObjectPtr < UObject >SoftObjectReference) — Returns the Primary Asset Id for a Soft Object Reference, this can return an invalid one if not registered
- **PrimaryAssetIdGetPrimaryAssetIdFromSoftClassReference**(TSoftClassPtr < UObject >SoftClassReference) — Returns the Primary Asset Id for a Soft Class Reference, this can return an invalid one if not registered
- **GetPrimaryAssetIdList**(FPrimaryAssetType PrimaryAssetType, TArray < FPrimaryAssetId > &OutPrimaryAssetIdList) — Returns list of PrimaryAssetIds for a PrimaryAssetType
- **IsValidPrimaryAssetId**(FPrimaryAssetIdPrimaryAssetId) — Returns true if the Primary Asset Id is valid
- **StringConv_PrimaryAssetIdToString**(FPrimaryAssetIdPrimaryAssetId) — Converts a Primary Asset Id to a string. The other direction is not provided because it cannot be validated
- **EqualEqual_PrimaryAssetId**(FPrimaryAssetId A, FPrimaryAssetIdB) — Returns true if the values are equal (A == B)
- **NotEqual_PrimaryAssetId**(FPrimaryAssetId A, FPrimaryAssetIdB) — Returns true if the values are not equal (A != B)
- **IsValidPrimaryAssetType**(FPrimaryAssetTypePrimaryAssetType) — Returns list of Primary Asset Ids for a PrimaryAssetType
- **StringConv_PrimaryAssetTypeToString**(FPrimaryAssetTypePrimaryAssetType) — Converts a Primary Asset Type to a string. The other direction is not provided because it cannot be validated
- **EqualEqual_PrimaryAssetType**(FPrimaryAssetType A, FPrimaryAssetTypeB) — Returns true if the values are equal (A == B)
- **NotEqual_PrimaryAssetType**(FPrimaryAssetType A, FPrimaryAssetTypeB) — Returns true if the values are not equal (A != B)
- **UnloadPrimaryAsset**(FPrimaryAssetIdPrimaryAssetId) — Unloads a primary asset, which allows it to be garbage collected if nothing else is referencing it
- **UnloadPrimaryAssetList**(TArray < FPrimaryAssetId > &PrimaryAssetIdList) — Unloads a primary asset, which allows it to be garbage collected if nothing else is referencing it
- **GetCurrentBundleState**(FPrimaryAssetId PrimaryAssetId, bool bForceCurrentState, TArray < FName > &OutBundles) — Returns the list of loaded bundles for a given Primary Asset. This will return false if the asset is not loaded at all. If ForceCurrentState is true it will return the current state even if a load is in process
- **GetPrimaryAssetsWithBundleState**(TArray < FName >& RequiredBundles, TArray < FName >& ExcludedBundles, TArray < FPrimaryAssetType >& ValidTypes, bool bForceCurrentState, TArray < FPrimaryAssetId > &OutPrimaryAssetIdList) — Returns the list of assets that are in a given bundle state. Required Bundles must be specified If ExcludedBundles is not empty, it will not return any assets in those bundle states If ValidTypes is not empty, it will only return assets of those types If ForceCurrentState is true it will use the cur
- **AddResMapping**(TMap < FName , FName > &InPackageNameRemap) — Functions for Asset Redirect
- **AddResPathMapping**(TMap < FString , FString > &InPackagePathRemap)
- **AddResARMapping**(TSet < FString > &InARPaths)
- **IterateAddResARMapping**(FString& InARRoot, TSet < FString > &InARPaths)
- **IterateRemoveResARMapping**(FString& InARRoot, TSet < FString > &InARPaths)
- **IsResARMapping**(FString &InARPath)
- **RemoveResMapping**(TArray < FString > &PathKeys)
- **EmptyResMapping**()
- **AddBlackResMapping**(TSet < FName > &InPackageNames)
- **RemoveBlackResMapping**(TSet < FName > &InPackageNames)
- **EmptyBlackResMapping**()
- **BindPackageNameResolver**()
- **UnBindPackageNameResolver**()
- **IsPackageNameResolverBinded**()
- **IsARPathActivated**(FString &InARPath)
- **GetOriginalPath**(FName& Path, FName &OriginalPath)
- **StringGetDelegateResolvedPackagePath**(FString &InSourcePackagePath) — StackTrace IsValid IsRecycled IsValidClass GetObjectName GetPathName GetDisplayName GetClassDisplayName StripObjectClass GetEngineVersion GetGameName GetGameBundleId GetPlatformUserName DoesImplementInterface GetGameTimeInSeconds IsServer IsDedicatedServer IsStandalone IsPackagedForDistribution GetU

## UKismetTextLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetTextLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetTextLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetTextLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetTextLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetTextLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetTextLibrary)

类

全文搜索

---


## 函数

- **TextConv_VectorToText**(FVectorInVec) — Converts a vector value to localized formatted text, in the form 'X= Y= Z='
- **TextConv_Vector2dToText**(FVector2DInVec) — Converts a vector2d value to localized formatted text, in the form 'X= Y='
- **TextConv_RotatorToText**(FRotatorInRot) — Converts a rotator value to localized formatted text, in the form 'P= Y= R='
- **TextConv_TransformToText**(FTransform &InTrans) — Converts a transform value to localized formatted text, in the form 'Translation: X= Y= Z= Rotation: P= Y= R= Scale: X= Y= Z='
- **TextConv_ObjectToText**(UObject *InObj) — Converts a UObject value to culture invariant text by calling the object's GetName method
- **TextConv_ColorToText**(FLinearColorInColor) — Converts a linear color value to localized formatted text, in the form '(R=,G=,B=,A=)'
- **StringConv_TextToString**(FText &InText) — Converts localizable text to the string
- **TextConv_StringToText**(FString &InString) — Converts string to culture invariant text. Use Format or Make Literal Text to create localizable text
- **TextConv_NameToText**(FNameInName) — Converts Name to culture invariant text
- **TextIsEmpty**(FText &InText) — Returns true if text is empty.
- **TextIsTransient**(FText &InText) — Returns true if text is transient.
- **TextIsCultureInvariant**(FText &InText) — Returns true if text is culture invariant.
- **TextTextToLower**(FText &InText) — Transforms the text to lowercase in a culture correct way.
- **TextTextToUpper**(FText &InText) — Transforms the text to uppercase in a culture correct way.
- **TextTextTrimPreceding**(FText &InText) — Removes whitespace characters from the front of the text.
- **TextTextTrimTrailing**(FText &InText) — Removes trailing whitespace characters.
- **TextTextTrimPrecedingAndTrailing**(FText &InText) — Removes whitespace characters from the front and end of the text.
- **TextGetEmptyText**(Returns an empty piece of text.)
- **FindTextInLocalizationTable**(FString& Namespace, FString& Key, FText &OutText) — Attempts to find existing Text using the representation found in the loc tables for the specified namespace and key.
- **EqualEqual_TextText**(FText& A, FText &B) — Returns true if A and B are linguistically equal (A == B).
- **EqualEqual_IgnoreCase_TextText**(FText& A, FText &B) — Returns true if A and B are linguistically equal (A == B), ignoring case.
- **NotEqual_TextText**(FText& A, FText &B) — Returns true if A and B are linguistically not equal (A != B).
- **NotEqual_IgnoreCase_TextText**(FText& A, FText &B) — Returns true if A and B are linguistically not equal (A != B), ignoring case.
- **TextConv_BoolToText**(boolInBool) — Converts a boolean value to formatted text, either 'true' or 'false'
- **TextConv_ByteToText**(uint8Value) — Converts a byte value to formatted text
- **TextConv_IntToText**(int32 Value, bool bUseGrouping, int32 MinimumIntegralDigits, int32MaximumIntegralDigits) — Converts a passed in integer to text based on formatting options
- **TextConv_FloatToText**(float Value, TEnumAsByte < ERoundingMode > RoundingMode, bool bUseGrouping, int32 MinimumIntegralDigits, int32 MaximumIntegralDigits, int32 MinimumFractionalDigits, int32MaximumFractionalDigits) — Converts a passed in float to text based on formatting options
- **TextAsCurrencyBase**(int32 BaseValue, FString &CurrencyCode) — Generate an FText that represents the passed number as currency in the current culture. BaseVal is specified in the smallest fractional value of the currency and will be converted for formatting according to the selected culture. Keep in mind the CurrencyCode is completely independent of the culture
- **AsCurrencyBase**(650, TEXT("EUR")
- **TextAsCurrency_Integer**(int32 Value, TEnumAsByte < ERoundingMode > RoundingMode, bool bUseGrouping, int32 MinimumIntegralDigits, int32 MaximumIntegralDigits, int32 MinimumFractionalDigits, int32 MaximumFractionalDigits, FStr) — Converts a passed in integer to a text formatted as a currency
- **TextAsCurrency_Float**(float Value, TEnumAsByte < ERoundingMode > RoundingMode, bool bUseGrouping, int32 MinimumIntegralDigits, int32 MaximumIntegralDigits, int32 MinimumFractionalDigits, int32 MaximumFractionalDigits, FStr) — Converts a passed in float to a text formatted as a currency
- **TextAsPercent_Float**(float Value, TEnumAsByte < ERoundingMode > RoundingMode, bool bUseGrouping, int32 MinimumIntegralDigits, int32 MaximumIntegralDigits, int32 MinimumFractionalDigits, int32MaximumFractionalDigits) — Converts a passed in float to a text, formatted as a percent
- **TextAsDate_DateTime**(FDateTime &InDateTime) — Converts a passed in date & time to a text, formatted as a date using an invariant timezone. This will use the given date & time as-is, so it's assumed to already be in the correct timezone.
- **TextAsTimeZoneDate_DateTime**(FDateTime& InDateTime, FString &InTimeZone) — Converts a passed in date & time to a text, formatted as a date using the given timezone (default is the local timezone). This will convert the given date & time from UTC to the given timezone (taking into account DST).
- **TextAsDateTime_DateTime**(FDateTime &In) — Converts a passed in date & time to a text, formatted as a date & time using an invariant timezone. This will use the given date & time as-is, so it's assumed to already be in the correct timezone.
- **TextAsTimeZoneDateTime_DateTime**(FDateTime& InDateTime, FString &InTimeZone) — Converts a passed in date & time to a text, formatted as a date & time using the given timezone (default is the local timezone). This will convert the given date & time from UTC to the given timezone (taking into account DST).
- **TextAsTime_DateTime**(FDateTime &In) — Converts a passed in date & time to a text, formatted as a time using an invariant timezone. This will use the given date & time as-is, so it's assumed to already be in the correct timezone.
- **TextAsTimeZoneTime_DateTime**(FDateTime& InDateTime, FString &InTimeZone) — Converts a passed in date & time to a text, formatted as a time using the given timezone (default is the local timezone). This will convert the given date & time from UTC to the given timezone (taking into account DST).
- **TextAsTimespan_Timespan**(FTimespan &InTimespan) — Converts a passed in time span to a text, formatted as a time span
- **TextFormat**(FText InPattern, TArray < FFormatArgumentData >InArgs) — Used for formatting text using the FText::Format function and utilized by the UK2Node_FormatText
- **TextIsFromStringTable**(FText &Text) — Returns true if the given text is referencing a string table.
- **TextTextFromStringTable**(FName TableId, FString &Key) — Attempts to create a text instance from a string table ID and key. return -The found text, or a dummy text if the entry could not be found.
- **StringTableIdAndKeyFromText**(FText Text, FName& OutTableId, FString &OutKey) — Attempts to find the String Table ID and key used by the given text. return -True if the String Table ID and key were found, false otherwise. Conv_VectorToText Conv_Vector2dToText Conv_RotatorToText Conv_TransformToText Conv_ObjectToText Conv_ColorToText Conv_TextToString Conv_StringToText Conv_Name

