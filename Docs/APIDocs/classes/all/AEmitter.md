# AEmitter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AEmitter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEmitter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEmitter](https://developer.gp.qq.com/api/#/searchContent/AEmitter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEmitter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEmitter)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **OnParticleSystemFinished** | UParticleSystemComponent *FinishedComponent |  |
| void | **OnRep_bCurrentlyActive** |  | Replication Notification Callbacks |
| void | **Activate** |  |  |
| void | **Deactivate** |  |  |
| void | **ToggleActive** |  |  |
| bool | **IsActive** |  |  |
| void | **SetTemplate** | UParticleSystem *NewTemplate |  |
| void | **SetFloatParameter** | FName ParameterName, floatParam |  |
| void | **SetVectorParameter** | FName ParameterName, FVectorParam |  |
| void | **SetColorParameter** | FName ParameterName, FLinearColorParam |  |
| void | **SetActorParameter** | FName ParameterName, AActor *Param |  |
| void | **SetMaterialParameter** | FName ParameterName, UMaterialInterface *Param | OnParticleSystemFinished OnRep_bCurrentlyActive Activate Deactivate ToggleActive IsActive SetTemplate SetFloatParameter SetVectorParameter SetColorParameter SetActorParameter SetMaterialParameter |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| used | **to** | update status of toggleable level placed emitters on clients ParticleSystemComponent bDestroyOnSystemFinish bPostUpdateTickGroup bCurrentlyActive |

## 委托

- voidOnParticleSpawn(FNameEventName, floatEmitterTime, FVectorLocation, FVectorVelocity)
- voidOnParticleBurst(FNameEventName, floatEmitterTime, int32ParticleCount)
- voidOnParticleDeath(FNameEventName, floatEmitterTime, int32ParticleTime, FVectorLocation, FVectorVelocity, FVectorDirection)
- voidOnParticleCollide(FNameEventName, floatEmitterTime, int32ParticleTime, FVectorLocation, FVectorVelocity, FVectorDirection, FVectorNormal, FNameBoneName, UPhysicalMaterial*PhysMat)
- OnParticleSpawn
- OnParticleBurst
- OnParticleDeath
- OnParticleCollide

