# AUniversalProjectileBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUniversalProjectileBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUniversalProjectileBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUniversalProjectileBase](https://developer.gp.qq.com/api/#/searchContent/AUniversalProjectileBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUniversalProjectileBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUniversalProjectileBase)

类

全文搜索

通用抛体

---


## 函数

- **ReceiveCustomFilter**(AActor *InActor) — 自定义的过滤器接口 生效范围：SC
- **ReceivePlayExplosionEffectToAllTarget**(TArray < FHitResult > &FoundTargets) — 自定义爆炸范围内筛选过后所有碰撞结果接口 生效范围：S
- **ReceivePlayExplosionEffect**(FHitResult &ExplosionTarget) — 自定义爆炸范围内筛选过后碰撞接口 生效范围：S
- **ReceiveBeginExplodeTimer**(爆炸开始计时的额外接口（如果有延时爆炸） 生效范围：S)
- **ReceiveEndExplodeTimer**(爆炸停止计时的额外接口（如果有延时爆炸） 生效范围：S ReceiveCustomFilter ReceivePlayExplosionEffectToAllTarget ReceivePlayExplosionEffect ReceiveBeginExplodeTimer ReceiveEndExplodeTimer)