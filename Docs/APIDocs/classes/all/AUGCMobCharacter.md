# AUGCMobCharacter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCMobCharacter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCMobCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCMobCharacter](https://developer.gp.qq.com/api/#/searchContent/AUGCMobCharacter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCMobCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCMobCharacter)

类

全文搜索

怪物角色类

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| bool | **IsAlive** |  | 是否存活 |
| FORCEINLINE int | **IsInvincible** |  | 是否无敌 |
| void | **ForceDie** |  | 生效范围 服务器 强制杀死怪物 |
| float | **GetCurrentSpeed** |  | 生效范围 服务器&客户端 获取当前速度值 return -float 当前速度值 |
| F | **VectorGetVelocity** |  | 生效范围 服务器&客户端 获取当前速度向量 return -FVector 当前速度向量 事件 |
| void | **PreTakeDamageEvent** | AActor * DamageCauser, AController * EventInstigator, float Damage, FGameMagnitudeContext &DamageContext | 生效范围 服务器 小怪即将受到伤害前事件 params DamageCauser -伤害来源 params EventInstigator -伤害来源的Controller params DamageContext -伤害事件上下文 |
| void | **PostTakeDamageEvent** | AActor * DamageCauser, AController * EventInstigator, float Damage, FGameMagnitudeContext &DamageContext | 生效范围 服务器 受到伤害后事件 params DamageCauser -伤害来源 params EventInstigator -伤害来源的Controller params DamageContext -伤害事件上下文 |
| float | **PreOverrideDamageValue** | float Damage, int32 DamageType, AController * EventInstigator, AActor * DamageCauser, FHitResult &Hit | 生效范围 服务器 伤害值覆盖事件,在全局伤害公式前 return - 覆盖后的伤害值 params DamageType -伤害类型 params EventInstigator -伤害来源的Controller params DamageCauser -伤害来源 params Hit -命中信息 |
| float | **PostOverrideDamageValue** | float Damage, int32 DamageType, AController * EventInstigator, AActor * DamageCauser, FHitResult &Hit | 生效范围 服务器 伤害值覆盖事件,在全局伤害公式后 return - 覆盖后的伤害值 params DamageType -伤害类型 params EventInstigator -伤害来源的Controller params DamageCauser -伤害来源 params Hit -命中信息 |
| void | **MobPawnDeadEvent** | AController * Killer, AActor * DamageCauser, EDamageType :: DamageTypeKillingHitDamageType | 生效范围 服务器&客户端 怪物死亡事件 params Killer -把该小怪杀死的角色的Controller params DamageCauser -杀死该小怪的角色 params KillingHitDamageType -最后一击的伤害类型 |
| void | **StateChangeEvent** | EUGCMobState OldState, EUGCMobStateNewState | 生效范围 服务器&客户端 状态变化事件 params OldState -变化前状态 params NewState -变化后状态 IsAlive IsInvincible ForceDie GetCurrentSpeed GetVelocity 事件 PreTakeDamageEvent PostTakeDamageEvent PreOverrideDamageValue PostOverrideDamageValue MobPawnDeadEvent StateChangeEvent |

