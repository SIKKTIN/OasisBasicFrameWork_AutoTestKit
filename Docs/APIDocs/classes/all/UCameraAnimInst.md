# UCameraAnimInst

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCameraAnimInst?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraAnimInst.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraAnimInst](https://developer.gp.qq.com/api/#/searchContent/UCameraAnimInst?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCameraAnimInst.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCameraAnimInst)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetCurrentTime** | floatNewTime | Jumps he camera anim to the given (unscaled) time. |
| void | **Stop** | boolbImmediate | Stops this instance playing whatever animation it is playing. |
| void | **SetDuration** | floatNewDuration | Changes the running duration of this active anim, while maintaining playback position. |
| void | **SetScale** | floatNewDuration | Changes the scale of the animation while playing. SetCurrentTime Stop SetDuration SetScale |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| which | **CameraAnim** | this is an instance of UInterpGroupInst *InterpGroupInst the UInterpGroupInst used to do the interpolation Multiplier for playback rate. 1.0 = normal. UInterpTrackMove *MoveTrack cached movement track from the currently playing anim so we don't have to go find it every frame UInterpTrackInstMove *Mo |

