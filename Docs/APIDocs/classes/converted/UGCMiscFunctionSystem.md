# UGCMiscFunctionSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMiscFunctionSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCMiscFunctionSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMiscFunctionSystem](https://developer.gp.qq.com/api/#/searchContent/UGCMiscFunctionSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCMiscFunctionSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMiscFunctionSystem)

类

全文搜索

游戏杂项函数接口库

---


## 函数

- **AirRoute**(UObjectWorldObjectContext) — 开始航线飞行 生效范围：服务器 params WorldObjectContext -世界上下文对象
- **AirDrop**(UObjectWorldObjectContext, numberIndex, EAirDropTypeAirDropType) — 【废弃】请使用 UGCAirDropManagerSystem 开始空投 生效范围：服务器 params WorldObjectContext -世界上下文对象 params Index -定时普通空投设置中的配置序号（AirDropConfigsUGC） params AirDropType -空投箱空投类型一般为 EAirDropType.AirDrop_NormalAirDrop
- **NormalAirDrop**(UObjectWorldObjectContext, Vector2DStartPos, Vector2DDropPos, numberDistance, EAirDropTypeAirDropType) — 【废弃】请使用 UGCAirDropManagerSystem 自定义空投 生效范围：服务器 params WorldObjectContext -世界上下文对象 params StartPos -飞机起始点,结构：{X=x,Y=y} params DropPos -飞机结束点，结构：{X=x,Y=y} params Distance -空投点距离起始点的比例 （0-1）的一个范围，0=StartPos，1=DropPos params AirDropType -空投箱空投类型一般为EAirDropType.AirDrop_NormalAirDrop StartAirRoute StartAi