# UGCAirDropManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCAirDropManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCAirDropManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAirDropManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCAirDropManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCAirDropManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAirDropManagerSystem)

类

全文搜索

空投系统接口库

---


## 函数

- **GenerateAirDrop**(numberID, FVectorDroppingLocation, numberDroppingSpeed) — 生成指定ID空投 生效范围：服务器 return bool, -是否生成成功, 实例ID params ID -空投配置ID params DroppingLocation -掉落位置 结构Vector={X=0,Y=0,Z=0} params DroppingSpeed -掉落速度
- **GetAllAirDropConfigs**(numberID) — 获得所有空投配置 生效范围：服务器 return -空投配置 params ID -空投配置ID
- **DestroyAirDrop**(numberInsID) — 销毁指定实例ID空投 生效范围：服务器 return -是否销毁成功 params InsID -指定实例ID的空投 0.1s 后销毁
- **GetAirDropItemList**(numberInsID) — 获取指定实例ID空投的物品列表 生效范围：服务器 return -空投的物品列表 params InsID -空投实例InsID
- **GetAllAirDropInstanceIDs**(获取当前场景内所有的实例ID 生效范围：服务器 return -空投实例ID列表 GenerateAirDrop GetAllAirDropConfigs DestroyAirDrop GetAirDropItemList GetAllAirDropInstanceIDs)