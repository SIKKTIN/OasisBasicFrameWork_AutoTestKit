# AUniversalProjectileCore

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUniversalProjectileCore?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUniversalProjectileCore.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUniversalProjectileCore](https://developer.gp.qq.com/api/#/searchContent/AUniversalProjectileCore?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUniversalProjectileCore.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUniversalProjectileCore)

类

全文搜索

通用抛体基类

事件

voidReceiveOnBounce(FHitResult & ImpactResult, FVector &ImpactVelocity)

弹跳时的额外接口

生效范围：SC

params ImpactVelocity

-碰撞速度

voidReceiveLaunchBullet()

发射时的额外接口

生效范围：S

voidSetTarget(APawn *TargetPawn)

修改Target的接口，能触发对应目标修改接口

生效范围：SC

voidReceiveOnProjectileDestroyed()

销毁时的额外接口

生效范围：SC

---

## 委托

- voidOnBulletHitDelegate(const FHitResult&ImpactResult)
- Delegate
- 生效范围S
- 通用抛体命中事件
- voidOnLaunchBulletDelegate()
- Delegate
- 生效范围S
- 抛体发射事件
- 事件
- ReceiveOnBounce
- ReceiveLaunchBullet
- SetTarget
- ReceiveOnProjectileDestroyed
- OnBulletHitDelegate
- OnLaunchBulletDelegate

