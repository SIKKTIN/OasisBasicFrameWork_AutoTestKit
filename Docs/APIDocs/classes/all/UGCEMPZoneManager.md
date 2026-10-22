# UGCEMPZoneManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCEMPZoneManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEMPZoneManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEMPZoneManager](https://developer.gp.qq.com/api/#/searchContent/UGCEMPZoneManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEMPZoneManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEMPZoneManager)

类

全文搜索

电磁干扰区管理器

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| U | **GCEMPZoneConfig_ValidateAndClampConfig** | UGCEMPZoneConfigConfig | table|nil_GetInstanceDetailData(numberInstanceID) table|nil_GetConfigByIndex(numberIndex) |
| bool_ | **ModifyConfigByIndex** | numberIndex, tableNewConfig | table|nil_GetElectromagneticAreaConfigs(number|nilInstanceID) |
| table_ | **ConvertToLuaConfigs** | tableElectromagneticInstances |  |
| number_ | **GenerateNextInstanceID** |  |  |
| F | **EMPZoneCfg_MapLuaConfigToComponent** | UGCEMPZoneConfigLuaConfig |  |
| boolean_ | **SyncCapsuleRadius** | AEMPZoneActorEMPZoneActor, tableInstanceData |  |
| boolean_ | **WriteConfigToComponent** | UEMPZoneControlComponentComp, FEMPZoneCfgComponentConfig |  |
| Create | **EMPZone** | stringConfigID, FVectorCenterLocation |  |
| boolean_ | **CreateEMPZoneActor** | numberInstanceID |  |
| boolean | **DestroyElectromagneticArea** | numberInstanceID |  |
| boolean_ | **DestroyAllElectromagneticAreas** |  |  |
| boolean | **ModifyConfigElectromagneticArea** | numberConfigIndex, stringParameterName, anyNewValue |  |
| table | **GetAllConfigElectromagneticArea** |  |  |
| table | **GetSpecifyElectromagneticAreaList** | numberInstanceID |  |
| _ | **NotifyClientHideMapMark** | numberInstanceID | 当 EMPZone 销毁时隐藏小地图标记 |
| Client_ | **OnEMPZoneMapMarkShow** | numberInstanceID, numberLocX, numberLocY, numberLocZ, numberEffectRadius, numberZoneState | [Client RPC] 显示 EMPZone 小地图标记 params InstanceID -实例ID params LocX -位置X坐标 params LocY -位置Y坐标 params LocZ -位置Z坐标 params EffectRadius -影响半径 params ZoneState -区域状态 |
| Client_ | **OnEMPZoneMapMarkHide** | numberInstanceID | [Client RPC] 隐藏 EMPZone 小地图标记 params InstanceID -实例ID _ValidateAndClampConfig _GetInstanceDetailData _GetConfigByIndex _ModifyConfigByIndex _GetElectromagneticAreaConfigs _ConvertToLuaConfigs _GenerateNextInstanceID _MapLuaConfigToComponent _SyncCapsuleRadius _WriteConfigToComponent CreateEMPZone _C |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| param | **InstanceID** | number @param CenterLocation FVector UGCEMPZoneManager.SuccessfullyStopElectromagnetic param InstanceID number UGCEMPZoneManager.NormalEndElectromagnetic param InstanceID number UGCEMPZoneManager.SuccessfullyStartElectromagnetic param InstanceID number UGCEMPZoneManager.AffectedElectromagneticPlayer |

