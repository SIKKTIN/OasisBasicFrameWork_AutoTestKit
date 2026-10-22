# UKismetMathLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetMathLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetMathLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetMathLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetMathLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetMathLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetMathLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| bool | **RandomBool** |  | Returns a uniformly distributed random bool |
| bool | **RandomBoolWithWeight** | floatWeight | Get a random chance with the specified weight. Range of weight is 0.0 - 1.0 E.g., Weight = .6 return value = True 60% of the time |
| bool | **RandomBoolWithWeightFromStream** | float Weight, FRandomStream &RandomStream | Get a random chance with the specified weight. Range of weight is 0.0 - 1.0 E.g., Weight = .6 return value = True 60% of the time |
| bool | **Not_PreBool** | boolA | Returns the logical complement of the Boolean value (NOT A) |
| bool | **EqualEqual_BoolBool** | bool A, boolB | Returns true if the values are equal (A == B) |
| bool | **NotEqual_BoolBool** | bool A, boolB | Returns true if the values are not equal (A != B) |
| bool | **BooleanAND** | bool A, boolB | Returns the logical AND of two values (A AND B) |
| bool | **BooleanNAND** | bool A, boolB | Returns the logical NAND of two values (A AND B) |
| bool | **BooleanOR** | bool A, boolB | Returns the logical OR of two values (A OR B) |
| bool | **BooleanXOR** | bool A, boolB | Returns the logical eXclusive OR of two values (A XOR B) |
| bool | **BooleanNOR** | bool A, boolB | Returns the logical Not OR of two values (A NOR B) |
| uint8 | **Multiply_ByteByte** | uint8 A, uint8B | Multiplication (A B) |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName = "Byte Byte", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true" |  |
| uint8 | **Divide_ByteByte** | uint8 A, uint8B | Division (A B) |
| uint8 | **Percent_ByteByte** | uint8 A, uint8B | Modulo (A % B) |
| uint8 | **Add_ByteByte** | uint8 A, uint8B | Addition (A + B) |
| uint8 | **Subtract_ByteByte** | uint8 A, uint8B | Subtraction (A - B) |
| uint8 | **BMin** | uint8 A, uint8B | Returns the minimum value of A and B |
| uint8 | **BMax** | uint8 A, uint8B | Returns the maximum value of A and B |
| bool | **Less_ByteByte** | uint8 A, uint8B | Returns true if A is less than B (A < B) |
| bool | **Greater_ByteByte** | uint8 A, uint8B | Returns true if A is greater than B (A > B) |
| bool | **LessEqual_ByteByte** | uint8 A, uint8B | Returns true if A is less than or equal to B (A <= B) |
| bool | **GreaterEqual_ByteByte** | uint8 A, uint8B | Returns true if A is greater than or equal to B (A >= B) |
| bool | **EqualEqual_ByteByte** | uint8 A, uint8B | Returns true if A is equal to B (A == B) |
| bool | **NotEqual_ByteByte** | uint8 A, uint8B | Returns true if A is not equal to B (A != B) |
| int32 | **Multiply_IntInt** | int32 A, int32B | Multiplication (A B) |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName = "integer integer", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true" |  |
| int32 | **Divide_IntInt** | int32 A, int32B | Division (A B) |
| int32 | **Percent_IntInt** | int32 A, int32B | Modulo (A % B) |
| int32 | **Add_IntInt** | int32 A, int32B | Addition (A + B) |
| int32 | **Subtract_IntInt** | int32 A, int32B | Subtraction (A - B) |
| bool | **Less_IntInt** | int32 A, int32B | Returns true if A is less than B (A < B) |
| bool | **Greater_IntInt** | int32 A, int32B | Returns true if A is greater than B (A > B) |
| bool | **LessEqual_IntInt** | int32 A, int32B | Returns true if A is less than or equal to B (A <= B) |
| bool | **GreaterEqual_IntInt** | int32 A, int32B | Returns true if A is greater than or equal to B (A >= B) |
| bool | **EqualEqual_IntInt** | int32 A, int32B | Returns true if A is equal to B (A == B) |
| bool | **NotEqual_IntInt** | int32 A, int32B | Returns true if A is not equal to B (A != B) |
| bool | **InRange_IntInt** | int32 Value, int32 Min, int32 Max, bool InclusiveMin, boolInclusiveMax | Returns true if value is between Min and Max (V >= Min && V <= Max) If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller |
| int32 | **And_IntInt** | int32 A, int32B | Bitwise AND (A & B) |
| int32 | **Xor_IntInt** | int32 A, int32B | Bitwise XOR (A ^ B) |
| int32 | **Or_IntInt** | int32 A, int32B | Bitwise OR (A | B) |
| int32 | **Not_Int** | int32A | Bitwise NOT (~A) |
| int32 | **LeftShift_Int** | int32 A, int32N | Bitwise LeftShift (A << N) |
| int32 | **RightShift_Int** | int32 A, int32N | Bitwise RightShift (A >> N) |
| int64 | **LeftShift_Int64** | int64 A, int32N | Bitwise LeftShift (A << N) |
| int64 | **RightShift_Int64** | int64 A, int32N | Bitwise RightShift (A >> N) |
| int32 | **SignOfInteger** | int32A | Sign (integer, returns -1 if A < 0, 0 if A is zero, and +1 if A > 0) |
| int32 | **RandomInteger** | int32A | Returns a uniformly distributed random number between 0 and Max - 1 |
| int32 | **RandomIntegerInRange** | int32 Min, int32Max | Return a random integer between Min and Max (>= Min and <= Max) |
| int32 | **Min** | int32 A, int32B | Returns the minimum value of A and B |
| int32 | **Max** | int32 A, int32B | Returns the maximum value of A and B |
| int32 | **Clamp** | int32 V, int32 A, int32B | Returns Value clamped to be between A and B (inclusive) |
| int32 | **Abs_Int** | int32A | Returns the absolute (positive) value of A |
| int64 | **Multiply_Int64Int64** | int64 A, int64B | Multiplication (A B) |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName = "integer64 integer64", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true" |  |
| int64 | **Divide_Int64Int64** | int64 A, int64B | Division (A B) |
| int64 | **Add_Int64Int64** | int64 A, int64B | Addition (A + B) |
| int64 | **Subtract_Int64Int64** | int64 A, int64B | Subtraction (A - B) |
| bool | **Less_Int64Int64** | int64 A, int64B | Returns true if A is less than B (A < B) |
| bool | **Greater_Int64Int64** | int64 A, int64B | Returns true if A is greater than B (A > B) |
| bool | **LessEqual_Int64Int64** | int64 A, int64B | Returns true if A is less than or equal to B (A <= B) |
| bool | **GreaterEqual_Int64Int64** | int64 A, int64B | Returns true if A is greater than or equal to B (A >= B) |
| bool | **EqualEqual_Int64Int64** | int64 A, int64B | Returns true if A is equal to B (A == B) |
| bool | **NotEqual_Int64Int64** | int64 A, int64B | Returns true if A is not equal to B (A != B) |
| bool | **InRange_Int64Int64** | int64 Value, int64 Min, int64 Max, bool InclusiveMin, boolInclusiveMax | Returns true if value is between Min and Max (V >= Min && V <= Max) If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller |
| int64 | **And_Int64Int64** | int64 A, int64B | Bitwise AND (A & B) |
| int64 | **Xor_Int64Int64** | int64 A, int64B | Bitwise XOR (A ^ B) |
| int64 | **Or_Int64Int64** | int64 A, int64B | Bitwise OR (A | B) |
| int64 | **Not_Int64** | int64A | Bitwise NOT (~A) |
| int64 | **SignOfInteger64** | int64A | Sign (integer64, returns -1 if A < 0, 0 if A is zero, and +1 if A > 0) |
| int64 | **RandomInteger64** | int64A | Returns a uniformly distributed random number between 0 and Max - 1 |
| int64 | **RandomInteger64InRange** | int64 Min, int64Max | Return a random integer64 between Min and Max (>= Min and <= Max) |
| int64 | **MinInt64** | int64 A, int64B | Returns the minimum value of A and B |
| int64 | **MaxInt64** | int64 A, int64B | Returns the maximum value of A and B |
| int64 | **ClampInt64** | int64 V, int64 A, int64B | Returns Value clamped to be between A and B (inclusive) |
| int64 | **Abs_Int64** | int64A | Returns the absolute (positive) value of A |
| uint64 | **Multiply_UInt64UInt64** | uint64 A, uint64B | Multiplication (A B) |
| U | **FUNCTION** | BlueprintPure, meta = (DisplayName = "uinteger64 uinteger64", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true" |  |
| uint64 | **Divide_UInt64UInt64** | uint64 A, uint64B | Division (A B) |
| uint64 | **Add_UInt64UInt64** | uint64 A, uint64B | Addition (A + B) |
| uint64 | **Subtract_UInt64UInt64** | uint64 A, uint64B | Subtraction (A - B) |
| bool | **Less_UInt64UInt64** | uint64 A, uint64B | Returns true if A is less than B (A < B) |
| bool | **Greater_UInt64UInt64** | uint64 A, uint64B | Returns true if A is greater than B (A > B) |
| bool | **LessEqual_UInt64UInt64** | uint64 A, uint64B | Returns true if A is less than or equal to B (A <= B) |
| bool | **GreaterEqual_UInt64UInt64** | uint64 A, uint64B | Returns true if A is greater than or equal to B (A >= B) |
| bool | **EqualEqual_UInt64UInt64** | uint64 A, uint64B | Returns true if A is equal to B (A == B) |
| bool | **NotEqual_UInt64UInt64** | uint64 A, uint64B | Returns true if A is not equal to B (A != B) |
| bool | **InRange_UInt64UInt64** | uint64 Value, uint64 Min, uint64 Max, bool InclusiveMin, boolInclusiveMax | Returns true if value is between Min and Max (V >= Min && V <= Max) If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller |
| uint64 | **And_UInt64UInt64** | uint64 A, uint64B | Bitwise AND (A & B) |
| uint64 | **Xor_UInt64UInt64** | uint64 A, uint64B | Bitwise XOR (A ^ B) |
| uint64 | **Or_UInt64UInt64** | uint64 A, uint64B | Bitwise OR (A | B) |
| uint64 | **Not_UInt64** | uint64A | Bitwise NOT (~A) |
| uint64 | **RandomUInteger64** | uint64A | Returns a uniformly distributed random number between 0 and Max - 1 |
| uint64 | **RandomUInteger64InRange** | uint64 Min, uint64Max | Return a random integer64 between Min and Max (>= Min and <= Max) |
| uint64 | **MinUInt64** | uint64 A, uint64B | Returns the minimum value of A and B |
| uint64 | **MaxUInt64** | uint64 A, uint64B | Returns the maximum value of A and B |
| uint64 | **ClampUInt64** | uint64 V, uint64 A, uint64B | Returns Value clamped to be between A and B (inclusive) |
| float | **MultiplyMultiply_FloatFloat** | float Base, floatExp | Power (Base to the Exp-th power) |
| float | **Multiply_FloatFloat** | float A, floatB | Multiplication (A B) |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName = "float float", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true" |  |
| float | **Multiply_IntFloat** | int32 A, floatB | Multiplication (A B) |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName = "int float", CompactNodeTitle = "", Keywords = " multiply" |  |
| float | **Divide_FloatFloat** | float A, floatB | Division (A B) |
| float | **Percent_FloatFloat** | float A, floatB | Modulo (A % B) |
| float | **Fraction** | floatA | Returns the fractional part of a float. |
| float | **Add_FloatFloat** | float A, floatB | Addition (A + B) |
| float | **Subtract_FloatFloat** | float A, floatB | Subtraction (A - B) |
| bool | **Less_FloatFloat** | float A, floatB | Returns true if A is Less than B (A < B) |
| bool | **Greater_FloatFloat** | float A, floatB | Returns true if A is greater than B (A > B) |
| bool | **LessEqual_FloatFloat** | float A, floatB | Returns true if A is Less than or equal to B (A <= B) |
| bool | **GreaterEqual_FloatFloat** | float A, floatB | Returns true if A is greater than or equal to B (A >= B) |
| bool | **EqualEqual_FloatFloat** | float A, floatB | Returns true if A is exactly equal to B (A == B) |
| bool | **NearlyEqual_FloatFloat** | float A, float B, floatErrorTolerance | Returns true if A is nearly equal to B (|A - B| < ErrorTolerance) |
| bool | **NotEqual_FloatFloat** | float A, floatB | Returns true if A does not equal B (A != B) |
| bool | **InRange_FloatFloat** | float Value, float Min, float Max, bool InclusiveMin, boolInclusiveMax | Returns true if value is between Min and Max (V >= Min && V <= Max) If InclusiveMin is true, value needs to be equal or larger than Min, else it needs to be larger If InclusiveMax is true, value needs to be smaller or equal than Max, else it needs to be smaller |
| float | **Hypotenuse** | float Width, floatHeight | Returns the hypotenuse of a right-angled triangle given the width and height. |
| float | **GridSnap_Float** | float Location, floatGridSize | Snaps a value to the nearest grid multiple. E.g., Location = 5.1, GridSize = 10.0 : return value = 10.0 If GridSize is 0 Location is returned if GridSize is very small precision issues may occur. |
| float | **Abs** | floatA | Returns the absolute (positive) value of A |
| float | **Sin** | floatA | Returns the sine of A (expects Radians) |
| float | **Asin** | floatA | Returns the inverse sine (arcsin) of A (result is in Radians) |
| float | **Cos** | floatA | Returns the cosine of A (expects Radians) |
| float | **Acos** | floatA | Returns the inverse cosine (arccos) of A (result is in Radians) |
| float | **Tan** | floatA | Returns the tan of A (expects Radians) |
| float | **Atan** | floatA | Returns the inverse tan (atan) (result is in Radians) |
| float | **Atan2** | float A, floatB | Returns the inverse tan (atan2) of AB (result is in Radians) |
| float | **Exp** | floatA | Returns exponential(e) to the power A (e^A) |
| float | **Log** | float A, floatBase | Returns log of A base B (if B^R == A, returns R) |
| float | **Loge** | floatA | Returns natural log of A (if e^R == A, returns R) |
| float | **Sqrt** | floatA | Returns square root of A |
| float | **Square** | floatA | Returns square of A (AA) |
| float | **RandomFloat** |  | Returns a random float between 0 and 1 |
| float | **RandomFloatInRange** | float Min, floatMax | Generate a random number between Min and Max |
| float | **GetPI** |  | Returns the value of PI |
| float | **GetTAU** |  | Returns the value of TAU (= 2 PI) |
| float | **DegreesToRadians** | floatA | Returns radians value based on the input degrees |
| float | **RadiansToDegrees** | floatA | Returns degrees value based on the input radians |
| float | **DegSin** | floatA | Returns the sin of A (expects Degrees) |
| float | **DegAsin** | floatA | Returns the inverse sin (arcsin) of A (result is in Degrees) |
| float | **DegCos** | floatA | Returns the cos of A (expects Degrees) |
| float | **DegAcos** | floatA | Returns the inverse cos (arccos) of A (result is in Degrees) |
| float | **DegTan** | floatA | Returns the tan of A (expects Degrees) |
| float | **DegAtan** | floatA | Returns the inverse tan (atan) (result is in Degrees) |
| float | **DegAtan2** | float A, floatB | Returns the inverse tan (atan2) of AB (result is in Degrees) |
| float | **ClampAngle** | float AngleDegrees, float MinAngleDegrees, floatMaxAngleDegrees | Clamps an arbitrary angle to be between the given angles. Will clamp to nearest boundary. return -Returns clamped angle in the range -180..180. params MinAngleDegrees -"from" angle that defines the beginning of the range of valid angles (sweeping clockwise) params MaxAngleDegrees -"to" angle that de |
| float | **FMin** | float A, floatB | Returns the minimum value of A and B |
| float | **FMax** | float A, floatB | Returns the maximum value of A and B |
| float | **FClamp** | float V, float A, floatB | Returns Value clamped between A and B (inclusive) |
| void | **MaxOfIntArray** | TArray < int32 > & IntArray, int32 & IndexOfMaxValue, int32 &MaxValue | Returns max of all array entries and the index at which it was found. Returns value of 0 and index of -1 if the supplied array is empty. |
| void | **MinOfIntArray** | TArray < int32 > & IntArray, int32 & IndexOfMinValue, int32 &MinValue | Returns min of all array entries and the index at which it was found. Returns value of 0 and index of -1 if the supplied array is empty. |
| void | **MaxOfFloatArray** | TArray < float > & FloatArray, int32 & IndexOfMaxValue, float &MaxValue | Returns max of all array entries and the index at which it was found. Returns value of 0 and index of -1 if the supplied array is empty. |
| void | **MinOfFloatArray** | TArray < float > & FloatArray, int32 & IndexOfMinValue, float &MinValue | Returns min of all array entries and the index at which it was found. Returns value of 0 and index of -1 if the supplied array is empty. |
| void | **MaxOfByteArray** | TArray < uint8 > & ByteArray, int32 & IndexOfMaxValue, uint8 &MaxValue | Returns max of all array entries and the index at which it was found. Returns value of 0 and index of -1 if the supplied array is empty. |
| void | **MinOfByteArray** | TArray < uint8 > & ByteArray, int32 & IndexOfMinValue, uint8 &MinValue | Returns min of all array entries and the index at which it was found. Returns value of 0 and index of -1 if the supplied array is empty. |
| float | **Lerp** | float A, float B, floatV | Linearly interpolates between A and B based on Alpha (100% of A when Alpha=0 and 100% of B when Alpha=1) |
| float | **InverseLerp** | float A, float B, floatValue | Returns the fraction (alpha) of the range B-A that corresponds to Value, e.g., inputs A = 0, B = 8, Value = 3 : outputs Return Value = 38, indicating Value is 38 from A to B inputs A = 8, B = 0, Value = 3 : outputs Return Value = 58, indicating Value is 58 from A to B |
| Named InverseLerp because | **Lerp** |  A, B, InverseLerp(A, B, Value | return -A normalized alpha value considering A and B. params A -The "from" value this float could be, usually but not necessarily a minimum. Returned as 0. params B -The "to" value this float could be, usually but not necessarily a maximum. Returned as 1. params Value -A value intended to be normali |
| float | **Ease** | float A, float B, float Alpha, TEnumAsByte < EEasingFunc :: Type > EasingFunc, float BlendExp, int32Steps | Easeing between A and B using a specified easing function |
| int32 | **Round** | floatA | Rounds A to the nearest integer |
| int32 | **FFloor** | floatA | Rounds A to the largest previous integer |
| int32 | **FTrunc** | floatA | Rounds A to an integer with truncation towards zero. (e.g. -1.7 truncated to -1, 2.8 truncated to 2) |
| F | **IntVectorFTruncVector** | FVector &InVector | Rounds A to an integer with truncation towards zero for each element in a vector. (e.g. -1.7 truncated to -1, 2.8 truncated to 2) |
| int32 | **FCeil** | floatA | Rounds A to the smallest following integer |
| int32 | **FMod** | float Dividend, float Divisor, float &Remainder | Returns the number of times Divisor will go into Dividend (i.e., Dividend divided by Divisor), as well as the remainder |
| float | **SignOfFloat** | floatA | Sign (float, returns -1 if A < 0, 0 if A is zero, and +1 if A > 0) |
| float | **NormalizeToRange** | float Value, float RangeMin, floatRangeMax | Returns Value normalized to the given range. (e.g. 20 normalized to the range 10->50 would result in 0.25) |
| float | **MapRangeUnclamped** | float Value, float InRangeA, float InRangeB, float OutRangeA, floatOutRangeB | Returns Value mapped from one range into another. (e.g. 20 normalized from the range 10->50 to 20->40 would result in 25) |
| float | **MapRangeClamped** | float Value, float InRangeA, float InRangeB, float OutRangeA, floatOutRangeB | Returns Value mapped from one range into another where the Value is clamped to the Input Range. (e.g. 0.5 normalized from the range 0->1 to 0->50 would result in 25) |
| float | **MultiplyByPi** | floatValue | Multiplies the input value by pi. |
| U | **FUNCTION** | BlueprintPure, meta=(Keywords = " multiply" |  |
| float | **FInterpEaseInOut** | float A, float B, float Alpha, floatExponent | Interpolate between A and B, applying an ease inout function. Exp controls the degree of the curve. |
| float | **MakePulsatingValue** | float InCurrentTime, float InPulsesPerSecond, floatInPhase | Simple function to create a pulsating scalar value return - Pulsating value (0.0-1.0) params InCurrentTime -Current absolute time params InPulsesPerSecond -How many full pulses per second? params InPhase -Optional phase amount, between 0.0 and 1.0 (to synchronize pulses) |
| float | **FixedTurn** | float InCurrent, float InDesired, floatInDeltaRate | Returns a new rotation component value return -a new rotation component value clamped in the range (-360,360) params InCurrent -is the current rotation value params InDesired -is the desired rotation value |
| F | **VectorMultiply_VectorFloat** | FVector A, floatB | Scales Vector A by B |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName = "vector float", CompactNodeTitle = "", Keywords = " multiply" |  |
| F | **VectorMultiply_VectorInt** | FVector A, int32B | Scales Vector A by B |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName = "vector int", CompactNodeTitle = "", Keywords = " multiply" |  |
| F | **VectorMultiply_VectorVector** | FVector A, FVectorB |  |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName = "vector vector", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true" |  |
| F | **VectorDivide_VectorFloat** | FVector A, floatB | Vector divide by a float |
| F | **VectorDivide_VectorInt** | FVector A, int32B | Vector divide by an integer |
| F | **VectorDivide_VectorVector** | FVector A, FVectorB |  |
| F | **VectorAdd_VectorVector** | FVector A, FVectorB | Vector addition |
| F | **VectorAdd_VectorFloat** | FVector A, floatB | Adds a float to each component of a vector |
| F | **VectorAdd_VectorInt** | FVector A, int32B | Adds an integer to each component of a vector |
| F | **VectorSubtract_VectorVector** | FVector A, FVectorB | Vector subtraction |
| F | **VectorSubtract_VectorFloat** | FVector A, floatB | Subtracts a float from each component of a vector |
| F | **VectorSubtract_VectorInt** | FVector A, int32B | Subtracts an integer from each component of a vector |
| F | **VectorLessLess_VectorRotator** | FVector A, FRotatorB | Returns result of vector A rotated by the inverse of Rotator B |
| F | **VectorGreaterGreater_VectorRotator** | FVector A, FRotatorB | Returns result of vector A rotated by Rotator B |
| F | **VectorRotateAngleAxis** | FVector InVect, float AngleDeg, FVectorAxis | Returns result of vector A rotated by AngleDeg around Axis |
| bool | **EqualEqual_VectorVector** | FVector A, FVector B, floatErrorTolerance | Returns true if vector A is equal to vector B (A == B) within a specified error tolerance |
| bool | **NotEqual_VectorVector** | FVector A, FVector B, floatErrorTolerance | Returns true if vector A is not equal to vector B (A != B) within a specified error tolerance |
| float | **Dot_VectorVector** | FVector A, FVectorB | Returns the dot product of two 3d vectors |
| F | **VectorCross_VectorVector** | FVector A, FVectorB | Returns the cross product of two 3d vectors |
| float | **DotProduct2D** | FVector2D A, FVector2DB | Returns the dot product of two 2d vectors |
| float | **CrossProduct2D** | FVector2D A, FVector2DB | Returns the cross product of two 2d vectors |
| float | **VSize** | FVectorA | Returns the length of the FVector |
| float | **VSize2D** | FVector2DA | Returns the length of a 2d FVector. |
| float | **VSizeSquared** | FVectorA | Returns the squared length of the FVector |
| float | **VSize2DSquared** | FVector2DA | Returns the squared length of a 2d FVector. |
| F | **VectorNormal** | FVectorA | Returns a unit normal version of the FVector A |
| F | **Vector2DNormal2D** | FVector2DA | Returns a unit normal version of the vector2d A |
| F | **VectorVLerp** | FVector A, FVector B, floatV | Linearly interpolates between A and B based on Alpha (100% of A when Alpha=0 and 100% of B when Alpha=1) |
| F | **VectorVEase** | FVector A, FVector B, float Alpha, TEnumAsByte < EEasingFunc :: Type > EasingFunc, float BlendExp, int32Steps | Easeing between A and B using a specified easing function |
| bool | **VContainsNan** | FVectorA | Returns true if the vector contains NAN |
| F | **VectorRandomUnitVector** |  | Returns a random vector with length of 1 |
| F | **VectorRandomPointInBoundingBox** | FVector & Origin, FVector &BoxExtent | Returns a random point within the specified bounding box |
| F | **VectorRandomUnitVectorInConeInRadians** | FVector ConeDir, floatConeHalfAngleInRadians | Returns a random vector with length of 1, within the specified cone, with uniform random distribution. params ConeDir - The base "center" direction of the cone. params ConeHalfAngleInRadians -The half-angle of the cone (from ConeDir to edge), in radians. |
| F | **VectorRandomUnitVectorInConeInDegrees** | FVector ConeDir, floatConeHalfAngleInDegrees | Returns a random vector with length of 1, within the specified cone, with uniform random distribution. params ConeDir - The base "center" direction of the cone. params ConeHalfAngleInDegrees -The half-angle of the cone (from ConeDir to edge), in degrees. |
| F | **VectorRandomUnitVectorInEllipticalConeInRadians** | FVector ConeDir, float MaxYawInRadians, floatMaxPitchInRadians | Returns a random vector with length of 1, within the specified cone, with uniform random distribution. The shape of the cone can be modified according to the yaw and pitch angles. params MaxYawInRadians -The yaw angle of the cone (from ConeDir to horizontal edge), in radians. params MaxPitchInRadian |
| F | **VectorRandomUnitVectorInEllipticalConeInDegrees** | FVector ConeDir, float MaxYawInDegrees, floatMaxPitchInDegrees | Returns a random vector with length of 1, within the specified cone, with uniform random distribution. The shape of the cone can be modified according to the yaw and pitch angles. params MaxYawInDegrees -The yaw angle of the cone (from ConeDir to horizontal edge), in degrees. params MaxPitchInDegree |
| F | **VectorMirrorVectorByNormal** | FVector A, FVectorB | Mirrors a vector by a normal |
| F | **VectorProjectVectorOnToVector** | FVector V, FVectorTarget | Projects one vector (V) onto another (Target) and returns the projected vector. If Target is nearly zero in length, returns the zero vector. return -V projected on to Target. params V -Vector to project. params Target -Vector on which we are projecting. |
| F | **VectorGetReflectionVector** | FVector Direction, FVectorSurfaceNormal | Given a direction vector and a surface normal, returns the vector reflected across the surface normal. Produces a result like shining a laser at a mirror! return - Reflected vector. params Direction -Direction vector the ray is coming from. params SurfaceNormal -A normal of the surface the ray shoul |
| void | **FindNearestPointsOnLineSegments** | FVector Segment1Start, FVector Segment1End, FVector Segment2Start, FVector Segment2End, FVector & Segment1Point, FVector &Segment2Point | Find closest points between 2 segments. params Segment1Start -Start of the 1st segment. params Segment1End -End of the 1st segment. params Segment2Start -Start of the 2nd segment. params Segment2End -End of the 2nd segment. params Segment1Point -Closest point on segment 1 to segment 2. params Segmen |
| F | **VectorFindClosestPointOnSegment** | FVector Point, FVector SegmentStart, FVectorSegmentEnd | Find the closest point on a segment to a given point. return -The closest point on the segment to the given point. params Point - Point for which we find the closest point on the segment. params SegmentStart -Start of the segment. params SegmentEnd -End of the segment. |
| F | **VectorFindClosestPointOnLine** | FVector Point, FVector LineOrigin, FVectorLineDirection | Find the closest point on an infinite line to a given point. return -The closest point on the line to the given point. params Point - Point for which we find the closest point on the line. params LineOrigin -Point of reference on the line. params LineDirection -Direction of the line. Not required to |
| float | **GetPointDistanceToSegment** | FVector Point, FVector SegmentStart, FVectorSegmentEnd | Find the distance from a point to the closest point on a segment. return -The distance from the given point to the closest point on the segment. params Point - Point for which we find the distance to the closest point on the segment. params SegmentStart -Start of the segment. params SegmentEnd -End  |
| float | **GetPointDistanceToLine** | FVector Point, FVector LineOrigin, FVectorLineDirection | Find the distance from a point to the closest point on an infinite line. return -The distance from the given point to the closest point on the line. params Point - Point for which we find the distance to the closest point on the line. params LineOrigin -Point of reference on the line. params LineDir |
| F | **VectorProjectPointOnToPlane** | FVector Point, FVector PlaneBase, FVectorPlaneNormal | Projects a point onto a plane defined by a point on the plane and a plane normal. return -Point projected onto the plane. params Point -Point to project onto the plane. params PlaneBase -A point on the plane. params PlaneNormal -Normal of the plane. |
| F | **VectorProjectVectorOnToPlane** | FVector V, FVectorPlaneNormal | Projects a vector onto a plane defined by a normalized vector (PlaneNormal). return -Vector projected onto the plane. params V -Vector to project onto the plane. params PlaneNormal -Normal of the plane. |
| F | **VectorNegateVector** | FVectorA | Negate a vector. |
| F | **VectorClampVectorSize** | FVector A, float Min, floatMax | Clamp the vector size between a min and max length |
| float | **GetMinElement** | FVectorA | Find the minimum element (X, Y or Z) of a vector |
| float | **GetMaxElement** | FVectorA | Find the maximum element (X, Y or Z) of a vector |
| F | **VectorGetVectorArrayAverage** | TArray < FVector > &Vectors | Find the average of an array of vectors |
| F | **VectorGetDirectionUnitVector** | FVector From, FVectorTo | Find the unit direction vector from one position to another. |
| bool | **EqualEqual_RotatorRotator** | FRotator A, FRotator B, floatErrorTolerance | Returns true if rotator A is equal to rotator B (A == B) within a specified error tolerance |
| bool | **NotEqual_RotatorRotator** | FRotator A, FRotator B, floatErrorTolerance | Returns true if rotator A is not equal to rotator B (A != B) within a specified error tolerance |
| F | **RotatorMultiply_RotatorFloat** | FRotator A, floatB | Returns rotator representing rotator A scaled by B |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName = "ScaleRotator", CompactNodeTitle = "", Keywords = " multiply rotate rotation" |  |
| F | **RotatorMultiply_RotatorInt** | FRotator A, int32B | Returns rotator representing rotator A scaled by B |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName = "ScaleRotator (int |  |
| F | **RotatorComposeRotators** | FRotator A, FRotatorB | Combine 2 rotations to give you the resulting rotation of first applying A, then B. |
| F | **RotatorNegateRotator** | FRotatorA | Negate a rotator |
| F | **RotatorNormalRotator** | FRotatorA | Negate a rotator |
| void | **GetAxes** | FRotator A, FVector & X, FVector & Y, FVector &Z | Get the reference frame direction vectors (axes) described by this rotation |
| F | **RotatorRandomRotator** | boolbRoll | Generates a random rotation, with optional random roll. |
| F | **RotatorRLerp** | FRotator A, FRotator B, float Alpha, boolbShortestPath | Linearly interpolates between A and B based on Alpha (100% of A when Alpha=0 and 100% of B when Alpha=1) |
| F | **RotatorREase** | FRotator A, FRotator B, float Alpha, bool bShortestPath, TEnumAsByte < EEasingFunc :: Type > EasingFunc, float BlendExp, int32Steps | Easeing between A and B using a specified easing function |
| bool | **RContainsNan** | FRotatorA | Returns true if the rotation contains NAN |
| F | **RotatorNormalizedDeltaRotator** | FRotator A, FRotatorB | Normalized A-B |
| F | **RotatorRotatorFromAxisAndAngle** | FVector Axis, floatAngle | Create a rotation from an axis and and angle (in degrees) |
| float | **ClampAxis** | floatAngle | Clamps an angle to the range of [0, 360]. return -The clamped angle. params Angle -The angle to clamp. |
| float | **NormalizeAxis** | floatAngle | Clamps an angle to the range of [-180, 180]. return -The clamped angle. params Angle -The Angle to clamp. |
| F | **LinearColorLinearColorLerp** | FLinearColor A, FLinearColor B, floatAlpha | Linearly interpolates between A and B based on Alpha (100% of A when Alpha=0 and 100% of B when Alpha=1) |
| F | **LinearColorLinearColorLerpUsingHSV** | FLinearColor A, FLinearColor B, floatAlpha | Linearly interpolates between two colors by the specified Alpha amount (100% of A when Alpha=0 and 100% of B when Alpha=1). The interpolation is performed in HSV color space taking the shortest path to the new color's hue. This can give better results than a normal lerp, but is much more expensive.  |
| F | **LinearColorMultiply_LinearColorLinearColor** | FLinearColor A, FLinearColorB | Element-wise multiplication of two linear colors (RR, GG, BB, AA) |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName = "LinearColor (LinearColor |  |
| F | **LinearColorMultiply_LinearColorFloat** | FLinearColor A, floatB | Element-wise multiplication of a linear color by a float (FR, FG, FB, FA) |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName = "LinearColor Float", CompactNodeTitle = "", Keywords = " multiply" |  |
| F | **PlaneMakePlaneFromPointAndNormal** | FVector Point, FVectorNormal | Creates a plane with a facing direction of Normal at the given Point return -Plane instance params Point -A point on the plane params Normal -The Normal of the plane at Point |
| F | **DateTimeMakeDateTime** | int32 Year, int32 Month, int32 Day, int32 Hour, int32 Minute, int32 Second, int32Millisecond | Makes a DateTime struct |
| F | **DateTimeMakeDateTimeFromString** | FString &InString | Makes a DateTime struct |
| void | **BreakDateTime** | FDateTime InDateTime, int32 & Year, int32 & Month, int32 & Day, int32 & Hour, int32 & Minute, int32 & Second, int32 &Millisecond | Breaks a DateTime into its components |
| F | **DateTimeAdd_DateTimeTimespan** | FDateTime A, FTimespanB | Addition (A + B) |
| F | **DateTimeSubtract_DateTimeTimespan** | FDateTime A, FTimespanB | Subtraction (A - B) |
| F | **TimespanSubtract_DateTimeDateTime** | FDateTime A, FDateTimeB | Subtraction (A - B) |
| bool | **EqualEqual_DateTimeDateTime** | FDateTime A, FDateTimeB | Returns true if the values are equal (A == B) |
| bool | **NotEqual_DateTimeDateTime** | FDateTime A, FDateTimeB | Returns true if the values are not equal (A != B) |
| bool | **Greater_DateTimeDateTime** | FDateTime A, FDateTimeB | Returns true if A is greater than B (A > B) |
| bool | **GreaterEqual_DateTimeDateTime** | FDateTime A, FDateTimeB | Returns true if A is greater than or equal to B (A >= B) |
| bool | **Less_DateTimeDateTime** | FDateTime A, FDateTimeB | Returns true if A is less than B (A < B) |
| bool | **LessEqual_DateTimeDateTime** | FDateTime A, FDateTimeB | Returns true if A is less than or equal to B (A <= B) |
| F | **DateTimeGetDate** | FDateTimeA | Returns the date component of A |
| int32 | **GetDay** | FDateTimeA | Returns the day component of A (1 to 31) |
| int32 | **GetDayOfYear** | FDateTimeA | Returns the day of year of A |
| int32 | **GetHour** | FDateTimeA | Returns the hour component of A (24h format) |
| int32 | **GetHour12** | FDateTimeA | Returns the hour component of A (12h format) |
| int32 | **GetMillisecond** | FDateTimeA | Returns the millisecond component of A |
| int32 | **GetMinute** | FDateTimeA | Returns the minute component of A |
| int32 | **GetMonth** | FDateTimeA | Returns the month component of A |
| int32 | **GetSecond** | FDateTimeA | Returns the second component of A |
| F | **TimespanGetTimeOfDay** | FDateTimeA | Returns the time elapsed since midnight of A |
| int32 | **GetYear** | FDateTimeA | Returns the year component of A |
| bool | **IsAfternoon** | FDateTimeA | Returns whether A's time is in the afternoon |
| bool | **IsMorning** | FDateTimeA | Returns whether A's time is in the morning |
| int32 | **DaysInMonth** | int32 Year, int32Month | Returns the number of days in the given year and month |
| int32 | **DaysInYear** | int32Year | Returns the number of days in the given year |
| bool | **IsLeapYear** | int32Year | Returns whether given year is a leap year |
| F | **DateTimeDateTimeMaxValue** |  | Returns the maximum date and time value |
| F | **DateTimeDateTimeMinValue** |  | Returns the minimum date and time value |
| F | **DateTimeNow** |  | Returns the local date and time on this computer |
| F | **DateTimeToday** |  | Returns the local date on this computer |
| F | **DateTimeUtcNow** |  | Returns the UTC date and time on this computer |
| bool | **DateTimeFromIsoString** | FString IsoString, FDateTime &Result | Converts a date string in ISO-8601 format to a DateTime object |
| bool | **DateTimeFromString** | FString DateTimeString, FDateTime &Result | Converts a date string to a DateTime object |
| F | **TimespanMakeTimespan** | int32 Days, int32 Hours, int32 Minutes, int32 Seconds, int32Milliseconds | Makes a Timespan struct |
| F | **TimespanMakeTimespan2** | int32 Days, int32 Hours, int32 Minutes, int32 Seconds, int32FractionNano | Makes a Timespan struct |
| void | **BreakTimespan** | FTimespan InTimespan, int32 & Days, int32 & Hours, int32 & Minutes, int32 & Seconds, int32 &Milliseconds | Breaks a Timespan into its components |
| void | **BreakTimespan2** | FTimespan InTimespan, int32 & Days, int32 & Hours, int32 & Minutes, int32 & Seconds, int32 &FractionNano | Breaks a Timespan into its components |
| F | **TimespanAdd_TimespanTimespan** | FTimespan A, FTimespanB | Addition (A + B) |
| F | **TimespanSubtract_TimespanTimespan** | FTimespan A, FTimespanB | Subtraction (A - B) |
| F | **TimespanMultiply_TimespanFloat** | FTimespan A, floatScalar | Scalar multiplication (A s) |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName="Timespan float", CompactNodeTitle="", Keywords=" multiply" |  |
| F | **TimespanDivide_TimespanFloat** | FTimespan A, floatScalar | Scalar division (A s) |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName="Timespan float", CompactNodeTitle="", Keywords=" divide" |  |
| bool | **EqualEqual_TimespanTimespan** | FTimespan A, FTimespanB | Returns true if the values are equal (A == B) |
| bool | **NotEqual_TimespanTimespan** | FTimespan A, FTimespanB | Returns true if the values are not equal (A != B) |
| bool | **Greater_TimespanTimespan** | FTimespan A, FTimespanB | Returns true if A is greater than B (A > B) |
| bool | **GreaterEqual_TimespanTimespan** | FTimespan A, FTimespanB | Returns true if A is greater than or equal to B (A >= B) |
| bool | **Less_TimespanTimespan** | FTimespan A, FTimespanB | Returns true if A is less than B (A < B) |
| bool | **LessEqual_TimespanTimespan** | FTimespan A, FTimespanB | Returns true if A is less than or equal to B (A <= B) |
| int32 | **GetDays** | FTimespanA | Returns the days component of A |
| F | **TimespanGetDuration** | FTimespanA | Returns the absolute value of A |
| int32 | **GetHours** | FTimespanA | Returns the hours component of A |
| int32 | **GetMilliseconds** | FTimespanA | Returns the milliseconds component of A |
| int32 | **GetMinutes** | FTimespanA | Returns the minutes component of A |
| int32 | **GetSeconds** | FTimespanA | Returns the seconds component of A |
| float | **GetTotalDays** | FTimespanA | Returns the total number of days in A |
| float | **GetTotalHours** | FTimespanA | Returns the total number of hours in A |
| float | **GetTotalMilliseconds** | FTimespanA | Returns the total number of milliseconds in A |
| float | **GetTotalMinutes** | FTimespanA | Returns the total number of minutes in A |
| float | **GetTotalSeconds** | FTimespanA | Returns the total number of seconds in A |
| F | **TimespanFromDays** | floatDays | Returns a time span that represents the specified number of days |
| F | **TimespanFromHours** | floatHours | Returns a time span that represents the specified number of hours |
| F | **TimespanFromMilliseconds** | floatMilliseconds | Returns a time span that represents the specified number of milliseconds |
| F | **TimespanFromMinutes** | floatMinutes | Returns a time span that represents the specified number of minutes |
| F | **TimespanFromSeconds** | floatSeconds | Returns a time span that represents the specified number of seconds |
| F | **TimespanTimespanMaxValue** |  | Returns the maximum time span value |
| F | **TimespanTimespanMinValue** |  | Returns the minimum time span value |
| float | **TimespanRatio** | FTimespan A, FTimespanB | Returns the ratio between two time spans (A B), handles zero values |
| F | **TimespanTimespanZeroValue** |  | Returns a zero time span value |
| bool | **TimespanFromString** | FString TimespanString, FTimespan &Result | Converts a time span string to a Timespan object |
| float | **Conv_ByteToFloat** | uint8InByte | Converts a byte to a float |
| float | **Conv_IntToFloat** | int32InInt | Converts an integer to a float |
| int64 | **Conv_IntToInt64** | int32InInt | Converts an integer to a 64 bit integer |
| int32 | **Conv_Int64ToInt** | int64InInt | Converts an 64 bit integer to a 32 bit integer |
| uint8 | **Conv_IntToByte** | int32InInt | Converts an integer to a byte (if the integer is too large, returns the low 8 bits) |
| F | **IntVectorConv_IntToIntVector** | int32InInt | Converts an integer to an IntVector |
| bool | **Conv_IntToBool** | int32InInt | Converts a int to a bool |
| int32 | **Conv_BoolToInt** | boolInBool | Converts a bool to an int |
| float | **Conv_BoolToFloat** | boolInBool | Converts a bool to a float (0.0f or 1.0f) |
| uint8 | **Conv_BoolToByte** | boolInBool | Converts a bool to a byte |
| int32 | **Conv_ByteToInt** | uint8InByte | Converts a byte to an integer |
| F | **LinearColorConv_VectorToLinearColor** | FVectorInVec | Converts a vector to LinearColor |
| F | **VectorConv_LinearColorToVector** | FLinearColorInLinearColor | Converts a LinearColor to a vector |
| F | **LinearColorConv_ColorToLinearColor** | FColorInColor | Converts a color to LinearColor |
| F | **ColorConv_LinearColorToColor** | FLinearColorInLinearColor | Converts a LinearColor to a color |
| F | **TransformConv_VectorToTransform** | FVectorInTranslation | Convert a vector to a transform. Uses vector as location |
| F | **Vector2DConv_VectorToVector2D** | FVectorInVec | Convert a Vector to a Vector2D |
| F | **VectorConv_Vector2DToVector** | FVector2D InVec2D, floatZ | Convert a Vector2D to a Vector |
| F | **VectorConv_IntVectorToVector** | FIntVector &InIntVector | Convert an IntVector to a vector |
| F | **VectorConv_FloatToVector** | floatInFloat | Convert a float into a vector, where each element is that float |
| F | **LinearColorConv_FloatToLinearColor** | floatInFloat | Convert a float into a LinearColor, where each element is that float |
| F | **BoxMakeBox** | FVector Min, FVectorMax | Makes an FBox from Min and Max and sets IsValid to true |
| F | **Box2DMakeBox2D** | FVector2D Min, FVector2DMax | Makes an FBox2D from Min and Max and sets IsValid to true |
| F | **VectorMakeVector** | float X, float Y, floatZ |  |
| void | **BreakVector** | FVector InVec, float & X, float & Y, float &Z | Breaks a vector apart into X, Y, Z |
| F | **Vector2DMakeVector2D** | float X, floatY |  |
| void | **BreakVector2D** | FVector2D InVec, float & X, float &Y | Breaks a 2D vector apart into X, Y. |
| F | **VectorGetForwardVector** | FRotatorInRot | Rotate the world forward vector by the given rotation |
| F | **VectorGetRightVector** | FRotatorInRot | Rotate the world right vector by the given rotation |
| F | **VectorGetUpVector** | FRotatorInRot | Rotate the world up vector by the given rotation |
| F | **VectorCreateVectorFromYawPitch** | float Yaw, float Pitch, floatLength |  |
| void | **GetYawPitchFromVector** | FVector InVec, float & Yaw, float &Pitch | Breaks a vector apart into Yaw, Pitch rotation values given in degrees. (non-clamped) |
| void | **GetAzimuthAndElevation** | FVector InDirection, FTransform & ReferenceFrame, float & Azimuth, float &Elevation | Breaks a direction vector apart into Azimuth (Yaw) and Elevation (Pitch) rotation values given in degrees. (non-clamped) Relative to the provided reference frame (an Actor's WorldTransform for example) |
| F | **RotatorMakeRotator** | float Roll, float Pitch, floatYaw |  |
| F | **RotatorFindLookAtRotation** | FVector & Start, FVector &Target | Find a rotation for an object at Start location to point at Target location. |
| F | **RotatorMakeRotFromX** | FVector &X | Builds a rotator given only a XAxis. Y and Z are unspecified but will be orthonormal. XAxis need not be normalized. |
| F | **RotatorMakeRotFromY** | FVector &Y | Builds a rotation matrix given only a YAxis. X and Z are unspecified but will be orthonormal. YAxis need not be normalized. |
| F | **RotatorMakeRotFromZ** | FVector &Z | Builds a rotation matrix given only a ZAxis. X and Y are unspecified but will be orthonormal. ZAxis need not be normalized. |
| F | **RotatorMakeRotFromXY** | FVector & X, FVector &Y | Builds a matrix with given X and Y axes. X will remain fixed, Y may be changed minimally to enforce orthogonality. Z will be computed. Inputs need not be normalized. |
| F | **RotatorMakeRotFromXZ** | FVector & X, FVector &Z | Builds a matrix with given X and Z axes. X will remain fixed, Z may be changed minimally to enforce orthogonality. Y will be computed. Inputs need not be normalized. |
| F | **RotatorMakeRotFromYX** | FVector & Y, FVector &X | Builds a matrix with given Y and X axes. Y will remain fixed, X may be changed minimally to enforce orthogonality. Z will be computed. Inputs need not be normalized. |
| F | **RotatorMakeRotFromYZ** | FVector & Y, FVector &Z | Builds a matrix with given Y and Z axes. Y will remain fixed, Z may be changed minimally to enforce orthogonality. X will be computed. Inputs need not be normalized. |
| F | **RotatorMakeRotFromZX** | FVector & Z, FVector &X | Builds a matrix with given Z and X axes. Z will remain fixed, X may be changed minimally to enforce orthogonality. Y will be computed. Inputs need not be normalized. |
| F | **RotatorMakeRotFromZY** | FVector & Z, FVector &Y | Builds a matrix with given Z and Y axes. Z will remain fixed, Y may be changed minimally to enforce orthogonality. X will be computed. Inputs need not be normalized. |
| void | **BreakRotator** | FRotator InRot, float & Roll, float & Pitch, float &Yaw |  |
| void | **BreakRotIntoAxes** | FRotator & InRot, FVector & X, FVector & Y, FVector &Z | Breaks apart a rotator into its component axes |
| F | **TransformMakeTransform** | FVector Translation, FRotator Rotation, FVectorScale | Make a transform from location, rotation and scale |
| void | **BreakTransform** | FTransform & InTransform, FVector & Translation, FRotator & Rotation, FVector &Scale | Breaks apart a transform into location, rotation and scale |
| F | **RandomStreamMakeRandomStream** | int32InitialSeed | Makes a SRand-based random number generator |
| void | **BreakRandomStream** | FRandomStream & InRandomStream, int32 &InitialSeed | Breaks apart a random number generator |
| F | **LinearColorMakeColor** | float R, float G, float B, floatA | Make a color from individual color components (RGB space) |
| void | **BreakColor** | FLinearColor InColor, float & R, float & G, float & B, float &A | Breaks apart a color into individual RGB components (as well as alpha) |
| F | **LinearColorHSVToRGB** | float H, float S, float V, floatA | Make a color from individual color components (HSV space) |
| void | **RGBToHSV** | FLinearColor InColor, float & H, float & S, float & V, float &A | Breaks apart a color into individual HSV components (as well as alpha) |
| void | **HSVToRGB_Vector** | FLinearColor HSV, FLinearColor &RGB | Converts a HSV linear color (where H is in R, S is in G, and V is in B) to RGB |
| void | **RGBToHSV_Vector** | FLinearColor RGB, FLinearColor &HSV | Converts a RGB linear color to HSV (where H is in R, S is in G, and V is in B) |
| F | **LinearColorHexToRGB_Vector** | FString HexString, boolbSRGB |  |
| F | **StringRGB_VectorToHex** | FLinearColor RGB, boolbSRGB |  |
| F | **StringSelectString** | FString & A, FString & B, boolbSelectA | If bPickA is true, A is returned, otherwise B is |
| int32 | **SelectInt** | int32 A, int32 B, boolbSelectA | If bPickA is true, A is returned, otherwise B is |
| float | **SelectFloat** | float A, float B, boolbSelectA | If bPickA is true, A is returned, otherwise B is |
| F | **VectorSelectVector** | FVector A, FVector B, boolbSelectA | If bPickA is true, A is returned, otherwise B is |
| F | **RotatorSelectRotator** | FRotator A, FRotator B, boolbSelectA | If bPickA is true, A is returned, otherwise B is |
| F | **LinearColorSelectColor** | FLinearColor A, FLinearColor B, boolbSelectA | If bPickA is true, A is returned, otherwise B is |
| F | **TransformSelectTransform** | FTransform & A, FTransform & B, boolbSelectA | If bPickA is true, A is returned, otherwise B is |
| UObject * | **SelectObject** | UObject * A, UObject * B, boolbSelectA | If bPickA is true, A is returned, otherwise B is |
| UClass * | **SelectClass** | UClass * A, UClass * B, boolbSelectA | If bPickA is true, A is returned, otherwise B is |
| F | **RotatorMakeRotationFromAxes** | FVector Forward, FVector Right, FVectorUp |  |
| F | **RotatorConv_VectorToRotator** | FVectorInVec | Create a rotator which orients X along the supplied direction vector |
| F | **VectorConv_RotatorToVector** | FRotatorInRot | Get the X direction vector after this rotation |
| bool | **EqualEqual_ObjectObject** | UObject * A, UObject *B | Returns true if A and B are equal (A == B) |
| bool | **NotEqual_ObjectObject** | UObject * A, UObject *B | Returns true if A and B are not equal (A != B) |
| bool | **EqualEqual_ClassClass** | UClass * A, UClass *B | Returns true if A and B are equal (A == B) |
| bool | **NotEqual_ClassClass** | UClass * A, UClass *B | Returns true if A and B are not equal (A != B) |
| bool | **ClassIsChildOf** | TSubclassOf < UObject > TestClass, TSubclassOf < UObject >ParentClass | Determine if a class is a child of another class. return -true if TestClass == ParentClass, or if TestClass is a child of ParentClass; false otherwise, or if either |
| bool | **EqualEqual_NameName** | FName A, FNameB | Returns true if A and B are equal (A == B) |
| bool | **NotEqual_NameName** | FName A, FNameB | Returns true if A and B are not equal (A != B) |
| F | **VectorTransformLocation** | FTransform & T, FVectorLocation | Transform a position by the supplied transform. For example, if T was an object's transform, this would transform a position from local space to world space. |
| F | **VectorTransformDirection** | FTransform & T, FVectorDirection | Transform a direction vector by the supplied transform - will not change its length. For example, if T was an object's transform, this would transform a direction from local space to world space. |
| F | **RotatorTransformRotation** | FTransform & T, FRotatorRotation | Transform a rotator by the supplied transform. For example, if T was an object's transform, this would transform a rotation from local space to world space. |
| F | **VectorInverseTransformLocation** | FTransform & T, FVectorLocation | Transform a position by the inverse of the supplied transform. For example, if T was an object's transform, this would transform a position from world space to local space. |
| F | **VectorInverseTransformDirection** | FTransform & T, FVectorDirection | Transform a direction vector by the inverse of the supplied transform - will not change its length. For example, if T was an object's transform, this would transform a direction from world space to local space. |
| F | **RotatorInverseTransformRotation** | FTransform & T, FRotatorRotation | Transform a rotator by the inverse of the supplied transform. For example, if T was an object's transform, this would transform a rotation from world space to local space. |
| F | **TransformComposeTransforms** | FTransform & A, FTransform &B | Compose two transforms in order: A B. Order matters when composing transforms: A B will yield a transform that logically first applies A then B to any subsequent transformation. Example: LocalToWorld = ComposeTransforms(DeltaRotation, LocalToWorld) will change rotation in local space by DeltaRotatio |
| F | **TransformConvertTransformToRelative** | FTransform & Transform, FTransform &ParentTransform | Returns the given transform, converted to be relative to the given ParentTransform. Example: AToB = ConvertTransformToRelative(AToWorld, BToWorld) to compute A relative to B. return - The new relative transform params Transform -The transform you wish to convert params ParentTransform -The transform |
| F | **TransformInvertTransform** | FTransform &T | Returns the inverse of the given transform T. Example: Given a LocalToWorld transform, WorldToLocal will be returned. return -The inverse of T. params T -The transform you wish to invert |
| F | **TransformTLerp** | FTransform & A, FTransform & B, float Alpha, TEnumAsByte < ELerpInterpolationMode :: Type >InterpMode | Linearly interpolates between A and B based on Alpha (100% of A when Alpha=0 and 100% of B when Alpha=1). |
| F | **TransformTEase** | FTransform & A, FTransform & B, float Alpha, TEnumAsByte < EEasingFunc :: Type > EasingFunc, float BlendExp, int32Steps | Ease between A and B using a specified easing function. |
| F | **TransformTInterpTo** | FTransform & Current, FTransform & Target, float DeltaTime, floatInterpSpeed | Tries to reach a target transform. |
| bool | **EqualEqual_TransformTransform** | FTransform & A, FTransform &B | Returns true if transform A is equal to transform B |
| bool | **NearlyEqual_TransformTransform** | FTransform & A, FTransform & B, float LocationTolerance, float RotationTolerance, floatScale3DTolerance | Returns true if transform A is nearly equal to B params LocationTolerance -How close position of transforms need to be to be considered equal params RotationTolerance -How close rotations of transforms need to be to be considered equal params Scale3DTolerance -How close scale of transforms need to b |
| F | **Vector2DAdd_Vector2DVector2D** | FVector2D A, FVector2DB | Returns addition of Vector A and Vector B (A + B) |
| F | **Vector2DSubtract_Vector2DVector2D** | FVector2D A, FVector2DB | Returns subtraction of Vector B from Vector A (A - B) |
| F | **Vector2DMultiply_Vector2DFloat** | FVector2D A, floatB | Returns Vector A scaled by B |
| U | **FUNCTION** | BlueprintPure, meta=(DisplayName = "vector2d float", CompactNodeTitle = "", Keywords = " multiply" |  |
| F | **Vector2DMultiply_Vector2DVector2D** | FVector2D A, FVector2DB |  |
| U | **FUNCTION** | BlueprintPure, meta = (DisplayName = "vector2d vector2d", CompactNodeTitle = "", Keywords = " multiply", CommutativeAssociativeBinaryOperator = "true" |  |
| F | **Vector2DDivide_Vector2DFloat** | FVector2D A, floatB | Returns Vector A divided by B |
| F | **Vector2DDivide_Vector2DVector2D** | FVector2D A, FVector2DB |  |
| F | **Vector2DAdd_Vector2DFloat** | FVector2D A, floatB | Returns Vector A added by B |
| F | **Vector2DSubtract_Vector2DFloat** | FVector2D A, floatB | Returns Vector A subtracted by B |
| bool | **EqualEqual_Vector2DVector2D** | FVector2D A, FVector2D B, floatErrorTolerance | Returns true if vector2D A is equal to vector2D B (A == B) within a specified error tolerance |
| bool | **NotEqual_Vector2DVector2D** | FVector2D A, FVector2D B, floatErrorTolerance | Returns true if vector2D A is not equal to vector2D B (A != B) within a specified error tolerance |
| float | **FInterpTo** | float Current, float Target, float DeltaTime, floatInterpSpeed | Tries to reach Target based on distance from Current position, giving a nice smooth feeling when tracking a position. return - New interpolated position params Current - Actual position params Target - Target position params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed |
| float | **FInterpTo_Constant** | float Current, float Target, float DeltaTime, floatInterpSpeed | Tries to reach Target at a constant rate. return - New interpolated position params Current - Actual position params Target - Target position params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed |
| F | **VectorVInterpTo** | FVector Current, FVector Target, float DeltaTime, floatInterpSpeed | Tries to reach Target based on distance from Current position, giving a nice smooth feeling when tracking a position. return - New interpolated position params Current - Actual position params Target - Target position params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed |
| F | **VectorVInterpTo_Constant** | FVector Current, FVector Target, float DeltaTime, floatInterpSpeed | Tries to reach Target at a constant rate. return - New interpolated position params Current - Actual position params Target - Target position params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed |
| F | **Vector2DVector2DInterpTo** | FVector2D Current, FVector2D Target, float DeltaTime, floatInterpSpeed | Tries to reach Target based on distance from Current position, giving a nice smooth feeling when tracking a position. return - New interpolated position params Current - Actual position params Target - Target position params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed |
| F | **Vector2DVector2DInterpTo_Constant** | FVector2D Current, FVector2D Target, float DeltaTime, floatInterpSpeed | Tries to reach Target at a constant rate. return - New interpolated position params Current - Actual position params Target - Target position params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed |
| F | **RotatorRInterpTo** | FRotator Current, FRotator Target, float DeltaTime, floatInterpSpeed | Tries to reach Target rotation based on Current rotation, giving a nice smooth feeling when rotating to Target rotation. return - New interpolated position params Current - Actual rotation params Target - Target rotation params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed |
| F | **RotatorRInterpTo_Constant** | FRotator Current, FRotator Target, float DeltaTime, floatInterpSpeed | Tries to reach Target rotation at a constant rate. return - New interpolated position params Current - Actual rotation params Target - Target rotation params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed |
| F | **LinearColorCInterpTo** | FLinearColor Current, FLinearColor Target, float DeltaTime, floatInterpSpeed | Interpolates towards a varying target color smoothly. return - New interpolated Color params Current - Current Color params Target - Target Color params DeltaTime -Time since last tick params InterpSpeed -Interpolation speed |
| float | **FloatSpringInterp** | float Current, float Target, FFloatSpringState & SpringState, float Stiffness, float CriticalDampingFactor, float DeltaTime, floatMass | Uses a simple spring model to interpolate a float from Current to Target. params Current - Current value params Target - Target value params SpringState - Data related to spring model (velocity, error, etc..) - Create a unique variable per spring params Stiffness - How stiff the spring model is (mor |
| F | **VectorVectorSpringInterp** | FVector Current, FVector Target, FVectorSpringState & SpringState, float Stiffness, float CriticalDampingFactor, float DeltaTime, floatMass | Uses a simple spring model to interpolate a vector from Current to Target. params Current - Current value params Target - Target value params SpringState - Data related to spring model (velocity, error, etc..) - Create a unique variable per spring params Stiffness - How stiff the spring model is (mo |
| void | **ResetFloatSpringState** | FFloatSpringState &SpringState | Resets the state of a given spring |
| void | **ResetVectorSpringState** | FVectorSpringState &SpringState | Resets the state of a given spring |
| int32 | **RandomIntegerFromStream** | int32 Max, FRandomStream &Stream | Returns a uniformly distributed random number between 0 and Max - 1 |
| int32 | **RandomIntegerInRangeFromStream** | int32 Min, int32 Max, FRandomStream &Stream | Return a random integer between Min and Max (>= Min and <= Max) |
| bool | **RandomBoolFromStream** | FRandomStream &Stream | Returns a random bool |
| float | **RandomFloatFromStream** | FRandomStream &Stream | Returns a random float between 0 and 1 |
| float | **RandomFloatInRangeFromStream** | float Min, float Max, FRandomStream &Stream | Generate a random number between Min and Max |
| F | **VectorRandomUnitVectorFromStream** | FRandomStream &Stream | Returns a random vector with length of 1.0 |
| F | **RotatorRandomRotatorFromStream** | bool bRoll, FRandomStream &Stream | Create a random rotation |
| void | **ResetRandomStream** | FRandomStream &Stream | Reset a random stream |
| void | **SeedRandomStream** | FRandomStream &Stream | Create a new random seed for a random stream |
| void | **SetRandomStreamSeed** | FRandomStream & Stream, int32NewSeed | Set the seed of a random stream to a specific number |
| F | **VectorRandomUnitVectorInConeInRadiansFromStream** | FVector & ConeDir, float ConeHalfAngleInRadians, FRandomStream &Stream | Returns a random vector with length of 1, within the specified cone, with uniform random distribution. params ConeDir - The base "center" direction of the cone. params ConeHalfAngleInRadians -The half-angle of the cone (from ConeDir to edge), in radians. params Stream - The random stream from which  |
| F | **VectorRandomUnitVectorInConeInDegreesFromStream** | FVector & ConeDir, float ConeHalfAngleInDegrees, FRandomStream &Stream | Returns a random vector with length of 1, within the specified cone, with uniform random distribution. params ConeDir - The base "center" direction of the cone. params ConeHalfAngleInDegrees -The half-angle of the cone (from ConeDir to edge), in degrees. params Stream - The random stream from which  |
| F | **VectorRandomUnitVectorInEllipticalConeInRadiansFromStream** | FVector & ConeDir, float MaxYawInRadians, float MaxPitchInRadians, FRandomStream &Stream | Returns a random vector with length of 1, within the specified cone, with uniform random distribution. The shape of the cone can be modified according to the yaw and pitch angles. params MaxYawInRadians -The yaw angle of the cone (from ConeDir to horizontal edge), in radians. params MaxPitchInRadian |
| F | **VectorRandomUnitVectorInEllipticalConeInDegreesFromStream** | FVector & ConeDir, float MaxYawInDegrees, float MaxPitchInDegrees, FRandomStream &Stream | Returns a random vector with length of 1, within the specified cone, with uniform random distribution. The shape of the cone can be modified according to the yaw and pitch angles. params MaxYawInDegrees -The yaw angle of the cone (from ConeDir to horizontal edge), in degrees. params MaxPitchInDegree |
| void | **MinimumAreaRectangle** | UObject * WorldContextObject, TArray < FVector > & InVerts, FVector & SampleSurfaceNormal, FVector & OutRectCenter, FRotator & OutRectRotation, float & OutSideLengthX, float & OutSideLengthY, boolbDeb | Finds the minimum area rectangle that encloses all of the points in InVerts params InVerts -- Points to enclose in the rectangle |
| bool | **PointsAreCoplanar** | TArray < FVector > & Points, floatTolerance | Determines whether a given set of points are coplanar, with a tolerance. Any three points or less are always coplanar. return -Whether the points are relatively coplanar, based on the tolerance params Points -- The set of points to determine coplanarity for. params Tolerance -- Larger numbers means  |
| bool | **IsPointInBox** | FVector Point, FVector BoxOrigin, FVectorBoxExtent | Determines whether the given point is in a box. Includes points on the box. return -Whether the point is in the box. params Point - Point to test params BoxOrigin -Origin of the box params BoxExtent -Extents of the box (distance in each axis from origin) |
| bool | **IsPointInBoxWithTransform** | FVector Point, FTransform & BoxWorldTransform, FVectorBoxExtent | Determines whether a given point is in a box with a given transform. Includes points on the box. return -Whether the point is in the box. params Point - Point to test params BoxWorldTransform -Component-to-World transform of the box. params BoxExtent - Extents of the box (distance in each axis from  |
| bool | **LinePlaneIntersection** | FVector & LineStart, FVector & LineEnd, FPlane & APlane, float & T, FVector &Intersection | Computes the intersection point between a line and a plane. return - True if the intersection test was successful. params T -- The t of the intersection between the line and the plane params Intersection -- The point of intersection between the line and the plane |
| bool | **LinePlaneIntersection_OriginNormal** | FVector & LineStart, FVector & LineEnd, FVector PlaneOrigin, FVector PlaneNormal, float & T, FVector &Intersection | Computes the intersection point between a line and a plane. return - True if the intersection test was successful. params T -- The t of the intersection between the line and the plane params Intersection -- The point of intersection between the line and the plane RandomBool RandomBoolWithWeight Rand |

