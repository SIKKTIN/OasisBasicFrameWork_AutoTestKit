# 任务相关  (前缀: T)
_共 2 个类_
---
## TaskManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/TaskManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FTaskManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=TaskManager](https://developer.gp.qq.com/api/#/searchContent/TaskManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FTaskManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=TaskManager)

类

全文搜索

UGC任务系统全局管理器

---


## 函数

- **UGCTaskLineConfigGetTaskLineConfig**(stringTaskLineName) — 获取任务线配置 生效范围：客户端&&服务端
- **UGCTaskConfigGetTaskConfig**(numberTaskID) — 获取任务配置 生效范围：客户端&&服务端
- **UGCTaskTypeGetTaskType**(numberTaskID) — 获取任务类型 生效范围：客户端&&服务端
- **GetTaskDesc**(numberTaskID) — 获取任务目标进度 生效范围：客户端&&服务端
- **GetTaskTarget**(numberTaskID) — 获取任务目标进度 生效范围：客户端&&服务端
- **TaskProgress**(FUGCTaskIndexTaskIndex, ControllerPlayerController, numberProgress, booleanIsIncremental) — 通用更新任务进度 生效范围：服务端
- **GetPercentTaskPercent**(stringTaskLineName, numberTaskID) — 获取活跃任务完成后获得的活跃度数量 生效范围：客户端&&服务端 GetTaskLineConfig GetTaskConfig GetTaskType GetTaskDesc GetTaskTarget UpdateTaskProgress GetPercentTaskPercent

## TaskPlayerComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/TaskPlayerComponent?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FTaskPlayerComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=TaskPlayerComponent](https://developer.gp.qq.com/api/#/searchContent/TaskPlayerComponent?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FTaskPlayerComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=TaskPlayerComponent)

类

全文搜索

UGC任务系统玩家组件

---


## 函数

- **PercentTaskLine**(stringTaskLineName) — 重置活跃任务线 生效范围：服务端
- **LevelTaskAward**(stringTaskLineName, numberLevelIndex, numberTaskIndex) — 领取成长任务奖励 生效范围：客户端&&服务端
- **PercentTaskAward**(stringTaskLineName, numberTaskIndex) — 领取活跃任务奖励 生效范围：客户端&&服务端
- **GetTaskLineProgress**(stringTaskLineName) — 获取任务线进度 生效范围：客户端&&服务端
- **GetLevelTaskInfoList**(stringTaskLineName) — 获取成长任务线的任务信息列表 生效范围：客户端&&服务端
- **GetPercentTaskInfoList**(stringTaskLineName) — 获取活跃任务线的任务信息列表 生效范围：客户端&&服务端
- **GetPercentTaskLineAwardStateList**(stringTaskLineName) — 获取活跃任务线的奖励状态列表 生效范围：客户端&&服务端
- **UGCTaskLineAwardStateGetTaskLineAwardState**(stringTaskLineName, numberIndex) — 获取任务线奖励状态 生效范围：客户端&&服务端
- **AllAward**(stringTaskLineName) — 领取任务线的全部奖励 生效范围：客户端&&服务端
- **TaskLineAward**(stringTaskLineName, numberIndex) — 领取任务线奖励 生效范围：客户端&&服务端
- **TaskLineProgress**(stringTaskLineName, numberProgress) — 设置任务线进度 生效范围：服务端
- **GetPercentTaskProgress**(stringTaskLineName, numberIndex) — 获取活跃任务进度 生效范围：客户端&&服务端
- **UGCTaskStateGetPercentTaskState**(stringTaskLineName, numberIndex) — 获取活跃任务状态 生效范围：客户端&&服务端
- **GetLevelTaskProgress**(stringTaskLineName, numberLevelIndex, numberTaskIndex) — 获取成长任务进度 生效范围：客户端&&服务端
- **UGCTaskStateGetLevelTaskState**(stringTaskLineName, numberLevelIndex, numberTaskIndex) — 获取成长任务状态 生效范围：客户端&&服务端
- **ManagerGetTaskManager**()
- **TaskLineTime**(stringTaskLineName, numberBeginTime, numberEndTime) — 设置任务线和任务线下所有任务的开始/结束时间 生效范围：客户端&&服务端 ResetPercentTaskLine ClaimLevelTaskAward ClaimPercentTaskAward GetTaskLineProgress GetLevelTaskInfoList GetPercentTaskInfoList GetPercentTaskLineAwardStateList GetTaskLineAwardState ClaimAllAward ClaimTaskLineAward SetTaskLineProgress GetPercentTaskProgress GetPe

## 属性

- **TaskLineName** — string @任务线名称 @param Index number @奖励索引 TaskPlayerComponent.OnTaskInfoChangeDelegate 生效范围：客户端 任务数据变更回调 @param Index UGCTaskIndex @榜单周期 TaskPlayerComponent.OnTaskLineProgressChangeDelegate 生效范围：客户端&服务端 任务线进度变更回调 @param TaskLineName string @任务线名称 TaskPlayerComponent.OnTaskLineAwardInfoChangeDelegate T

