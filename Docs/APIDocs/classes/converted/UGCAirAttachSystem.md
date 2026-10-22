# UGCAirAttachSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCAirAttachSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCAirAttachSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAirAttachSystem](https://developer.gp.qq.com/api/#/searchContent/UGCAirAttachSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCAirAttachSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAirAttachSystem)

类

全文搜索

轰炸区接口库

---


## 函数

- **GenerateBombingArea**(numberConfigID, FVectorLocation) — 生成轰炸区 生效范围：服务器 return bool, -是否成功生成轰炸区, 实例ID params ConfigID -轰炸配置 ID params Location -轰炸中心坐标（系统会自动通过射线检测将炸弹位置修正到地面高度）
- **StopBombingArea**(numberInstanceID) — 停止轰炸区 生效范围：服务器 return -是否成功停止轰炸区 params InstanceID -轰炸实例 ID
- **ModifyBombingAreaConfig**(numberConfigID, stringParameterType, numberNewValue) — 修改轰炸区参数 生效范围：服务器 return -是否成功修改轰炸配置 params ConfigID -轰炸配置 ID params ParameterType -参数类型（如："AttackAreaRadius", "EscapeTime", "AttackLastingTime"等） params NewValue -新的参数值
- **GetAllConfigBombingArea**(查看当前全部轰炸区 生效范围：服务器 return table<number, -所有轰炸实例ID和对应的轰炸参数)
- **GCAirAttackConfigGetSpecifyBombingAreaList**(numberInstanceID) — 查看指定轰炸区参数 生效范围：服务器 return -指定实例的轰炸参数 params InstanceID -轰炸实例 ID
- **GCAirAttackManagerGetAirAttackManager**(获取轰炸区管理器 生效范围：服务器&客户端 return -轰炸区管理器实例，失败时返回nil GenerateBombingArea StopBombingArea ModifyBombingAreaConfig GetAllConfigBombingArea GetSpecifyBombingAreaList GetAirAttackManager)