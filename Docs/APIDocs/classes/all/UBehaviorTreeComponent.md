# UBehaviorTreeComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBehaviorTreeComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBehaviorTreeComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBehaviorTreeComponent](https://developer.gp.qq.com/api/#/searchContent/UBehaviorTreeComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBehaviorTreeComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBehaviorTreeComponent)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| float | **GetTagCooldownEndTime** | FGameplayTagCooldownTag | return -the cooldown tag end time, 0.0f if CooldownTag is not found |
| void | **AddCooldownTagDuration** | FGameplayTag CooldownTag, float CooldownDuration, boolbAddToExistingDuration | add to the cooldown tag's duration |
| void | **SetDynamicSubtree** | FGameplayTag InjectTag, UBehaviorTree *BehaviorAsset | assign subtree to RunBehaviorDynamic task specified by tag |
| void | **GetUGCMobBTDebugInfo** | FUGCMobBTDebugInfo & OutTreeInfo, TArray < FUGCMobBTBlackBoardInfo > &OutBlackBoardInfo | GetTagCooldownEndTime AddCooldownTagDuration SetDynamicSubtree GetUGCMobBTDebugInfo |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| instanced | **nodes** |  NodeInstances |

