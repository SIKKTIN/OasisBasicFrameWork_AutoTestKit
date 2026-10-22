# UEnvQueryManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryManager](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryManager)

类

全文搜索

---


## 函数

- **RunEQSQuery**(UObject* WorldContextObject, UEnvQuery* QueryTemplate, UObject* Querier, TEnumAsByte < EEnvQueryRunMode :: Type > RunMode, TSubclassOf < UEnvQueryInstanceBlueprintWrapper >WrapperClass) — RunEQSQuery

## 属性

- **of** — instances local cache of context objects for managing BP based objects how long are we allowed to test per update, in seconds. whether we update EQS queries based on: or test an entire query before moving to the next one (depth). if greater than zero, we will warn once when the number of queries is