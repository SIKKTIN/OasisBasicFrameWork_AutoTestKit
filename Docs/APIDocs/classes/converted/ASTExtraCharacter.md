# ASTExtraCharacter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASTExtraCharacter?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%A7%92%E8%89%B2%E7%B1%BB%EF%BC%88Pawn%EF%BC%89%2FASTExtraCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraCharacter](https://developer.gp.qq.com/api/#/searchContent/ASTExtraCharacter?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%A7%92%E8%89%B2%E7%B1%BB%EF%BC%88Pawn%EF%BC%89%2FASTExtraCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraCharacter)

类

全文搜索

角色类

事件

int32UGC_GetDamageNumberConfigIndex(float Damage, bool bHeadShot, AController * EventInstigator, AActor * DamageCauser, int32DamageTypeID)

获取伤害数字配置索引

生效范围C

params Damage

-伤害数值

params bHeadShot

-是否爆头

params EventInstigator

-伤害来源Controller

params DamageCauser

-伤害来源物体

params DamageTypeID

-伤害类型

floatUGC_PreTakeDamageEvent(float Damage, AController * EventInstigator, FDamageEvent DamageEvent, AActor *DamageCauser)

受到伤害前，返回值可以修改伤害值

生效范围S

return

-修改后伤害值

params Damage

-当前伤害值，

params DamageEvent

-伤害类型

params DamageCauser

-把该角色淘汰的玩家

---


## 委托

- voidUGC_OnHPChangedDelegate(floatHP, floatHPChanged)
- Delegate
- 生效范围SC
- 怪物血量变化
- params HP
- -当前血量
- params HPChanged
- -血量变化值
- voidUGC_OnTakeDamageDelegate(floatDamage, AController*EventInstigator, FDamageEventDamageEvent, AActor*DamageCauser)
- Delegate
- 生效范围S
- 受到伤害后
- params Damage
- -当前伤害值，
- params DamageEvent
- -伤害类型
- params DamageCauser
- -把该角色淘汰的玩家
- 事件
- UGC_GetDamageNumberConfigIndex
- UGC_PreTakeDamageEvent
- UGC_OnHPChangedDelegate
- UGC_OnTakeDamageDelegate