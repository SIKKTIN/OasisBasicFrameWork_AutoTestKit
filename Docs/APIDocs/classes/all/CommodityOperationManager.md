# CommodityOperationManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/CommodityOperationManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FCommodityOperationManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=CommodityOperationManager](https://developer.gp.qq.com/api/#/searchContent/CommodityOperationManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FCommodityOperationManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=CommodityOperationManager)

类

全文搜索

UGC商业化购买流程全局管理器

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Promise | **FutureBuyProduct** | numberProductID, numberNum, numberCurrentPrice, booleanbCheckPrivilege | 发起商品购买 生效范围：客户端 return -绿洲币购买UI界面的PromiseFuture实例，非绿洲币商品则返回nil params ProductID -商品的ID params Num -购买商品数量 params CurrentPrice -发起购买时的价格，用于校验 params bCheckPrivilege -是否检查玩家特权（即当前商品为仅特权可购买），默认false |
| Server | **BuyProduct** | numberPlayerKey, numberProductID, numberNum, numberCurrentPrice, booleanbCheckPrivilege | 发起自定义货币商品购买 生效范围：服务端 params PlayerKey -发起购买者的 PlayerKey params ProductID -商品的ID params Num -购买商品数量 params CurrentPrice -发起购买时的价格，用于校验 params bCheckPrivilege -是否检查玩家特权（即当前商品为仅特权可购买），默认false |
| boolean | **CanAfford** | numberProductID, numberNum, UUGCPlayerControllerPlayerController | 检查是否买得起指定数量的商品 生效范围：客户端&&服务端 params ProductID -商品的ID params Num -购买的商品数量 params PlayerController -玩家控制器，客户端可以不传 |
| number | **GetLimitPurchasedTimes** | numberProductID, UUGCPlayerControllerPlayerController | 获得限购商品的购买次数 生效范围：客户端&&服务端 params ProductID -商品的ID params PlayerController -玩家控制器，客户端可以不传 |
| table | **GetAllLimitPurchasedProducts** | UUGCPlayerControllerPlayerController | 获取所有已购买的限购商品 生效范围：客户端&&服务端 params PlayerController -玩家控制器，客户端可以不传 |
| number | **GetPurchasedTimes** | numberProductID, UUGCPlayerControllerPlayerController | 获得商品的累计购买次数 生效范围：客户端&&服务端 params ProductID -商品的ID params PlayerController -玩家控制器，客户端可以不传 |
| table | **GetAllPurchasedProducts** | UUGCPlayerControllerPlayerController | 获取所有已购买的商品 生效范围：客户端&&服务端 params PlayerController -玩家控制器，客户端可以不传 |
| table | **GetAllProductData** |  | 获取所有商品信息 生效范围：客户端&&服务器 |
| table | **GetProductData** | numberProductID | 获取指定商品信息 生效范围：客户端&&服务端 params ProductID -商品的ID BuyProduct ServerBuyProduct CanAfford GetLimitPurchasedTimes GetAllLimitPurchasedProducts GetPurchasedTimes GetAllPurchasedProducts GetAllProductData GetProductData |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| @param | **Result** | BuyProductResult @购买结果 CommodityOperationManager.LimitProductUpdateDelegate 生效范围：客户端&&服务端 限购商品购买次数发生变化时触发 CommodityOperationManager.PurchasedProductListUpdateDelegate 生效范围：客户端&&服务端 商品购买次数发生变化时触发 CommodityOperationManager.BuyProductResultDelegate CommodityOperationManager.LimitProductUpdateDelegate C |

