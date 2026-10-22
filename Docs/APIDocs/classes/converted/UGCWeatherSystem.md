# UGCWeatherSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCWeatherSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9C%BA%E6%99%AF%E4%B8%8E%E7%8E%AF%E5%A2%83%2FUGCWeatherSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCWeatherSystem](https://developer.gp.qq.com/api/#/searchContent/UGCWeatherSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9C%BA%E6%99%AF%E4%B8%8E%E7%8E%AF%E5%A2%83%2FUGCWeatherSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCWeatherSystem)

类

全文搜索

天气系统接口库

---


## 函数

- **WeatherSequence**(PlayerControllerPlayerController, WeatherSequenceWeatherSequence, numberBlendTime) — 加载天气序列 生效范围：服务器 params PlayerController -玩家控制器 params WeatherSequence -天气序列资源 params BlendTime -过渡时间
- **WeatherSequence**(PlayerControllerPlayerController, WeatherSequenceWeatherSequence) — 卸载天气序列 生效范围：服务器 params PlayerController -玩家控制器 params WeatherSequence -天气序列资源
- **WeatherSequence**(PlayerControllerPlayerController, WeatherSequenceWeatherSequence, numberTime) — 设置天气序列播放进度 生效范围：服务器&客户端 params PlayerController -玩家控制器 params WeatherSequence -天气序列资源 params Time -目标时间
- **WeatherSequence**(PlayerControllerPlayerController, WeatherSequenceWeatherSequence) — 暂停天气序列 生效范围：服务器&客户端 params PlayerController -玩家控制器 params WeatherSequence -天气序列资源
- **WeatherSequence**(PlayerControllerPlayerController, WeatherSequenceWeatherSequence) — 继续天气序列 生效范围：服务器&客户端 params PlayerController -玩家控制器 params WeatherSequence -天气序列资源
- **SequenceGetCurrentWeatherSequence**(PlayerControllerPlayerController) — 获取当前天气序列 生效范围：服务器&客户端 return -天气序列资源 params PlayerController -玩家控制器
- **GetCurrentWeatherPlayPercentage**(PlayerControllerPlayerController) — 获取当前天气播放进度 生效范围：服务器&客户端 return -播放进度（0~1） params PlayerController -玩家控制器
- **GetCurrentWeatherTime**(PlayerControllerPlayerController) — 获取当前天气时间 生效范围：服务器&客户端 return -天气时间（0~24） params PlayerController -玩家控制器 LoadWeatherSequence UnloadWeatherSequence SeekWeatherSequence PauseWeatherSequence ResumeWeatherSequence GetCurrentWeatherSequence GetCurrentWeatherPlayPercentage GetCurrentWeatherTime