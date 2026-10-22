# AUGCItemSpawnerManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCItemSpawnerManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FAUGCItemSpawnerManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCItemSpawnerManager](https://developer.gp.qq.com/api/#/searchContent/AUGCItemSpawnerManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FAUGCItemSpawnerManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCItemSpawnerManager)

类

全文搜索

生成系统：物资生成管理器

---


## 函数

- **StartSpawnerManager**(生效范围 服务器 启动管理器)
- **ResetSpawnerManager**(生效范围 服务器 重置管理器)
- **CleanAllItem**(生效范围 服务器 清理刷出的物资)
- **PauseSpawnerManager**(生效范围 服务器 暂停物资刷新管理器)
- **ResumeSpawnerManager**(生效范围 服务器 恢复物资刷新管理器)
- **SetItemConfigOverrideForSpawner**(FUGCItemSpawnerItemConfig InItemConfig, int32SpawnerIndex) — 生效范围 服务器 修改特定刷新点的物资配置 params InItemConfig -新的物资刷新配置
- **SetItemConfigOverride**(FUGCItemSpawnerItemConfigInItemConfig) — 生效范围 服务器 修改所有刷新点的物资配置 params InItemConfig -新的物资刷新配置
- **CleanAllItemConfigOverride**(生效范围 服务器 清除刷新点的物资配置设置，调用后将使用刷新点本身的配置 事件)
- **OnItemsSpawn**(TArray < AActor* > &Items) — 生效范围 服务器 物品刷新 params Items -本轮刷新的物品 StartSpawnerManager ResetSpawnerManager CleanAllItem PauseSpawnerManager ResumeSpawnerManager SetItemConfigOverrideForSpawner SetItemConfigOverride CleanAllItemConfigOverride 事件 OnItemsSpawn