UGCSkillManagerSystem
【废弃】技能管理系统接口库
函数
SkillManagerComponentGetSkillManagerComponent(ActorActor)
【废弃】请使用 UGCPersistEffectSystem
获取技能组件
生效范围：服务器&客户端
return  
-技能组件
params Actor 
-Actor 对象
UseSkill(ActorActor, stringSkillName)
【废弃】请使用 UGCPersistEffectSystem
使用技能（技能列表中，技能需配置 SET_KEY_DOWN 事件触发）
生效范围：服务器&客户端
params Actor 
-Actor 对象
params SkillName 
-技能短名
StopSkill(ActorActor, stringSkillName)
【废弃】请使用 UGCPersistEffectSystem
停止技能
生效范围：服务器&客户端
params Actor 
-Actor 对象
params SkillName 
-技能短名
TriggerSkillEvent(ActorActor, stringSkillName, UTSkillEventTypeEventType)
【废弃】请使用 UGCPersistEffectSystem
使用技能（自定义触发事件类型）
生效范围：服务器&客户端
params Actor 
-Actor 对象
params SkillName 
-技能短名
params EventType 
-事件类型
UseSkillByPath(ActorActor, stringSkillPath)
【废弃】请使用 UGCPersistEffectSystem
根据技能路径使用技能（技能列表中，技能需配置 SET_KEY_DOWN 事件触发）
生效范围：服务器&客户端
params Actor 
-Actor 对象
params SkillPath 
-技能完整路径
StopSkillByPath(ActorActor, stringSkillPath)
【废弃】请使用 UGCPersistEffectSystem
根据技能路径停止技能
生效范围：服务器&客户端
params Actor 
-Actor 对象
params SkillPath 
-技能完整路径
TriggerSkillEventByPath(ActorActor, stringSkillPath, UTSkillEventTypeEventType)
【废弃】请使用 UGCPersistEffectSystem
生效范围：服务器&客户端
params Actor 
-Actor 对象
params SkillPath 
-技能完整路径
params EventType 
-事件类型
StopAllSkill(ActorActor)
【废弃】请使用 UGCPersistEffectSystem
停止所有技能
生效范围：服务器
params Actor 
-Actor 对象
AddSkill(ActorActor, stringSkillClassPath)
【废弃】请使用 UGCPersistEffectSystem
添加技能
生效范围：服务器
params Actor 
-Actor 对象
params SkillClassPath 
-技能完整路径
RemoveSkill(ActorActor, stringSkillClassPath)
【废弃】请使用 UGCPersistEffectSystem
移除技能
生效范围：服务器
params Actor 
-Actor 对象
params SkillClassPath 
-技能完整路径
booleanIsSkillRunning(ActorActor)
【废弃】请使用 UGCPersistEffectSystem
当前是否有技能在执行
生效范围：服务器&客户端
return  
-是否有技能在执行
params Actor 
-Actor 对象
numberGetSkillCD(ActorActor, stringSkillPath)
【废弃】请使用 UGCPersistEffectSystem
获取技能冷却
生效范围：服务器
return  
-技能冷却时间
params Actor 
-Actor 对象
params SkillPath 
-技能完整路径
SetSkillActive(ActorActor, stringSkillPath, booleanNewActive)
【废弃】请使用 UGCPersistEffectSystem
激活技能
生效范围：服务器
params Actor 
-Actor 对象
params SkillPath 
-技能完整路径
params NewActive 
-技能状态
TriggerStringEvent(ActorActor, stringSkillPath, stringEventString)
【废弃】请使用 UGCPersistEffectSystem
向技能抛出一个字符串类型的事件
生效范围：服务器
params Actor 
-Actor 对象
params SkillPath 
-技能完整路径
params EventString 
-字符串事件
TriggerUAEEvent(ActorActor, stringSkillPath, UAESkillEventEventType)
【废弃】请使用 UGCPersistEffectSystem
向技能抛出一个预定义的事件
生效范围：服务器
params Actor 
-Actor 对象
params SkillPath 
-技能完整路径
params EventType 
-预定义事件