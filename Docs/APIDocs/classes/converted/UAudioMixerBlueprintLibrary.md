# UAudioMixerBlueprintLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAudioMixerBlueprintLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAudioMixerBlueprintLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAudioMixerBlueprintLibrary](https://developer.gp.qq.com/api/#/searchContent/UAudioMixerBlueprintLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAudioMixerBlueprintLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAudioMixerBlueprintLibrary)

类

全文搜索

---


## 函数

- **AddMasterSubmixEffect**(UObject* WorldContextObject, USoundEffectSubmixPreset *SubmixEffectPreset) — Adds a submix effect preset to the master submix.
- **RemoveMasterSubmixEffect**(UObject* WorldContextObject, USoundEffectSubmixPreset *SubmixEffectPreset) — Removes a submix effect preset from the master submix.
- **ClearMasterSubmixEffects**(UObject *WorldContextObject) — Clears all master submix effects.
- **AddSourceEffectToPresetChain**(UObject* WorldContextObject, USoundEffectSourcePresetChain* PresetChain, FSourceEffectChainEntryEntry) — Adds source effect entry to preset chain. Only effects the instance of the preset chain
- **RemoveSourceEffectFromPresetChain**(UObject* WorldContextObject, USoundEffectSourcePresetChain* PresetChain, int32EntryIndex) — Adds source effect entry to preset chain. Only affects the instance of preset chain.
- **SetBypassSourceEffectChainEntry**(UObject* WorldContextObject, USoundEffectSourcePresetChain* PresetChain, int32 EntryIndex, boolbBypassed) — Set whether or not to bypass the effect at the source effect chain index.
- **GetNumberOfEntriesInSourceEffectChain**(UObject* WorldContextObject, USoundEffectSourcePresetChain *PresetChain) — Returns the number of effect chain entries in the given source effect chain. AddMasterSubmixEffect RemoveMasterSubmixEffect ClearMasterSubmixEffects AddSourceEffectToPresetChain RemoveSourceEffectFromPresetChain SetBypassSourceEffectChainEntry GetNumberOfEntriesInSourceEffectChain