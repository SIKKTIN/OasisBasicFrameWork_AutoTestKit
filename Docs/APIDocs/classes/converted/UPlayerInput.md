# UPlayerInput

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPlayerInput?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPlayerInput.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPlayerInput](https://developer.gp.qq.com/api/#/searchContent/UPlayerInput?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPlayerInput.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPlayerInput)

类

全文搜索

end: 单条记录，滑屏轨迹中的一个点 Object within PlayerController that processes player input. Only exists on the client in network games.

---


## 函数

- **SetMouseSensitivity**(floatSensitivity) — Exec function to change the mouse sensitivity
- **SetBind**(FName BindName, FString &Command) — Exec function to add a debug exec command
- **InvertAxisKey**(FKeyAxisKey) — Exec function to invert an axis key
- **InvertAxis**(FNameAxisName) — Exec function to invert an axis mapping
- **ClearSmoothing**(Exec function to reset mouse smoothing values SetMouseSensitivity SetBind InvertAxisKey InvertAxis ClearSmoothing)

## 属性

- **bindings** — of keys to Exec()-compatible strings for development purposes only List of Axis Mappings that have been inverted bEnableKeyInput InputTouchCacheDataList DebugExecBindings InvertedAxis