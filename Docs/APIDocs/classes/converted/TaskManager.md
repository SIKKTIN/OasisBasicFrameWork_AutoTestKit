# TaskManager

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