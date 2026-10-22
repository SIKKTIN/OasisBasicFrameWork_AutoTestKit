# UGCWeaponManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCWeaponManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCWeaponManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCWeaponManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCWeaponManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCWeaponManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCWeaponManagerSystem)

类

全文搜索

武器管理系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| U | **WeaponManagerComponentGetWeaponManagerComponent** | PlayerPawnPlayerPawn | 获取武器管理组件 生效范围：服务器&客户端 return -武器管理组件 params PlayerPawn -玩家角色 |
| A | **STExtraWeaponGetWeaponBySlot** | PlayerPawnPlayerPawn, ESurviveWeaponPropSlotSlot | 获取对应插槽的武器实例 生效范围：服务器&客户端 return -武器 params PlayerPawn -玩家角色 params Slot -武器槽位 |
| A | **STExtraWeaponGetCurrentWeapon** | PlayerPawnPlayerPawn | 获取当前使用的武器实例 生效范围：服务器&客户端 return -武器 params PlayerPawn -玩家角色 |
| A | **STExtraWeaponGetLastUsedWeapon** | PlayerPawnPlayerPawn | 获取上一把武器 生效范围：服务器&客户端 return -武器 params PlayerPawn -玩家角色 |
| E | **SurviveWeaponPropSlotGetCurrentWeaponSlot** | PlayerPawnPlayerPawn | 获取当前使用武器插槽 生效范围：服务器&客户端 return -武器槽位 params PlayerPawn -玩家角色 |
| Switch | **WeaponBySlot** | PlayerPawnPlayerPawn, ESurviveWeaponPropSlotSlot, booleanIsUseAnimation | 切换对应槽位的武器 生效范围：服务器&客户端 params PlayerPawn -玩家角色 params Slot -武器槽位 params IsUseAnimation -是否播放使用动画 |
| Current | **WeaponAttachToBack** | PlayerPawnPlayerPawn | 收起武器 生效范围：服务器&客户端 params PlayerPawn -玩家角色 |
| number | **GetWeaponItemID** | ASTExtraWeaponWeapon | 获取武器ItemID 生效范围：服务器&客户端 return -物品ID,对应物品表中ID params Weapon -武器 |
| string | **GetWeaponName** | ASTExtraWeaponWeapon | 获取武器名 生效范围：服务器&客户端 return -武器名称 params Weapon -武器 |
| number | **GetCurrentUsingAmmoID** | PlayerPawnPlayerPawn | 获取当前消耗弹药 生效范围：服务器&客户端 return -弹药ID params PlayerPawn -玩家角色 |
| Set | **WeaponSlotVisible** | PlayerPawnPlayerPawn, ESurviveWeaponPropSlotWeaponSlot, booleanbVisible | 设置武器的可见性 生效范围：客户端 params PlayerPawn -玩家角色 params WeaponSlot -武器槽位 params bVisible -是否可见 GetWeaponManagerComponent GetWeaponBySlot GetCurrentWeapon GetLastUsedWeapon GetCurrentWeaponSlot SwitchWeaponBySlot CurrentWeaponAttachToBack GetWeaponItemID GetWeaponName GetCurrentUsingAmmoID SetWeaponSlotVisi |

