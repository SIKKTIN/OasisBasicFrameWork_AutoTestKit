# UGCPersistEffectSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPersistEffectSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCPersistEffectSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPersistEffectSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPersistEffectSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCPersistEffectSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPersistEffectSystem)

类

全文搜索

新技能和Buff系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| U | **PersistEffectSkillAddSkillByClass** | AActorTargetActor, UClass|stringSkillClass, numberOverrideApplyTime, UGCGameplayTag|string|FGameplayTagSlot | 给指定拥有新技能组件的目标 Actor 添加技能 生效范围：服务器 return -技能对象 params TargetActor -拥有新技能组件的目标Actor params SkillClass -技能蓝图类或蓝图路径 params OverrideApplyTime -技能生效时长(可选，默认为技能类中配置的时长) params Slot -由Tag标识的技能槽位 |
| boolean | **RemoveSkillInstance** | AActorTargetActor, UPersistEffectSkillSkillInstance | 给指定拥有新技能组件的目标 Actor 移除技能 生效范围：服务器 return -是否移除成功 params TargetActor -拥有新技能组件的目标 Actor params SkillInstance -技能对象 |
| UPersistEffectSkill[] | **GetSkillsByClass** | AActorTargetActor, UClass|stringSkillClass | 从指定拥有新技能组件的目标 Actor 获取指定类型的技能 生效范围：服务器&客户端 return -技能列表 params TargetActor -拥有新技能组件的目标Actor params SkillClass -技能蓝图类或蓝图路径,为空时获取所有技能 |
| UPersistEffectSkill[] | **GetSkillsByTag** | AActorTargetActor, UGCGameplayTag|string|FGameplayTagTag | 从指定拥有新技能组件的目标 Actor 获取拥有指定 Tag 的技能 生效范围：服务器&客户端 return -技能列表 params TargetActor -拥有新技能组件的目标Actor params Tag -需要获取的技能所包含的 Tag,为空时获取所有技能 |
| U | **PersistEffectBuffAddBuffByClass** | AActorTargetActor, UClass|stringBuffClass, AActorCauser, numberOverrideDuration, numberStackNum | 给指定拥有新技能组件的目标 Actor 添加 Buff 生效范围：服务器 return -Buff对象 params TargetActor -拥有新技能组件的目标 Actor params BuffClass -Buff 蓝图类或蓝图路径 params Causer -Buff释放者（可选，默认为空） params OverrideDuration -技能生效时长（可选，默认为-1代表Buff类中配置的时长） params StackNum -Buff的堆叠层数（可选，默认为 1 层） |
| boolean | **RemoveBuffByClass** | AActorTargetActor, UClass|stringBuffClass, numberRemoveNum, AActorCauser | 给指定拥有新技能组件的目标 Actor 移除 Buff 生效范围：服务器 return -是否移除成功 params TargetActor -拥有新技能组件的目标 Actor params BuffClass -Buff 蓝图类或蓝图路径 params RemoveNum -Buff减少堆叠数量（可选，默认-1移除全部层） params Causer -筛选特定的释放者（可选，默认不筛选） |
| boolean | **RemoveBuffByTag** | AActorTargetActor, UGCGameplayTag|string|FGameplayTagTag, numberRemoveNum, AActorCauser | 给指定拥有新技能组件的目标 Actor 移除包含某个 Tag 的 Buff 生效范围：服务器 return -是否移除成功 params TargetActor -拥有新技能组件的目标 Actor params Tag -需要移除的 Buff 所包含的 Tag params RemoveNum -Buff 减少堆叠数量（可选，默认移除全部层） params Causer -筛选特定的释放者(可选，默认不筛选) |
| UPersistEffectBuff[] | **GetBuffsByClass** | AActorTargetActor, UClass|stringBuffClass | 从指定拥有新技能组件的目标 Actor 获取指定类型的Buff 生效范围：服务器&客户端 return -Buff列表 params TargetActor -拥有新技能组件的目标Actor params BuffClass -Buff蓝图类或蓝图路径,为空时获取所有Buff |
| UPersistEffectBuff[] | **GetBuffsByTag** | AActorTargetActor, UGCGameplayTag|string|FGameplayTagTag | 从指定拥有新技能组件的目标 Actor 获取拥有指定Tag的Buff 生效范围：服务器&客户端 return -Buff列表 params TargetActor -拥有新技能组件的目标Actor params Tag -需要获取的 Buff 所包含的 Tag,为空时获取所有Buff |
| boolean | **HasDynamicState** | AActorTargetActor, UGCGameplayTag|string|FGameplayTagDynamicStateTag | 检查指定拥有新技能组件的目标 Actor 是否包含某个 Tag 标识的状态 生效范围：服务器&客户端 return -是否拥有 Tag 标识的状态 params TargetActor -拥有新技能组件的目标 Actor params DynamicStateTag -需要检查的 Tag 标识的状态 |
| boolean | **AllowDynamicState** | AActorTargetActor, UGCGameplayTag|string|FGameplayTagDynamicStateTag | 检查指定拥有新技能组件的目标 Actor 是否允许进入某个 Tag 标识的状态 生效范围：服务器 return -是否允许进入 Tag 标识的状态 params TargetActor -拥有新技能组件的目标 Actor params DynamicStateTag -需要检查的 Tag 标识的状态 |
| boolean | **EnterDynamicState** | AActorTargetActor, UGCGameplayTag|string|FGameplayTagDynamicStateTag | 尝试让拥有新技能组件的目标 Actor 获取指定 Tag 标识的状态，多次获取同一个 Tag 会叠加计数 生效范围：服务器 return -是否成功 params TargetActor -拥有新技能组件的目标 Actor params DynamicStateTag -需要添加的 Tag 标识的状态 |
| boolean | **LeaveDynamicState** | AActorTargetActor, UGCGameplayTag|string|FGameplayTagDynamicStateTag | 尝试从拥有新技能组件的目标 Actor 移除指定 Tag 标识的状态 生效范围：服务器 return -是否有剩余的 Tag。若移除 Tag 的一次计数后还有剩余则返回 False，若全部没有剩余则返回 True params TargetActor -拥有新技能组件的目标 Actor params DynamicStateTag -需要移除的 Tag 标识的状态 |
| boolean | **InterruptDynamicState** | AActorTargetActor, UGCGameplayTag|string|FGameplayTagDynamicStateTag | 将拥有新技能组件的目标 Actor 的 Tag 标识的状态移除并触发打断事件 生效范围：服务器 return -是否成功打断 params TargetActor -拥有新技能组件的目标 Actor params DynamicStateTag -需要打断的 Tag 标识的状态 |
| Set | **DynamicStateDisabled** | AActorTargetActor, UGCGameplayTag|string|FGameplayTagDynamicStateTag, booleanbNewDisabled, booleanbInterrupt | 设置由 Tag 标识的状态的是否禁用，Actor 中 Tag 的禁用计数大于 0 时禁用生效 - bNewDisabled == True：将拥有新技能组件的目标 Actor 的一组 Tag 标识的状态进行打断，并为这一组 Tag 的禁用计数 +1 - bNewDisabled == false：将拥有新技能组件的目标 Actor 的一组 Tag 标识的状态禁用计数 -1 生效范围：服务器 params TargetActor -拥有新技能组件的目标 Actor params DynamicStateTag -需要增加或减少禁用的 Tag 标识的状态 params bNewDisabled - |
| Reset | **DynamicStateDisabled** | AActorTargetActor, UGCGameplayTag|string|FGameplayTagDynamicStateTag | 重置被禁用的由 Tag 标识的状态，重置后目标 Actor 将允许进入这个 Tag 标识的状态 生效范围：服务器 params TargetActor -拥有新技能组件的目标 Actor params DynamicStateTag -需要增加或减少禁用的 Tag 标识的状态 |
| @ | **UPersistBaseComponentGetPersistBaseComponentByContent** | AActorTargetActor | 从拥有新技能组件的目标 Actor 上获取 PersistBaseComponent 组件 生效范围：服务器 return UPersistBaseComponent -组件 params TargetActor -拥有新技能组件的目标 Actor |
| number | **AddOcclusionHighlight** | ACharacterTargetCharacter, AActorCauser, EPEBuffOcclusionHighlightTypeType, FLinearColorColor | 添加透视效果 生效范围：客户端 return -透视ID，用于移除透视效果,<=0为无效值 params TargetCharacter -被透视的角色或怪 params Causer -透视的发起方 params Type -透视类型(仅Causer透视/Causer及其队友透视/所有人) params Color -透视颜色 |
| Remove | **OcclusionHighlight** | UObjectWorldContextObject, numberOcclusionID | 移除透视效果 生效范围：客户端 params WorldContextObject -世界上下文对象 params OcclusionID -透视ID，AddOcclusionHighlight函数的返回值, <=0为无效值 |
| Add | **FresnelEffect** | ACharacterTargetCharacter, FLinearColorColor, numberDuration | 添加菲涅尔效果 生效范围：客户端 params TargetCharacter -被透视的角色或怪 params Color -颜色 params Duration -时长 |
| AActor[] | **PickTargets** | AActorOwnerActor, FTransformStartTransform, FTargetPickerParamsTargetPickerParams, AActor[]IgnoreActors | 选取参数指定范围内的目标 生效范围：服务器&客户端 return -选中的目标 params OwnerActor -发起选目标的角色 params StartTransform -Picker开始位置 params TargetPickerParams -Picker参数 params IgnoreActors -忽略的Actors AddSkillByClass RemoveSkillInstance GetSkillsByClass GetSkillsByTag AddBuffByClass RemoveBuffByClass RemoveBuffByTag GetBuffsByClas |

