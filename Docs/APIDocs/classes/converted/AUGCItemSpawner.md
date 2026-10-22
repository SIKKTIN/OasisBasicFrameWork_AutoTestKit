# AUGCItemSpawner

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCItemSpawner?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCItemSpawner.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCItemSpawner](https://developer.gp.qq.com/api/#/searchContent/AUGCItemSpawner?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCItemSpawner.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCItemSpawner)

类

全文搜索

物资刷新系统：物资刷新器

---


## 函数

- **SpawnItem**(int32 ItemID, int32ItemCount) — 生效范围 服务器 刷物资 return -刷出的物资 params ItemID -物资ID params ItemCount -物资数量
- **SetItemConfig**(FUGCItemSpawnerItemConfigInItemConfig) — 生效范围 服务器 修改物资刷新配置 params InItemConfig -新的物资刷新配置
- **CleanItems**(生效范围 服务器 清除刷出的物资 return -刷出的物资 事件)
- **OnItemsSpawn**(TArray < AActor* > &Items) — 生效范围 服务器 物资刷出事件
- **OnAllItemsArePick**(生效范围 服务器 所有物资都被拾取)
- **CustomSpawnItem**(TMap < FString , FString > &CustomParam) — 生效范围 服务器 覆写该事件来自定义物资刷出流程 params CustomParam -自定义参数列表 SpawnItem SetItemConfig CleanItems 事件 OnItemsSpawn OnAllItemsArePick CustomSpawnItem