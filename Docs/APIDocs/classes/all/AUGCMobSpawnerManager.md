# AUGCMobSpawnerManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCMobSpawnerManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FAUGCMobSpawnerManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCMobSpawnerManager](https://developer.gp.qq.com/api/#/searchContent/AUGCMobSpawnerManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FAUGCMobSpawnerManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCMobSpawnerManager)

类

全文搜索

刷怪系统：刷怪管理器

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **StartSpawnerManager** |  | 生效范围 服务器 启动刷怪管理器 |
| void | **ResetSpawnerManager** | boolbDeleteAllMobs | 生效范围 服务器 重置刷怪管理器 params bDeleteAllMobs -是否清除所有刷出的怪物 |
| void | **CleanAllMobs** | boolbDelete | 生效范围 服务器 清理对刷出怪物的引用 params bDelete -是否清除怪物 |
| void | **PauseSpawnerManager** |  | 生效范围 服务器 暂停刷怪管理器 |
| void | **ResumeSpawnerManager** |  | 生效范围 服务器 恢复刷怪管理器 |
| AUGCMobSpawner * | **GetSpawner** | int32 WaveIndex, int32SpawnerIndex | 生效范围 服务器 获取波次中特定编号的刷怪点 return -怪物刷新点 params WaveIndex -波次编号 params SpawnerIndex -刷新点编号 |
| int32 | **GetCurrentWaveIndex** |  | 生效范围 服务器 获取当前波的波次编号 return -当前波次编号 |
| int32 | **GetWaveSpawnerNum** | int32WaveIndex | 生效范围 服务器 获取对应波次的刷新点数量 return -刷新点数量 |
| int32 | **GetWaveNum** |  | 生效范围 服务器 获取波次的数量 return -波次数量 |
| void | **SetMobConfigOverrideForSpawner** | FUGCMobSpawnerMobConfig InMobConfig, int32 WaveIndex, int32SpawnerIndex | 生效范围 服务器 修改特定波次中特定刷新点的怪物配置覆盖 params InMobConfig -新的怪物配置 params WaveIndex -波次编号 params SpawnerIndex -刷新点编号 |
| void | **SetMobConfigOverrideForWave** | FUGCMobSpawnerMobConfig InMobConfig, int32WaveIndex | 生效范围 服务器 修改特定波次中所有刷新点的怪物配置覆盖 params InMobConfig -新的怪物配置 params WaveIndex -波次编号 |
| void | **SetMobConfigOverride** | FUGCMobSpawnerMobConfigInMobConfig | 生效范围 服务器 修改所有波次的怪物配置覆盖 params InMobConfig -新的怪物配置 |
| void | **CleanAllMobConfigOverride** |  | 生效范围 服务器 清除管理器所有的怪物配置覆盖 |
| void | **JumpToWave** | int32WaveIndex | 生效范围 服务器 跳转到指定波次 事件 |
| void | **OnMobSpawn** | AActor *Mob | 生效范围 服务器 怪物刷出事件 params Mob -刷出的怪物 |
| void | **OnWaveStart** | int32WaveIndex | 生效范围 服务器 刷怪波次开始事件 params WaveIndex -波次编号 |
| void | **OnWaveEnd** | int32WaveIndex | 生效范围 服务器 刷怪波次结束事件 params WaveIndex -波次编号 |
| void | **OnAllWaveEnd** |  | 生效范围 服务器 所有波次结束事件 |
| void | **OnAllMobDie** |  | 生效范围 服务器 所以波次怪物都已刷新并死亡事件 StartSpawnerManager ResetSpawnerManager CleanAllMobs PauseSpawnerManager ResumeSpawnerManager GetSpawner GetCurrentWaveIndex GetWaveSpawnerNum GetWaveNum SetMobConfigOverrideForSpawner SetMobConfigOverrideForWave SetMobConfigOverride CleanAllMobConfigOverride JumpToWave 事件 O |

