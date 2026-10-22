# AEliteProjectile

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AEliteProjectile?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEliteProjectile.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEliteProjectile](https://developer.gp.qq.com/api/#/searchContent/AEliteProjectile?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEliteProjectile.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEliteProjectile)

类

全文搜索

投掷物

---


## 函数

- **AddOnProjectileDestroyedHandler**(FSimpleProjectileDelegateInDelegate) — 生效范围SC 添加销毁事件
- **RemoveOnProjectileDestroyedHandler**(FSimpleProjectileDelegateInDelegate) — 生效范围SC 移除销毁事件
- **ReceiveProjectileExplodedEvent**(FHitResult &Impact) — 生效范围SC 爆炸事件
- **ReceiveProjectileHit**(FHitResult &Hit) — 生效范围SC 击中事件
- **ReceiveProjectileBouncedEvent**(FHitResult& ImpactResult, FVector &ImpactVelocity) — 生效范围SC 弹射事件
- **ReceiveProjectileStoppedEvent**(FHitResult &HitResult) — 生效范围SC 停止事件 AddOnProjectileDestroyedHandler RemoveOnProjectileDestroyedHandler ReceiveProjectileExplodedEvent ReceiveProjectileHit ReceiveProjectileBouncedEvent ReceiveProjectileStoppedEvent