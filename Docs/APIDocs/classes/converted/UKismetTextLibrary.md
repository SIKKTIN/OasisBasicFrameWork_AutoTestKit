# UKismetTextLibrary

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