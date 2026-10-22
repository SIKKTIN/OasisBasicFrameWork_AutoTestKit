# UGCActivitySystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCActivitySystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCActivitySystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCActivitySystem](https://developer.gp.qq.com/api/#/searchContent/UGCActivitySystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCActivitySystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCActivitySystem)

类

全文搜索

活动系统库（需要启用活动GamePart）

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| bool | **IsActivityInfoReady** |  | 活动信息是否已准备好 生效范围：客户端&&服务器 return -活动信息是否已准备好 |
| UGCActivityInfo[] | **GetAllActivityInfos** |  | 获取所有活动的信息 生效范围：客户端&&服务器 return -所有活动信息 |
| U | **GCActivityInfoGetActivityInfo** | intActivityID | 获取指定活动ID的活动信息 生效范围：客户端&&服务器 return -活动信息 params ActivityID -活动ID |
| int[] | **GetValidActivityIDs** |  | 获取所有有效的活动ID 生效范围：客户端&&服务器 |
| int | **GetNearestPeriodIndex** | intActivityID | 获取指定活动距当前时间最近的生效周期序号， 如果已经没有符合条件的开启周期，则返回最后一个生效周期的序号 生效范围：服务器&客户端 return -活动开启周期序号, 0表示永久时间，-1表示活动不存在或未开启 params ActivityID -活动ID IsActivityInfoReady GetAllActivityInfos GetActivityInfo GetValidActivityIDs GetNearestPeriodIndex |

