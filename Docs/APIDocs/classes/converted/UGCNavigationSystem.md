# UGCNavigationSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCNavigationSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCNavigationSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCNavigationSystem](https://developer.gp.qq.com/api/#/searchContent/UGCNavigationSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCNavigationSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCNavigationSystem)

类

全文搜索

寻路导航系统接口库

---


## 函数

- **Navmesh**(UObjectWorldContext, FNameAgentName) — 同步生成全地图寻路图, 会阻塞服务器运行 生效范围：服务器 params WorldContext -当前世界上下文 params AgentName -作用Agent的寻路图名称一般为"Mannequin"
- **BuildNavmesh**(UObjectWorldContext, FNameAgentName) — 异步生成全地图寻路图 生效范围：服务器 params WorldContext -当前世界上下文 params AgentName -作用Agent的寻路图名称一般为"Mannequin"
- **AddDynamicNavAffect**(UObjectWorldContext, FNameAgentName, FBoxInBounds) — 添加寻路图动态影响区域，标记后可只针对该区域增量更新寻路 生效范围：服务器 return -操作结果 params WorldContext -当前世界上下文 params AgentName -作用Agent的寻路图名称一般为"Mannequin" params InBounds -区域大小
- **AsyncIncrementalBuild**(UObjectWorldContext, FNameAgentName) — 区域异步增量生成寻路图，和AddDynamicNavAffect配合使用 生效范围：服务器 return -操作结果 params WorldContext -当前世界上下文 params AgentName -作用Agent的寻路图名称一般为"Mannequin"
- **FVectorProjectPointToNavigation**(UObjectWorldContext, FVectorPoint, FVectorQueryExtent) — 投影点到寻路图上的位置 生效范围：服务器 return -操作结果, @投影位置 params WorldContext -当前世界上下文 params Point -要投影的点 params QueryExtent -投影查询范围
- **FVectorGetRandomReachablePointInRadius**(UObjectWorldContext, FVectorOrigin, floatRadius) — 范围获取随机可寻路到达点位 生效范围：服务器 return -操作结果， @可达位置 params WorldContext -当前世界上下文 params Origin -查找原点 params Radius -查询范围
- **IsNavigationBeingBuilt**(UObjectWorldContext) — 寻路图是否构建 生效范围：服务器 return -查询结果 params WorldContext -当前世界上下文
- **GetNavigationGenerationFinishedDelegate**(UObjectWorldContext) — 获取寻路图生成结束Delegate 生效范围：服务器 return -寻路图生成结束Delegate params WorldContext -当前世界上下文 BuildNavmesh AsyncBuildNavmesh AddDynamicNavAffect AsyncIncrementalBuild ProjectPointToNavigation GetRandomReachablePointInRadius IsNavigationBeingBuilt GetNavigationGenerationFinishedDelegate