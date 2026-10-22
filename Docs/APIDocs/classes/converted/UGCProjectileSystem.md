# UGCProjectileSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCProjectileSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCProjectileSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCProjectileSystem](https://developer.gp.qq.com/api/#/searchContent/UGCProjectileSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCProjectileSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCProjectileSystem)

类

全文搜索

抛体系统接口库

---


## 函数

- **PVEProjectileBaseSpawnProjectile**(ProjectileSpawnInfoProjectileSpawnInfo) — 生成抛体 生效范围：服务器 return -抛体对象实例 params ProjectileSpawnInfo -抛体生成参数
- **GetDestroyAfterHit**(APVEProjectileBaseProjectile) — 获取抛体命中之后是否销毁 生效范围：服务器&客户端 return -是否命中后销毁 params Projectile -抛体
- **DestroyAfterHit**(APVEProjectileBaseProjectile, booleanbNewDestroyAfterHit) — 设置抛体命中之后是否销毁 生效范围：服务器 params Projectile -抛体 params bNewDestroyAfterHit -是否销毁
- **GetPMComp**(APVEProjectileBaseProjectile) — 获取抛体运动组件 生效范围：服务器&客户端 return -抛体运动组件 params Projectile -抛体
- **MoveAfterImpactWithNoLost**(APVEProjectileBaseProjectile, booleanbNeedUpdateImmide) — 设置抛体命中之后是否继续移动 生效范围：服务器 params Projectile -抛体 params bNeedUpdateImmide -是否更新组件速度
- **GetLastUpdateCompBeforeStop**(APVEProjectileBaseProjectile) — 停止前最后更新的组件 生效范围：服务器&客户端 return -最后更新的组件 params Projectile -抛体 SpawnProjectile GetDestroyAfterHit SetDestroyAfterHit GetPMComp SetMoveAfterImpactWithNoLost GetLastUpdateCompBeforeStop