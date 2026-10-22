# 业务组件  (前缀: B)
_共 3 个类_
---
## BackpackUIComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/BackpackUIComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FBackpackUIComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=BackpackUIComponent](https://developer.gp.qq.com/api/#/searchContent/BackpackUIComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FBackpackUIComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=BackpackUIComponent)

类

全文搜索

UGC V2背包UI组件 需启用及配合新背包系统使用，具体参见https://developer.gp.qq.com/wikieditor/#/catalog/20104

---


## 函数

- **WidgetGetHUDBtn**(获取背包按钮控件 生效范围：客户端 return -背包按钮控件)
- **GetDefaultMode**(获取默认背包模式 生效范围：客户端 return -背包模式)
- **HUDBtn**(boolbVisible) — 显示背包按钮逻辑 生效范围：客户端 params bVisible -是否显示
- **BattleMainPanel**(关闭战斗背包界面 生效范围：客户端)
- **LobbyPanel**(关闭大厅背包界面 生效范围：客户端)
- **LobbyBackpackMainUI**(numberMode) — 打开大厅背包界面 生效范围：客户端 params Mode -1:背包+装备栏 2:背包+仓库 3:背包+装备栏+仓库
- **BattleMainPanel**(numberStyle, numberMode) — 打开战斗背包界面 生效范围：客户端 params Style -0全屏，1半屏 params Mode -1:背包+装备栏 2:背包+仓库 3:背包+装备栏+仓库
- **OpenBattleMainPanel**(UUserWidgetPanel) — 背包UI打开后执行 params Panel -背包主界面控件
- **CloseBattleMainPanel**(UUserWidgetPanel) — 背包UI关闭后执行 params Panel -背包主界面控件
- **OpenDeletePanel**(UUserWidgetPanel) — 当打开删除弹窗时调用 params Panel -面板控件
- **LockBackpackItem**(numbertype) — 点击上锁格子的响应函数 生效范围：客户端 params type -类型 [0:背包数据, 1:仓库数据]
- **ClickLockBackpackItem**(UUserWidgetPanel) — 当打开解锁弹窗时调用 params Panel -面板控件
- **IsDiscardAreaVisible**(是否显示丢弃区域 生效范围：客户端 return -是否显示丢弃区域)
- **OpenSaveOrWithDrawPanel**(UUserWidgetPanel) — 当打开存入取出代币时调用 params Panel -面板控件
- **CompareQuality**(tableData1, tableData2) — 默认排序函数 生效范围: 客户端 return -true:物品1在前, false:物品2在前 params Data1 -物品数据1 {DefineID:物品DefineID, Idx:格子索引} params Data2 -物品数据2 {DefineID:物品DefineID, Idx:格子索引} GetHUDBtn GetDefaultMode ShowHUDBtn CloseBattleMainPanel CloseLobbyPanel OpenLobbyBackpackMainUI OpenBattleMainPanel OnOpenBattleMainPanel OnCloseB

## BP_UGCPickUpListComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/BP_UGCPickUpListComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FBP_UGCPickUpListComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=BP_UGCPickUpListComponent](https://developer.gp.qq.com/api/#/searchContent/BP_UGCPickUpListComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FBP_UGCPickUpListComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=BP_UGCPickUpListComponent)

类

全文搜索

UGC物品拾取组件

---


## 函数

- **Items**(物品排序比较函数：按有用性、规则优先级、自动拾取标记、OrderWeight排序 @param a table 物品数据A @param b table 物品数据B @return boolean a是否应该排在b前面)
- **Weapon**(武器规则：排除近战/弩 → 检查长枪/手枪槽位 手枪: 当前无手枪 + 长枪没满 + 开启"自动拾取手枪" → 自动拾取 长枪: 不足两把 → 自动拾取 @param ItemDefineID FItemDefineID 物品定义ID @param Count number 物品数量 @return table RuleResult)
- **Attachment**(配件规则：遍历所有武器检查配件适配性 有空位 → 拾取；比同槽位配件更好(OrderWeight/品质) → 替换拾取 快扩(Tag=Item.Attachments.Magazine)最高优先级：品质优先，OrderWeight次之 普通配件：OrderWeight优先，品质次之 @param ItemDefineID FItemDefineID 物品定义ID @param Count number 物品数量 @return table RuleResult)
- **Ammo**(弹药规则：遍历所有武器检查是否使用此弹药 需求总量 = RecommendPickCount(配表默认弹药量)* 使用该弹药的武器数 背包总弹量低于需求总量 → 拾取差值 @param ItemDefineID FItemDefineID 物品定义ID @param Count number 物品数量 @return table RuleResult)
- **Medicine**(药品规则：每种药品单独配置拾取数量(RecommendPickCount) 背包数量低于推荐值 → 拾取差值 @param ItemDefineID FItemDefineID 物品定义ID @param Count number 物品数量 @return table RuleResult)
- **Throwable**(投掷物规则：背包数量低于RecommendPickCount → 拾取差值 @param ItemDefineID FItemDefineID 物品定义ID @param Count number 物品数量 @return table RuleResult)
- **ArmorBackpack**(防具背包规则：遍历背包找同类型装备比较 背包: 比较 OrderWeight（排序权重高的优先） 装备(头盔/护甲): 比较品质和耐久度 品质更高 → 替换；同品质比较 OrderWeight 高品质耐久低于阈值(ArmorDurabilityThreshold) → 可被低品质替换 @param ItemDefineID FItemDefineID 物品定义ID @param Count number 物品数量 @return table RuleResult)
- **GeneralOrder**(通用排序规则(所有物品)：score = Handle.OrderWeight* 100 + 品质 用于兜底排序，不触发自动拾取 @param ItemDefineID FItemDefineID 物品定义ID @param Count number 物品数量 @return table RuleResult SortItems RuleWeapon RuleAttachment RuleAmmo RuleMedicine RuleThrowable RuleArmorBackpack RuleGeneralOrder)

## BP_UGCVehicleRefresherTool

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/BP_UGCVehicleRefresherTool?classDetailShow=true&path=class%2Fdetail%2FOthers%2FBP_UGCVehicleRefresherTool.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=BP_UGCVehicleRefresherTool](https://developer.gp.qq.com/api/#/searchContent/BP_UGCVehicleRefresherTool?classDetailShow=true&path=class%2Fdetail%2FOthers%2FBP_UGCVehicleRefresherTool.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=BP_UGCVehicleRefresherTool)

类

全文搜索

载具刷新器工具，用于管理载具的自动刷新和生成

---


## 函数

- **VehicleEventListener**(functioncallback, anycontext) — 添加载具生成事件监听器，外部代码调用此方法注册载具生成事件监听 生效范围：服务器 params callback -回调函数，参数为(Vehicle) params context -上下文对象（可选）
- **VehicleDriveAwayEventListener**(functioncallback, anycontext) — 添加载具开走事件监听器，外部代码调用此方法注册载具开走事件监听 生效范围：服务器 params callback -回调函数，参数为(Vehicle) params context -上下文对象（可选）
- **VehicleEventListener**(functioncallback, anycontext) — 移除载具生成事件监听器 生效范围：服务器 params callback -回调函数 params context -上下文对象
- **VehicleDriveAwayEventListener**(functioncallback, anycontext) — 移除载具开走事件监听器 生效范围：服务器 params callback -回调函数 params context -上下文对象
- **GenerateVehicle**(根据权重配置随机生成载具 生效范围：服务器 return -true-生成成功, false-生成失败)
- **GenerateCustomizeVehicle**(stringVehiclePath) — 生成指定的载具蓝图 生效范围：服务器 return -true-生成成功, false-生成失败 params VehiclePath -载具蓝图路径，如"/Game/Arts_PlayerBluePrints/Vehicle/VH_Buggy/BP_VH_Buggy.BP_VH_Buggy_C"
- **DestroyCurrentVehicle**(销毁当前刷新点管理的载具 生效范围：服务器 return -true-销毁成功, false-销毁失败)
- **ResetVehicleRespawnPoint**(重置载具刷新点，如果载具还在原地，先销毁再重新刷新 生效范围：服务器 return -true-重置成功, false-重置失败)
- **GetVehicleRespawnPointConfig**(获取配置的载具列表信息 生效范围：服务器&客户端 return -载具配置列表，包含index、path、weight字段)
- **GetVehicleStatusConfig**(获取当前车辆的实时状态信息 生效范围：服务器&客户端 return -当前车辆信息（包含isValid、location、healthState、hasDriver等字段），如无车辆返回false AddVehicleEventListener AddVehicleDriveAwayEventListener RemoveVehicleEventListener RemoveVehicleDriveAwayEventListener GenerateVehicle GenerateCustomizeVehicle DestroyCurrentVehicle ResetVehicleRespaw)

