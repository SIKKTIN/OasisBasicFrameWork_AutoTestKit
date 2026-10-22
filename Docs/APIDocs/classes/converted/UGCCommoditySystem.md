# UGCCommoditySystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCCommoditySystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGCCommoditySystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCommoditySystem](https://developer.gp.qq.com/api/#/searchContent/UGCCommoditySystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGCCommoditySystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCommoditySystem)

类

全文搜索

商业化库

---


## 函数

- **GetTicket**(numberPlayerKey) — 获取玩家货币(绿洲币/灰度币) 生效范围：服务器&客户端 return -玩家货币 params PlayerKey -玩家PlayerKey，服务器调用必传
- **GetActiveCoin**(numberPlayerKey) — 获取启元币 生效范围：服务器&客户端 return -启元币 params PlayerKey -玩家PlayerKey，服务器调用必传
- **FutureBuyUGCCommodity**(stringBuyCommodityCMD, stringName, stringIcon, stringDesc, numberCount, numberCost) — 购买绿洲商品 生效范围：客户端 return -二次确认弹窗界面对象实例的 PromiseFuture 对象 params BuyCommodityCMD -购买协议，参考：EUGCCommodityCommandType params Name -物品的名称 params Icon -物品图标 params Desc -物品的描述 params Count -单次购买的数量 params Cost -单个物品的价格 Cost 必须传入 UGCCommoditySystem.GetSellingPriceAfterDiscount 的返回值
- **FutureBuyUGCPrivilegeCommodity**(stringBuyCommodityCMD, stringName, stringIcon, stringDesc, numberCount, numberCost) — 购买绿洲特权商品 生效范围：客户端 return -二次确认弹窗界面对象实例的 PromiseFuture 对象 params BuyCommodityCMD -购买协议，参考：EUGCCommodityCommandType params Name -物品的名称 params Icon -物品图标 params Desc -物品的描述 params Count -单次购买的数量 params Cost -单个物品的价格 Cost 必须传入 UGCCommoditySystem.GetSellingPriceAfterDiscount 的返回值
- **FutureBuyUGCCommodity2**(numberProductID, stringIcon, stringDesc, numberCount) — 购买绿洲商品 生效范围：客户端 return -二次确认弹窗界面对象实例的 PromiseFuture 对象 params ProductID -商品 ID params Icon -物品图标 params Desc -物品的描述 params Count -单次购买的数量
- **FutureBuyUGCPrivilegeCommodity2**(numberProductID, stringIcon, stringDesc, numberCount) — 购买绿洲特权商品 生效范围：客户端 return -二次确认弹窗界面对象实例的 PromiseFuture 对象 params ProductID -商品 ID params Icon -物品图标 params Desc -物品的描述 params Count -单次购买的数量
- **FutureUseUGCCommodity**(stringUseCommodityCMD, numberCommodityID, stringName, stringIcon, stringDesc, numberCount, booleanbShowDialog) — 使用绿洲物品 生效范围：客户端 return -bShowDialog 为 true 的情况下，返回二次确认弹窗界面对象实例的 PromiseFuture 对象 params UseCommodityCMD -使用协议，参考：EUGCCommodityCommandType params CommodityID -物品ID params Name -物品的名称 params Icon -物品图标 params Desc -物品的描述 params Count -单次消耗的数量 params bShowDialog -是否二次确认
- **FutureUseUGCCommodity2**(PlayerControllerPlayerController, numberObjectID, stringIcon, stringDesc, numberCount, booleanbShowDialog) — 使用绿洲物品 生效范围：服务器&客户端 return - bShowDialog 为 true 的情况下，返回二次确认弹窗界面对象实例的 PromiseFuture 对象(仅客户端调用) params PlayerController -玩家控制器 在 DS 端调用的话 PlayerController 必须传，客户端可传 nil，否则调用无效 params ObjectID -物品ID params Icon -物品图标，填 nil 则使用 UGCObject.ItemSmallIcon（UGCObject 表格中的 ItemSmallIcon（小icon） 字段） params Desc
- **BuyCMD**(stringBuyCommodityCMD, numberProductID, numberCount) — 注册商品购买协议 生效范围：服务器 params BuyCommodityCMD -购买协议，参考：EUGCCommodityCommandType params ProductID -商品的ID params Count -单次购买的数量
- **UseCMD**(stringUseCommodityCMD, numberCommodityID, numberCount) — 注册使用物品协议 生效范围：服务器 params UseCommodityCMD -使用商品协议，参考：EUGCCommodityCommandType params CommodityID -物品的ID params Count -单次消耗的数量
- **RedemptionCode**(numberUID, stringRedemptionCode) — 使用兑换码 PIE下调用该接口默认兑换成功，触发兑换结果 {ItemID=1001, Count=1, ProductID=900001} 生效范围：服务器 params UID -玩家的UID params RedemptionCode -兑换码
- **GetAllPlayerUGCCommodityList**(获取所有玩家的物品数据 生效范围：服务器 return -战斗服务器中所有玩家的物品数据列表)
- **GetUGCCommodityList**(numberPlayerKey) — 获取主控端物品数据 生效范围：服务器&客户端 return -客户端所属玩家的物品数据列表 params PlayerKey -玩家PlayerKey，服务器调用必传
- **GetAllPlayerUGCProductList**(获取所有玩家的绿洲商品限购数据 生效范围：服务器 return -战斗服务器中所有玩家的商品限购数据列表)
- **GetUGCProductList**(获取所有玩家的绿洲商品限购数据 生效范围：客户端 return -主控端玩家的商品限购数据列表)
- **Commodity**(清空所有已购买物品 生效范围：客户端)
- **GetSellingPriceAfterDiscount**(string) — intBuyCommodityCMDOrProductID
- **FutureShowRechargeEntryUI**(显示绿洲币充值界面 生效范围：客户端 return -绿洲币充值界面对象实例的PromiseFuture对象 GetTicket GetActiveCoin BuyUGCCommodity BuyUGCPrivilegeCommodity BuyUGCCommodity2 BuyUGCPrivilegeCommodity2 UseUGCCommodity UseUGCCommodity2 RegBuyCMD RegUseCMD UseRedemptionCode GetAllPlayerUGCCommodityList GetUGCCommodityList GetAllPlayerUGCPr)

## 属性

- **PlayerKey** — number @玩家PlayerKey @param UID number @玩家UID @param CommodityID number @物品ID @param Count number @物品数量 @param ProductID number @商品ID UGCCommoditySystem.CompensateUGCCommodityBatchDelegate 补偿玩家商品后批量广播 生效范围：服务器 @param PlayerKey number @玩家PlayerKey @param UID number @玩家UID @param CommodityList table @补