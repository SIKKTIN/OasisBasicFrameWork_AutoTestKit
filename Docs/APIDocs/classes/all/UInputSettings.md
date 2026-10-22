# UInputSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInputSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputSettings](https://developer.gp.qq.com/api/#/searchContent/UInputSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInputSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInputSettings)

类

全文搜索

Project wide settings for input handling

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| UInputSettings * | **GetInputSettings** |  | Returns the game local input settings (action mappings, axis mappings, etc...) |
| void | **AddActionMapping** | FInputActionKeyMapping & KeyMapping, boolbForceRebuildKeymaps | Programmatically add an action mapping to the project defaults |
| void | **GetActionMappingByName** | FName InActionName, TArray < FInputActionKeyMapping > &OutMappings |  |
| void | **RemoveActionMapping** | FInputActionKeyMapping & KeyMapping, boolbForceRebuildKeymaps | Programmatically remove an action mapping to the project defaults |
| void | **AddAxisMapping** | FInputAxisKeyMapping & KeyMapping, boolbForceRebuildKeymaps | Programmatically add an axis mapping to the project defaults |
| void | **GetAxisMappingByName** | FName InAxisName, TArray < FInputAxisKeyMapping > &OutMappings | Retrieve all axis mappings by a certain name. |
| void | **RemoveAxisMapping** | FInputAxisKeyMapping & KeyMapping, boolbForceRebuildKeymaps | Programmatically remove an axis mapping to the project defaults |
| void | **SaveKeyMappings** |  | Flush the current mapping values to the config file |
| void | **GetActionNames** | TArray < FName > &ActionNames | Populate a list of all defined action names |
| void | **GetAxisNames** | TArray < FName > &AxisNames | Populate a list of all defined axis names |
| void | **ForceRebuildKeymaps** |  | When changes are made to the default mappings, push those changes out to PlayerInput key maps |
| void | **ApplySettings** |  |  |
| void | **ResetToDefaultEditorSettings** |  |  |
| void | **SaveToConfig** |  |  |
| TArray < struct FInputActionKeyMapping > | **GetActionMappings** |  |  |
| TArray < struct FInputAxisKeyMapping > | **GetAxisMappings** |  | GetInputSettings AddActionMapping GetActionMappingByName RemoveActionMapping AddAxisMapping GetAxisMappingByName RemoveAxisMapping SaveKeyMappings GetActionNames GetAxisNames ForceRebuildKeymaps ApplySettings ResetToDefaultEditorSettings SaveToConfig GetActionMappings GetAxisMappings |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Properties | **of** | Axis controls If a key is pressed twice in this amount of time it is considered a "double click" Controls if the viewport will capture the mouse on Launch of the application EMouseCaptureModeDefaultViewportMouseCaptureMode The default mouse capture mode for the game viewport The default mouse lock s |

