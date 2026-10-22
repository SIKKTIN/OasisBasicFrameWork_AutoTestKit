# UGCVehicleSeatSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCVehicleSeatSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%BD%BD%E5%85%B7%2FUGCVehicleSeatSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleSeatSystem](https://developer.gp.qq.com/api/#/searchContent/UGCVehicleSeatSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%BD%BD%E5%85%B7%2FUGCVehicleSeatSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVehicleSeatSystem)

类

全文搜索

载具系统座位系统接口库

---


## 函数

- **PassengerSeat**(ASTExtraVehicleBaseVehicle, ASTExtraBaseCharacterPassenger, numberSeatIndex) — 在目标座位上没有乘客时更换乘客座位 生效范围：客户端&服务器 params Vehicle -载具 params Passenger -乘客 params SeatIndex -座位 ID
- **ChangePassengerSeat**(ASTExtraVehicleBaseVehicle, ASTExtraBaseCharacterPassenger, numberSeatIndex) — 在目标座位上有乘客时更换乘客座位 生效范围：服务器 params Vehicle -载具 params Passenger -乘客 params SeatIndex -座位 ID
- **GetSeatNum**(ASTExtraVehicleBaseVehicle) — 获得载具座位个数 生效范围：服务器&客户端 return -载具座位个数 params Vehicle -载具
- **GetAvailableSeatNum**(ASTExtraVehicleBaseVehicle) — 获得空闲的载具座位个数 生效范围：服务器&客户端 return -空闲的载具座位个数 params Vehicle -载具
- **STExtraBaseCharacterGetPassenger**(ASTExtraVehicleBaseVehicle, numberSeatIndex) — 获得对应座位的乘客 生效范围：服务器&客户端 return -对应座位的乘客 params Vehicle -载具 params SeatIndex -座位 ID
- **IsSeatIndexAvailable**(ASTExtraVehicleBaseVehicle, numberSeatIndex) — 获得对应座位是否空着 生效范围：服务器&客户端 return -对应座位是否空着 params Vehicle -载具 params SeatIndex -座位 ID
- **GetCharacterSeatIndex**(ASTExtraVehicleBaseVehicle, ASTExtraBaseCharacterPassenger, booleanGetBySocket) — 获得指定乘客的座位 ID 生效范围：服务器&客户端 return -指定乘客的座位 ID params Vehicle -载具 params Passenger -乘客 params GetBySocket -BySocket
- **STExtraBaseCharacterGetDriver**(ASTExtraVehicleBaseVehicle) — 获得司机 生效范围：服务器&客户端 return -司机 params Vehicle -载具
- **GetPassengers**(ASTExtraVehicleBaseVehicle) — 获得所有乘客 生效范围：服务器&客户端 return -所有乘客 params Vehicle -载具
- **GetAvailableSeatIndexes**(ASTExtraVehicleBaseVehicle) — 获得所有空闲座位的 Index 生效范围：服务器&客户端 return -所有空闲座位的索引 params Vehicle -载具
- **CanLeanOut**(ASTExtraVehicleBaseVehicle, numberSeatIndex) — 座位上是否可以探头 生效范围：服务器&客户端 return -是否可以探头 params Vehicle -载具 params SeatIndex -座位 ID
- **VehicleWeapon**(ASTExtraVehicleBaseVehicle, numberSeatIndex, numberWeaponIndex) — 移除指定座位上对应 ID 的车载武器 需要这个座位原来也配置了载具武器，且这个载具武器不在使用中 生效范围：服务器 params Vehicle -载具 params SeatIndex -座位 ID params WeaponIndex -车载武器 ID
- **VehicleWeaponFromSupportKit**(ASTExtraVehicleBaseVehicle, numberSeatIndex, numberWeaponIndex, numberWeaponIndexSupport) — 将座位武器库中的武器装备到座位武器孔上 需要这个座位原来也配置了载具武器，且这个载具武器不在使用中 生效范围：服务器 params Vehicle -载具 params SeatIndex -座位 ID params WeaponIndex -车载武器 ID params WeaponIndexSupport -武器库武器 ID
- **PassengerVehicleWeapon**(ASTExtraVehicleBaseVehicle, numberSeatIndex, booleanbControlVehicleWeapon) — 设置当前座位上的车载武器是否能使用 需要这个座位原来也配置了载具武器，且乘客正在该座位上 生效范围：服务器 params Vehicle -载具 params SeatIndex -座位 ID params bControlVehicleWeapon -是否能控制车载武器 ChangePassengerSeat ForceChangePassengerSeat GetSeatNum GetAvailableSeatNum GetPassenger IsSeatIndexAvailable GetCharacterSeatIndex GetDriver GetPassengers GetAvai