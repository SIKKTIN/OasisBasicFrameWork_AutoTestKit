# UDamageType

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDamageType?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDamageType.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDamageType](https://developer.gp.qq.com/api/#/searchContent/UDamageType?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDamageType.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDamageType)

类

全文搜索

A DamageType is intended to define and describe a particular form of damage and to provide an avenue for customizing responses to damage from various sources. For example, a game could make a DamageType_Fire set it up to ignite the damaged actor. DamageTypes are never instanced and should be treated as immutable data holders with static code functionality. They should never be stateful.

---


## 函数

- **HasDamageTypeTags_DamageType**()
- **GetDamageTypeTags_DamageType**(TArray < FName > &OutTags) — HasDamageTypeTags_DamageType GetDamageTypeTags_DamageType

## 属性

- **if** — this damagetype is caused by the world (falling off level, into lava, etc). True to scale imparted momentum by the receiving pawn's mass for pawns using character movement When applying radial impulses, whether to treat as impulse or velocity change. The magnitude of impulse to apply to the Actors d