ASTExtraCharacter
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
委托
voidUGC_OnHPChangedDelegate(floatHP, floatHPChanged)
Delegate
生效范围SC
怪物血量变化
params HP 
-当前血量
params HPChanged 
-血量变化值
voidUGC_OnTakeDamageDelegate(floatDamage, AController*EventInstigator, FDamageEventDamageEvent, AActor*DamageCauser)
Delegate
生效范围S
受到伤害后
params Damage 
-当前伤害值，
params DamageEvent 
-伤害类型
params DamageCauser 
-把该角色淘汰的玩家