# BP_UGCVehicleRefresherTool

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/BP_UGCVehicleRefresherTool?classDetailShow=true&path=class%2Fdetail%2FOthers%2FBP_UGCVehicleRefresherTool.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=BP_UGCVehicleRefresherTool](https://developer.gp.qq.com/api/#/searchContent/BP_UGCVehicleRefresherTool?classDetailShow=true&path=class%2Fdetail%2FOthers%2FBP_UGCVehicleRefresherTool.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=BP_UGCVehicleRefresherTool)

类

全文搜索

载具刷新器工具，用于管理载具的自动刷新和生成

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Add | **VehicleEventListener** | functioncallback, anycontext | 添加载具生成事件监听器，外部代码调用此方法注册载具生成事件监听 生效范围：服务器 params callback -回调函数，参数为(Vehicle) params context -上下文对象（可选） |
| Add | **VehicleDriveAwayEventListener** | functioncallback, anycontext | 添加载具开走事件监听器，外部代码调用此方法注册载具开走事件监听 生效范围：服务器 params callback -回调函数，参数为(Vehicle) params context -上下文对象（可选） |
| Remove | **VehicleEventListener** | functioncallback, anycontext | 移除载具生成事件监听器 生效范围：服务器 params callback -回调函数 params context -上下文对象 |
| Remove | **VehicleDriveAwayEventListener** | functioncallback, anycontext | 移除载具开走事件监听器 生效范围：服务器 params callback -回调函数 params context -上下文对象 |
| boolean | **GenerateVehicle** |  | 根据权重配置随机生成载具 生效范围：服务器 return -true-生成成功, false-生成失败 |
| boolean | **GenerateCustomizeVehicle** | stringVehiclePath | 生成指定的载具蓝图 生效范围：服务器 return -true-生成成功, false-生成失败 params VehiclePath -载具蓝图路径，如"/Game/Arts_PlayerBluePrints/Vehicle/VH_Buggy/BP_VH_Buggy.BP_VH_Buggy_C" |
| boolean | **DestroyCurrentVehicle** |  | 销毁当前刷新点管理的载具 生效范围：服务器 return -true-销毁成功, false-销毁失败 |
| boolean | **ResetVehicleRespawnPoint** |  | 重置载具刷新点，如果载具还在原地，先销毁再重新刷新 生效范围：服务器 return -true-重置成功, false-重置失败 |
| table | **GetVehicleRespawnPointConfig** |  | 获取配置的载具列表信息 生效范围：服务器&客户端 return -载具配置列表，包含index、path、weight字段 |
| table | **GetVehicleStatusConfig** |  | 获取当前车辆的实时状态信息 生效范围：服务器&客户端 return -当前车辆信息（包含isValid、location、healthState、hasDriver等字段），如无车辆返回false AddVehicleEventListener AddVehicleDriveAwayEventListener RemoveVehicleEventListener RemoveVehicleDriveAwayEventListener GenerateVehicle GenerateCustomizeVehicle DestroyCurrentVehicle ResetVehicleRespaw |

