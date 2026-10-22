# UGCAttributeSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCAttributeSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCAttributeSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAttributeSystem](https://developer.gp.qq.com/api/#/searchContent/UGCAttributeSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCAttributeSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAttributeSystem)

类

全文搜索

属性系统接口库

---


## 函数

- **GetGameAttributeValue**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType
- **GameAttributeValue**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType, numberValue
- **GetGameAttributeValueMax**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType
- **GetGameAttributeValueMin**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType
- **GameAttributeValue**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType, numberValue
- **AddGameAttributeOperation**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType, EAttrOperatorOperateType, numberValue
- **GameAttributeOperation**(AActorAttributeOwner, stringOperateUniqueID) — 对指定属性移除特定的数值修改操作 生效范围：服务器 params AttributeOwner -操作属性的对象 （如玩家，枪械等，暂不支持带属性组件的普通Actor） params OperateUniqueID -操作属性时返回的唯一ID
- **AddGameAttributeChangedDelegate**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType, functionCallbackFunction
- **GameAttributeChangedDelegate**(AActorAttributeOwner, UGCNativeGameAttributeType) — UGCCustomGameAttributeType @操作属性的枚举AttributeType, DelegateChangedDelegate
- **ObjectGetSourceObjectFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的原对象 生效范围：服务器 return -原对象 params Context -伤害事件上下文
- **ActorGetVictimFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的受害者 生效范围：服务器 return -受害者 params Context -伤害事件上下文
- **ActorGetCauserFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的攻击者 生效范围：服务器 return -攻击者(如玩家，怪物, 枪械等) params Context -伤害事件上下文
- **ControllerGetInstigatorFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的攻击者Controller 生效范围：服务器 return -攻击者Controller(如玩家PlayerController，怪物AIController, 枪械所属角色的Controller等) params Context -伤害事件上下文
- **GetSourceMagnitudeFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的原伤害数值 生效范围：服务器 return -伤害数值 params Context -伤害事件上下文
- **RestrictedDamageTypeGetDamageTypeFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的伤害类型 生效范围：服务器 return -伤害类型 params Context -伤害事件上下文
- **GetDamageTagsFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的伤害Tags 生效范围：服务器 return -伤害Tags params Context -伤害事件上下文
- **GetRecoverTagsFromContext**(FGameMagnitudeContextContext) — 获取治疗事件上下文中的治疗Tags 生效范围：服务器 return -伤害Tags params Context -治疗事件上下文
- **ActorGetRecoveredActorFromContext**(FGameMagnitudeContextContext) — 获取治疗上下文中的被治疗者 生效范围：服务器 return -被治疗者 params Context -治疗事件上下文
- **AvatarDamagePositionGetDamagePositionTypeFromContext**(FGameMagnitudeContextContext) — 获取伤害事件上下文中的伤害部位类型 生效范围：服务器 return -伤害部位类型 params Context -伤害事件上下文 GetGameAttributeValue SetGameAttributeValue GetGameAttributeValueMax GetGameAttributeValueMin AddGameAttributeValue AddGameAttributeOperation RemoveGameAttributeOperation AddGameAttributeChangedDelegate RemoveGameAttributeChangedDeleg