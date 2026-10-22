# AActivityBaseActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AActivityBaseActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAActivityBaseActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AActivityBaseActor](https://developer.gp.qq.com/api/#/searchContent/AActivityBaseActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAActivityBaseActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AActivityBaseActor)

类

全文搜索

可实现可交互物基础功能的Actor

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| F | **NameGetCurrentStateName** |  | 生效范围：SC 获取当前状态名 return -当前状态名 |
| float | **GetCurrentStateTime** |  | 生效范围：SC 获取进入当前状态后所经过的时间 return -当前状态经过的时间 |
| void | **JumpToState** | FName StateName, float EnterTime, boolbPause | 生效范围：S 跳转到指定状态 params StateName -要跳转的状态名 params EnterTime -进入状态的时间 params bPause -是否暂停 |
| void | **Pause** |  | 生效范围：S 暂停当前状态的sequence的播放 |
| void | **Resume** |  | 生效范围：S 恢复当前状态的sequence的播放 |
| bool | **CheckCurrentStateIsEntry** |  | 生效范围：SC 检查当前状态是否为状态机的入口状态 return -是否为入口状态 |
| bool | **GetCurrentSequnceIsEnd** |  | 生效范围：SC 检查当前sequence是否播放完毕 return -是否播放完毕 事件 |
| void | **OnEnterState_BP** | FNameStateName | 进入某个状态触发 params StateName -状态名 |
| void | **OnPlayerAttachedToThisActor_BP** | ASTExtraCharacter *Player | 当角色Attach到这个Actor时触发 params Player -Attach的角色 |
| void | **OnPlayerBeforeAttachedToThisActor_BP** | ASTExtraCharacter *Player | 当角色Attach到这个Actor前触发 params Player -Attach的角色 |
| void | **OnPlayerDettachedToThisActor_BP** | ASTExtraCharacter *Player | 当角色从Actor上Detach时触发 params Player -Detach的角色 GetCurrentStateName GetCurrentStateTime JumpToState Pause Resume CheckCurrentStateIsEntry GetCurrentSequnceIsEnd 事件 OnEnterState_BP OnPlayerAttachedToThisActor_BP OnPlayerBeforeAttachedToThisActor_BP OnPlayerDettachedToThisActor_BP |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| @param | **LeaveState** | 离开的状态 名 @param EnterState 进入的状态名 OnActivityActorChangeState |

## 委托

- voidOnPlayerAttachedDelegate(ASTExtraCharacter*Player)
- 角色Attach事件委托
- params Player
- -Attach的角色
- voidOnPlayerDettachedDelegate(ASTExtraCharacter*Player)
- 角色Detach事件委托
- params Player
- -Detach的角色
- OnPlayerAttachedDelegate
- OnPlayerDettachedDelegate

