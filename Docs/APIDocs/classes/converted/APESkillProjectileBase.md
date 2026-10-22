# APESkillProjectileBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/APESkillProjectileBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPESkillProjectileBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APESkillProjectileBase](https://developer.gp.qq.com/api/#/searchContent/APESkillProjectileBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAPESkillProjectileBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=APESkillProjectileBase)

类

全文搜索

通用抛体V2

事件

voidReceiveOnImpactBP(FHitResult & ImpactResult, FPESkillTargetData &TargetData)

碰撞时处理Action前的额外接口

生效范围：SC

voidPostReceiveOnImpactBP(FHitResult & ImpactResult, FPESkillTargetData &TargetData)

碰撞处理Action结束后的额外接口

生效范围：SC

voidReceiveStoppedBP(FHitResult &LastHitResult)

完全停止后的额外接口

生效范围：SC

AActor *SearchTargetActorByPriorityBP(TArray < AActor * > & InActors, AActor *CurrentTarget)

弹射轨迹的自定义优先级算法

生效范围：S

return

-AActor 最后返回的结果对象

params InActors

-传入的Actor数组

params CurrentTarget

-当前碰撞对象

事件

ReceiveOnImpactBP

PostReceiveOnImpactBP

ReceiveStoppedBP

SearchTargetActorByPriorityBP

---