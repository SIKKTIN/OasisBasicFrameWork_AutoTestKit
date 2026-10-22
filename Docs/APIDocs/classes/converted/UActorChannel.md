# UActorChannel

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UActorChannel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActorChannel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActorChannel](https://developer.gp.qq.com/api/#/searchContent/UActorChannel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActorChannel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActorChannel)

类

全文搜索

A channel for exchanging actor and its subobject's properties and RPCs. ActorChannel manages the creation and lifetime of a replicated actor. Actual replication of properties and RPCs actually happens in FObjectReplicator now (see DataReplication.h). An ActorChannel bunch looks like this: |----------------------|---------------------------------------------------------------------------| | SpawnInfo | (Spawn Info) Initial bunch only | | -Actor Class | -Created by ActorChannel | | -Spawn LocRot | | | NetGUID assigns | | | -Actor NetGUID | | | -Component NetGUIDs | | |----------------------|---------------------------------------------------------------------------| | | | |----------------------|---------------------------------------------------------------------------| | NetGUID ObjRef | (Content chunks) x number of replicating objects (Actor + any components) | | | -Each chunk created by its own FObjectReplicator instance. | |----------------------|---------------------------------------------------------------------------| | | | | Properties... | | | | | | RPCs... | | | | | |----------------------|---------------------------------------------------------------------------| | <End Tag> | | |----------------------|---------------------------------------------------------------------------|

---