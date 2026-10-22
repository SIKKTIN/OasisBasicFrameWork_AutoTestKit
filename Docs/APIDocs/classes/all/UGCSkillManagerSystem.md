# UGCSkillManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCSkillManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCSkillManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSkillManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCSkillManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%8A%80%E8%83%BD%E7%B3%BB%E7%BB%9F%2FUGCSkillManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSkillManagerSystem)

类

全文搜索

【废弃】技能管理系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Skill | **ManagerComponentGetSkillManagerComponent** | ActorActor | 【废弃】请使用 UGCPersistEffectSystem 获取技能组件 生效范围：服务器&客户端 return -技能组件 params Actor -Actor 对象 |
| Use | **Skill** | ActorActor, stringSkillName | 【废弃】请使用 UGCPersistEffectSystem 使用技能（技能列表中，技能需配置 SET_KEY_DOWN 事件触发） 生效范围：服务器&客户端 params Actor -Actor 对象 params SkillName -技能短名 |
| Stop | **Skill** | ActorActor, stringSkillName | 【废弃】请使用 UGCPersistEffectSystem 停止技能 生效范围：服务器&客户端 params Actor -Actor 对象 params SkillName -技能短名 |
| Trigger | **SkillEvent** | ActorActor, stringSkillName, UTSkillEventTypeEventType | 【废弃】请使用 UGCPersistEffectSystem 使用技能（自定义触发事件类型） 生效范围：服务器&客户端 params Actor -Actor 对象 params SkillName -技能短名 params EventType -事件类型 |
| Use | **SkillByPath** | ActorActor, stringSkillPath | 【废弃】请使用 UGCPersistEffectSystem 根据技能路径使用技能（技能列表中，技能需配置 SET_KEY_DOWN 事件触发） 生效范围：服务器&客户端 params Actor -Actor 对象 params SkillPath -技能完整路径 |
| Stop | **SkillByPath** | ActorActor, stringSkillPath | 【废弃】请使用 UGCPersistEffectSystem 根据技能路径停止技能 生效范围：服务器&客户端 params Actor -Actor 对象 params SkillPath -技能完整路径 |
| Trigger | **SkillEventByPath** | ActorActor, stringSkillPath, UTSkillEventTypeEventType | 【废弃】请使用 UGCPersistEffectSystem 生效范围：服务器&客户端 params Actor -Actor 对象 params SkillPath -技能完整路径 params EventType -事件类型 |
| Stop | **AllSkill** | ActorActor | 【废弃】请使用 UGCPersistEffectSystem 停止所有技能 生效范围：服务器 params Actor -Actor 对象 |
| Add | **Skill** | ActorActor, stringSkillClassPath | 【废弃】请使用 UGCPersistEffectSystem 添加技能 生效范围：服务器 params Actor -Actor 对象 params SkillClassPath -技能完整路径 |
| Remove | **Skill** | ActorActor, stringSkillClassPath | 【废弃】请使用 UGCPersistEffectSystem 移除技能 生效范围：服务器 params Actor -Actor 对象 params SkillClassPath -技能完整路径 |
| boolean | **IsSkillRunning** | ActorActor | 【废弃】请使用 UGCPersistEffectSystem 当前是否有技能在执行 生效范围：服务器&客户端 return -是否有技能在执行 params Actor -Actor 对象 |
| number | **GetSkillCD** | ActorActor, stringSkillPath | 【废弃】请使用 UGCPersistEffectSystem 获取技能冷却 生效范围：服务器 return -技能冷却时间 params Actor -Actor 对象 params SkillPath -技能完整路径 |
| Set | **SkillActive** | ActorActor, stringSkillPath, booleanNewActive | 【废弃】请使用 UGCPersistEffectSystem 激活技能 生效范围：服务器 params Actor -Actor 对象 params SkillPath -技能完整路径 params NewActive -技能状态 |
| Trigger | **StringEvent** | ActorActor, stringSkillPath, stringEventString | 【废弃】请使用 UGCPersistEffectSystem 向技能抛出一个字符串类型的事件 生效范围：服务器 params Actor -Actor 对象 params SkillPath -技能完整路径 params EventString -字符串事件 |
| Trigger | **UAEEvent** | ActorActor, stringSkillPath, UAESkillEventEventType | 【废弃】请使用 UGCPersistEffectSystem 向技能抛出一个预定义的事件 生效范围：服务器 params Actor -Actor 对象 params SkillPath -技能完整路径 params EventType -预定义事件 GetSkillManagerComponent UseSkill StopSkill TriggerSkillEvent UseSkillByPath StopSkillByPath TriggerSkillEventByPath StopAllSkill AddSkill RemoveSkill IsSkillRunning GetSkill |

