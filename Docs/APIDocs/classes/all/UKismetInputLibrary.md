# UKismetInputLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetInputLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetInputLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetInputLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetInputLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetInputLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetInputLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **CalibrateTilt** |  | Calibrate the tilt for the input device |
| bool | **EqualEqual_KeyKey** | FKey A, FKeyB | Test if the input key are equal (A == B) return - True if the key are equal, false otherwise params A -- The key to compare against params B -- The key to compare |
| bool | **EqualEqual_InputChordInputChord** | FInputChord A, FInputChordB | Test if the input chords are equal (A == B) return - True if the chords are equal, false otherwise params A -- The chord to compare against params B -- The chord to compare |
| bool | **Key_IsModifierKey** | FKey &Key | return - True if the key is a modifier key: Ctrl, Command, Alt, Shift |
| bool | **Key_IsGamepadKey** | FKey &Key | return - True if the key is a gamepad button |
| bool | **Key_IsMouseButton** | FKey &Key | return - True if the key is a mouse button |
| bool | **Key_IsKeyboardKey** | FKey &Key | return - True if the key is a keyboard button |
| bool | **Key_IsFloatAxis** | FKey &Key | return - True if the key is a float axis |
| bool | **Key_IsVectorAxis** | FKey &Key | return - True if the key is a vector axis |
| F | **TextKey_GetDisplayName** | FKey &Key | return - The display name of the key. |
| bool | **InputEvent_IsRepeat** | FInputEvent &Input | Returns whether or not this character is an auto-repeated keystroke return - True if this character is a repeat |
| bool | **InputEvent_IsShiftDown** | FInputEvent &Input | Returns true if either shift key was down when this event occurred return - True if shift is pressed |
| bool | **InputEvent_IsLeftShiftDown** | FInputEvent &Input | Returns true if left shift key was down when this event occurred return -True if left shift is pressed. |
| bool | **InputEvent_IsRightShiftDown** | FInputEvent &Input | Returns true if right shift key was down when this event occurred return -True if right shift is pressed. |
| bool | **InputEvent_IsControlDown** | FInputEvent &Input | Returns true if either control key was down when this event occurred return - True if control is pressed |
| bool | **InputEvent_IsLeftControlDown** | FInputEvent &Input | Returns true if left control key was down when this event occurred return - True if left control is pressed |
| bool | **InputEvent_IsRightControlDown** | FInputEvent &Input | Returns true if left control key was down when this event occurred return - True if left control is pressed |
| bool | **InputEvent_IsAltDown** | FInputEvent &Input | Returns true if either alt key was down when this event occurred return - True if alt is pressed |
| bool | **InputEvent_IsLeftAltDown** | FInputEvent &Input | Returns true if left alt key was down when this event occurred return - True if left alt is pressed |
| bool | **InputEvent_IsRightAltDown** | FInputEvent &Input | Returns true if right alt key was down when this event occurred return - True if right alt is pressed |
| bool | **InputEvent_IsCommandDown** | FInputEvent &Input | Returns true if either command key was down when this event occurred return - True if command is pressed |
| bool | **InputEvent_IsLeftCommandDown** | FInputEvent &Input | Returns true if left command key was down when this event occurred return - True if left command is pressed |
| bool | **InputEvent_IsRightCommandDown** | FInputEvent &Input | Returns true if right command key was down when this event occurred return - True if right command is pressed |
| F | **KeyGetKeyByName** | FName &KeyName |  |
| F | **KeyGetKey** | FKeyEvent &Input | Returns the key for this event. return - Key name |
| int32 | **GetUserIndex** | FKeyEvent &Input |  |
| float | **GetAnalogValue** | FAnalogInputEvent &Input |  |
| F | **Vector2DPointerEvent_GetScreenSpacePosition** | FPointerEvent &Input | return -The position of the cursor in screen space |
| F | **Vector2DPointerEvent_GetLastScreenSpacePosition** | FPointerEvent &Input | return -The position of the cursor in screen space last time we handled an input event |
| F | **Vector2DPointerEvent_GetCursorDelta** | FPointerEvent &Input | return -the distance the mouse traveled since the last event was handled. |
| bool | **PointerEvent_IsMouseButtonDown** | FPointerEvent & Input, FKeyMouseButton | Mouse buttons that are currently pressed |
| F | **KeyPointerEvent_GetEffectingButton** | FPointerEvent &Input | Mouse button that caused this event to be raised (possibly EB_None) |
| float | **PointerEvent_GetWheelDelta** | FPointerEvent &Input | How much did the mouse wheel turn since the last mouse event |
| int32 | **PointerEvent_GetUserIndex** | FPointerEvent &Input | return -The index of the user that caused the event |
| int32 | **PointerEvent_GetPointerIndex** | FPointerEvent &Input | return -The unique identifier of the pointer (e.g., finger index) |
| int32 | **PointerEvent_GetTouchpadIndex** | FPointerEvent &Input | return -The index of the touch pad that generated this event (for platforms with multiple touch pads per user) |
| bool | **PointerEvent_IsTouchEvent** | FPointerEvent &Input | return -Is this event a result from a touch (as opposed to a mouse) |
| float | **PointerEvent_TouchForce** | FPointerEvent &Input |  |
| E | **SlateGesturePointerEvent_GetGestureType** | FPointerEvent &Input | return -The type of touch gesture |
| F | **Vector2DPointerEvent_GetGestureDelta** | FPointerEvent &Input | return -The change in gesture value since the last gesture event of the same type. CalibrateTilt EqualEqual_KeyKey EqualEqual_InputChordInputChord Key_IsModifierKey Key_IsGamepadKey Key_IsMouseButton Key_IsKeyboardKey Key_IsFloatAxis Key_IsVectorAxis Key_GetDisplayName InputEvent_IsRepeat InputEvent |

