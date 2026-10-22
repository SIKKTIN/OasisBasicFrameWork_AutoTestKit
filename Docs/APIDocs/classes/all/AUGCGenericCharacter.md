# AUGCGenericCharacter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AUGCGenericCharacter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCGenericCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCGenericCharacter](https://developer.gp.qq.com/api/#/searchContent/AUGCGenericCharacter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAUGCGenericCharacter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AUGCGenericCharacter)

类

全文搜索

怪物角色类

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| UBlackboardComponent * | **GetBlackBoardComponent** |  | 获取黑板组件 生效范围：服务器 |
| void | **SetForceHatredTarget** | AActor *NewTarget | 设置当前强制仇恨目标 生效范围：服务器 params NewTarget -仇恨目标 |
| void | **RemoveForceHatredTarget** |  | 清除强制仇恨目标 生效范围：服务器 |
| void | **AddTargetHatredValue** | AActor * Target, floatHatredValue | 增加目标仇恨值 生效范围：服务器 params Target -目标 事件 |
| void | **OnEnterTagState_BP** | FGameplayTagDynamicState | 状态进入事件 生效范围：服务器&客户端 params DynamicState -进入状态 |
| void | **OnLeaveTagState_BP** | FGameplayTagDynamicState | 状态退出事件 生效范围：服务器&客户端 params DynamicState -退出状态 |
| void | **OnInterruptTagState_BP** | FGameplayTagDynamicState | 状态打断事件 生效范围：服务器&客户端 params DynamicState -打断状态 |
| void | **OnBehaviorNotify_BP** | FString &NotifyMsg | 行为树消息 生效范围：服务器 params NotifyMsg -消息 |
| void | **OnArriveWaypoint_BP** | int32 &WaypointIndex | 行为树消息 生效范围：服务器 GetBlackBoardComponent SetForceHatredTarget RemoveForceHatredTarget AddTargetHatredValue 事件 OnEnterTagState_BP OnLeaveTagState_BP OnInterruptTagState_BP OnBehaviorNotify_BP OnArriveWaypoint_BP |

## 委托

- voidOnCreateHealthWidget(UUGCGenericCharacterPositionWidget*HealthWidget)
- 血条创建成功事件
- OnCreateHealthWidget

