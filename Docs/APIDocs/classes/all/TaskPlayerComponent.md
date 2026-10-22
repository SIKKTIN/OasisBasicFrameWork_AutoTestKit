# TaskPlayerComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/TaskPlayerComponent?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FTaskPlayerComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=TaskPlayerComponent](https://developer.gp.qq.com/api/#/searchContent/TaskPlayerComponent?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FTaskPlayerComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=TaskPlayerComponent)

类

全文搜索

UGC任务系统玩家组件

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Reset | **PercentTaskLine** | stringTaskLineName | 重置活跃任务线 生效范围：服务端 |
| Claim | **LevelTaskAward** | stringTaskLineName, numberLevelIndex, numberTaskIndex | 领取成长任务奖励 生效范围：客户端&&服务端 |
| Claim | **PercentTaskAward** | stringTaskLineName, numberTaskIndex | 领取活跃任务奖励 生效范围：客户端&&服务端 |
| number | **GetTaskLineProgress** | stringTaskLineName | 获取任务线进度 生效范围：客户端&&服务端 |
| FUGCLevelTaskPlayerData[] | **GetLevelTaskInfoList** | stringTaskLineName | 获取成长任务线的任务信息列表 生效范围：客户端&&服务端 |
| FUGCTaskInfo[] | **GetPercentTaskInfoList** | stringTaskLineName | 获取活跃任务线的任务信息列表 生效范围：客户端&&服务端 |
| table | **GetPercentTaskLineAwardStateList** | stringTaskLineName | 获取活跃任务线的奖励状态列表 生效范围：客户端&&服务端 |
| E | **UGCTaskLineAwardStateGetTaskLineAwardState** | stringTaskLineName, numberIndex | 获取任务线奖励状态 生效范围：客户端&&服务端 |
| Claim | **AllAward** | stringTaskLineName | 领取任务线的全部奖励 生效范围：客户端&&服务端 |
| Claim | **TaskLineAward** | stringTaskLineName, numberIndex | 领取任务线奖励 生效范围：客户端&&服务端 |
| Set | **TaskLineProgress** | stringTaskLineName, numberProgress | 设置任务线进度 生效范围：服务端 |
| number | **GetPercentTaskProgress** | stringTaskLineName, numberIndex | 获取活跃任务进度 生效范围：客户端&&服务端 |
| E | **UGCTaskStateGetPercentTaskState** | stringTaskLineName, numberIndex | 获取活跃任务状态 生效范围：客户端&&服务端 |
| number | **GetLevelTaskProgress** | stringTaskLineName, numberLevelIndex, numberTaskIndex | 获取成长任务进度 生效范围：客户端&&服务端 |
| E | **UGCTaskStateGetLevelTaskState** | stringTaskLineName, numberLevelIndex, numberTaskIndex | 获取成长任务状态 生效范围：客户端&&服务端 |
| Task | **ManagerGetTaskManager** |  |  |
| Set | **TaskLineTime** | stringTaskLineName, numberBeginTime, numberEndTime | 设置任务线和任务线下所有任务的开始/结束时间 生效范围：客户端&&服务端 ResetPercentTaskLine ClaimLevelTaskAward ClaimPercentTaskAward GetTaskLineProgress GetLevelTaskInfoList GetPercentTaskInfoList GetPercentTaskLineAwardStateList GetTaskLineAwardState ClaimAllAward ClaimTaskLineAward SetTaskLineProgress GetPercentTaskProgress GetPe |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| @param | **TaskLineName** | string @任务线名称 @param Index number @奖励索引 TaskPlayerComponent.OnTaskInfoChangeDelegate 生效范围：客户端 任务数据变更回调 @param Index UGCTaskIndex @榜单周期 TaskPlayerComponent.OnTaskLineProgressChangeDelegate 生效范围：客户端&服务端 任务线进度变更回调 @param TaskLineName string @任务线名称 TaskPlayerComponent.OnTaskLineAwardInfoChangeDelegate T |

