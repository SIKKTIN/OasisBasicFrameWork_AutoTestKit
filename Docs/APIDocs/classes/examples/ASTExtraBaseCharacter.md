ASTExtraBaseCharacter
主角类（PlayerPawn）
函数
voidDSTeleportToLocationOrRotation(FVector location, FRotator rotation, bool setLoc, bool setRot, bool ResetVelocity, boolbRecordTeleportInfo)
生效范围：服务器
传送主角，只有服务器上调用生效，客户端调用无效
params location 
-位置
params rotation 
-旋转
params setLoc 
-是否修改位置
params setRot 
-是否修改旋转
params ResetVelocity 
-是否重置速度
params bRecordTeleportInfo 
-是否记录传送时间用于射击校验，如无特殊需求保持默认配置
事件
voidUGC_WeaponShootBulletEvent(ASTExtraShootWeapon * ShootWeapon, ASTExtraShootWeaponBulletBase *Bullet)
发射子弹事件
生效范围C
params ShootWeapon 
-射击武器
params Bullet 
-子弹
voidUGC_WeaponBulletHitEvent(ASTExtraShootWeapon * ShootWeapon, ASTExtraShootWeaponBulletBase * Bullet, FHitResultHitInfo)
子弹命中事件
生效范围SC
params ShootWeapon 
-射击武器
params Bullet 
-子弹
params HitInfo 
-命中信息
voidUGC_ChangeCurrentUsingWeaponEvent(ESurviveWeaponPropSlot UsingWeaponSlot, ESurviveWeaponPropSlotLastSlot)
当前武器变化事件
生效范围SC
params UsingWeaponSlot 
-当前武器插槽
params LastSlot 
-上次武器插槽
voidUGC_EquipWeaponEvent(ESurviveWeaponPropSlotSlot)
装备武器事件，仅装备在身上，非当前手持武器
生效范围SC
voidUGC_WeaponStartFireEvent(ESTEWeaponShootType :: typeisAuto)
开火调用事件，仅在按下开火时调用一次
生效范围SC
params isAuto 
-是否自动开火
voidUGC_WeaponStopFireEvent()
停火调用事件
生效范围SC
voidUGC_WeaponSwitchEvent()
切换武器事件
生效范围C
voidUGC_ReloadStartEvent()
开始换弹事件
生效范围SC
voidUGC_ReloadEndEvent()
换弹结束事件
生效范围SC
voidUGC_OpenScopeEvent()
开镜事件
生效范围C
voidUGC_CloseScopeEvent()
开镜结束事件
生效范围C
voidUGC_EnterPawnStateEvent(EPawnStatePawnState)
进入某个PawnState事件
生效范围SC
params PawnState 
-进入的PawnState
voidUGC_LeavePawnStateEvent(EPawnStatePawnState)
离开某个PawnState事件
生效范围SC
params PawnState 
-离开的PawnState
voidUGC_PlayerPickUpEvent()
玩家拾取事件
生效范围SC
voidUGC_PlayerDeadEvent(AController * Killer, EDamageType :: DamageTypeDamageType)
玩家死亡事件
生效范围SC
params Killer 
-把该角色淘汰的玩家
params DamageType 
-伤害类型
floatUGC_TakeDamageOverrideEvent(float Damage, EDamageType :: DamageType DamageType, AController * EventInstigator, AActor * DamageCauser, FHitResultHit)
重载伤害事件，返回值为修改后的伤害
生效范围S
return  
-修改后伤害值
params Damage 
-伤害类型
params DamageType 
-造成伤害的玩家
params EventInstigator 
-造成伤害的玩家
params DamageCauser 
-把该角色淘汰的玩家
params Hit 
-伤害命中信息