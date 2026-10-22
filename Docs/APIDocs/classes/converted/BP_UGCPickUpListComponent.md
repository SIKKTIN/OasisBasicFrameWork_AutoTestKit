# BP_UGCPickUpListComponent

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