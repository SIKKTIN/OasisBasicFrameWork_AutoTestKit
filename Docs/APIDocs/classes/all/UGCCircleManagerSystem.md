# UGCCircleManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCCircleManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCCircleManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCircleManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCCircleManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCCircleManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCircleManagerSystem)

类

全文搜索

信号圈系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Vector2 | **DGetBlueCircleCenter** |  | 获取当前蓝圈中心 生效范围：服务器&客户端 return -蓝圈中心 {X，Y} |
| Vector2 | **DGetWhiteCircleCenter** |  | 获取当前白圈中心 生效范围：服务器&客户端 return -白圈中心 {X，Y} |
| number | **GetBlueCircleRadius** |  | 获取当前蓝圈半径 生效范围：服务器&客户端 return -半径 |
| number | **GetWhiteCircleRadius** |  | 获取当前白圈半径 生效范围：服务器&客户端 return -半径 |
| number | **GetCurrentCircleIndex** |  | 获得当前运行到的信号圈序号 生效范围：服务器 return -信号圈序号 缩圈结束时，返回最后一个信号圈序号 |
| FCirCleCfg[] | **GetAllCircleConfig** |  | 获得所有信号圈配置 生效范围：服务器 return -所有信号圈配置 |
| F | **CirCleCfgGetCurrentConfigCircle** |  | 获取当前信号圈配置 生效范围：服务器 return -当前信号圈配置 |
| F | **CirCleCfgGetNextConfigCircle** |  | 获取下一信号圈配置 生效范围：服务器 return -下一信号圈配置 |
| boolean | **TogglePoisonCircle** |  | 开启或者关闭信号圈（关闭状态则开启，开启状态则关闭） 生效范围：服务器 return -调用后状态为开启或者关闭 |
| Start | **Circle** |  | 启用信号圈 生效范围：服务器 |
| Stop | **Circle** |  | 关闭信号圈 生效范围：服务器 |
| Pause | **Circle** |  | 暂停信号圈 生效范围：服务器 |
| Resume | **Circle** |  | 恢复暂停信号圈 生效范围：服务器 GetBlueCircleCenter GetWhiteCircleCenter GetBlueCircleRadius GetWhiteCircleRadius GetCurrentCircleIndex GetAllCircleConfig GetCurrentConfigCircle GetNextConfigCircle TogglePoisonCircle StartCircle StopCircle PauseCircle ResumeCircle |

