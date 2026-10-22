# UGCGunSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGunSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCGunSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGunSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGunSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%89%A9%E5%93%81%E4%B8%8E%E8%83%8C%E5%8C%85%2FUGCGunSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGunSystem)

类

全文搜索

枪械系统接口库

---


## 函数

- **Fire**(STExtraShootWeaponGun) — 开火 生效范围：客户端 params Gun -枪械
- **Fire**(STExtraShootWeaponGun) — 停止开火 生效范围：客户端 params Gun -枪械
- **InfiniteBullets**(STExtraShootWeaponGun, booleanIsEnable) — 启用/停用无限子弹（无需换弹） 启用后，弹夹容量无限，一直开火也无需换弹 生效范围：服务器 params Gun -枪械 params IsEnable -启用/停用
- **ClipInfiniteBullets**(STExtraShootWeaponGun, booleanIsEnable) — 启用/停用弹夹无限子弹（需要换弹一次） 启用后，子弹容量无限，开火会打空弹夹触发换弹 生效范围：服务器 params Gun -枪械 params IsEnable -启用/停用
- **ReloadAndEnableInfiniteBullets**(STExtraShootWeaponGun, booleanIsEnable) — 启用/停用无限子弹（无需换弹）并且强制换弹 启用后，强制换弹弹夹容量无限，一直开火也无需换弹，避免弹夹内子弹为0时触发检查 生效范围：服务器 params Gun -枪械 params IsEnable -启用/停用
- **MaxBulletNumInOneClip**(STExtraShootWeaponGun, numberMaxBulletNumInOneClip) — 设置弹夹容量 生效范围：服务器 params Gun -枪械 params MaxBulletNumInOneClip -弹夹容量
- **GetMaxBulletNumInOneClip**(STExtraShootWeaponGun) — 获取弹夹容量 生效范围：服务器&客户端 return -弹夹容量 params Gun -枪械
- **BulletFireSpeed**(STExtraShootWeaponGun, numberBulletFireSpeed) — 设置子弹飞行速度 例：60000代表1秒飞行600米 生效范围：服务器 params Gun -枪械 params BulletFireSpeed -飞行速度
- **GetBulletFireSpeed**(STExtraShootWeaponGun) — 获取子弹飞行速度 例：60000代表1秒飞行600米 生效范围：服务器&客户端 return -当前飞行速度 params Gun -枪械
- **ShootIntervalTime**(STExtraShootWeaponGun, numberShootIntervalTime) — 设置射击间隔时间 例：0.1代表0.1秒射击一次 生效范围：服务器 params Gun -枪械 params ShootIntervalTime -射击间隔时间
- **GetShootIntervalTime**(STExtraShootWeaponGun) — 获取射击间隔时间 例：0.1代表0.1秒射击一次 生效范围：服务器&客户端 return -射击间隔时间 params Gun -枪械
- **BulletRange**(STExtraShootWeaponGun, numberBulletRange) — 设置子弹射程 例：60000射程为600米 生效范围：服务器 params Gun -枪械 params BulletRange -子弹射程
- **GetBulletRange**(STExtraShootWeaponGun) — 获取子弹射程 例：60000射程为600米 生效范围：服务器&客户端 return -子弹射程 params Gun -枪械
- **BulletBaseDamage**(STExtraShootWeaponGun, numberBulletBaseDamage) — 设置子弹基础伤害 生效范围：服务器 params Gun -枪械 params BulletBaseDamage -基础伤害
- **GetBulletBaseDamage**(STExtraShootWeaponGun) — 获取子弹基础伤害 生效范围：服务器&客户端 return -基础伤害 params Gun -枪械
- **BulletMinimumDamage**(STExtraShootWeaponGun, numberBulletMinimumDamage) — 设置子弹最低伤害（子弹经过穿透，距离等衰减后） 生效范围：服务器 params Gun -枪械 params BulletMinimumDamage -最低伤害
- **GetBulletMinimumDamage**(STExtraShootWeaponGun) — 获取子弹最低伤害（子弹经过穿透，距离等衰减后） 生效范围：服务器&客户端 return -最低伤害 params Gun -枪械
- **BulletImpulse**(STExtraShootWeaponGun, numberBulletImpulse) — 设置子弹命中冲量 冲量越大，击退击飞效果越大 参考：破片手雷最大造成冲量为2500 生效范围：服务器 params Gun -枪械 params BulletImpulse -冲量
- **GetBulletImpulse**(STExtraShootWeaponGun) — 获取子弹命中冲量 冲量越大，击退击飞效果越大 参考：破片手雷最大造成冲量为2500 生效范围：服务器&客户端 return -冲量 params Gun -枪械
- **ReloadTime**(STExtraShootWeaponGun, numberReloadTime) — 设置换弹时间 生效范围：服务器 params Gun -枪械 params ReloadTime -换弹时间
- **GetReloadTime**(STExtraShootWeaponGun) — 获取换弹时间 生效范围：服务器&客户端 return -换弹时间 params Gun -枪械
- **TacticalReloadTime**(STExtraShootWeaponGun, numberTacticalReloadTime) — 设置战术换弹时间（弹夹子弹数不为0） 生效范围：服务器 params Gun -枪械 params TacticalReloadTime -换弹时间
- **GetTacticalReloadTime**(STExtraShootWeaponGun) — 获取战术换弹时间（弹夹子弹数不为0） 生效范围：服务器&客户端 return -换弹时间 params Gun -枪械
- **VerticalRecoilScale**(STExtraShootWeaponGun, numberVerticalRecoilScale) — 设置垂直后坐力倍率 生效范围：服务器 params Gun -枪械 params VerticalRecoilScale -倍率
- **GetVerticalRecoilScale**(STExtraShootWeaponGun) — 获取垂直后坐力倍率 生效范围：服务器&客户端 return -倍率 params Gun -枪械
- **HorizontalRecoilScale**(STExtraShootWeaponGun, numberHorizontalRecoilScale) — 设置水平后坐力倍率 生效范围：服务器 params Gun -枪械 params HorizontalRecoilScale -倍率
- **GetHorizontalRecoilScale**(STExtraShootWeaponGun) — 获取水平后坐力倍率 生效范围：服务器&客户端 return -倍率 params Gun -枪械
- **DeviationScale**(STExtraShootWeaponGun, numberDeviationScale) — 设置扩散值倍率 生效范围：服务器 params Gun -枪械 params DeviationScale -倍率
- **GetDeviationScale**(STExtraShootWeaponGun) — 获取扩散值倍率 生效范围：服务器&客户端 return -倍率 params Gun -枪械 Reload(PlayerPawnPlayerPawn) 玩家当前武器换弹 生效范围：客户端 params PlayerPawn -玩家角色
- **Scope**(PlayerPawnPlayerPawn, booleanIsOpenScope) — 玩家当前武器开镜/关镜 生效范围：客户端 params PlayerPawn -玩家角色 params IsOpenScope -开镜/关镜
- **GetIsAutoAimEnabled**(PlayerPawnPlayerPawn) — 获取辅助瞄准是否启用 生效范围：客户端 return -启用/关闭 params PlayerPawn -玩家角色
- **IsAutoAimEnabled**(PlayerPawnPlayerPawn, booleanIsAutoAimEnabled) — 设置自动瞄准是否启用 生效范围：客户端 params PlayerPawn -玩家角色 params IsAutoAimEnabled -启用/关闭
- **GunAttachment**(STExtraShootWeaponGun, ItemDefineIDItemDefineID) — 武器添加指定配件 生效范围：服务端 params Gun -枪械 params ItemDefineID -物品DefineID
- **AndAddGunAttachment**(STExtraShootWeaponGun, numberItemID) — 创建新配件并且直接添加到武器 生效范围：服务端 params Gun -枪械 params ItemID -物品ID
- **GunAttachmentBySocketType**(STExtraShootWeaponGun, WeaponAttachmentSocketTypeSocketType) — 卸载武器指定部位配件 生效范围：服务端 params Gun -枪械 params SocketType -配件槽位
- **DefineIDGetWeaponAttachmentIDBySocketType**(STExtraShootWeaponGun, WeaponAttachmentSocketTypeSocketType) — 获取特定槽位的配件ItemDefineID 生效范围：服务端 params Gun -枪械 params SocketType -配件槽位
- **AttachmentSocketTypeGetAvailableWeaponAttachmentSocketTypeList**(STExtraShootWeaponGun) — 获取枪械可用的配件槽位 生效范围：服务端 return uint8[] -列表 params Gun -枪械
- **AvailableWeaponAttachmentGetAvailableWeaponAttachment**(STExtraShootWeaponGun) — 获取武器可用配件(需要武器加载出来才能使用，不能在武器初始化时调用) 生效范围：服务端 return int32[] -列表 params Gun -枪械
- **AllWeaponAttachmentsOnServer**(STExtraShootWeaponGun) — 卸载武器所有配件 生效范围：服务端 params Gun -枪械
- **AttachmentDefineIDGetWeaponAllAttachmentIDList**(STExtraShootWeaponGun) — 获取武器上的所有配件 生效范围：服务端 return ItemDefineID[] -列表 params Gun -枪械
- **CurrentBulletNumInClip**(STExtraShootWeaponGun, intCount) — 设置武器弹匣内弹药 生效范围：服务端 params Gun -枪械 params Count -枪械 StartFire StopFire EnableInfiniteBullets EnableClipInfiniteBullets ForceReloadAndEnableInfiniteBullets SetMaxBulletNumInOneClip GetMaxBulletNumInOneClip SetBulletFireSpeed GetBulletFireSpeed SetShootIntervalTime GetShootIntervalTime SetBulletRange G