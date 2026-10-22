# UGCEMPZoneSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCEMPZoneSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEMPZoneSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEMPZoneSystem](https://developer.gp.qq.com/api/#/searchContent/UGCEMPZoneSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEMPZoneSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEMPZoneSystem)

类

全文搜索

电磁干扰区接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| number | **GenerateElectromagneticArea** | numberConfigID, FVectorLocation | 生成电磁干扰区 生效范围：服务器 return bool, -是否成功生成电磁干扰区, 实例ID params ConfigID -电磁干扰区配置 ID params Location -电磁干扰区中心坐标 |
| bool | **DestroyElectromagneticArea** | numberInstanceID | 取消电磁干扰区 生效范围：服务器 return -是否成功取消电磁干扰区 params InstanceID -电磁干扰区实例 ID |
| bool | **ModifyConfigElectromagneticArea** | numberConfigID, stringParameterType, numberNewValue | 修改电磁干扰区参数 生效范围：服务器 return -是否成功修改电磁干扰区配置 params ConfigID -电磁干扰区配置 ID params ParameterType -参数类型 params NewValue -新的参数值 |
| UGCEMPZoneConfig> | **GetAllConfigElectromagneticArea** |  | 查看当前全部电磁干扰区 生效范围：服务器 return table<number, -所有电磁干扰区实例ID和对应的电磁干扰区参数 |
| U | **GCEMPZoneConfigGetSpecifyElectromagneticAreaList** | numberInstanceID | 查看指定电磁干扰区参数 生效范围：服务器 return -指定实例的电磁干扰区参数 params InstanceID -电磁干扰区实例 ID |
| U | **GCEMPZoneManagerGetEMPZoneManager** |  | 获取电磁干扰区管理器 获取电磁干扰区全局管理器实例，用于绑定电磁干扰区相关事件 生效范围：服务器&客户端 return -电磁干扰区管理器实例，失败时返回nil GenerateElectromagneticArea DestroyElectromagneticArea ModifyConfigElectromagneticArea GetAllConfigElectromagneticArea GetSpecifyElectromagneticAreaList GetEMPZoneManager |

