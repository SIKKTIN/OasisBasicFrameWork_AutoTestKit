# UGCGenericCharacterSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGenericCharacterSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCGenericCharacterSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGenericCharacterSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGenericCharacterSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCGenericCharacterSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGenericCharacterSystem)

类

全文搜索

怪物系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Kill | **GenericCharacter** | AUGCGenericCharacterGenericCharacter | 强制杀死怪物 生效范围：服务器 params GenericCharacter -怪物 |
| boolean | **IsAlive** | AUGCGenericCharacterGenericCharacter | 小怪是否存活 生效范围：服务器&客户端 return -小怪是否存活 params GenericCharacter -怪物 |
| boolean | **IsGenericCharacter** | AActorTarget | 目标是否为小怪 生效范围：服务器&客户端 return -是否为小怪 params Target -目标 |
| number | **GetHealth** | AUGCGenericCharacterGenericCharacter | 获取小怪血量 生效范围：服务器&客户端 return -血量 params GenericCharacter -怪物 |
| number | **GetHealthMax** | AUGCGenericCharacterGenericCharacter | 获取小怪血量上限 生效范围：服务器&客户端 return -血量上限 params GenericCharacter -怪物 |
| Set | **Health** | AUGCGenericCharacterGenericCharacter, numberHealth | 设置小怪血量 生效范围：服务器 params GenericCharacter -怪物 params Health -血量 |
| Set | **HealthMax** | AUGCGenericCharacterGenericCharacter, numberHealthMax | 设置小怪血量上限 生效范围：服务器 params GenericCharacter -怪物 params HealthMax -血量上限 |
| Enable | **Movement** | AUGCGenericCharacterGenericCharacter | 启动移动能力 生效范围：服务器 params GenericCharacter -怪物 |
| Disable | **Movement** | AUGCGenericCharacterGenericCharacter | 关闭移动能力 生效范围：服务器 params GenericCharacter -怪物 |
| Set | **AvoidanceGroup** | AUGCGenericCharacterGenericCharacter, EGenericAvoidanceGroupAvoidanceGroup | 设置避障组 生效范围：服务器 params GenericCharacter -怪物 params AvoidanceGroup -避障组 |
| Move | **To** | AUGCGenericCharacterGenericCharacter, FVectorInDestination, numberInStopRadius | 移动到目标位置(注意不要和行为树移动冲突) 生效范围：服务器 params GenericCharacter -怪物 params InDestination -目的地 params InStopRadius -停止距离 |
| Stop | **Move** | AUGCGenericCharacterGenericCharacter | 停止移动(注意不要和行为树移动冲突) 生效范围：服务器 params GenericCharacter -怪物 |
| F | **VectorGetCurrentVelocity** | AUGCGenericCharacterGenericCharacter | 获取当前怪物动量 生效范围：服务器/客户端 return -当前动量 params GenericCharacter -怪物 |
| Set | **MaxSpeed** | AUGCGenericCharacterGenericCharacter, numberInSpeed, numberReason | 设置最大移动速度 生效范围：服务器 params GenericCharacter -怪物 params InSpeed -速度 params Reason -原因 |
| number | **GetMaxSpeed** | AUGCGenericCharacterGenericCharacter | 获取最大移动速度 生效范围：服务器 return -最大移动速度 params GenericCharacter -怪物 |
| number | **GetDefaultMaxSpeed** | AUGCGenericCharacterGenericCharacter | 获取默认最大移动速度 生效范围：服务器 return -默认最大移动速度 params GenericCharacter -怪物 |
| A | **ActorGetTargetEnemy** | AUGCGenericCharacterGenericCharacter | 获取当前仇恨目标 生效范围：服务器 return -当前仇恨对象 params GenericCharacter -怪物 |
| Run | **Behavior** | AUGCGenericCharacterGenericCharacter, stringBehaviorTreePath | 运行指定行为树 生效范围：服务器 params GenericCharacter -怪物 params BehaviorTreePath -行为树路径 |
| Stop | **Behavior** | AUGCGenericCharacterGenericCharacter, stringReason | 停止当前行为树 生效范围：服务器 params GenericCharacter -怪物 params Reason -原因 |
| Override | **BehaviorTreeSetting** | AUGCGenericCharacterGenericCharacter, FBehaviorTreeReflectSettingInBehaviorTreeSetting | 覆盖行为树设置并重新启动行为树 生效范围：服务器 params GenericCharacter -怪物 params InBehaviorTreeSetting -新的行为树设置 |
| F | **BehaviorTreeReflectSettingGetBehaviorTreeSetting** | AUGCGenericCharacterGenericCharacter | 获取当前行为树设置 生效范围：服务器 params GenericCharacter -怪物 |
| Pause | **Behavior** | AUGCGenericCharacterGenericCharacter, stringReason | 暂停当前行为树 生效范围：服务器 params GenericCharacter -怪物 params Reason -原因 |
| Resume | **Behavior** | AUGCGenericCharacterGenericCharacter, stringReason | 继续当前行为树 生效范围：服务器 params GenericCharacter -怪物 params Reason -原因 |
| Play | **AnimMontage** | AUGCGenericCharacterGenericCharacter, UAnimMontageAnimMontage, numberInPlayRate | 播放蒙太奇动画 生效范围：客户端 params GenericCharacter -怪物 params AnimMontage -蒙太奇动画 params InPlayRate -播放速率 |
| Play | **AnimMontageByTag** | AUGCGenericCharacterGenericCharacter, FGameplayTagAnimGameplayTag, numberInPlayRate | 通过Tag播放蒙太奇动画 生效范围：客户端 params GenericCharacter -怪物 params AnimGameplayTag -蒙太奇动画Tag params InPlayRate -播放速率 |
| Add | **OverrideAnimAsset** | AUGCGenericCharacterGenericCharacter, FGenericCharacterAnimOverrideDataData, numberBlendTime | 覆盖指定Tag的动画资源 生效范围：客户端 params GenericCharacter -怪物 params Data -覆写数据 params BlendTime -混合时间 |
| Remove | **OverrideAnimAsset** | AUGCGenericCharacterGenericCharacter, FGenericCharacterAnimOverrideDataData, numberBlendTime | 移除覆盖指定Tag的动画资源 生效范围：客户端 params GenericCharacter -怪物 params Data -覆写数据 params BlendTime -混合时间 |
| boolean | **IsEnableLogicPart** | AUGCGenericCharacterGenericCharacter, FGameplayTagInLogicPartTag | 是否启用LogicPart 生效范围：服务器 return -是否启用 params GenericCharacter -怪物 params InLogicPartTag -LogicPart Tag |
| A | **ActorSpawnGenericCharacter** | UObjectWorldContextObject, UClassGenericCharacterClass, FVectorLocation, FRotatorRotation | 在目标位置刷一个怪 生效范围：服务器 return -刷出的怪物 params WorldContextObject -世界上下文对象 params GenericCharacterClass -怪物的类 params Location -刷怪的位置 params Rotation -刷出怪物的朝向 |
| A | **ActorSpawnGenericCharacterByGroup** | UObjectWorldContextObject, numberGroupID, FVectorLocation, FRotatorRotation | 在目标位置根据怪物组表中的ID刷一个怪 生效范围：服务器 return -刷出的怪物 params WorldContextObject -世界上下文对象 params GroupID -怪物组表中的ID params Location -刷怪的位置 params Rotation -刷出怪物的朝向 |
| table | **RangeSpawnGenericCharacters** | UObjectWorldContextObject, UClassGenericCharacterClass, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberCount | 在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪 生效范围：服务器 return -刷出怪物的列表 params WorldContextObject -世界上下文对象 params GenericCharacterClass -怪物的类 params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params Count -刷出怪物的数量 |
| table | **RangeSpawnGenericCharactersByGroup** | UObjectWorldContextObject, numberGroupID, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberCount | 在指定位置的圆形范围中寻找合适的地面刷出指定数量的怪，怪物类型由怪物组表ID指定 生效范围：服务器 return -刷出怪物的列表 params WorldContextObject -世界上下文对象 params GroupID -怪物组表中的ID params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params Count -刷出怪物的数量 |
| Range | **SpawnGenericCharactersOnTime** | UObjectWorldContextObject, UClassGenericCharacterClass, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberMinSpawnCountPerLoop, numberMaxSpawnCountPerLoop, numberLoopTimes, numb | 在指定位置的圆形范围中每隔一定时间寻找合适的地面刷出一定数量的怪 生效范围：服务器 params WorldContextObject -世界上下文对象 params GenericCharacterClass -怪物类 params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params MinSpawnCountPerLoop -每次刷怪的最小数量 params MaxSpawnCountPerLoop -每次刷怪的最大 |
| Range | **SpawnGenericCharactersByGroupOnTime** | UObjectWorldContextObject, numberGroupID, FVectorLocation, FRotatorRotation, numberRange, numberHeightRange, numberMinSpawnCountPerLoop, numberMaxSpawnCountPerLoop, numberLoopTimes, numberIntervalMinT | 在指定位置的圆形范围中每个一定时间寻找合适的地面刷出一定数量的怪 生效范围：服务器 params WorldContextObject -世界上下文对象 params GroupID -怪物组表中的ID params Location -刷怪范围的中心位置 params Rotation -刷出怪物的朝向 params Range -刷怪圆形范围的半径 params HeightRange -怪物刷出位置与中心位置的最大高度差 params MinSpawnCountPerLoop -每次刷怪的最小数量 params MaxSpawnCountPerLoop -每次刷怪的最大数量 params |
| UPartTypeSocket[] | **GetPartTypeSockets** | ACharacterCharacter | 获取角色骨骼里所有的PartTypeSocket 生效范围：服务器&客户端 return -PartTypeSocket列表 params Character -角色 |
| U | **BlackboardComponentGetBlackboard** | AActorActor | 获取Actor的BlackboardComponent 生效范围：服务器 return -BlackboardComponent params Actor -Actor KillGenericCharacter IsAlive IsGenericCharacter GetHealth GetHealthMax SetHealth SetHealthMax EnableMovement DisableMovement SetAvoidanceGroup MoveTo StopMove GetCurrentVelocity SetMaxSpeed GetMaxSpeed GetDefaultMax |

