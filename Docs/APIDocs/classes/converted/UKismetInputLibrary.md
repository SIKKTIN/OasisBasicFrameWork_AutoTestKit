# UKismetInputLibrary

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