# UBehaviorTreeComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBehaviorTreeComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBehaviorTreeComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBehaviorTreeComponent](https://developer.gp.qq.com/api/#/searchContent/UBehaviorTreeComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBehaviorTreeComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBehaviorTreeComponent)

类

全文搜索

---


## 函数

- **GetTagCooldownEndTime**(FGameplayTagCooldownTag) — return -the cooldown tag end time, 0.0f if CooldownTag is not found
- **AddCooldownTagDuration**(FGameplayTag CooldownTag, float CooldownDuration, boolbAddToExistingDuration) — add to the cooldown tag's duration
- **SetDynamicSubtree**(FGameplayTag InjectTag, UBehaviorTree *BehaviorAsset) — assign subtree to RunBehaviorDynamic task specified by tag
- **GetUGCMobBTDebugInfo**(FUGCMobBTDebugInfo& OutTreeInfo, TArray < FUGCMobBTBlackBoardInfo > &OutBlackBoardInfo) — GetTagCooldownEndTime AddCooldownTagDuration SetDynamicSubtree GetUGCMobBTDebugInfo

## 属性

- **nodes** — NodeInstances