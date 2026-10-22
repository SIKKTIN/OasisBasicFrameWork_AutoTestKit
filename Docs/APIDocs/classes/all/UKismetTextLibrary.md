# UKismetTextLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetTextLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetTextLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetTextLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetTextLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetTextLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetTextLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| F | **TextConv_VectorToText** | FVectorInVec | Converts a vector value to localized formatted text, in the form 'X= Y= Z=' |
| F | **TextConv_Vector2dToText** | FVector2DInVec | Converts a vector2d value to localized formatted text, in the form 'X= Y=' |
| F | **TextConv_RotatorToText** | FRotatorInRot | Converts a rotator value to localized formatted text, in the form 'P= Y= R=' |
| F | **TextConv_TransformToText** | FTransform &InTrans | Converts a transform value to localized formatted text, in the form 'Translation: X= Y= Z= Rotation: P= Y= R= Scale: X= Y= Z=' |
| F | **TextConv_ObjectToText** | UObject *InObj | Converts a UObject value to culture invariant text by calling the object's GetName method |
| F | **TextConv_ColorToText** | FLinearColorInColor | Converts a linear color value to localized formatted text, in the form '(R=,G=,B=,A=)' |
| F | **StringConv_TextToString** | FText &InText | Converts localizable text to the string |
| F | **TextConv_StringToText** | FString &InString | Converts string to culture invariant text. Use Format or Make Literal Text to create localizable text |
| F | **TextConv_NameToText** | FNameInName | Converts Name to culture invariant text |
| bool | **TextIsEmpty** | FText &InText | Returns true if text is empty. |
| bool | **TextIsTransient** | FText &InText | Returns true if text is transient. |
| bool | **TextIsCultureInvariant** | FText &InText | Returns true if text is culture invariant. |
| F | **TextTextToLower** | FText &InText | Transforms the text to lowercase in a culture correct way. |
| F | **TextTextToUpper** | FText &InText | Transforms the text to uppercase in a culture correct way. |
| F | **TextTextTrimPreceding** | FText &InText | Removes whitespace characters from the front of the text. |
| F | **TextTextTrimTrailing** | FText &InText | Removes trailing whitespace characters. |
| F | **TextTextTrimPrecedingAndTrailing** | FText &InText | Removes whitespace characters from the front and end of the text. |
| F | **TextGetEmptyText** |  | Returns an empty piece of text. |
| bool | **FindTextInLocalizationTable** | FString & Namespace, FString & Key, FText &OutText | Attempts to find existing Text using the representation found in the loc tables for the specified namespace and key. |
| bool | **EqualEqual_TextText** | FText & A, FText &B | Returns true if A and B are linguistically equal (A == B). |
| bool | **EqualEqual_IgnoreCase_TextText** | FText & A, FText &B | Returns true if A and B are linguistically equal (A == B), ignoring case. |
| bool | **NotEqual_TextText** | FText & A, FText &B | Returns true if A and B are linguistically not equal (A != B). |
| bool | **NotEqual_IgnoreCase_TextText** | FText & A, FText &B | Returns true if A and B are linguistically not equal (A != B), ignoring case. |
| F | **TextConv_BoolToText** | boolInBool | Converts a boolean value to formatted text, either 'true' or 'false' |
| F | **TextConv_ByteToText** | uint8Value | Converts a byte value to formatted text |
| F | **TextConv_IntToText** | int32 Value, bool bUseGrouping, int32 MinimumIntegralDigits, int32MaximumIntegralDigits | Converts a passed in integer to text based on formatting options |
| F | **TextConv_FloatToText** | float Value, TEnumAsByte < ERoundingMode > RoundingMode, bool bUseGrouping, int32 MinimumIntegralDigits, int32 MaximumIntegralDigits, int32 MinimumFractionalDigits, int32MaximumFractionalDigits | Converts a passed in float to text based on formatting options |
| F | **TextAsCurrencyBase** | int32 BaseValue, FString &CurrencyCode | Generate an FText that represents the passed number as currency in the current culture. BaseVal is specified in the smallest fractional value of the currency and will be converted for formatting according to the selected culture. Keep in mind the CurrencyCode is completely independent of the culture |
| For example: FText:: | **AsCurrencyBase** | 650, TEXT("EUR" |  |
| F | **TextAsCurrency_Integer** | int32 Value, TEnumAsByte < ERoundingMode > RoundingMode, bool bUseGrouping, int32 MinimumIntegralDigits, int32 MaximumIntegralDigits, int32 MinimumFractionalDigits, int32 MaximumFractionalDigits, FStr | Converts a passed in integer to a text formatted as a currency |
| F | **TextAsCurrency_Float** | float Value, TEnumAsByte < ERoundingMode > RoundingMode, bool bUseGrouping, int32 MinimumIntegralDigits, int32 MaximumIntegralDigits, int32 MinimumFractionalDigits, int32 MaximumFractionalDigits, FStr | Converts a passed in float to a text formatted as a currency |
| F | **TextAsPercent_Float** | float Value, TEnumAsByte < ERoundingMode > RoundingMode, bool bUseGrouping, int32 MinimumIntegralDigits, int32 MaximumIntegralDigits, int32 MinimumFractionalDigits, int32MaximumFractionalDigits | Converts a passed in float to a text, formatted as a percent |
| F | **TextAsDate_DateTime** | FDateTime &InDateTime | Converts a passed in date & time to a text, formatted as a date using an invariant timezone. This will use the given date & time as-is, so it's assumed to already be in the correct timezone. |
| F | **TextAsTimeZoneDate_DateTime** | FDateTime & InDateTime, FString &InTimeZone | Converts a passed in date & time to a text, formatted as a date using the given timezone (default is the local timezone). This will convert the given date & time from UTC to the given timezone (taking into account DST). |
| F | **TextAsDateTime_DateTime** | FDateTime &In | Converts a passed in date & time to a text, formatted as a date & time using an invariant timezone. This will use the given date & time as-is, so it's assumed to already be in the correct timezone. |
| F | **TextAsTimeZoneDateTime_DateTime** | FDateTime & InDateTime, FString &InTimeZone | Converts a passed in date & time to a text, formatted as a date & time using the given timezone (default is the local timezone). This will convert the given date & time from UTC to the given timezone (taking into account DST). |
| F | **TextAsTime_DateTime** | FDateTime &In | Converts a passed in date & time to a text, formatted as a time using an invariant timezone. This will use the given date & time as-is, so it's assumed to already be in the correct timezone. |
| F | **TextAsTimeZoneTime_DateTime** | FDateTime & InDateTime, FString &InTimeZone | Converts a passed in date & time to a text, formatted as a time using the given timezone (default is the local timezone). This will convert the given date & time from UTC to the given timezone (taking into account DST). |
| F | **TextAsTimespan_Timespan** | FTimespan &InTimespan | Converts a passed in time span to a text, formatted as a time span |
| F | **TextFormat** | FText InPattern, TArray < FFormatArgumentData >InArgs | Used for formatting text using the FText::Format function and utilized by the UK2Node_FormatText |
| bool | **TextIsFromStringTable** | FText &Text | Returns true if the given text is referencing a string table. |
| F | **TextTextFromStringTable** | FName TableId, FString &Key | Attempts to create a text instance from a string table ID and key. return -The found text, or a dummy text if the entry could not be found. |
| bool | **StringTableIdAndKeyFromText** | FText Text, FName & OutTableId, FString &OutKey | Attempts to find the String Table ID and key used by the given text. return -True if the String Table ID and key were found, false otherwise. Conv_VectorToText Conv_Vector2dToText Conv_RotatorToText Conv_TransformToText Conv_ObjectToText Conv_ColorToText Conv_TextToString Conv_StringToText Conv_Name |

