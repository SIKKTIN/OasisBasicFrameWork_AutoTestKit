# UChildActorComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UChildActorComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUChildActorComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UChildActorComponent](https://developer.gp.qq.com/api/#/searchContent/UChildActorComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUChildActorComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UChildActorComponent)

类

全文搜索

A component that spawns an Actor when registered, and destroys it when unregistered.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetChildActorClass** | TSubclassOf < AActor >InClass |  |
| void | **OnRep_ChildActor** |  |  |
| void | **CreateChildActor** |  | Create the child actor |
| void | **DestroyChildActor** | boolbNeedInstanceData | Kill any currently present child actor SetChildActorClass OnRep_ChildActor CreateChildActor DestroyChildActor |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **class** | of Actor to spawn The actor that we spawned and own Property to point to the template child actor for details panel purposes ChildActorClass ChildActor bAllowTemplateModification ChildActorTemplate IsDestoryChildActor bKeepChildActorComponet bEnableReplication bDumpChildActorLocation bRedirectComps  |

## 委托

- voidOnChildActorRep()
- OnChildActorRep

