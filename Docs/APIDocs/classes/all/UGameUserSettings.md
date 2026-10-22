# UGameUserSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameUserSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameUserSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameUserSettings](https://developer.gp.qq.com/api/#/searchContent/UGameUserSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameUserSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameUserSettings)

类

全文搜索

Stores user settings for a game (for example graphics and sound settings), with the ability to save and load to and from a file.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **ApplySettings** | boolbCheckForCommandLineOverrides | Applies all current user settings to the game and saves to permanent storage (e.g. file), optionally checking for command line overrides. |
| void | **ApplyNonResolutionSettings** |  |  |
| void | **ApplyResolutionSettings** | boolbCheckForCommandLineOverrides |  |
| F | **IntPointGetScreenResolution** |  | Returns the user setting for game screen resolution, in pixels. |
| F | **IntPointGetLastConfirmedScreenResolution** |  | Returns the last confirmed user setting for game screen resolution, in pixels. |
| F | **IntPointGetDesktopResolution** |  | Returns user's desktop resolution, in pixels. |
| void | **SetScreenResolution** | FIntPointResolution | Sets the user setting for game screen resolution, in pixels. |
| bool | **GetIsBorderless** |  | IsBorderless getter and setter added by windzjliu |
| void | **SetIsBorderless** | boolInIsBorderless |  |
| int32 | **GetBorderlessMode** |  |  |
| void | **SetBorderlessMode** | int32InBorderlessMode |  |
| EWindowMode :: | **TypeGetFullscreenMode** |  | Returns the user setting for game window fullscreen mode. |
| EWindowMode :: | **TypeGetLastConfirmedFullscreenMode** |  | Returns the last confirmed user setting for game window fullscreen mode. |
| void | **SetFullscreenMode** | EWindowMode :: TypeInFullscreenMode | Sets the user setting for the game window fullscreen mode. See UGameUserSettings::FullscreenMode. |
| EWindowMode :: | **TypeGetPreferredFullscreenMode** |  | Returns the user setting for game window fullscreen mode. |
| void | **SetVSyncEnabled** | boolbEnable | Sets the user setting for vsync. See UGameUserSettings::bUseVSync. |
| bool | **IsVSyncEnabled** |  | Returns the user setting for vsync. |
| bool | **IsScreenResolutionDirty** |  | Checks if the Screen Resolution user setting is different from current |
| bool | **IsFullscreenModeDirty** |  | Checks if the FullscreenMode user setting is different from current |
| bool | **IsVSyncDirty** |  | Checks if the vsync user setting is different from current system setting |
| void | **ConfirmVideoMode** |  | Mark current video mode settings (fullscreenmoderesolution) as being confirmed by the user |
| void | **RevertVideoMode** |  | Revert video mode (fullscreenmoderesolution) back to the last user confirmed values |
| void | **SetBenchmarkFallbackValues** |  | Set scalability settings to sensible fallback values, for use when the benchmark fails or potentially causes a crash |
| void | **SetAudioQualityLevel** | int32QualityLevel | Sets the user's audio quality level setting |
| int32 | **GetAudioQualityLevel** |  | Returns the user's audio quality level setting |
| void | **SetFrameRateLimit** | floatNewLimit | Sets the user's frame rate limit (0 will disable frame rate limiting) |
| float | **GetFrameRateLimit** |  | Gets the user's frame rate limit (0 indiciates the frame rate limit is disabled) |
| void | **SetOverallScalabilityLevel** | int32Value |  |
| int32 | **GetOverallScalabilityLevel** |  |  |
| void | **GetResolutionScaleInformation** | float & CurrentScaleNormalized, int32 & CurrentScaleValue, int32 & MinScaleValue, int32 &MaxScaleValue |  |
| void | **GetResolutionScaleInformationEx** | float & CurrentScaleNormalized, float & CurrentScaleValue, float & MinScaleValue, float &MaxScaleValue |  |
| void | **SetResolutionScaleValue** | int32NewScaleValue |  |
| void | **SetResolutionScaleValueEx** | floatNewScaleValue |  |
| void | **SetResolutionScaleNormalized** | floatNewScaleNormalized |  |
| void | **SetViewDistanceQuality** | int32Value |  |
| int32 | **GetViewDistanceQuality** |  |  |
| void | **SetShadowQuality** | int32Value |  |
| int32 | **GetShadowQuality** |  |  |
| void | **SetAntiAliasingQuality** | int32Value |  |
| int32 | **GetAntiAliasingQuality** |  |  |
| void | **SetTextureQuality** | int32Value |  |
| int32 | **GetTextureQuality** |  |  |
| void | **SetVisualEffectQuality** | int32Value |  |
| int32 | **GetVisualEffectQuality** |  |  |
| void | **SetPostProcessingQuality** | int32Value |  |
| int32 | **GetPostProcessingQuality** |  |  |
| void | **SetFoliageQuality** | int32Value |  |
| int32 | **GetFoliageQuality** |  |  |
| bool | **IsDirty** |  | Checks if any user settings is different from current |
| void | **ValidateSettings** |  | Validates and resets bad user settings to default. Deletes stale user settings file if necessary. |
| void | **LoadSettings** | boolbForceReload | Loads the user settings from persistent storage |
| void | **SaveSettings** |  | Save the user settings to persistent storage (automatically happens as part of ApplySettings) |
| void | **ResetToCurrentSettings** |  | This function resets all settings to the current system settings |
| void | **SetToDefaults** |  |  |
| float | **GetDefaultResolutionScale** |  | Gets the desired resolution quality based on DesiredScreenWidthHeight and the current screen resolution |
| float | **GetRecommendedResolutionScale** |  | Gets the recommended resolution quality based on LastRecommendedScreenWidthHeight and the current screen resolution |
| F | **IntPointGetDefaultResolution** |  | return -The default resolution when no resolution is set |
| F | **IntPointGetDefaultWindowPosition** |  | return -The default window position when no position is set |
| EWindowMode :: | **TypeGetDefaultWindowMode** |  | return -The default window mode when no mode is set |
| UGameUserSettings * | **GetGameUserSettings** |  | Returns the game local machine settings (resolution, windowing mode, scalability settings, etc...) |
| void | **RunHardwareBenchmark** | int32 WorkScale, float CPUMultiplier, floatGPUMultiplier | Runs the hardware benchmark and populates ScalabilityQuality as well as the last benchmark results config members, but does not apply the settings it determines. Designed to be called in conjunction with ApplyHardwareBenchmarkResults |
| void | **ApplyHardwareBenchmarkResults** |  | Applies the settings stored in ScalabilityQuality and saves settings |
| bool | **SupportsHDRDisplayOutput** |  | Whether the curently running system supports HDR display output |
| void | **EnableHDRDisplayOutput** | bool bEnable, int32DisplayNits | Enables or disables HDR display output. Can be called again to change the desired nit level |
| int32 | **GetCurrentHDRDisplayNits** |  | Returns 0 if HDR isn't supported or is turned off |
| bool | **IsHDREnabled** |  | ApplySettings ApplyNonResolutionSettings ApplyResolutionSettings GetScreenResolution GetLastConfirmedScreenResolution GetDesktopResolution SetScreenResolution GetIsBorderless SetIsBorderless GetBorderlessMode SetBorderlessMode GetFullscreenMode GetLastConfirmedFullscreenMode SetFullscreenMode GetPre |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Whether | **to** | use VSync or not. (public to allow UI to connect to it) Game screen resolution width, in pixels. Game screen resolution height, in pixels. Game screen resolution width, in pixels. Game screen resolution height, in pixels. Is game window borderless added by windzjliu Window PosX Window PosY Game wind |

## 委托

- voidOnGameUserSettingsUINeedsUpdate()
- OnGameUserSettingsUINeedsUpdate

