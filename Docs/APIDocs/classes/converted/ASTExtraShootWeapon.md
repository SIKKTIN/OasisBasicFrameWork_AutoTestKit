# ASTExtraShootWeapon

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASTExtraShootWeapon?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASTExtraShootWeapon.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraShootWeapon](https://developer.gp.qq.com/api/#/searchContent/ASTExtraShootWeapon?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASTExtraShootWeapon.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraShootWeapon)

类

全文搜索

射击武器类

---


## 委托

- voidOnShootWeaponAutoReloadDel()
- Delegate
- 生效范围C
- 自动换弹事件
- voidOnCurBulletChange()
- Delegate
- 生效范围SC
- 弹药数量变化事件。注：手动修改会触发开火消耗子弹不触发
- voidOnCurBarrelBulletChangeDelegate()
- Delegate
- 生效范围C
- 膛内弹药数量变化代理
- voidOnStartFireDelegate()
- Delegate
- 生效范围SC
- 开火事件
- voidOnStopFireDelegate()
- Delegate
- 生效范围SC
- 停火事件
- voidOnWeaponShootDelegate()
- Delegate
- 生效范围C
- 射击事件
- voidOnWeaponReloadStartDelegate()
- Delegate
- 生效范围SC
- 开始换弹事件
- voidOnWeaponReloadEndDelegage()
- Delegate
- 生效范围SC
- 结束换弹事件
- voidOnWeaponEquipDelegate()
- Delegate
- 生效范围SC
- 武器装备事件
- voidOnWeaponUnEquipDelegate()
- Delegate
- 生效范围SC
- 武器卸载事件
- voidOnLeftLastBulletWhenReloadOneByOneDelegate(int32RemainNum)
- Delegate
- 生效范围SC
- 最后一发换弹通知事件
- voidOnBulletHitDelegate(AActor*InHitActor, floatImpactPosDistanceToWeapon, APawn*Player)
- Delegate
- 生效范围S
- 射击武器命中事件
- voidOnShootIntervalModeChangeDelegate()
- Delegate
- 生效范围SC
- 改变射速模式事件（指的是改变了武器拥有的射速模式）
- voidOnChangeAmmoDelegate(FItemDefineIDAmmoDefineID)
- Delegate
- 生效范围SC
- 切换武器弹药种类事件
- voidOnClipAmmoDataChangeDelegate()
- Delegate
- 生效范围SC
- 武器弹夹内弹药数据发生变化事件
- voidOnExplosionProjectileBulletExplodeDelegate(AActor*Bullet)
- Delegate
- 生效范围SC
- 炮弹爆炸事件
- voidOnScopeIn()
- Delegate
- 生效范围C
- 开镜事件
- voidOnScopeOut()
- Delegate
- 生效范围C
- 关镜事件
- voidOnMaxBulletChange()
- Delegate
- 生效范围SC
- 最大弹药数量变化事件
- voidOnBulletPreShootDelegate(ASTExtraShootWeaponBulletBase*Bullet)
- Delegate
- 生效范围C
- 子弹射出预处理事件，带有子弹参数
- voidOnBulletBeforeShootDelegate(ASTExtraShootWeaponBulletBase*Bullet)
- Delegate
- 生效范围C
- 子弹射出事件，带有子弹参数
- voidOnBulletPostShootDelegate(ASTExtraShootWeaponBulletBase*Bullet)
- Delegate
- 生效范围C
- 子弹射出后理事件，带有子弹参数
- OnShootWeaponAutoReloadDel
- OnCurBulletChange
- OnCurBarrelBulletChangeDelegate
- OnStartFireDelegate
- OnStopFireDelegate
- OnWeaponShootDelegate
- OnWeaponReloadStartDelegate
- OnWeaponReloadEndDelegage
- OnWeaponEquipDelegate
- OnWeaponUnEquipDelegate
- OnLeftLastBulletWhenReloadOneByOneDelegate
- OnBulletHitDelegate
- OnShootIntervalModeChangeDelegate
- OnChangeAmmoDelegate
- OnClipAmmoDataChangeDelegate
- OnExplosionProjectileBulletExplodeDelegate
- OnScopeIn
- OnScopeOut
- OnMaxBulletChange
- OnBulletPreShootDelegate
- OnBulletBeforeShootDelegate
- OnBulletPostShootDelegate