# UWindDirectionalSourceComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWindDirectionalSourceComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWindDirectionalSourceComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWindDirectionalSourceComponent](https://developer.gp.qq.com/api/#/searchContent/UWindDirectionalSourceComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWindDirectionalSourceComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWindDirectionalSourceComponent)

类

全文搜索

Component that provides a directional wind source. Only affects SpeedTree assets.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetStrength** | floatInNewStrength | Because the actual data used to query wind is stored on the render thread in an instance of FWindSourceSceneProxy all of our properties are read only. The data can be manipulated with the following functions which will queue a render thread update for this component Sets the strength of the generate |
| void | **SetSpeed** | floatInNewSpeed | Sets the windspeed of the generated wind |
| void | **SetMinimumGustAmount** | floatInNewMinGust | Set minimum deviation for wind gusts |
| void | **SetMaximumGustAmount** | floatInNewMaxGust | Set maximum deviation for wind gusts |
| void | **SetRadius** | floatInNewRadius | Set the effect radius for point wind |
| void | **SetWindType** | EWindSourceTypeInNewType | Set the type of wind generator to use SetStrength SetSpeed SetMinimumGustAmount SetMaximumGustAmount SetRadius SetWindType |

