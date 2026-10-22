# UGameUserSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameUserSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameUserSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameUserSettings](https://developer.gp.qq.com/api/#/searchContent/UGameUserSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameUserSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameUserSettings)

类

全文搜索

Stores user settings for a game (for example graphics and sound settings), with the ability to save and load to and from a file.

---


## 函数

- **ApplySettings**(boolbCheckForCommandLineOverrides) — Applies all current user settings to the game and saves to permanent storage (e.g. file), optionally checking for command line overrides.
- **ApplyNonResolutionSettings**()
- **ApplyResolutionSettings**(boolbCheckForCommandLineOverrides)
- **IntPointGetScreenResolution**(Returns the user setting for game screen resolution, in pixels.)
- **IntPointGetLastConfirmedScreenResolution**(Returns the last confirmed user setting for game screen resolution, in pixels.)
- **IntPointGetDesktopResolution**(Returns user's desktop resolution, in pixels.)
- **SetScreenResolution**(FIntPointResolution) — Sets the user setting for game screen resolution, in pixels.
- **GetIsBorderless**(IsBorderless getter and setter added by windzjliu)
- **SetIsBorderless**(boolInIsBorderless)
- **GetBorderlessMode**()
- **SetBorderlessMode**(int32InBorderlessMode)
- **TypeGetFullscreenMode**(Returns the user setting for game window fullscreen mode.)
- **TypeGetLastConfirmedFullscreenMode**(Returns the last confirmed user setting for game window fullscreen mode.)
- **SetFullscreenMode**(EWindowMode :: TypeInFullscreenMode) — Sets the user setting for the game window fullscreen mode. See UGameUserSettings::FullscreenMode.
- **TypeGetPreferredFullscreenMode**(Returns the user setting for game window fullscreen mode.)
- **SetVSyncEnabled**(boolbEnable) — Sets the user setting for vsync. See UGameUserSettings::bUseVSync.
- **IsVSyncEnabled**(Returns the user setting for vsync.)
- **IsScreenResolutionDirty**(Checks if the Screen Resolution user setting is different from current)
- **IsFullscreenModeDirty**(Checks if the FullscreenMode user setting is different from current)
- **IsVSyncDirty**(Checks if the vsync user setting is different from current system setting)
- **ConfirmVideoMode**(Mark current video mode settings (fullscreenmoderesolution) as being confirmed by the user)
- **RevertVideoMode**(Revert video mode (fullscreenmoderesolution) back to the last user confirmed values)
- **SetBenchmarkFallbackValues**(Set scalability settings to sensible fallback values, for use when the benchmark fails or potentially causes a crash)
- **SetAudioQualityLevel**(int32QualityLevel) — Sets the user's audio quality level setting
- **GetAudioQualityLevel**(Returns the user's audio quality level setting)
- **SetFrameRateLimit**(floatNewLimit) — Sets the user's frame rate limit (0 will disable frame rate limiting)
- **GetFrameRateLimit**(Gets the user's frame rate limit (0 indiciates the frame rate limit is disabled))
- **SetOverallScalabilityLevel**(int32Value)
- **GetOverallScalabilityLevel**()
- **GetResolutionScaleInformation**(float& CurrentScaleNormalized, int32& CurrentScaleValue, int32& MinScaleValue, int32 &MaxScaleValue)
- **GetResolutionScaleInformationEx**(float& CurrentScaleNormalized, float& CurrentScaleValue, float& MinScaleValue, float &MaxScaleValue)
- **SetResolutionScaleValue**(int32NewScaleValue)
- **SetResolutionScaleValueEx**(floatNewScaleValue)
- **SetResolutionScaleNormalized**(floatNewScaleNormalized)
- **SetViewDistanceQuality**(int32Value)
- **GetViewDistanceQuality**()
- **SetShadowQuality**(int32Value)
- **GetShadowQuality**()
- **SetAntiAliasingQuality**(int32Value)
- **GetAntiAliasingQuality**()
- **SetTextureQuality**(int32Value)
- **GetTextureQuality**()
- **SetVisualEffectQuality**(int32Value)
- **GetVisualEffectQuality**()
- **SetPostProcessingQuality**(int32Value)
- **GetPostProcessingQuality**()
- **SetFoliageQuality**(int32Value)
- **GetFoliageQuality**()
- **IsDirty**(Checks if any user settings is different from current)
- **ValidateSettings**(Validates and resets bad user settings to default. Deletes stale user settings file if necessary.)
- **LoadSettings**(boolbForceReload) — Loads the user settings from persistent storage
- **SaveSettings**(Save the user settings to persistent storage (automatically happens as part of ApplySettings))
- **ResetToCurrentSettings**(This function resets all settings to the current system settings)
- **SetToDefaults**()
- **GetDefaultResolutionScale**(Gets the desired resolution quality based on DesiredScreenWidthHeight and the current screen resolution)
- **GetRecommendedResolutionScale**(Gets the recommended resolution quality based on LastRecommendedScreenWidthHeight and the current screen resolution)
- **IntPointGetDefaultResolution**(return -The default resolution when no resolution is set)
- **IntPointGetDefaultWindowPosition**(return -The default window position when no position is set)
- **TypeGetDefaultWindowMode**(return -The default window mode when no mode is set)
- **GetGameUserSettings**(Returns the game local machine settings (resolution, windowing mode, scalability settings, etc...))
- **RunHardwareBenchmark**(int32 WorkScale, float CPUMultiplier, floatGPUMultiplier) — Runs the hardware benchmark and populates ScalabilityQuality as well as the last benchmark results config members, but does not apply the settings it determines. Designed to be called in conjunction with ApplyHardwareBenchmarkResults
- **ApplyHardwareBenchmarkResults**(Applies the settings stored in ScalabilityQuality and saves settings)
- **SupportsHDRDisplayOutput**(Whether the curently running system supports HDR display output)
- **EnableHDRDisplayOutput**(bool bEnable, int32DisplayNits) — Enables or disables HDR display output. Can be called again to change the desired nit level
- **GetCurrentHDRDisplayNits**(Returns 0 if HDR isn't supported or is turned off)
- **IsHDREnabled**(ApplySettings ApplyNonResolutionSettings ApplyResolutionSettings GetScreenResolution GetLastConfirmedScreenResolution GetDesktopResolution SetScreenResolution GetIsBorderless SetIsBorderless GetBorderlessMode SetBorderlessMode GetFullscreenMode GetLastConfirmedFullscreenMode SetFullscreenMode GetPre)

## 属性

- **to** — use VSync or not. (public to allow UI to connect to it) Game screen resolution width, in pixels. Game screen resolution height, in pixels. Game screen resolution width, in pixels. Game screen resolution height, in pixels. Is game window borderless added by windzjliu Window PosX Window PosY Game wind

## 委托

- voidOnGameUserSettingsUINeedsUpdate()
- OnGameUserSettingsUINeedsUpdate