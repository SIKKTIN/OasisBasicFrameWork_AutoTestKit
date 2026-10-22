# AAudioVolume

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AAudioVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAudioVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AAudioVolume](https://developer.gp.qq.com/api/#/searchContent/AAudioVolume?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAAudioVolume.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AAudioVolume)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetPriority** | floatNewPriority |  |
| void | **SetEnabled** | boolbNewEnabled |  |
| void | **SetReverbSettings** | FReverbSettings &NewReverbSettings |  |
| void | **SetInteriorSettings** | FInteriorSettings &NewInteriorSettings |  |
| void | **OnRep_bEnabled** |  | SetPriority SetEnabled SetReverbSettings SetInteriorSettings OnRep_bEnabled |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Priority | **of** | this volume. In the case of overlapping volumes the one with the highest priority is chosen. The order is undefined if two or more overlapping volumes have the same priority. whether this volume is currently enabled and able to affect sounds Reverb settings to use for this volume. Interior settings  |

