# UGCMobPawnSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMobPawnSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCMobPawnSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMobPawnSystem](https://developer.gp.qq.com/api/#/searchContent/UGCMobPawnSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCMobPawnSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMobPawnSystem)

类

全文搜索

怪物系统接口库

---


## 函数

- **ActorSpawnMob**(UObjectWorldContextObject, UClassMobClass, FVectorLocation, FRotatorRotation) — 在目标位置刷一个怪 生效范围：服务器 return -刷出的怪物 params WorldContextObject -世界上下文对象 params MobClass -怪物的类 params Location -刷怪的位置 params Rotation -刷出怪物的朝向
- **ActorSpawnMobByMobGroup**(UObjectWorldContextObject, numberMobGroupID, FVectorLocation, FRotatorRotation) — 在目标位置根据怪物组表中的ID刷一个怪 生效范围：服务器 return -刷出的怪物 params WorldContextObject -世界上下文对象 params MobGroupID -怪物组表中的ID params Location -刷怪的位置 params Rotation -刷出怪物的朝向
- **RangeSpawnMobs**(UObjectWorldContextObject, UClassMobClass, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberCount) — 在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪 生效范围：服务器 return -刷出怪物的列表 params WorldContextObject -世界上下文对象 params MobClass -怪物的类 params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params Count -刷出怪物的数量
- **RangeSpawnMobsByMobGroup**(UObjectWorldContextObject, numberMobGroupID, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberCount) — 在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪，怪物类型由怪物组表ID指定 生效范围：服务器 return -刷出怪物的列表 params WorldContextObject -世界上下文对象 params MobGroupID -怪物组表中的ID params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params Count -刷出怪物的数量
- **SpawnMobsOnTime**(UObjectWorldContextObject, UClassMobClass, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberMinSpawnCountPerLoop, numberMaxSpawnCountPerLoop, numberLoopTimes, numberIntervalMin) — 在指定位置的圆形范围中每隔一定时间寻找合适的地面刷出一定数量的怪 生效范围：服务器 params WorldContextObject -世界上下文对象 params MobClass -怪物类 params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params MinSpawnCountPerLoop -每次刷怪的最小数量 params MaxSpawnCountPerLoop -每次刷怪的最大数量 params Loo
- **SpawnMobsByMobGroupOnTime**(UObjectWorldContextObject, numberMobGroupID, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberMinSpawnCountPerLoop, numberMaxSpawnCountPerLoop, numberLoopTimes, numberIntervalM) — 在指定位置的圆形范围中每个一定时间寻找合适的地面刷出一定数量的怪 生效范围：服务器 params WorldContextObject -世界上下文对象 params MobGroupID -怪物组表中的ID params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params MinSpawnCountPerLoop -每次刷怪的最小数量 params MaxSpawnCountPerLoop -每次刷怪的最大数量 par