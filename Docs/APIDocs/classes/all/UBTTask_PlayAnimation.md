# UBTTask_PlayAnimation

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBTTask_PlayAnimation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_PlayAnimation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_PlayAnimation](https://developer.gp.qq.com/api/#/searchContent/UBTTask_PlayAnimation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBTTask_PlayAnimation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBTTask_PlayAnimation)

类

全文搜索

Play indicated AnimationAsset on Pawn controlled by BT Note that this node is generic and is handing multiple special cases, If you want a more efficient solution you'll need to implement it yourself (or wait for our BTTask_PlayCharacterAnimation)

---

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Animation | **asset** | to play. Note that it needs to match the skeleton of pawn this BT is controlling if true the task will just trigger the animation and instantly finish. Fire and Forget. UBehaviorTreeComponent *MyOwnerComp USkeletalMeshComponent *CachedSkelMesh AnimationToPlay bLooping bNonBlocking MyOwnerComp Cached |

