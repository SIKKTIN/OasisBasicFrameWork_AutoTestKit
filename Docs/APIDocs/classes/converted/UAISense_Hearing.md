# UAISense_Hearing

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAISense_Hearing?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense_Hearing.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense_Hearing](https://developer.gp.qq.com/api/#/searchContent/UAISense_Hearing?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense_Hearing.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense_Hearing)

类

全文搜索

---


## 函数

- **ReportNoiseEvent**(UObject* WorldContextObject, FVector NoiseLocation, float Loudness, AActor* Instigator, float MaxRange, FNameTag) — Report a noise event. params NoiseLocation -Location of the noise. params Loudness -Loudness of the noise. If MaxRange is non-zero, modifies MaxRange, otherwise modifies the squared distance of the sensor's range. params Instigator -Actor that triggered the noise. params MaxRange -Max range at which

## 属性

- **to** — 0 to have instant notification. Setting to > 0 will result in delaying when AI hears the sound based on the distance from the source NoiseEvents SpeedOfSoundSq