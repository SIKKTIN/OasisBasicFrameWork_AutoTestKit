# UParticleSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleSystem](https://developer.gp.qq.com/api/#/searchContent/UParticleSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleSystem)

类

全文搜索

A ParticleSystem is a complete particle effect that contains any number of ParticleEmitters. By allowing multiple emitters in a system, the designer can create elaborate particle effects that are held in a single system. Once created using Cascade, a ParticleSystem can then be inserted into a level or created in script.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| bool | **ContainsEmitterType** | UClass *TypeData | ContainsEmitterType |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Warning: | **WarmupTime** | is implemented by simulating the particle system for the time requested upon activation. This is extremely prone to cause hitches, especially with large particle counts - use with caution. WarmupTickRate - the time step for each tick during warm up. Set to 0 to use the default tick time. Emitters -  |

