# UInputSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInputSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputSettings](https://developer.gp.qq.com/api/#/searchContent/UInputSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputSettings)

类

全文搜索

Project wide settings for input handling

---


## 函数

- **GetInputSettings**(Returns the game local input settings (action mappings, axis mappings, etc...))
- **AddActionMapping**(FInputActionKeyMapping& KeyMapping, boolbForceRebuildKeymaps) — Programmatically add an action mapping to the project defaults
- **GetActionMappingByName**(FName InActionName, TArray < FInputActionKeyMapping > &OutMappings)
- **RemoveActionMapping**(FInputActionKeyMapping& KeyMapping, boolbForceRebuildKeymaps) — Programmatically remove an action mapping to the project defaults
- **AddAxisMapping**(FInputAxisKeyMapping& KeyMapping, boolbForceRebuildKeymaps) — Programmatically add an axis mapping to the project defaults
- **GetAxisMappingByName**(FName InAxisName, TArray < FInputAxisKeyMapping > &OutMappings) — Retrieve all axis mappings by a certain name.
- **RemoveAxisMapping**(FInputAxisKeyMapping& KeyMapping, boolbForceRebuildKeymaps) — Programmatically remove an axis mapping to the project defaults
- **SaveKeyMappings**(Flush the current mapping values to the config file)
- **GetActionNames**(TArray < FName > &ActionNames) — Populate a list of all defined action names
- **GetAxisNames**(TArray < FName > &AxisNames) — Populate a list of all defined axis names
- **ForceRebuildKeymaps**(When changes are made to the default mappings, push those changes out to PlayerInput key maps)
- **ApplySettings**()
- **ResetToDefaultEditorSettings**()
- **SaveToConfig**()
- **GetActionMappings**()
- **GetAxisMappings**(GetInputSettings AddActionMapping GetActionMappingByName RemoveActionMapping AddAxisMapping GetAxisMappingByName RemoveAxisMapping SaveKeyMappings GetActionNames GetAxisNames ForceRebuildKeymaps ApplySettings ResetToDefaultEditorSettings SaveToConfig GetActionMappings GetAxisMappings)

## 属性

- **of** — Axis controls If a key is pressed twice in this amount of time it is considered a "double click" Controls if the viewport will capture the mouse on Launch of the application EMouseCaptureModeDefaultViewportMouseCaptureMode The default mouse capture mode for the game viewport The default mouse lock s