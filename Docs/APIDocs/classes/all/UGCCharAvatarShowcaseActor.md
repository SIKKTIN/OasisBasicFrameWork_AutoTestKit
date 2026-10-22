# UGCCharAvatarShowcaseActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCCharAvatarShowcaseActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCCharAvatarShowcaseActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCharAvatarShowcaseActor](https://developer.gp.qq.com/api/#/searchContent/UGCCharAvatarShowcaseActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCCharAvatarShowcaseActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCharAvatarShowcaseActor)

类

全文搜索

复制玩家角色Avatar的Actor

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Client | **ShowAvatar** | numberPlayerUID | 显示PlayerUID的Avatar 生效范围：客户端 params PlayerUID -玩家的 PlayerUID |
| Server | **ShowAvatar** | numberPlayerUID | 显示PlayerUID的Avatar 生效范围：服务端 params PlayerUID -玩家的 PlayerUID |
| Play | **Anim** | UAnimationAssetNewAnimToPlay, booleanbLooping | 播放动画 生效范围：客户端 params NewAnimToPlay -动画资源 params bLooping -是否循环播放 ClientShowAvatar ServerShowAvatar PlayAnim |

