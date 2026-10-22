# UGCVehicleCommonSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCVehicleCommonSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%BD%BD%E5%85%B7%2FUGCVehicleCommonSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleCommonSystem](https://developer.gp.qq.com/api/#/searchContent/UGCVehicleCommonSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%BD%BD%E5%85%B7%2FUGCVehicleCommonSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleCommonSystem)

类

全文搜索

载具系统通用功能接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Set | **VehicleHPMax** | ASTExtraVehicleBaseVehicle, numberMaxHP | 设置载具最大血量 本接口不会自动改变载具血量，游戏逻辑中改变载具血量时（比如收到伤害、载具维修等）会考虑载具最大血量 生效范围：服务器 params Vehicle -载具 params MaxHP -最大血量 |
| Set | **VehicleHP** | ASTExtraVehicleBaseVehicle, numberHP | 设置载具血量 生效范围：服务器 params Vehicle -载具 params HP -血量 |
| Set | **VehicleFuelPercent** | ASTExtraVehicleBaseVehicle, numberFuelPercent | 设置载具油量（按照百分比设置） 生效范围：服务器 params Vehicle -载具 params FuelPercent -油量百分比 |
| number | **GetVehicleHPMax** | ASTExtraVehicleBaseVehicle | 获得载具最大血量 生效范围：服务器&客户端 return -载具最大血量 params Vehicle -载具 |
| number | **GetVehicleHP** | ASTExtraVehicleBaseVehicle | 获得载具当前血量 生效范围：服务器&客户端 return -载具当前血量 params Vehicle -载具 |
| number | **GetVehicleFuelMax** | ASTExtraVehicleBaseVehicle | 获得载具最大油量 生效范围：服务器&客户端 return -载具最大油量 params Vehicle -载具 |
| number | **GetVehicleFuelConsumeFactor** | ASTExtraVehicleBaseVehicle | 获得当前油耗系数 生效范围：服务器&客户端 return -当前油耗系数 params Vehicle -载具 |
| number | **GetVehicleFuel** | ASTExtraVehicleBaseVehicle | 获得当前油量 生效范围：服务器&客户端 return -当前油量 params Vehicle -载具 |
| boolean | **IsDontConsumeFuel** | ASTExtraVehicleBaseVehicle | 获得当前是否不耗油 生效范围：服务器&客户端 return -当前是否不耗油 params Vehicle -载具 |
| boolean | **IsDontDamage** | ASTExtraVehicleBaseVehicle | 获得当前是否不受到伤害 生效范围：服务器&客户端 return -当前是否不受到伤害 params Vehicle -载具 |
| number | **GetWheelHP** | ASTExtraVehicleBaseVehicle, numberWheelIndex | 获得轮胎血量 生效范围：服务器&客户端 return -载具轮子血量 params Vehicle -载具 params WheelIndex -轮胎 ID（从 1 开始） |
| boolean | **SetWheelHP** | ASTExtraVehicleBaseVehicle, numberWheelIndex, numberHP | 设置轮胎血量 生效范围：服务器 return -设置是否成功 params Vehicle -载具 params WheelIndex -轮胎 ID（从 1 开始） params HP -载具轮子血量 SetVehicleHPMax SetVehicleHP SetVehicleFuelPercent GetVehicleHPMax GetVehicleHP GetVehicleFuelMax GetVehicleFuelConsumeFactor GetVehicleFuel IsDontConsumeFuel IsDontDamage GetWheelHP SetWheelHP |

