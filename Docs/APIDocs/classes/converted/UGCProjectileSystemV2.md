# UGCProjectileSystemV2

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCProjectileSystemV2?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCProjectileSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCProjectileSystemV2](https://developer.gp.qq.com/api/#/searchContent/UGCProjectileSystemV2?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCProjectileSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCProjectileSystemV2)

类

全文搜索

技能抛体系统接口库

---


## 函数

- **PESkillProjectileBaseCreateProjectile**(UClassProjectileClass, AActorOwner, FVectorLocation, FVectorDirection, numberSpeed, numberGravityScale, numberDamageValue, FRestrictedDamageTypeDataDamageType) — 发射技能抛体 生效范围：服务器 return -抛体实例 params ProjectileClass -抛体类型 params Owner -新生成抛体的所属对象 params Location -生成坐标 params Direction -初始方向 params Speed -初始速度 params GravityScale -初始重力系数 params DamageValue -抛体的伤害值 params DamageType -抛体的伤害类型
- **PESkillProjectileBaseCreateProjectileSimple**(UClassProjectileClass, AActorOwner, FVectorLocation, FVectorDirection, numberSpeed, numberGravityScale, numberTarget) — 发射技能抛体（不传递伤害） 生效范围：服务器 return -抛体实例 params ProjectileClass -抛体类型 params Owner -新生成抛体的所属对象 params Location -生成坐标 params Direction -初始方向 params Speed -初始速度 params GravityScale -初始重力系数 params Target -抛体的伤害值
- **Direction**(APESkillProjectileBaseProjectile, FVectorNewDirection) — 设置抛体速度方向 生效范围：服务器 params Projectile -抛体实例 params NewDirection -新方向
- **Speed**(APESkillProjectileBaseProjectile, numberNewSpeed) — 设置抛体速度大小 生效范围：服务器 params Projectile -抛体实例 params NewSpeed -新速度
- **GravityScale**(APESkillProjectileBaseProjectile, numberNewGravityScale) — 设置抛体重力系数 生效范围：服务器 params Projectile -抛体实例 params NewGravityScale -新重力系数
- **Damage**(APESkillProjectileBaseProjectile, numberNewDamage) — 设置抛体伤害，会覆盖所有的伤害值，伤害方式会调整为常量 生效范围：服务器 params Projectile -抛体实例 params NewDamage -伤害值
- **Target**(APESkillProjectileBaseProjectile, APawnNewTarget) — 设置抛体目标 生效范围：服务器 params Projectile -抛体实例 params NewTarget -新的目标单位
- **ProjectileMovementComponentGetProjectileMovementComponent**(APESkillProjectileBaseProjectile) — 获取抛体移动组件 生效范围：服务器 return -抛体组件类 params Projectile -抛体实例
- **VectorGetDirection**(APESkillProjectileBaseProjectile) — 获取抛体速度方向 生效范围：服务器 return -当前速度方向 params Projectile -抛体实例
- **GetSpeed**(APESkillProjectileBaseProjectile) — 获取抛体速度大小 生效范围：服务器 return -新速度 params Projectile -抛体实例
- **GetGravityScale**(APESkillProjectileBaseProjectile) — 获取抛体重力系数 生效范围：服务器 return -新重力系数 params Projectile -抛体实例
- **PawnGetTarget**(APESkillProjectileBaseProjectile) — 获取抛体目标 生效范围：服务器 return -新的目标单位 params Projectile -抛体实例
- **GetProjectileListByGroupKey**(APESkillProjectileBaseTargetActor, stringGroupKey) — 获取抛体组中的抛体 生效范围：服务器 return -抛体组中的抛体 params TargetActor -发射抛体的角色 params GroupKey -抛体组Key CreateProjectile CreateProjectileSimple SetDirection SetSpeed SetGravityScale SetDamage SetTarget GetProjectileMovementComponent GetDirection GetSpeed GetGravityScale GetTarget GetProjectileListByGroupKey