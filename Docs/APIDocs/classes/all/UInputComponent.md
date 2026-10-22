# UInputComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInputComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputComponent](https://developer.gp.qq.com/api/#/searchContent/UInputComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputComponent)

类

全文搜索

Implement an Actor component for input bindings. An Input Component is a transient component that enables an Actor to bind various forms of input events to delegate functions. Input components are processed from a stack managed by the PlayerController and processed by the PlayerInput. Each binding can consume the input event preventing other components on the input stack from processing the input.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| bool | **IsControllerKeyDown** | FKeyKey | Returns true if the given keybutton is pressed on the input of the controller (if present) |
| bool | **WasControllerKeyJustPressed** | FKeyKey | Returns true if the given keybutton was up last frame and down this frame. |
| bool | **WasControllerKeyJustReleased** | FKeyKey | Returns true if the given keybutton was down last frame and up this frame. |
| float | **GetControllerAnalogKeyState** | FKeyKey | Returns the analog value for the given keybutton. If analog isn't supported, returns 1 for down and 0 for up. |
| F | **VectorGetControllerVectorKeyState** | FKeyKey | Returns the vector value for the given keybutton. |
| void | **GetTouchState** | int32 FingerIndex, float & LocationX, float & LocationY, bool &bIsCurrentlyPressed | Returns the location of a touch, and if it's held down |
| float | **GetControllerKeyTimeDown** | FKeyKey | Returns how long the given keybutton has been down. Returns 0 if it's up or it just went down this frame. |
| void | **GetControllerMouseDelta** | float & DeltaX, float &DeltaY | Retrieves how far the mouse moved this frame. |
| void | **GetControllerAnalogStickState** | EControllerAnalogStick :: Type WhichStick, float & StickX, float &StickY | Retrieves the X and Y displacement of the given analog stick. For WhickStick, 0 = left, 1 = right. IsControllerKeyDown WasControllerKeyJustPressed WasControllerKeyJustReleased GetControllerAnalogKeyState GetControllerVectorKeyState GetTouchState GetControllerKeyTimeDown GetControllerMouseDelta GetCo |

