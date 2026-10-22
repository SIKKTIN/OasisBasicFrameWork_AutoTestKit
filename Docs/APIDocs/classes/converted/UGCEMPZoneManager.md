# UGCEMPZoneManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCEMPZoneManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEMPZoneManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEMPZoneManager](https://developer.gp.qq.com/api/#/searchContent/UGCEMPZoneManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEMPZoneManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEMPZoneManager)

类

全文搜索

电磁干扰区管理器

---


## 函数

- **GCEMPZoneConfig_ValidateAndClampConfig**(UGCEMPZoneConfigConfig) — table
- **ModifyConfigByIndex**(numberIndex, tableNewConfig) — table
- **ConvertToLuaConfigs**(tableElectromagneticInstances)
- **GenerateNextInstanceID**()
- **EMPZoneCfg_MapLuaConfigToComponent**(UGCEMPZoneConfigLuaConfig)
- **SyncCapsuleRadius**(AEMPZoneActorEMPZoneActor, tableInstanceData)
- **WriteConfigToComponent**(UEMPZoneControlComponentComp, FEMPZoneCfgComponentConfig)
- **EMPZone**(stringConfigID, FVectorCenterLocation)
- **CreateEMPZoneActor**(numberInstanceID)
- **DestroyElectromagneticArea**(numberInstanceID)
- **DestroyAllElectromagneticAreas**()
- **ModifyConfigElectromagneticArea**(numberConfigIndex, stringParameterName, anyNewValue)
- **GetAllConfigElectromagneticArea**()
- **GetSpecifyElectromagneticAreaList**(numberInstanceID)
- **NotifyClientHideMapMark**(numberInstanceID) — 当 EMPZone 销毁时隐藏小地图标记
- **OnEMPZoneMapMarkShow**(numberInstanceID, numberLocX, numberLocY, numberLocZ, numberEffectRadius, numberZoneState) — [Client RPC] 显示 EMPZone 小地图标记 params InstanceID -实例ID params LocX -位置X坐标 params LocY -位置Y坐标 params LocZ -位置Z坐标 params EffectRadius -影响半径 params ZoneState -区域状态
- **OnEMPZoneMapMarkHide**(numberInstanceID) — [Client RPC] 隐藏 EMPZone 小地图标记 params InstanceID -实例ID _ValidateAndClampConfig _GetInstanceDetailData _GetConfigByIndex _ModifyConfigByIndex _GetElectromagneticAreaConfigs _ConvertToLuaConfigs _GenerateNextInstanceID _MapLuaConfigToComponent _SyncCapsuleRadius _WriteConfigToComponent CreateEMPZone _C

## 属性

- **InstanceID** — number @param CenterLocation FVector UGCEMPZoneManager.SuccessfullyStopElectromagnetic param InstanceID number UGCEMPZoneManager.NormalEndElectromagnetic param InstanceID number UGCEMPZoneManager.SuccessfullyStartElectromagnetic param InstanceID number UGCEMPZoneManager.AffectedElectromagneticPlayer