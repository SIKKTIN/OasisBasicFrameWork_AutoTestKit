# UGCSoundManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCSoundManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCSoundManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSoundManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCSoundManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCSoundManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSoundManagerSystem)

类

全文搜索

语音系统接口库

---


## 函数

- **PlaySound2D**(UAkAudioEventAKEvent) — 播放 2D 音效 生效范围：客户端 return - 音效 ID params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取）
- **PlaySoundAtLocation**(UAkAudioEventAKEvent, VectorLocation, RotatorOrientation) — 在指定位置播放音效 生效范围：客户端 return - 音效 ID params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取），需要导入音效时选 3D params Location -位置 params Orientation -旋转 可使用 Rotator.New(Roll,Pitch,Yaw) 创建,结构 {Roll=Roll, Pitch=Pitch, Yaw=Yaw}
- **PlaySoundAttachActor**(UAkAudioEventAKEvent, ActorAttachedActor, booleanStopWhenAttachedToDestroyed) — 依附于 Actor 播放音效 生效范围：客户端 return - 音效 ID params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取） params AttachedActor -依附的 Actor params StopWhenAttachedToDestroyed -依附的 Actor 销毁时是否停止音效播放
- **AllSound**(停止全部音效 生效范围：客户端)
- **SoundByActor**(ActorActor) — 停止指定 Actor 上的所有音效 生效范围：客户端 params Actor -指定的Actor
- **SoundByID**(numberID) — 停止指定 ID 的音效 生效范围：客户端 params ID -音效 ID
- **PlaySoundWithVolumePitch**(UAkAudioEventAKEvent, ActorAttachedActor, numberVolume, numberPitch, booleanStopWhenAttachedToDestroyed) — 在以指定音量音高的方式播放音效，如果播放的是同一个音效，必须在上次播放完成再开始下一个播放，音效资源必须在最新的UGC编辑器上制作生成的 生效范围：客户端 return - 音效 ID params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取） params AttachedActor -依附的 Actor params Volume -范围为-12到12的值 如果不想调整该参数就传一个范围以外的值 params Pitch -范围为-2400到2400的值 如果不想调整该参数就传一个范围以外的值 params StopWhenAttachedTo
- **SoundWithRange**(UAkAudioEventAKEvent, ActorAttachedActor, numberStartTime, numberEndTime, numberID) — 播放指定时间范围的音频 生效范围：客户端 params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取） params AttachedActor -依附的 Actor params StartTime -开始时间 params EndTime -结束时间 params ID -音效 ID
- **SoundWithLoop**(UAkAudioEventAKEvent, ActorAttachedActor) — 播放循环音频 生效范围：客户端 params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取） params AttachedActor -依附的 Actor
- **SoundWith2D**(UAkAudioEventAKEvent, ActorAttachedActor) — 播放2D音频 生效范围：客户端 params AKEvent -音效资源（通过 UE.LoadObject(SoundPath) 获取） params AttachedActor -依附的 Actor PlaySound2D PlaySoundAtLocation PlaySoundAttachActor StopAllSound StopSoundByActor StopSoundByID PlaySoundWithVolumePitch PlaySoundWithRange PlaySoundWithLoop PlaySoundWith2D