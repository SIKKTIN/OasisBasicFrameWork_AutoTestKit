# UInterpData

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UInterpData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpData](https://developer.gp.qq.com/api/#/searchContent/UInterpData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUInterpData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UInterpData)

类

全文搜索

Interpolation data, containing keyframe tracks, event tracks etc. This does not contain any AActor references or state, so can safely be stored in packages, shared between multiple MatineeActors etc.

---


## 属性

- **of** — interpolation sequence - in seconds. Position in Interp to move things to for path-building in editor. Actual interpolation data. Groups of InterpTracks. UInterpCurveEdSetup *CurveEdSetup Used for curve editor to remember curve-editing setup. Only loaded in editor. Used in editor for defining sectio