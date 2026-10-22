# UGCVehicleSystemV2

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCVehicleSystemV2?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCVehicleSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleSystemV2](https://developer.gp.qq.com/api/#/searchContent/UGCVehicleSystemV2?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCVehicleSystemV2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleSystemV2)

类

全文搜索

载具系统接口库V2

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| A | **STExtraVehicleBaseSpawnVehicle** | stringVehiclePath, VectorLocation, RotatorRotation, boolSnapFloor, boolIsForce | 使用蓝图路径生成载具 不要在 Spawn 之后立马修改载具位置，等载具落地停稳后再修改，不然位置修改会失败（如果有类似需求，建议直接创建在对应点） 生效范围：服务器 return -载具 params VehiclePath -载具蓝图路径，格式示例："/Game/Arts_PlayerBluePrints/Vehicle/VH_Buggy/BP_VH_Buggy.BP_VH_Buggy_C" params Location -生成位置 params Rotation -旋转。可缺省，默认无旋转 params SnapFloor -是否贴地。可缺省，默认 true params IsForce |
| Destroy | **Vehicle** | ASTExtraVehicleBaseVehicle | 摧毁载具 生效范围：服务器 params Vehicle -载具 |
| A | **STExtraVehicleBaseRespawn** | ASTExtraVehicleBaseVehicle | 重生载具 重生将创建新载具，旧的载具将被销毁不再可用 生效范围：服务器 return -重生后的新载具。若为nil，表示操作失败，新的载具不会创建、旧的载具也不会销毁。 params Vehicle -载具 |
| bool | **EnterVehicle** | PlayerPawn | PlayerController @玩家角色或玩家PlayerControllerPlayer, ASTExtraVehicleBaseVehicle, intSeatIndex, boolIsForce | 玩家角色进入载具 生效范围：服务器&客户端(客户端仅能操作自己的玩家角色) return -服务器:是否成功进入 | 客户端:返回值无意义 params Player -玩家角色或玩家PlayerController params Vehicle -载具 params SeatIndex -座位索引(0为驾驶位，-1表示尝试进入任意空位置)。可缺省，默认-1。 params IsForce -是否无视距离和阻挡(仅服务器调用支持此项)。可缺省，默认 false |
| bool | **LeaveVehicle** | PlayerPawn | PlayerController @玩家角色或玩家PlayerControllerPlayer, boolIsForce | 玩家角色离开载具 生效范围：服务器&客户端(客户端仅能操作自己的玩家角色) return -服务器:是否成功离开 | 客户端:返回值无意义 params Player -玩家角色或玩家PlayerController params IsForce -是否需要强制离开载具(仅服务器调用支持此项)。可缺省，默认 false |
| E | **STExtraVehicleBaseTypeGetVehicleType** | ASTExtraVehicleBaseVehicle | 获取载具类型 生效范围：服务器&客户端 return -载具基础类型 params Vehicle -载具 |
| bool | **CanDrive** | ASTExtraVehicleBaseVehicle | 驾驶员是否可以操控载具 生效范围：服务器&客户端 return -是否可以操控载具 params Vehicle -载具 |
| Move | **Forward** | ASTExtraVehicleBaseVehicle, floatThrottle | 操作载具前进/后退 需要在驾驶员所在客户端每帧调用 当地面载具处于前进状态时，输入后退操作，将执行刹车逻辑，受刹车力量系数(BrakeTorqueCoefficient)影响。 当地面载具处于后退状态时，输入前进操作，也将执行刹车逻辑。 生效范围：客户端 params Vehicle -载具 params Throttle -取值范围[-1,1]，负值代表后退，正值代表前进 |
| Move | **Turn** | ASTExtraVehicleBaseVehicle, floatThrottle | 操作载具打右方向/左方向 需要在驾驶员所在客户端每帧调用 生效范围：客户端 params Vehicle -载具 params Throttle -取值范围[-1,1]，负值代表左方向，正值代表右方向 |
| bool | **CanHandBrake** | ASTExtraVehicleBaseVehicle | 获得载具是否支持(急刹)手刹 生效范围：服务器&客户端 return -载具是否能够手刹 params Vehicle -载具 |
| Set | **HandBrake** | ASTExtraVehicleBaseVehicle, floatBrakeScale | 操作载具(急刹)手刹 需要在驾驶员所在客户端调用 生效范围：客户端 params Vehicle -载具 params BrakeScale -刹车倍率，取值范围[0,1]，0为无刹车，1为最强刹车 |
| bool | **CanBoosting** | ASTExtraVehicleBaseVehicle | 获得载具能否加速 生效范围：服务器&客户端 return -载具是否能够加速 params Vehicle -载具 |
| Set | **Boosting** | ASTExtraVehicleBaseVehicle, boolOpen | 开关载具加速 需要在驾驶员所在客户端调用 生效范围：客户端 params Vehicle -载具 params Open -true开启加速，false关闭加速 |
| bool | **CanHorn** | ASTExtraVehicleBaseVehicle | 获得载具能否按喇叭 生效范围：服务器&客户端 return -载具是否能够按喇叭 params Vehicle -载具 |
| Set | **Horn** | ASTExtraVehicleBaseVehicle, boolOpen | 按下/抬起载具喇叭 需要在驾驶员所在客户端调用 生效范围：客户端 params Vehicle -载具 params Open -true按下喇叭，false抬起喇叭 |
| F | **VectorGetVelocity** | ASTExtraVehicleBaseVehicle | 获得载具当前速度(单位是cm/s) 生效范围：服务器&客户端 return -载具当前速度 params Vehicle -载具 |
| E | **STExtraVehicleHealthStateGetVehicleHealthState** | ASTExtraVehicleBaseVehicle | 获得当前载具健康状态 生效范围：服务器&客户端 return -载具当前健康状态 params Vehicle -载具 |
| bool | **CanDamage** | ASTExtraVehicleBaseVehicle | 获得载具是否能受到伤害 生效范围：服务器 return -载具是否能受到伤害 params Vehicle -载具 |
| Set | **CanDamage** | ASTExtraVehicleBaseVehicle, boolCanDamage | 设置载具是否能受到伤害 生效范围：服务器 params Vehicle -载具 params CanDamage -能否受到伤害 |
| int | **GetSeatNum** | ASTExtraVehicleBaseVehicle | 获取座位数量 生效范围：服务器 return -座位数量 params Vehicle -载具 |
| U | **GCVehicleSeatDataGetSeatDataByIndex** | ASTExtraVehicleBaseVehicle, intSeatIndex | 获取座位数据 生效范围：服务器 return -座位数据 params Vehicle -载具 params SeatIndex -座位索引 |
| UGCVehicleSeatData[] | **GetAllSeatDatas** | ASTExtraVehicleBaseVehicle | 获取所有座位数据 生效范围：服务器 return -座位数据列表 params Vehicle -载具 |
| bool | **ChangePassengerSeat** | PlayerPawn | PlayerController @玩家角色或玩家PlayerControllerPlayer, numberSeatIndex | 改变玩家乘客的座位 生效范围：服务器&客户端 (客户端执行只能指定空位，否则会失败。服务端执行可以指定有乘客的座位，两人互相交换位置。) return -服务器:是否成功改变 | 客户端:返回值无意义 params Player -玩家角色或玩家PlayerController params SeatIndex -目标座位 ID |
| Start | **FireVehicleWeapon** | ASTExtraVehicleBaseVehicle | 车载武器开始攻击 仅限驾驶位车载武器生效 生效范围：客户端 params Vehicle -载具 SpawnVehicle DestroyVehicle Respawn EnterVehicle LeaveVehicle GetVehicleType CanDrive MoveForward MoveTurn CanHandBrake SetHandBrake CanBoosting SetBoosting CanHorn SetHorn GetVelocity GetVehicleHealthState CanDamage SetCanDamage GetSeatNum GetSeatDat |

