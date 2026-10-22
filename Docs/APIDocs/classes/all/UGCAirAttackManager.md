# UGCAirAttackManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCAirAttackManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCAirAttackManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAirAttackManager](https://developer.gp.qq.com/api/#/searchContent/UGCAirAttackManager?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCAirAttackManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAirAttackManager)

类

全文搜索

UGC轰炸区全局管理器

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| number | **ExecuteAirAttack** | number|UGCAirAttackConfigConfigInput, FVector|nilCenterLocation | return -空袭实例唯一标识符 params ConfigInput -空袭配置索引或配置对象 params CenterLocation -轰炸中心位置，nil时使用原点（系统会自动通过射线检测将炸弹位置修正到地面高度） |
| Abort | **AirAttack** | numberInstanceID | params InstanceID -要终止的空袭实例ID，nil时终止所有空袭 |
| Multicast_ | **ExecuteAirAttack** | tableBroadcastData | params BroadcastData -广播数据 {InstanceID, Seed, CenterLocation, GeneratedBy} |
| Multicast_ | **AbortAirAttack** | numberInstanceID | params InstanceID -要终止的空袭实例ID，nil时终止所有空袭 ExecuteAirAttack AbortAirAttack Multicast_ExecuteAirAttack Multicast_AbortAirAttack |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| @param | **InstanceID** | number @轰炸实例唯一标识符 @param CenterLocation FVector @轰炸中心位置坐标 UGCAirAttackManager.SuccessfullyStopBombing 轰炸区停止成功事件 当轰炸区域被成功停止（主动停止或异常结束）时触发 生效范围：服务器&客户端 @param InstanceID number @被停止的轰炸实例唯一标识符 UGCAirAttackManager.NormalEndBombing 轰炸正常结束事件 当轰炸区域按计划完成所有炸弹投放后正常结束时触发 生效范围：服务器&客户端 @param InstanceID number @ |

