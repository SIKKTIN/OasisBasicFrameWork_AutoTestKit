# UGCPersistEffectSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPersistEffectSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCPersistEffectSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPersistEffectSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPersistEffectSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCPersistEffectSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPersistEffectSystem)

类

全文搜索

新技能和Buff系统接口库

---


## 函数

- **PersistEffectSkillAddSkillByClass**(AActorTargetActor, UClass) — stringSkillClass, numberOverrideApplyTime, UGCGameplayTag
- **RemoveSkillInstance**(AActorTargetActor, UPersistEffectSkillSkillInstance) — 给指定拥有新技能组件的目标 Actor 移除技能 生效范围：服务器 return -是否移除成功 params TargetActor -拥有新技能组件的目标 Actor params SkillInstance -技能对象
- **GetSkillsByClass**(AActorTargetActor, UClass) — stringSkillClass
- **GetSkillsByTag**(AActorTargetActor, UGCGameplayTag) — string
- **PersistEffectBuffAddBuffByClass**(AActorTargetActor, UClass) — stringBuffClass, AActorCauser, numberOverrideDuration, numberStackNum
- **RemoveBuffByClass**(AActorTargetActor, UClass) — stringBuffClass, numberRemoveNum, AActorCauser
- **RemoveBuffByTag**(AActorTargetActor, UGCGameplayTag) — string
- **GetBuffsByClass**(AActorTargetActor, UClass) — stringBuffClass
- **GetBuffsByTag**(AActorTargetActor, UGCGameplayTag) — string
- **HasDynamicState**(AActorTargetActor, UGCGameplayTag) — string
- **AllowDynamicState**(AActorTargetActor, UGCGameplayTag) — string
- **EnterDynamicState**(AActorTargetActor, UGCGameplayTag) — string
- **LeaveDynamicState**(AActorTargetActor, UGCGameplayTag) — string
- **InterruptDynamicState**(AActorTargetActor, UGCGameplayTag) — string
- **DynamicStateDisabled**(AActorTargetActor, UGCGameplayTag) — string
- **DynamicStateDisabled**(AActorTargetActor, UGCGameplayTag) — string
- **UPersistBaseComponentGetPersistBaseComponentByContent**(AActorTargetActor) — 从拥有新技能组件的目标 Actor 上获取 PersistBaseComponent 组件 生效范围：服务器 return UPersistBaseComponent -组件 params TargetActor -拥有新技能组件的目标 Actor
- **AddOcclusionHighlight**(ACharacterTargetCharacter, AActorCauser, EPEBuffOcclusionHighlightTypeType, FLinearColorColor) — 添加透视效果 生效范围：客户端 return -透视ID，用于移除透视效果,<=0为无效值 params TargetCharacter -被透视的角色或怪 params Causer -透视的发起方 params Type -透视类型(仅Causer透视/Causer及其队友透视/所有人) params Color -透视颜色
- **OcclusionHighlight**(UObjectWorldContextObject, numberOcclusionID) — 移除透视效果 生效范围：客户端 params WorldContextObject -世界上下文对象 params OcclusionID -透视ID，AddOcclusionHighlight函数的返回值, <=0为无效值
- **FresnelEffect**(ACharacterTargetCharacter, FLinearColorColor, numberDuration) — 添加菲涅尔效果 生效范围：客户端 params TargetCharacter -被透视的角色或怪 params Color -颜色 params Duration -时长
- **PickTargets**(AActorOwnerActor, FTransformStartTransform, FTargetPickerParamsTargetPickerParams, AActor[]IgnoreActors) — 选取参数指定范围内的目标 生效范围：服务器&客户端 return -选中的目标 params OwnerActor -发起选目标的角色 params StartTransform -Picker开始位置 params TargetPickerParams -Picker参数 params IgnoreActors -忽略的Actors AddSkillByClass RemoveSkillInstance GetSkillsByClass GetSkillsByTag AddBuffByClass RemoveBuffByClass RemoveBuffByTag GetBuffsByClas