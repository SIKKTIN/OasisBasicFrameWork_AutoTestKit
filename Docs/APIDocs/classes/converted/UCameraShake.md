# UCameraShake

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCameraShake?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraShake.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraShake](https://developer.gp.qq.com/api/#/searchContent/UCameraShake?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraShake.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraShake)

类

全文搜索

A CameraShake is an asset that defines how to shake the camera in a particular way. CameraShakes can be authored as either oscillating shakes, animated shakes, or both. An oscillating shake will sinusoidally vibrate various camera parameters over time. Each location and rotation axis can be oscillated independently with different parameters to create complex and random-feeling shakes. These are easier to author and tweak, but can still feel mechanical and are limited to vibration-style shakes, such as earthquakes. Animated shakes play keyframed camera animations. These can take more effort to author, but enable more natural-feeling results and things like directional shakes. For instance, you can have an explosion to the camera's right push it primarily to the left.

---


## 函数

- **BlueprintUpdateCameraShake**(float DeltaTime, float Alpha, FMinimalViewInfo& POV, FMinimalViewInfo &ModifiedPOV) — Called every tick to let the shake modify the point of view
- **ReceivePlayShake**(floatScale) — Called when the shake starts playing
- **ReceiveIsFinished**(Called to allow a shake to decide when it's finished playing.)
- **ReceiveStopShake**(boolbImmediately) — Called when the shake is explicitly stopped. BlueprintUpdateCameraShake ReceivePlayShake ReceiveIsFinished ReceiveStopShake

## 属性

- **true** — to only allow a single instance of this shake class to play at any given time. Subsequent attempts to play this shake will simply restart the timer. Duration in seconds of current screen shake. Less than 0 means indefinite, 0 means no oscillation. Duration of the blend-in, where the oscillation scal
- **oscillation** — Parameters for defining CameraAnim-driven camera shakes Scalar defining how fast to play the anim. Scalar defining how "intense" to play the anim. Linear blend-in time. Linear blend-out time. When bRandomAnimSegment is true, this defines how long the anim should play. UCameraAnim *Anim Source camer