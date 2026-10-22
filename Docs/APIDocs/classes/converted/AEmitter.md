# AEmitter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AEmitter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEmitter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEmitter](https://developer.gp.qq.com/api/#/searchContent/AEmitter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAEmitter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AEmitter)

类

全文搜索

---


## 函数

- **OnParticleSystemFinished**(UParticleSystemComponent *FinishedComponent)
- **OnRep_bCurrentlyActive**(Replication Notification Callbacks)
- **Activate**()
- **Deactivate**()
- **ToggleActive**()
- **IsActive**()
- **SetTemplate**(UParticleSystem *NewTemplate)
- **SetFloatParameter**(FName ParameterName, floatParam)
- **SetVectorParameter**(FName ParameterName, FVectorParam)
- **SetColorParameter**(FName ParameterName, FLinearColorParam)
- **SetActorParameter**(FName ParameterName, AActor *Param)
- **SetMaterialParameter**(FName ParameterName, UMaterialInterface *Param) — OnParticleSystemFinished OnRep_bCurrentlyActive Activate Deactivate ToggleActive IsActive SetTemplate SetFloatParameter SetVectorParameter SetColorParameter SetActorParameter SetMaterialParameter

## 属性

- **to** — update status of toggleable level placed emitters on clients ParticleSystemComponent bDestroyOnSystemFinish bPostUpdateTickGroup bCurrentlyActive

## 委托

- voidOnParticleSpawn(FNameEventName, floatEmitterTime, FVectorLocation, FVectorVelocity)
- voidOnParticleBurst(FNameEventName, floatEmitterTime, int32ParticleCount)
- voidOnParticleDeath(FNameEventName, floatEmitterTime, int32ParticleTime, FVectorLocation, FVectorVelocity, FVectorDirection)
- voidOnParticleCollide(FNameEventName, floatEmitterTime, int32ParticleTime, FVectorLocation, FVectorVelocity, FVectorDirection, FVectorNormal, FNameBoneName, UPhysicalMaterial*PhysMat)
- OnParticleSpawn
- OnParticleBurst
- OnParticleDeath
- OnParticleCollide