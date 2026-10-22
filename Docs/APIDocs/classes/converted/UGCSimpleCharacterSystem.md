# UGCSimpleCharacterSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCSimpleCharacterSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCSimpleCharacterSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSimpleCharacterSystem](https://developer.gp.qq.com/api/#/searchContent/UGCSimpleCharacterSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCSimpleCharacterSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCSimpleCharacterSystem)

类

全文搜索

怪物小动物系统接口库

---


## 函数

- **GetHealth**(ASTExtraSimpleCharacterBaseSimpleCharacter) — 获取当前血量 生效范围：服务器&客户端 return -血量 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物
- **Health**(ASTExtraSimpleCharacterBaseSimpleCharacter, numberHealth) — 设置当前血量（不会超过血量最大值） 生效范围：服务器 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物 params Health -血量
- **GetHealthMax**(ASTExtraSimpleCharacterBaseSimpleCharacter) — 获取当前最大血量 生效范围：服务器&客户端 return -血量 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物
- **HealthMax**(ASTExtraSimpleCharacterBaseSimpleCharacter, numberHealthMax) — 设置当前最大血量（当前血量不会随之变大，但如果超过最大血量，则会变小） 生效范围：服务器 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物 params HealthMax -最大血量
- **GetSpeedScale**(ASTExtraSimpleCharacterBaseSimpleCharacter) — 获取移动速度系数 生效范围：服务器&客户端 return -移动系数 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物
- **SpeedScale**(ASTExtraSimpleCharacterBaseSimpleCharacter, numberSpeedScale) — 设置移动速度系数 生效范围：服务器 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物 params SpeedScale -移动系数
- **IsInvincible**(ASTExtraSimpleCharacterBaseSimpleCharacter) — 获取是否无敌 生效范围：服务器&客户端 return -是否无敌 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物
- **Invincible**(ASTExtraSimpleCharacterBaseSimpleCharacter, booleanIsInvincible) — 设置是否无敌 生效范围：服务器 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物 params IsInvincible -是否无敌
- **IsAlive**(ASTExtraSimpleCharacterBaseSimpleCharacter) — 获取是否存活 生效范围：服务器&客户端 return -是否存活 params SimpleCharacter -小动物/ ASTExtraSimpleCharacter @怪物 GetHealth SetHealth GetHealthMax SetHealthMax GetSpeedScale SetSpeedScale IsInvincible SetInvincible IsAlive