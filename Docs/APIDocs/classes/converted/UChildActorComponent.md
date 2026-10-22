# UChildActorComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UChildActorComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUChildActorComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UChildActorComponent](https://developer.gp.qq.com/api/#/searchContent/UChildActorComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUChildActorComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UChildActorComponent)

类

全文搜索

A component that spawns an Actor when registered, and destroys it when unregistered.

---


## 函数

- **SetChildActorClass**(TSubclassOf < AActor >InClass)
- **OnRep_ChildActor**()
- **CreateChildActor**(Create the child actor)
- **DestroyChildActor**(boolbNeedInstanceData) — Kill any currently present child actor SetChildActorClass OnRep_ChildActor CreateChildActor DestroyChildActor

## 属性

- **class** — of Actor to spawn The actor that we spawned and own Property to point to the template child actor for details panel purposes ChildActorClass ChildActor bAllowTemplateModification ChildActorTemplate IsDestoryChildActor bKeepChildActorComponet bEnableReplication bDumpChildActorLocation bRedirectComps

## 委托

- voidOnChildActorRep()
- OnChildActorRep