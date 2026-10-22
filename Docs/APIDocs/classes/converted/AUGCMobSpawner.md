# AUGCMobSpawner

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCMobSpawner?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCMobSpawner.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCMobSpawner](https://developer.gp.qq.com/api/#/searchContent/AUGCMobSpawner?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCMobSpawner.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCMobSpawner)

类

全文搜索

刷怪系统：刷怪器

---


## 函数

- **SpawnMob**(UClass *MobClass) — 生效范围 服务器 刷出指定怪物 params MobClass -怪物的类
- **SetMobConfig**(FUGCMobSpawnerMobConfigInMobConfig) — 生效范围 服务器 修改怪物刷新配置 params InMobConfig -修改后的刷新配置
- **ModifyMinMaxSpawnCount**(int32 InMinSpawnCount, int32InMaxSpawnCount) — 生效范围 服务器 修改最小最大刷怪数量 params InMinSpawnCount -修改后的最小刷怪数量 params InMaxSpawnCount -修改后的最大刷怪数量 事件
- **OnMobSpawn**(AActor *Mob) — 生效范围 服务器 怪物刷出事件 params Mob -输出的怪物
- **CustomSpawnMob**(TMap < FString , FString > &CustomParam) — 生效范围 服务器 覆写该事件可实现自定义怪物刷出流程 params CustomParam -自定义参数列表 SpawnMob SetMobConfig ModifyMinMaxSpawnCount 事件 OnMobSpawn CustomSpawnMob