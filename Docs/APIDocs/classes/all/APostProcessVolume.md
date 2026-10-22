# APostProcessVolume

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APostProcessVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPostProcessVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APostProcessVolume](https://developer.gp.qq.com/api/#/searchContent/APostProcessVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPostProcessVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APostProcessVolume)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| ENGINE_API void | **AddOrUpdateBlendable** | TScriptInterface < IBlendableInterface > InBlendableObject, floatInWeight | Adds an Blendable (implements IBlendableInterface) to the array of Blendables (if it doesn't exist) and update the weight AddOrUpdateBlendable |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Post | **process** | settings to use for this volume. Priority of this volume. In the case of overlapping volumes the one with the highest priority overrides the lower priority ones. The order is undefined if two or more overlapping volumes have the same priority. World space radius around the volume that is used for bl |

