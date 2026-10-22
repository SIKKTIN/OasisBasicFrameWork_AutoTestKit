# UBTTask_SetTagCooldown

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_SetTagCooldown?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_SetTagCooldown.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_SetTagCooldown](https://developer.gp.qq.com/api/#/searchContent/UBTTask_SetTagCooldown?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_SetTagCooldown.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_SetTagCooldown)

类

全文搜索

Cooldown task node. Sets a cooldown tag value. Use with cooldown tag decorators to prevent behavior tree execution.

---

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Gameplay | **tag** | that will be used for the cooldown. True if we are adding to any existing duration, false if we are setting the duration (potentially invalidating an existing end time). Value we will add or set to the Cooldown tag when this task runs. CooldownTag bAddToExistingDuration CooldownDuration |

