UKismetSystemLibrary
函数
voidStackTrace()
Prints a stack trace to the log, so you can see how a blueprint got to this node
boolIsValid(UObject *Object)
对象是否可用
return  
-true可用，false不可用
boolIsRecycled(UObject *Object)
boolIsValidClass(UClass *Class)
类型是否可用
return  
-true可用，false不可用
FStringGetObjectName(UObject *Object)
获取对象名称
return  
-对象实际名称
FStringGetPathName(UObject *Object)
获取对象路径
return  
-对象完整路径
FStringGetDisplayName(UObject *Object)
获取对象展示名称
return  
-对象展示名称
FStringGetClassDisplayName(UClass *Class)
获取类展示名称
return  
-类展示名称
FStringStripObjectClass(FString & PathName, boolbAssertOnBadPath)
If there is an object class, strips it off.
FStringGetEngineVersion()
FStringGetGameName()
Get the name of the current game
FStringGetGameBundleId()
Retrieves the game's platform-specific bundle identifier or package name of the game

return  
-The game's bundle identifier or package name.
FStringGetPlatformUserName()
Get the current user name from the OS
boolDoesImplementInterface(UObject * TestObject, TSubclassOf < UInterface >Interface)
floatGetGameTimeInSeconds(UObject *WorldContextObject)
Get the current game time, in seconds. This stops when the game is paused and is affected by slomo.

params WorldContextObject 
-World context
boolIsServer(UObject *WorldContextObject)
Returns whether the world this object is in is the host or not
boolIsDedicatedServer(UObject *WorldContextObject)
Returns whether this is running on a dedicated server
boolIsStandalone(UObject *WorldContextObject)
Returns whether this game instance is stand alone (no networking).
boolIsPackagedForDistribution()
Returns whether this is a build that is packaged for distribution
FStringGetUniqueDeviceId()
Returns the platform specific unique device id
FStringGetDeviceId()
Returns the platform specific unique device id
UObject *Conv_InterfaceToObject(FScriptInterface &Interface)
Converts an interfance into an object
FSoftObjectPathMakeSoftObjectPath(FString &PathString)
将路径字符串转换为SoftObjectPath
return  
-SoftObjectPath
voidBreakSoftObjectPath(FSoftObjectPath InSoftObjectPath, FString &PathString)
将SoftObjectPath转换为路径字符串
return  
-PathString
voidBreakSoftClassPath(FSoftClassPath InSoftClassPath, FString &PathString)
将SoftClassPath转换为路径字符串
return  
-PathString
boolIsValidSoftObjectReference(TSoftObjectPtr < UObject > &SoftObjectReference)
SoftObjectPath是否有效
return  
-true为有效
FStringConv_SoftObjectReferenceToString(TSoftObjectPtr < UObject > &SoftObjectReference)
Converts a Soft Object Reference to a string. The other direction is not provided because it cannot be validated
boolEqualEqual_SoftObjectReference(TSoftObjectPtr < UObject > & A, TSoftObjectPtr < UObject > &B)
Returns true if the values are equal (A == B)
boolNotEqual_SoftObjectReference(TSoftObjectPtr < UObject > & A, TSoftObjectPtr < UObject > &B)
Returns true if the values are not equal (A != B)
boolIsValidSoftClassReference(TSoftClassPtr < UObject > &SoftClassReference)
Returns true if the Soft Class Reference is not null
FStringConv_SoftClassReferenceToString(TSoftClassPtr < UObject > &SoftClassReference)
Converts a Soft Class Reference to a string. The other direction is not provided because it cannot be validated
boolEqualEqual_SoftClassReference(TSoftClassPtr < UObject > & A, TSoftClassPtr < UObject > &B)
Returns true if the values are equal (A == B)
TSubclassOf < UObject >Conv_SoftClassReferenceToClass(TSoftClassPtr < UObject > &SoftClass)
boolNotEqual_SoftClassReference(TSoftClassPtr < UObject > & A, TSoftClassPtr < UObject > &B)
Returns true if the values are not equal (A != B)
UObject *Conv_SoftObjectReferenceToObject(TSoftObjectPtr < UObject > &SoftObject)
TSoftObjectPtr < UObject >Conv_ObjectToSoftObjectReference(UObject *Object)
TSoftClassPtr < UObject >Conv_ClassToSoftClassReference(TSubclassOf < UObject > &Class)
voidLoadAsset(UObject * WorldContextObject, TSoftObjectPtr < UObject > Asset, FOnAssetLoaded OnLoaded, FLatentActionInfoLatentInfo)
voidLoadAssetClass(UObject * WorldContextObject, TSoftClassPtr < UObject > AssetClass, FOnAssetClassLoaded OnLoaded, FLatentActionInfoLatentInfo)
int32MakeLiteralInt(int32Value)
Creates a literal integer
return  
-The literal integer
params Value 
-value to set the integer to
int64MakeLiteralInt64(int64Value)
Creates a literal integer
return  
-The literal integer
params Value 
-value to set the integer to
floatMakeLiteralFloat(floatValue)
Creates a literal float
return  
-The literal float
params Value 
-value to set the float to
boolMakeLiteralBool(boolValue)
Creates a literal bool
return  
-The literal bool
params Value 
-value to set the bool to
FNameMakeLiteralName(FNameValue)
Creates a literal name
return  
-The literal name
params Value 
-value to set the name to
uint8MakeLiteralByte(uint8Value)
Creates a literal byte
return  
-The literal byte
params Value 
-value to set the byte to
FStringMakeLiteralString(FString &Value)
Creates a literal string
return  
-The literal string
params Value 
-value to set the string to
FTextMakeLiteralText(FTextValue)
Creates a literal FText
return  
-The literal FText
params Value 
-value to set the FText to
voidPrintString(UObject * WorldContextObject, FString & InString, bool bPrintToScreen, bool bPrintToLog, FLinearColor TextColor, floatDuration)
Prints a string to the log, and optionally, to the screen
If Print To Log is true, it will be visible in the Output Log window. Otherwise it will be logged only as 'Verbose', so it generally won't show up.

params InString 
-The string to log out
params bPrintToScreen 
-Whether or not to print the output to the screen
params bPrintToLog 
-Whether or not to print the output to the log
params TextColor 
-Whether or not to print the output to the console
params Duration 
-The display duration (if Print to Screen is True). Using negative number will result in loading the duration time from the config.
voidPrintText(UObject * WorldContextObject, FText InText, bool bPrintToScreen, bool bPrintToLog, FLinearColor TextColor, floatDuration)
Prints text to the log, and optionally, to the screen
If Print To Log is true, it will be visible in the Output Log window. Otherwise it will be logged only as 'Verbose', so it generally won't show up.

params InText 
- The text to log out
params bPrintToScreen 
-Whether or not to print the output to the screen
params bPrintToLog 
-Whether or not to print the output to the log
params TextColor 
-Whether or not to print the output to the console
params Duration 
-The display duration (if Print to Screen is True). Using negative number will result in loading the duration time from the config.
voidPrintWarning(FString &InString)
Prints a warning string to the log and the screen. Meant to be used as a way to inform the user that they misused the node.

WARNING!! Don't change the signature of this function without fixing up all nodes using it in the compiler

params InString 
-The string to log out
voidSetWindowTitle(FText &Title)
Sets the game window title
voidExecuteConsoleCommand(UObject * WorldContextObject, FString & Command, APlayerController * SpecificPlayer, boolbDisableCheck)
Executes a console command, optionally on a specific controller

params Command 
- Command to send to the console
params SpecificPlayer 
-If specified, the console command will be routed through the specified player
voidExecuteConsoleCommandDisableCheck(UObject * WorldContextObject, FString & Command, APlayerController *SpecificPlayer)
floatGetConsoleVariableFloatValue(FString &VariableName)
Attempts to retrieve the value of the specified float console variable, if it exists.

return  
-The value if found, 0 otherwise.
params VariableName 
-Name of the console variable to find.
int32GetConsoleVariableIntValue(FString &VariableName)
Attempts to retrieve the value of the specified integer console variable, if it exists.

return  
-The value if found, 0 otherwise.
params VariableName 
-Name of the console variable to find.
boolGetConsoleVariableBoolValue(FString &VariableName)
Evaluates, if it exists, whether the specified integer console variable has a non-zero value (true) or not (false).

return  
-True if found and has a non-zero value, false otherwise.
params VariableName 
-Name of the console variable to find.
voidQuitGame(UObject * WorldContextObject, APlayerController * SpecificPlayer, TEnumAsByte < EQuitPreference :: Type >QuitPreference)
Exit the current game
params SpecificPlayer 
-The specific player to quit the game. If not specified, player 0 will quit.
voidDelay(UObject * WorldContextObject, float Duration, FLatentActionInfoLatentInfo)
Perform a latent action with a delay (specified in seconds). Calling again while it is counting down will be ignored.

params Duration 
- length of delay (in seconds).
params LatentInfo 
-The latent action.
voidDelayUntilNextTick(UObject * WorldContextObject, FLatentActionInfoLatentInfo)
Perform a latent action with a delay of one tick. Calling again while it is counting down will be ignored.

params LatentInfo 
-The latent action.
voidDelayReplacePreDuration(UObject * WorldContextObject, float Duration, bool IsReplacePreDuration, FLatentActionInfoLatentInfo)
Perform a latent action with a delay (specified in seconds). Calling again while it is counting down will be ignored.

params Duration 
- length of delay (in seconds).
params IsReplacePreDuration 
-replace previous action Duration
params LatentInfo 
-The latent action.
voidRetriggerableDelay(UObject * WorldContextObject, float Duration, FLatentActionInfoLatentInfo)
Perform a latent action with a retriggerable delay (specified in seconds). Calling again while it is counting down will reset the countdown to Duration.

params Duration 
- length of delay (in seconds).
params LatentInfo 
-The latent action.
voidMoveComponentTo(USceneComponent * Component, FVector TargetRelativeLocation, FRotator TargetRelativeRotation, bool bEaseOut, bool bEaseIn, float OverTime, bool bForceShortestRotationPath, TEnumAsByte < EMoveComponentAction :: Type > MoveAction, FLatentActionInfoLatentInfo)
Interpolate a component to the specified relative location and rotation over the course of OverTime seconds.
params Component 
- Component to interpolate
params TargetRelativeLocation 
-Relative target location
params TargetRelativeRotation 
-Relative target rotation
params bEaseOut 
- if true we will ease out (ie end slowly) during interpolation
params bEaseIn 
- if true we will ease in (ie start slowly) during interpolation
params OverTime 
- duration of interpolation
params bForceShortestRotationPath 
-if true we will always use the shortest path for rotation
params MoveAction 
- required movement behavior @see EMoveComponentAction
params LatentInfo 
- The latent action
FTimerHandleK2_SetTimerDelegate(FTimerDynamicDelegate Delegate, float Time, boolbLooping)
Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters.
return  
- The timer handle to pass to other timer functions to manipulate this timer.
params Time 
- How long to wait before executing the delegate, in seconds. Setting a timer to <= 0 seconds will clear it if it is set.
params bLooping 
-True to keep executing the delegate every Time seconds, false to execute delegate only once.
voidK2_SetTimerForNextTickDelegate(FTimerDynamicDelegateDelegate)
Set a timer to execute a delegate next tick.
return  
- The timer handle to pass to other timer functions to manipulate this timer.
FTimerHandleK2_SetTimerTickDelegate(FTimerDynamicParamDelegate Delegate, float Time, boolInExeFirst)
Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters.
return  
- The timer handle to pass to other timer functions to manipulate this timer.
params Time 
- How long to wait before executing the delegate, in seconds. Setting a timer to <= 0 seconds will clear it if it is set.
FTimerHandleK2_SetTimerDelegateForLua(FTimerDynamicDelegate Delegate, UObject * Object, float Time, boolbLooping)
Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters.
return  
- The timer handle to pass to other timer functions to manipulate this timer.
params Object 
-Object that implements the delegate function. Defaults to self (this blueprint)
params Time 
- How long to wait before executing the delegate, in seconds. Setting a timer to <= 0 seconds will clear it if it is set.
params bLooping 
-True to keep executing the delegate every Time seconds, false to execute delegate only once.
voidK2_ClearTimerDelegate(FTimerDynamicDelegateDelegate)
Clears a set timer.
voidK2_PauseTimerDelegate(FTimerDynamicDelegateDelegate)
Pauses a set timer at its current elapsed time.
voidK2_UnPauseTimerDelegate(FTimerDynamicDelegateDelegate)
Resumes a paused timer from its current elapsed time.
boolK2_IsTimerActiveDelegate(FTimerDynamicDelegateDelegate)
Returns true if a timer exists and is active for the given delegate, false otherwise.
return  
- True if the timer exists and is active.
boolK2_IsTimerPausedDelegate(FTimerDynamicDelegateDelegate)
Returns true if a timer exists and is paused for the given delegate, false otherwise.
return  
- True if the timer exists and is paused.
boolK2_TimerExistsDelegate(FTimerDynamicDelegateDelegate)
Returns true is a timer for the given delegate exists, false otherwise.
return  
- True if the timer exists.
floatK2_GetTimerElapsedTimeDelegate(FTimerDynamicDelegateDelegate)
Returns elapsed time for the given delegate (time since current countdown iteration began).
return  
- How long has elapsed since the current iteration of the timer began.
floatK2_GetTimerRemainingTimeDelegate(FTimerDynamicDelegateDelegate)
Returns time until the timer will next execute its delegate.
return  
- How long is remaining in the current iteration of the timer.
boolK2_IsValidTimerHandle(FTimerHandleHandle)
Returns whether the timer handle is valid. This does not indicate that there is an active timer that this handle references, but rather that it once referenced a valid timer.
return  
- Whether the timer handle is valid.
params Handle 
-The handle of the timer to check validity of.
FTimerHandleK2_InvalidateTimerHandle(FTimerHandle &Handle)
Returns whether the timer handle is valid. This does not indicate that there is an active timer that this handle references, but rather that it once referenced a valid timer.
return  
- Return the invalidated timer handle for convenience.
params Handle 
-The handle of the timer to check validity of.
voidK2_ClearTimerHandle(UObject * WorldContextObject, FTimerHandleHandle)
Clears a set timer.
params Handle 
-The handle of the timer to clear.
voidK2_ClearAndInvalidateTimerHandle(UObject * WorldContextObject, FTimerHandle &Handle)
Clears a set timer.
params Handle 
-The handle of the timer to clear.
voidK2_PauseTimerHandle(UObject * WorldContextObject, FTimerHandleHandle)
Pauses a set timer at its current elapsed time.
params Handle 
-The handle of the timer to pause.
voidK2_UnPauseTimerHandle(UObject * WorldContextObject, FTimerHandleHandle)
Resumes a paused timer from its current elapsed time.
params Handle 
-The handle of the timer to unpause.
boolK2_IsTimerActiveHandle(UObject * WorldContextObject, FTimerHandleHandle)
Returns true if a timer exists and is active for the given handle, false otherwise.
return  
- True if the timer exists and is active.
params Handle 
-The handle of the timer to check whether it is active.
boolK2_IsTimerPausedHandle(UObject * WorldContextObject, FTimerHandleHandle)
Returns true if a timer exists and is paused for the given handle, false otherwise.
return  
- True if the timer exists and is paused.
params Handle 
-The handle of the timer to check whether it is paused.
boolK2_TimerExistsHandle(UObject * WorldContextObject, FTimerHandleHandle)
Returns true is a timer for the given handle exists, false otherwise.
return  
- True if the timer exists.
params Handle 
-The handle to check whether it exists.
floatK2_GetTimerElapsedTimeHandle(UObject * WorldContextObject, FTimerHandleHandle)
Returns elapsed time for the given handle (time since current countdown iteration began).
return  
- How long has elapsed since the current iteration of the timer began.
params Handle 
-The handle of the timer to get the elapsed time of.
floatK2_GetTimerRemainingTimeHandle(UObject * WorldContextObject, FTimerHandleHandle)
Returns time until the timer will next execute its handle.
return  
- How long is remaining in the current iteration of the timer.
params Handle 
-The handle of the timer to time remaining of.
FTimerHandleK2_SetTimer(UObject * Object, FString FunctionName, float Time, boolbLooping)
Set a timer to execute delegate. Setting an existing timer will reset that timer with updated parameters.
return  
- The timer handle to pass to other timer functions to manipulate this timer.
params Object 
-Object that implements the delegate function. Defaults to self (this blueprint)
params FunctionName 
-Delegate function name. Can be a K2 function or a Custom Event.
params Time 
- How long to wait before executing the delegate, in seconds. Setting a timer to <= 0 seconds will clear it if it is set.
params bLooping 
-true to keep executing the delegate every Time seconds, false to execute delegate only once.
voidK2_SetTimerForNextTick(UObject * Object, FStringFunctionName)
Set a timer to execute a delegate on the next tick.
return  
- The timer handle to pass to other timer functions to manipulate this timer.
params Object 
- Object that implements the delegate function. Defaults to self (this blueprint)
params FunctionName 
- Delegate function name. Can be a K2 function or a Custom Event.
voidK2_ClearTimer(UObject * Object, FStringFunctionName)
Clears a set timer.
params Object 
-Object that implements the delegate function. Defaults to self (this blueprint)
params FunctionName 
-Delegate function name. Can be a K2 function or a Custom Event.
voidK2_PauseTimer(UObject * Object, FStringFunctionName)
Pauses a set timer at its current elapsed time.
params Object 
-Object that implements the delegate function. Defaults to self (this blueprint)
params FunctionName 
-Delegate function name. Can be a K2 function or a Custom Event.
voidK2_UnPauseTimer(UObject * Object, FStringFunctionName)
Resumes a paused timer from its current elapsed time.
params Object 
-Object that implements the delegate function. Defaults to self (this blueprint)
params FunctionName 
-Delegate function name. Can be a K2 function or a Custom Event.
boolK2_IsTimerActive(UObject * Object, FStringFunctionName)
Returns true if a timer exists and is active for the given delegate, false otherwise.
return  
- True if the timer exists and is active.
params Object 
-Object that implements the delegate function. Defaults to self (this blueprint)
params FunctionName 
-Delegate function name. Can be a K2 function or a Custom Event.
boolK2_IsTimerPaused(UObject * Object, FStringFunctionName)
Returns true if a timer exists and is paused for the given delegate, false otherwise.
return  
- True if the timer exists and is paused.
params Object 
-Object that implements the delegate function. Defaults to self (this blueprint)
params FunctionName 
-Delegate function name. Can be a K2 function or a Custom Event.
boolK2_TimerExists(UObject * Object, FStringFunctionName)
Returns true is a timer for the given delegate exists, false otherwise.
return  
- True if the timer exists.
params Object 
-Object that implements the delegate function. Defaults to self (this blueprint)
params FunctionName 
-Delegate function name. Can be a K2 function or a Custom Event.
floatK2_GetTimerElapsedTime(UObject * Object, FStringFunctionName)
Returns elapsed time for the given delegate (time since current countdown iteration began).
return  
- How long has elapsed since the current iteration of the timer began.
params Object 
-Object that implements the delegate function. Defaults to self (this blueprint)
params FunctionName 
-Delegate function name. Can be a K2 function or a Custom Event.
floatK2_GetTimerRemainingTime(UObject * Object, FStringFunctionName)
Returns time until the timer will next execute its delegate.
return  
- How long is remaining in the current iteration of the timer.
params Object 
-Object that implements the delegate function. Defaults to self (this blueprint)
params FunctionName 
-Delegate function name. Can be a K2 function or a Custom Event.
voidSetIntPropertyByName(UObject * Object, FName PropertyName, int32Value)
Set an int32 property by name
voidSetInt64PropertyByName(UObject * Object, FName PropertyName, int64Value)
Set an int64 property by name
voidSetUInt64PropertyByName(UObject * Object, FName PropertyName, uint64Value)
Set an uint64 property by name
voidSetBytePropertyByName(UObject * Object, FName PropertyName, uint8Value)
Set an uint8 or enum property by name
voidSetFloatPropertyByName(UObject * Object, FName PropertyName, floatValue)
Set a float property by name
voidSetBoolPropertyByName(UObject * Object, FName PropertyName, boolValue)
Set a bool property by name
voidSetObjectPropertyByName(UObject * Object, FName PropertyName, UObject *Value)
Set an OBJECT property by name
voidSetClassPropertyByName(UObject * Object, FName PropertyName, TSubclassOf < UObject >Value)
Set a CLASS property by name
voidSetInterfacePropertyByName(UObject * Object, FName PropertyName, FScriptInterface &Value)
Set an INTERFACE property by name
voidSetNamePropertyByName(UObject * Object, FName PropertyName, FName &Value)
Set a NAME property by name
voidSetSoftObjectPropertyByName(UObject * Object, FName PropertyName, TSoftObjectPtr < UObject > &Value)
Set a SOFTOBJECT property by name
voidSetSoftClassPropertyByName(UObject * Object, FName PropertyName, TSoftClassPtr < UObject > &Value)
Set a SOFTCLASS property by name
voidSetStringPropertyByName(UObject * Object, FName PropertyName, FString &Value)
Set a STRING property by name
voidSetTextPropertyByName(UObject * Object, FName PropertyName, FText &Value)
Set a TEXT property by name
voidSetVectorPropertyByName(UObject * Object, FName PropertyName, FVector &Value)
Set a VECTOR property by name
voidSetRotatorPropertyByName(UObject * Object, FName PropertyName, FRotator &Value)
Set a ROTATOR property by name
voidSetLinearColorPropertyByName(UObject * Object, FName PropertyName, FLinearColor &Value)
Set a LINEAR COLOR property by name
voidSetTransformPropertyByName(UObject * Object, FName PropertyName, FTransform &Value)
Set a TRANSFORM property by name
voidSetCollisionProfileNameProperty(UObject * Object, FName PropertyName, FCollisionProfileName &Value)
Set a CollisionProfileName property by name
voidSetStructurePropertyByName(UObject * Object, FName PropertyName, FGenericStruct &Value)
Set a custom structure property by name
boolSphereOverlapActors(UObject * WorldContextObject, FVector SpherePos, float SphereRadius, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, UClass * ActorClassFilter, TArray < AActor * > & ActorsToIgnore, TArray < AActor * > &OutActors)
返回一组跟指定球体范围发生重叠的Actor
return  
- true if there was an overlap that passed the filters, false otherwise.
params WorldContextObject 
-world上下文对象
params SpherePos 
-球心位置
params SphereRadius 
-球体半径
params ObjectTypes 
-将结果限制为仅静态或仅动态的选项
params ActorClassFilter 
-对象类型过滤，只检测指定类型的Actor
params ActorsToIgnore 
-需要忽略的Actor列表
params OutActors 
-输出的产生碰撞的Actor列表
boolSphereOverlapComponents(UObject * WorldContextObject, FVector SpherePos, float SphereRadius, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, UClass * ComponentClassFilter, TArray < AActor * > & ActorsToIgnore, TArray < UPrimitiveComponent * > &OutComponents)
返回一组跟指定球体范围发生重叠的Component
return  
- true if there was an overlap that passed the filters, false otherwise.
params WorldContextObject 
-world上下文对象
params SpherePos 
-球心位置
params SphereRadius 
-球体半径
params ObjectTypes 
-将结果限制为仅静态或仅动态的选项
params ComponentClassFilter 
-组件类型过滤，只检测指定类型的组件
params ActorsToIgnore 
-需要忽略的Actor列表
params OutComponents 
-输出的产生碰撞的组件列表
boolBoxOverlapAnyTest(UObject * WorldContextObject, FVector BoxPos, FRotator Rotator, FVector BoxExtent, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, UClass * ActorClassFilter, TArray < AActor * > &ActorsToIgnore)
检测指定Box范围是否发生重叠
return  
- true if there was an overlap that passed the filters, false otherwise.
params WorldContextObject 
-world上下文对象
params BoxPos 
-Box中心位置
params Rotator 
-Box旋转量
params BoxExtent 
-Box范围
params ObjectTypes 
-将结果限制为仅静态或仅动态的选项
params ActorClassFilter 
-对象类型过滤，只检测指定类型的Actor
params ActorsToIgnore 
-需要忽略的Actor列表
boolBoxOverlapActors(UObject * WorldContextObject, FVector BoxPos, FRotator BoxRotation, FVector BoxExtent, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, UClass * ActorClassFilter, TArray < AActor * > & ActorsToIgnore, TArray < AActor * > &OutActors)
返回一组跟指定Box范围发生重叠的Actor
return  
- true if there was an overlap that passed the filters, false otherwise.
params WorldContextObject 
-world上下文对象
params BoxPos 
-Box中心位置
params BoxExtent 
-Box范围
params ObjectTypes 
-将结果限制为仅静态或仅动态的选项
params ActorClassFilter 
-对象类型过滤，只检测指定类型的Actor
params ActorsToIgnore 
-需要忽略的Actor列表
params OutActors 
-输出的产生碰撞的Actor列表
boolBoxOverlapOBBActors(UObject * WorldContextObject, FVector & BoxPos, FRotator & BoxRot, FVector & BoxExtent, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, UClass * ActorClassFilter, TArray < AActor * > & ActorsToIgnore, TArray < AActor * > &OutActors)
Returns an array of actors that overlap the given axis-aligned box.
return  
- true if there was an overlap that passed the filters, false otherwise.
params BoxPos 
-Center of box.
params BoxRot 
-Rotator of box.
params BoxExtent 
-Extents of box.
params ActorsToIgnore 
-Ignore these actors in the list
params OutActors 
-Returned array of actors. Unsorted.
boolBoxOverlapComponents(UObject * WorldContextObject, FVector BoxPos, FRotator BoxRotation, FVector Extent, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, UClass * ComponentClassFilter, TArray < AActor * > & ActorsToIgnore, TArray < UPrimitiveComponent * > &OutComponents)
返回一组跟指定Box范围发生重叠的Component
return  
- true if there was an overlap that passed the filters, false otherwise.
params WorldContextObject 
-world上下文对象
params BoxPos 
-Box中心位置
params ObjectTypes 
-将结果限制为仅静态或仅动态的选项
params ActorsToIgnore 
-需要忽略的Actor列表
params OutComponents 
-输出的产生碰撞的组件列表
boolBoxOverlapOBBComponents(UObject * WorldContextObject, FVector & BoxPos, FRotator & BoxRot, FVector & Extent, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, UClass * ComponentClassFilter, TArray < AActor * > & ActorsToIgnore, TArray < UPrimitiveComponent * > &OutComponents)
Returns an array of components that overlap the given axis-aligned box.
return  
- true if there was an overlap that passed the filters, false otherwise.
params BoxPos 
-Center of box.
params BoxRot 
-Rotator of box.
params ActorsToIgnore 
-Ignore these actors in the list
boolCapsuleOverlapActors(UObject * WorldContextObject, FVector CapsulePos, float Radius, float HalfHeight, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, UClass * ActorClassFilter, TArray < AActor * > & ActorsToIgnore, TArray < AActor * > &OutActors)
返回一组跟指定胶囊体范围发生重叠的Actor
return  
- true if there was an overlap that passed the filters, false otherwise.
params WorldContextObject 
-world上下文对象
params CapsulePos 
-胶囊体中心位置
params Radius 
-胶囊体半径
params HalfHeight 
-胶囊体半高
params ObjectTypes 
-将结果限制为仅静态或仅动态的选项
params ActorClassFilter 
-对象类型过滤，只检测指定类型的Actor
params ActorsToIgnore 
-需要忽略的Actor列表
params OutActors 
-Returned array of actors. Unsorted.
boolCapsuleOverlapComponents(UObject * WorldContextObject, FVector CapsulePos, float Radius, float HalfHeight, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, UClass * ComponentClassFilter, TArray < AActor * > & ActorsToIgnore, TArray < UPrimitiveComponent * > &OutComponents)
返回一组跟指定胶囊体范围发生重叠的Component
return  
- true if there was an overlap that passed the filters, false otherwise.
params WorldContextObject 
-world上下文对象
params CapsulePos 
-胶囊体中心位置
params Radius 
-胶囊体半径
params HalfHeight 
-胶囊体半高
params ObjectTypes 
-将结果限制为仅静态或仅动态的选项
params ActorsToIgnore 
-需要忽略的Actor列表
params OutComponents 
-输出的产生碰撞的组件列表
boolComponentOverlapActors(UPrimitiveComponent * Component, FTransform & ComponentTransform, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, UClass * ActorClassFilter, TArray < AActor * > & ActorsToIgnore, TArray < AActor * > &OutActors)
返回一组跟指定Component发生重叠的Actor
return  
- true if there was an overlap that passed the filters, false otherwise.
params Component 
-Component对象
params ComponentTransform 
-Component的Transform
params ObjectTypes 
-将结果限制为仅静态或仅动态的选项
params ActorClassFilter 
-对象类型过滤，只检测指定类型的Actor
params ActorsToIgnore 
-需要忽略的Actor列表
params OutActors 
-输出的产生碰撞的Actor列表
boolComponentOverlapComponents(UPrimitiveComponent * Component, FTransform & ComponentTransform, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, UClass * ComponentClassFilter, TArray < AActor * > & ActorsToIgnore, TArray < UPrimitiveComponent * > &OutComponents)
返回一组跟指定Component发生重叠的Component
return  
- true if there was an overlap that passed the filters, false otherwise.
params Component 
-Component对象
params ComponentTransform 
-Component的Transform
params ObjectTypes 
-将结果限制为仅静态或仅动态的选项
params ActorsToIgnore 
-需要忽略的Actor列表
params OutComponents 
-输出的产生碰撞的组件列表
boolLineTraceSingle(UObject * WorldContextObject, FVector Start, FVector End, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult & OutHit, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回第一个跟射线碰撞的物体的碰撞信息
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params TraceChannel 
-轨迹检测通道
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHit 
-输出的HitResult
boolLineTraceMulti(UObject * WorldContextObject, FVector Start, FVector End, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitResult > & OutHits, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回所有跟射线碰撞的物体的碰撞信息
return  
- True if there was a blocking hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params TraceChannel 
-轨迹检测通道
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHits 
-输出的HitResult列表
boolSphereTraceSingle(UObject * WorldContextObject, FVector Start, FVector End, float Radius, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult & OutHit, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回第一个跟球体沿射线移动扫过区域碰撞物体的碰撞信息
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params Radius 
-球体半径
params TraceChannel 
-轨迹检测通道
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHit 
-输出的HitResult
boolSphereTraceMulti(UObject * WorldContextObject, FVector Start, FVector End, float Radius, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitResult > & OutHits, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回所有跟球体沿射线移动扫过区域碰撞物体的碰撞信息
return  
- True if there was a blocking hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params Radius 
-球体半径
params TraceChannel 
-轨迹检测通道
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHits 
-输出的HitResult列表
boolBoxTraceSingle(UObject * WorldContextObject, FVector Start, FVector End, FVector HalfSize, FRotator Orientation, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult & OutHit, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回第一个跟Box沿射线移动扫过区域碰撞物体的碰撞信息
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params HalfSize 
-Box边的半长尺寸
params Orientation 
-Box的朝向
params TraceChannel 
-轨迹检测通道
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHit 
-输出的HitResult
boolBoxTraceMulti(UObject * WorldContextObject, FVector Start, FVector End, FVector HalfSize, FRotator Orientation, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitResult > & OutHits, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回所有跟Box沿射线移动扫过区域碰撞物体的碰撞信息
return  
- True if there was a blocking hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params HalfSize 
-Box边的半长尺寸
params Orientation 
-Box的朝向
params TraceChannel 
-轨迹检测通道
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHits 
-输出的HitResult列表
boolCapsuleTraceSingle(UObject * WorldContextObject, FVector Start, FVector End, float Radius, float HalfHeight, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult & OutHit, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回第一个跟胶囊体沿射线移动扫过区域碰撞物体的碰撞信息
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params Radius 
-胶囊体半径
params HalfHeight 
-胶囊体半长高度
params TraceChannel 
-轨迹检测通道
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHit 
-输出的HitResult
boolCapsuleTraceMulti(UObject * WorldContextObject, FVector Start, FVector End, float Radius, float HalfHeight, ETraceTypeQuery TraceChannel, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitResult > & OutHits, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回所有跟胶囊体沿射线移动扫过区域碰撞物体的碰撞信息
return  
- True if there was a blocking hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params Radius 
-胶囊体半径
params HalfHeight 
-胶囊体半长高度
params TraceChannel 
-轨迹检测通道
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHits 
-输出的HitResult列表
boolLineTraceSingleForObjects(UObject * WorldContextObject, FVector Start, FVector End, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult & OutHit, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回第一个跟射线碰撞的物体的碰撞信息，只查询指定对象类型
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params ObjectTypes 
-对象类型列表
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHit 
-输出的HitResult
boolLineTraceSingleByObjectType(UObject * WorldContextObject, FVector Start, FVector End, TArray < TEnumAsByte < ECollisionChannel > > & ObjectTypes, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult & OutHit, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
boolLineTraceMultiForObjects(UObject * WorldContextObject, FVector Start, FVector End, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitResult > & OutHits, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回所有跟射线碰撞的物体的碰撞信息，只查询指定对象类型
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params ObjectTypes 
-对象类型列表
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHits 
-输出的HitResult列表
boolSphereTraceSingleForObjects(UObject * WorldContextObject, FVector Start, FVector End, float Radius, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult & OutHit, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回第一个跟球体沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params Radius 
-球体半径
params ObjectTypes 
-对象类型列表
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHit 
-输出的HitResult
boolSphereTraceMultiForObjects(UObject * WorldContextObject, FVector Start, FVector End, float Radius, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitResult > & OutHits, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回所有跟球体沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params Radius 
-球体半径
params ObjectTypes 
-对象类型列表
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHits 
-输出的HitResult列表
boolBoxTraceSingleForObjects(UObject * WorldContextObject, FVector Start, FVector End, FVector HalfSize, FRotator Orientation, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult & OutHit, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回第一个跟Box沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params HalfSize 
-Box边的半长尺寸
params Orientation 
-Box的朝向
params ObjectTypes 
-对象类型列表
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHit 
-输出的HitResult
boolBoxTraceMultiForObjects(UObject * WorldContextObject, FVector Start, FVector End, FVector HalfSize, FRotator Orientation, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitResult > & OutHits, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回所有跟Box沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params HalfSize 
-Box边的半长尺寸
params Orientation 
-Box的朝向
params ObjectTypes 
-对象类型列表
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHits 
-输出的HitResult列表
boolCapsuleTraceSingleForObjects(UObject * WorldContextObject, FVector Start, FVector End, float Radius, float HalfHeight, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult & OutHit, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回第一个跟胶囊体沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params Radius 
-胶囊体半径
params HalfHeight 
-胶囊体半长高度
params ObjectTypes 
-对象类型列表
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHit 
-输出的HitResult
boolCapsuleTraceMultiForObjects(UObject * WorldContextObject, FVector Start, FVector End, float Radius, float HalfHeight, TArray < TEnumAsByte < EObjectTypeQuery > > & ObjectTypes, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitResult > & OutHits, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回所有跟胶囊体沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params Radius 
-胶囊体半径
params HalfHeight 
-胶囊体半长高度
params ObjectTypes 
-对象类型列表
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHits 
-输出的HitResult列表
boolLineTraceSingleByProfile(UObject * WorldContextObject, FVector Start, FVector End, FName ProfileName, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult & OutHit, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回第一个跟射线碰撞的物体的碰撞信息，按照指定碰撞预设查询
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params ProfileName 
-预设名称
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHit 
-输出的HitResult
boolLineTraceMultiByProfile(UObject * WorldContextObject, FVector Start, FVector End, FName ProfileName, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitResult > & OutHits, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回所有跟射线碰撞的物体的碰撞信息，按照指定碰撞预设查询
return  
- True if there was a blocking hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params ProfileName 
-预设名称
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHits 
-输出的HitResult列表
boolSphereTraceSingleByProfile(UObject * WorldContextObject, FVector Start, FVector End, float Radius, FName ProfileName, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult & OutHit, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回第一个跟球体沿射线移动扫过区域碰撞物体的碰撞信息，按照指定碰撞预设查询
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params Radius 
-球体半径
params ProfileName 
-预设名称
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHit 
-输出的HitResult
boolSphereTraceMultiByProfile(UObject * WorldContextObject, FVector Start, FVector End, float Radius, FName ProfileName, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitResult > & OutHits, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回所有跟球体沿射线移动扫过区域碰撞物体的碰撞信息，按照指定碰撞预设查询
return  
- True if there was a blocking hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params Radius 
-球体半径
params ProfileName 
-预设名称
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHits 
-输出的HitResult列表
boolBoxTraceSingleByProfile(UObject * WorldContextObject, FVector Start, FVector End, FVector HalfSize, FRotator Orientation, FName ProfileName, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult & OutHit, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回第一个跟Box沿射线移动扫过区域碰撞物体的碰撞信息，按照指定碰撞预设查询
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params HalfSize 
-Box边的半长尺寸
params Orientation 
-Box的朝向
params ProfileName 
-预设名称
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHit 
-输出的HitResult
boolBoxTraceMultiByProfile(UObject * WorldContextObject, FVector Start, FVector End, FVector HalfSize, FRotator Orientation, FName ProfileName, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitResult > & OutHits, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回所有跟Box沿射线移动扫过区域碰撞物体的碰撞信息，按照指定碰撞预设查询
return  
- True if there was a blocking hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params HalfSize 
-Box边的半长尺寸
params Orientation 
-Box的朝向
params ProfileName 
-预设名称
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHits 
-输出的HitResult列表
boolCapsuleTraceSingleByProfile(UObject * WorldContextObject, FVector Start, FVector End, float Radius, float HalfHeight, FName ProfileName, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, FHitResult & OutHit, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回第一个跟胶囊体沿射线移动扫过区域碰撞物体的碰撞信息，按照指定碰撞预设查询
return  
- True if there was a hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params Radius 
-胶囊体半径
params HalfHeight 
-胶囊体半长高度
params ProfileName 
-预设名称
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHit 
-输出的HitResult
boolCapsuleTraceMultiByProfile(UObject * WorldContextObject, FVector Start, FVector End, float Radius, float HalfHeight, FName ProfileName, bool bTraceComplex, TArray < AActor * > & ActorsToIgnore, EDrawDebugTrace :: Type DrawDebugType, TArray < FHitResult > & OutHits, bool bIgnoreSelf, FLinearColor TraceColor, FLinearColor TraceHitColor, floatDrawTime)
返回所有跟胶囊体沿射线移动扫过区域碰撞物体的碰撞信息，按照指定碰撞预设查询
return  
- True if there was a blocking hit, false otherwise.
params Start 
-射线检测起点
params End 
-射线检测终点
params Radius 
-胶囊体半径
params HalfHeight 
-胶囊体半长高度
params ProfileName 
-预设名称
params bTraceComplex 
-true为复杂碰撞检测，false为简单碰撞检测
params ActorsToIgnore 
-需要忽略的Actor列表
params OutHits 
-输出的HitResult列表
voidGetActorListFromComponentList(TArray < UPrimitiveComponent * > & ComponentList, UClass * ActorClassFilter, TArray < AActor * > &OutActorList)
Returns an array of unique actors represented by the given list of components.
params ComponentList 
-List of components.
params OutActorList 
-Start of line segment.
voidPrintToScreen(FString & InString, FLinearColor TextColor, FVector2D TextScale, float Duration, boolbIsUGC)
voidFlushOnScreenDebugMessages()
voidDrawDebugLine(UObject * WorldContextObject, FVector LineStart, FVector LineEnd, FLinearColor LineColor, float Duration, floatThickness)
Draw a debug line
voidDrawDebugCircle(UObject * WorldContextObject, FVector Center, float Radius, int32 NumSegments, FLinearColor LineColor, float Duration, float Thickness, FVector YAxis, FVector ZAxis, boolbDrawAxis)
Draw a debug circle!
voidDrawDebugPoint(UObject * WorldContextObject, FVector Position, float Size, FLinearColor PointColor, floatDuration)
Draw a debug point
voidDrawDebugArrow(UObject * WorldContextObject, FVector LineStart, FVector LineEnd, float ArrowSize, FLinearColor LineColor, float Duration, floatThickness)
Draw directional arrow, pointing from LineStart to LineEnd.
voidDrawDebugBox(UObject * WorldContextObject, FVector Center, FVector Extent, FLinearColor LineColor, FRotator Rotation, float Duration, floatThickness)
Draw a debug box
voidDrawDebugCoordinateSystem(UObject * WorldContextObject, FVector AxisLoc, FRotator AxisRot, float Scale, float Duration, floatThickness)
Draw a debug coordinate system.
voidDrawDebugSphere(UObject * WorldContextObject, FVector Center, float Radius, int32 Segments, FLinearColor LineColor, float Duration, floatThickness)
Draw a debug sphere
voidDrawDebugCylinder(UObject * WorldContextObject, FVector Start, FVector End, float Radius, int32 Segments, FLinearColor LineColor, float Duration, floatThickness)
Draw a debug cylinder
voidDrawDebugCone(UObject * WorldContextObject, FVector Origin, FVector Direction, float Length, float AngleWidth, float AngleHeight, int32 NumSides, FLinearColor LineColor, float Duration, floatThickness)
Draw a debug cone
voidDrawDebugConeInDegrees(UObject * WorldContextObject, FVector Origin, FVector Direction, float Length, float AngleWidth, float AngleHeight, int32 NumSides, FLinearColor LineColor, float Duration, floatThickness)
Draw a debug cone
Angles are specified in degrees
voidDrawDebugCapsule(UObject * WorldContextObject, FVector Center, float HalfHeight, float Radius, FRotator Rotation, FLinearColor LineColor, float Duration, floatThickness)
Draw a debug capsule
voidDrawDebugString(UObject * WorldContextObject, FVector TextLocation, FString & Text, AActor * TestBaseActor, FLinearColor TextColor, floatDuration)
Draw a debug string at a 3d world location.
voidFlushDebugStrings(UObject *WorldContextObject)
Removes all debug strings.

voidDrawDebugPlane(UObject * WorldContextObject, FPlane & PlaneCoordinates, FVector Location, float Size, FLinearColor PlaneColor, floatDuration)
Draws a debug plane.
voidFlushPersistentDebugLines(UObject *WorldContextObject)
Flush all persistent debug lines and shapes.

voidDrawDebugFrustum(UObject * WorldContextObject, FTransform & FrustumTransform, FLinearColor FrustumColor, float Duration, floatThickness)
Draws a debug frustum.
voidDrawDebugCamera(ACameraActor * CameraActor, FLinearColor CameraColor, floatDuration)
Draw a debug camera shape.
voidDrawDebugFloatHistoryTransform(UObject * WorldContextObject, FDebugFloatHistory & FloatHistory, FTransform & DrawTransform, FVector2D DrawSize, FLinearColor DrawColor, floatDuration)
Draws a 2D Histogram of size 'DrawSize' based FDebugFloatHistory struct, using DrawTransform for the position in the world.
voidDrawDebugFloatHistoryLocation(UObject * WorldContextObject, FDebugFloatHistory & FloatHistory, FVector DrawLocation, FVector2D DrawSize, FLinearColor DrawColor, floatDuration)
Draws a 2D Histogram of size 'DrawSize' based FDebugFloatHistory struct, using DrawLocation for the location in the world, rotation will face camera of first player.
FDebugFloatHistoryAddFloatHistorySample(float Value, FDebugFloatHistory &FloatHistory)
voidDrawDebugActorName(AActor * Actor, FVector Offset, FLinearColor LinearColor, floatDuration)
绘制Actor名称
voidDrawDebugActorMoveTrack(AActor * Actor, FLinearColor LinearColor, float Duration, floatThickness)
绘制Actor运动轨迹
voidDrawDebugDistance(UObject * WorldContextObject, FVector Self, FVector Target, FLinearColor LinearColor, float Duration, floatThickness)
绘制Self到Tartget的连线与距离
voidDrawDebugTargetAimedAt(UObject * WorldContextObject, float Length, floatDrawTime)
绘制准心瞄准物体名称
voidDrawDebugActorCollision(AActor * Actor, FLinearColor LinearColor, float Duration, floatThickness)
绘制碰撞盒
voidDrawDebugActorBounds(AActor * Actor, FLinearColor LinearColor, float Duration, floatThickness)
绘制Actor的包围盒
voidCreateCopyForUndoBuffer(UObject *ObjectToModify)
Mark as modified.
voidGetComponentBounds(USceneComponent * Component, FVector & Origin, FVector & BoxExtent, float &SphereRadius)
Get bounds
voidGetActorBounds(AActor * Actor, FVector & Origin, FVector &BoxExtent)
int32GetRenderingDetailMode()
Get the clamped state of r.DetailMode, see console variable help (allows for scalability, cannot be used in construction scripts)
0: low, show only object with DetailMode low or higher
1: medium, show all object with DetailMode medium or higher
2: high, show all objects
int32GetRenderingMaterialQualityLevel()
Get the clamped state of r.MaterialQualityLevel, see console variable help (allows for scalability, cannot be used in construction scripts)
0: low
1: high
2: medium
3: ultimatehigh
boolGetSupportedFullscreenResolutions(TArray < FIntPoint > &Resolutions)
Gets the list of support fullscreen resolutions.
return  
-true if successfully queried the device for available resolutions.
boolGetConvenientWindowedResolutions(TArray < FIntPoint > &Resolutions)
Gets the list of windowed resolutions which are convenient for the current primary display size.
return  
-true if successfully queried the device for available resolutions.
int32GetMinYResolutionForUI()
Gets the smallest Y resolution we want to support in the UI, clamped within reasons
return  
-value in pixels
int32GetMinYResolutionFor3DView()
Gets the smallest Y resolution we want to support in the 3D view, clamped within reasons
return  
-value in pixels
voidLaunchURL(FString &URL)
boolCanLaunchURL(FString &URL)
voidCollectGarbage(boolbFullPurge)
floatGetTimeSinceLastPendingKillPurge()
voidShowAdBanner(int32 AdIdIndex, boolbShowOnBottomOfScreen)
Will show an ad banner (iAd on iOS, or AdMob on Android) on the top or bottom of screen, on top of the GL view (doesn't resize the view)
(iOS and Android only)

params AdIdIndex 
-The index of the ID to select for the ad to show
params bShowOnBottomOfScreen 
-If true, the iAd will be shown at the bottom of the screen, top otherwise
int32GetAdIDCount()
Retrieves the total number of Ad IDs that can be selected between
voidHideAdBanner()
Hides the ad banner (iAd on iOS, or AdMob on Android). Will force close the ad if it's open
(iOS and Android only)
voidForceCloseAdBanner()
Forces closed any displayed ad. Can lead to loss of revenue
(iOS and Android only)
voidLoadInterstitialAd(int32AdIdIndex)
Will load a fullscreen interstitial AdMob ad. Call this before using ShowInterstitialAd
(Android only)

params AdIdIndex 
-The index of the ID to select for the ad to show
boolIsInterstitialAdAvailable()
Returns true if the requested interstitial ad is loaded and ready
(Android only)
boolIsInterstitialAdRequested()
Returns true if the requested interstitial ad has been successfully requested (false if load request fails)
(Android only)
voidShowInterstitialAd()
Shows the loaded interstitial ad (loaded with LoadInterstitialAd)
(Android only)
voidShowPlatformSpecificLeaderboardScreen(FString &CategoryName)
Displays the built-in leaderboard GUI (iOS and Android only; this function may be renamed or moved in a future release)
voidShowPlatformSpecificAchievementsScreen(APlayerController *SpecificPlayer)
Displays the built-in achievements GUI (iOS and Android only; this function may be renamed or moved in a future release)

params SpecificPlayer 
-Specific player's achievements to show. May not be supported on all platforms. If null, defaults to the player with ControllerId 0
boolIsLoggedIn(APlayerController *SpecificPlayer)
Returns whether the player is logged in to the currently active online subsystem.

voidControlScreensaver(boolbAllowScreenSaver)
Allows or inhibits screensaver
params bAllowScreenSaver 
-If false, don't allow screensaver if possible, otherwise allow default behavior
voidSetVolumeButtonsHandledBySystem(boolbEnabled)
Allows or inhibits system default handling of volume up and volume down buttons (Android only)
params bEnabled 
- If true, allow Android to handle volume up and down events
boolGetVolumeButtonsHandledBySystem()
Returns true if system default handling of volume up and volume down buttons enabled (Android only)
voidResetGamepadAssignments()
Resets the gamepad to player controller id assignments (Android only)
voidResetGamepadAssignmentToController(int32ControllerId)
Resets the gamepad assignment to player controller id (Android only)
boolIsControllerAssignedToGamepad(int32ControllerId)
Returns true if controller id assigned to a gamepad (Android only)
voidSetSuppressViewportTransitionMessage(UObject * WorldContextObject, boolbState)
Sets the state of the transition message rendered by the viewport. (The blue text displayed when the game is paused and so forth.)

params WorldContextObject 
-World context
TArray < FString >GetPreferredLanguages()
Returns an array of the user's preferred languages in order of preference
return  
-An array of language IDs ordered from most preferred to least
FStringGetDefaultLanguage()
Get the default language (for localization) used by this platform
return  
-The language as an IETF language tag (eg, "zh-Hans-CN")
FStringGetDefaultLocale()
Get the default locale (for internationalization) used by this platform
return  
-The locale as an IETF language tag (eg, "zh-Hans-CN")
FStringGetLocalCurrencyCode()
Returns the currency code associated with the device's locale
return  
-the currency code associated with the device's locale
FStringGetLocalCurrencySymbol()
Returns the currency symbol associated with the device's locale
return  
-the currency symbol associated with the device's locale
voidRegisterForRemoteNotifications()
Requests permission to send remote notifications to the user's device.
(Android and iOS only)
voidUnregisterForRemoteNotifications()
Requests Requests unregistering from receiving remote notifications to the user's device.
(Android only)
voidSetUserActivity(FUserActivity &UserActivity)
Tells the engine what the user is doing for debug, analytics, etc.
FStringGetCommandLine()
Returns the command line that the process was launched with.
UObject *GetObjectFromPrimaryAssetId(FPrimaryAssetIdPrimaryAssetId)
Returns the Object associated with a Primary Asset Id, this will only return a valid object if it is in memory, it will not load it
TSubclassOf < UObject >GetClassFromPrimaryAssetId(FPrimaryAssetIdPrimaryAssetId)
Returns the Blueprint Class associated with a Primary Asset Id, this will only return a valid object if it is in memory, it will not load it
TSoftObjectPtr < UObject >GetSoftObjectReferenceFromPrimaryAssetId(FPrimaryAssetIdPrimaryAssetId)
Returns the Object Id associated with a Primary Asset Id, this works even if the asset is not loaded
TSoftClassPtr < UObject >GetSoftClassReferenceFromPrimaryAssetId(FPrimaryAssetIdPrimaryAssetId)
Returns the Blueprint Class Id associated with a Primary Asset Id, this works even if the asset is not loaded
FPrimaryAssetIdGetPrimaryAssetIdFromObject(UObject *Object)
Returns the Primary Asset Id for an Object, this can return an invalid one if not registered
FPrimaryAssetIdGetPrimaryAssetIdFromClass(TSubclassOf < UObject >Class)
Returns the Primary Asset Id for a Class, this can return an invalid one if not registered
FPrimaryAssetIdGetPrimaryAssetIdFromSoftObjectReference(TSoftObjectPtr < UObject >SoftObjectReference)
Returns the Primary Asset Id for a Soft Object Reference, this can return an invalid one if not registered
FPrimaryAssetIdGetPrimaryAssetIdFromSoftClassReference(TSoftClassPtr < UObject >SoftClassReference)
Returns the Primary Asset Id for a Soft Class Reference, this can return an invalid one if not registered
voidGetPrimaryAssetIdList(FPrimaryAssetType PrimaryAssetType, TArray < FPrimaryAssetId > &OutPrimaryAssetIdList)
Returns list of PrimaryAssetIds for a PrimaryAssetType
boolIsValidPrimaryAssetId(FPrimaryAssetIdPrimaryAssetId)
Returns true if the Primary Asset Id is valid
FStringConv_PrimaryAssetIdToString(FPrimaryAssetIdPrimaryAssetId)
Converts a Primary Asset Id to a string. The other direction is not provided because it cannot be validated
boolEqualEqual_PrimaryAssetId(FPrimaryAssetId A, FPrimaryAssetIdB)
Returns true if the values are equal (A == B)
boolNotEqual_PrimaryAssetId(FPrimaryAssetId A, FPrimaryAssetIdB)
Returns true if the values are not equal (A != B)
boolIsValidPrimaryAssetType(FPrimaryAssetTypePrimaryAssetType)
Returns list of Primary Asset Ids for a PrimaryAssetType
FStringConv_PrimaryAssetTypeToString(FPrimaryAssetTypePrimaryAssetType)
Converts a Primary Asset Type to a string. The other direction is not provided because it cannot be validated
boolEqualEqual_PrimaryAssetType(FPrimaryAssetType A, FPrimaryAssetTypeB)
Returns true if the values are equal (A == B)
boolNotEqual_PrimaryAssetType(FPrimaryAssetType A, FPrimaryAssetTypeB)
Returns true if the values are not equal (A != B)
voidUnloadPrimaryAsset(FPrimaryAssetIdPrimaryAssetId)
Unloads a primary asset, which allows it to be garbage collected if nothing else is referencing it
voidUnloadPrimaryAssetList(TArray < FPrimaryAssetId > &PrimaryAssetIdList)
Unloads a primary asset, which allows it to be garbage collected if nothing else is referencing it
boolGetCurrentBundleState(FPrimaryAssetId PrimaryAssetId, bool bForceCurrentState, TArray < FName > &OutBundles)
Returns the list of loaded bundles for a given Primary Asset. This will return false if the asset is not loaded at all.
If ForceCurrentState is true it will return the current state even if a load is in process
voidGetPrimaryAssetsWithBundleState(TArray < FName > & RequiredBundles, TArray < FName > & ExcludedBundles, TArray < FPrimaryAssetType > & ValidTypes, bool bForceCurrentState, TArray < FPrimaryAssetId > &OutPrimaryAssetIdList)
Returns the list of assets that are in a given bundle state. Required Bundles must be specified
If ExcludedBundles is not empty, it will not return any assets in those bundle states
If ValidTypes is not empty, it will only return assets of those types
If ForceCurrentState is true it will use the current state even if a load is in process
voidAddResMapping(TMap < FName , FName > &InPackageNameRemap)
Functions for Asset Redirect
voidAddResPathMapping(TMap < FString , FString > &InPackagePathRemap)
voidAddResARMapping(TSet < FString > &InARPaths)
voidIterateAddResARMapping(FString & InARRoot, TSet < FString > &InARPaths)
voidIterateRemoveResARMapping(FString & InARRoot, TSet < FString > &InARPaths)
boolIsResARMapping(FString &InARPath)
voidRemoveResMapping(TArray < FString > &PathKeys)
voidEmptyResMapping()
voidAddBlackResMapping(TSet < FName > &InPackageNames)
voidRemoveBlackResMapping(TSet < FName > &InPackageNames)
voidEmptyBlackResMapping()
voidBindPackageNameResolver()
voidUnBindPackageNameResolver()
boolIsPackageNameResolverBinded()
boolIsARPathActivated(FString &InARPath)
boolGetOriginalPath(FName & Path, FName &OriginalPath)
FStringGetDelegateResolvedPackagePath(FString &InSourcePackagePath)