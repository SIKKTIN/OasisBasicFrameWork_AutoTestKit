# UGCGameSettingSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGameSettingSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCGameSettingSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameSettingSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGameSettingSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCGameSettingSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameSettingSystem)

类

全文搜索

游戏配置通用接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| number | **GetDeviceLevel** |  | 获取设备水平（0=低端机，1=中端机，2=高端机） 生效范围：客户端 return -设备水平级别 |
| E | **RenderQualityGetRenderQualitySetting** |  | 获取渲染水平设置（画面品质） 生效范围：客户端 return -渲染水平枚举值 |
| E | **RenderStyleGetRenderStyleSetting** |  | 获取渲染风格设置（画面风格） 生效范围：客户端 return -渲染风格枚举值 |
| Allow | **SoftwareOcclusion** | booleanbEnabled | 是否开启软件遮挡剔除（默认开启）。2D 类游戏建议关闭，否则在手机上层次相近（接近重叠）的物体处，可能会出现（黑屏）闪烁 生效范围：客户端 params bEnabled -是否开启 GetDeviceLevel GetRenderQualitySetting GetRenderStyleSetting AllowSoftwareOcclusion |

