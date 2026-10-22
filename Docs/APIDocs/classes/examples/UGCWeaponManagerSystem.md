UGCWeaponManagerSystem
武器管理系统接口库
函数
UWeaponManagerComponentGetWeaponManagerComponent(PlayerPawnPlayerPawn)
获取武器管理组件
生效范围：服务器&客户端
return  
-武器管理组件
params PlayerPawn 
-玩家角色
ASTExtraWeaponGetWeaponBySlot(PlayerPawnPlayerPawn, ESurviveWeaponPropSlotSlot)
获取对应插槽的武器实例
生效范围：服务器&客户端
return  
-武器
params PlayerPawn 
-玩家角色
params Slot 
-武器槽位
ASTExtraWeaponGetCurrentWeapon(PlayerPawnPlayerPawn)
获取当前使用的武器实例
生效范围：服务器&客户端
return  
-武器
params PlayerPawn 
-玩家角色
ASTExtraWeaponGetLastUsedWeapon(PlayerPawnPlayerPawn)
获取上一把武器
生效范围：服务器&客户端
return  
-武器
params PlayerPawn 
-玩家角色
ESurviveWeaponPropSlotGetCurrentWeaponSlot(PlayerPawnPlayerPawn)
获取当前使用武器插槽
生效范围：服务器&客户端
return  
-武器槽位
params PlayerPawn 
-玩家角色
SwitchWeaponBySlot(PlayerPawnPlayerPawn, ESurviveWeaponPropSlotSlot, booleanIsUseAnimation)
切换对应槽位的武器
生效范围：服务器&客户端
params PlayerPawn 
-玩家角色
params Slot 
-武器槽位
params IsUseAnimation 
-是否播放使用动画
CurrentWeaponAttachToBack(PlayerPawnPlayerPawn)
收起武器
生效范围：服务器&客户端
params PlayerPawn 
-玩家角色
numberGetWeaponItemID(ASTExtraWeaponWeapon)
获取武器ItemID
生效范围：服务器&客户端
return  
-物品ID,对应物品表中ID
params Weapon 
-武器
stringGetWeaponName(ASTExtraWeaponWeapon)
获取武器名
生效范围：服务器&客户端
return  
-武器名称
params Weapon 
-武器
numberGetCurrentUsingAmmoID(PlayerPawnPlayerPawn)
获取当前消耗弹药
生效范围：服务器&客户端
return  
-弹药ID
params PlayerPawn 
-玩家角色
SetWeaponSlotVisible(PlayerPawnPlayerPawn, ESurviveWeaponPropSlotWeaponSlot, booleanbVisible)
设置武器的可见性
生效范围：客户端
params PlayerPawn 
-玩家角色
params WeaponSlot 
-武器槽位
params bVisible 
-是否可见