# UForceFeedbackComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UForceFeedbackComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUForceFeedbackComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UForceFeedbackComponent](https://developer.gp.qq.com/api/#/searchContent/UForceFeedbackComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUForceFeedbackComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UForceFeedbackComponent)

类

全文搜索

ForceFeedbackComponent allows placing a rumble effect in to the world and having it apply to player characters who come near it

---


## 函数

- **SetForceFeedbackEffect**(UForceFeedbackEffect *NewForceFeedbackEffect) — Set what force feedback effect is played by this component
- **Play**(floatStartTime) — Start a feedback effect playing
- **Stop**(Stop playing the feedback effect)
- **SetIntensityMultiplier**(floatNewIntensityMultiplier) — Set a new intensity multiplier
- **AdjustAttenuation**(FForceFeedbackAttenuationSettings &InAttenuationSettings) — Modify the attenuation settings of the component
- **BP_GetAttenuationSettingsToApply**(FForceFeedbackAttenuationSettings &OutAttenuationSettings) — SetForceFeedbackEffect Play Stop SetIntensityMultiplier AdjustAttenuation BP_GetAttenuationSettingsToApply

## 属性

- **feedback** — effect to be played Auto destroy this component on completion Stop effect when owner is destroyed Should the playback of the forcefeedback pattern ignore time dilation and use the app's delta time Should the Attenuation Settings asset be used (false) or should the properties set directly on the comp

## 委托

- voidOnForceFeedbackFinished(UForceFeedbackComponent*ForceFeedbackComponent)
- called when we finish playing audio, either because it played to completion or because a Stop() call turned it off early
- OnForceFeedbackFinished