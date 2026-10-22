# UCineCameraComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCineCameraComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCineCameraComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCineCameraComponent](https://developer.gp.qq.com/api/#/searchContent/UCineCameraComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCineCameraComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCineCameraComponent)

类

全文搜索

A specialized version of a camera component, geared toward cinematic usage.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| float | **GetHorizontalFieldOfView** |  | Returns the horizonal FOV of the camera with current settings. |
| float | **GetVerticalFieldOfView** |  | Returns the vertical FOV of the camera with current settings. |
| F | **StringGetFilmbackPresetName** |  | Returns the filmback name of the camera with the current settings. |
| void | **SetFilmbackPresetByName** | FString &InPresetName | Set the current preset settings by preset name. |
| F | **StringGetLensPresetName** |  | Returns the lens name of the camera with the current settings. |
| void | **SetLensPresetByName** | FString &InPresetName | Set the current lens settings by preset name. GetHorizontalFieldOfView GetVerticalFieldOfView GetFilmbackPresetName SetFilmbackPresetByName GetLensPresetName SetLensPresetByName |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Controls | **the** | filmback of the camera. Controls the camera's lens. Controls the camera's focus. Current focal length of the camera (i.e. controls FoV, zoom) Current aperture, in terms of f-stop (e.g. 2.8 for f2.8) Read-only. Control this value via FocusSettings. List of available filmback presets List of available |

