# UEnvQueryGenerator_Composite

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_Composite?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_Composite.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_Composite](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_Composite?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_Composite.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_Composite)

类

全文搜索

Composite generator allows using multiple generators in single query option All child generators must produce exactly the same item type!

---


## 属性

- **generators** — with different item types, use at own risk! WARNING: generator will use ForcedItemType for raw data, you MUST ensure proper memory layout child generators will be writing to memory block through their own item types: - data must fit info block allocated by ForcedItemType - tests will read item locat