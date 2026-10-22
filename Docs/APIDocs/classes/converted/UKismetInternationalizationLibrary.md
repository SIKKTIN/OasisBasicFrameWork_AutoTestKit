# UKismetInternationalizationLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetInternationalizationLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetInternationalizationLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetInternationalizationLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetInternationalizationLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetInternationalizationLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetInternationalizationLibrary)

类

全文搜索

---


## 函数

- **SetCurrentCulture**(FString& Culture, boolSaveToConfig) — Set the current culture. return -True if the culture was set, false otherwise. params Culture -The culture to set, as an IETF language tag (eg, "zh-Hans-CN"). params SaveToConfig -If true, save the new setting to the users' "GameUserSettings" config so that it persists after a reload.
- **StringGetCurrentCulture**(Get the current culture as an IETF language tag: - A two-letter ISO 639-1 language code (eg, "zh"). - An optional four-letter ISO 15924 script code (eg, "Hans"). - An optional two-letter ISO 3166-1 country code (eg, "CN"). return -The culture as an IETF language tag (eg, "zh-Hans-CN").)
- **SetCurrentLanguage**(FString& Culture, boolSaveToConfig) — Set only the current language (for localization). return -True if the language was set, false otherwise. params Culture -The language to set, as an IETF language tag (eg, "zh-Hans-CN"). params SaveToConfig -If true, save the new setting to the users' "GameUserSettings" config so that it persists aft
- **StringGetCurrentLanguage**(Get the current language (for localization) as an IETF language tag: - A two-letter ISO 639-1 language code (eg, "zh"). - An optional four-letter ISO 15924 script code (eg, "Hans"). - An optional two-letter ISO 3166-1 country code (eg, "CN"). return -The language as an IETF language tag (eg, "zh-Han)
- **SetCurrentLocale**(FString& Culture, boolSaveToConfig) — Set only the current locale (for internationalization). return -True if the locale was set, false otherwise. params Culture -The locale to set, as an IETF language tag (eg, "zh-Hans-CN"). params SaveToConfig -If true, save the new setting to the users' "GameUserSettings" config so that it persists a
- **StringGetCurrentLocale**(Get the current locale (for internationalization) as an IETF language tag: - A two-letter ISO 639-1 language code (eg, "zh"). - An optional four-letter ISO 15924 script code (eg, "Hans"). - An optional two-letter ISO 3166-1 country code (eg, "CN"). return -The locale as an IETF language tag (eg, "zh)
- **SetCurrentLanguageAndLocale**(FString& Culture, boolSaveToConfig) — Set the current language (for localization) and locale (for internationalization). return -True if the language and locale were set, false otherwise. params Culture -The language and locale to set, as an IETF language tag (eg, "zh-Hans-CN"). params SaveToConfig -If true, save the new setting to the
- **SetCurrentAssetGroupCulture**(FName AssetGroup, FString& Culture, boolSaveToConfig) — Set the given asset group category culture from an IETF language tag (eg, "zh-Hans-CN"). return -True if the culture was set, false otherwise. params AssetGroup -The asset group to set the culture for. params Culture -The culture to set, as an IETF language tag (eg, "zh-Hans-CN"). params SaveToConfi
- **StringGetCurrentAssetGroupCulture**(FNameAssetGroup) — Get the given asset group category culture. return -The culture as an IETF language tag (eg, "zh-Hans-CN"). params AssetGroup -The asset group to get the culture for.
- **ClearCurrentAssetGroupCulture**(FName AssetGroup, boolSaveToConfig) — Clear the given asset group category culture. params AssetGroup -The asset group to clear the culture for. params SaveToConfig -If true, save the new setting to the users' "GameUserSettings" config so that it persists after a reload. SetCurrentCulture GetCurrentCulture SetCurrentLanguage GetCurrentL