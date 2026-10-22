# ASkeletalMeshActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASkeletalMeshActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASkeletalMeshActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASkeletalMeshActor](https://developer.gp.qq.com/api/#/searchContent/ASkeletalMeshActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FASkeletalMeshActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASkeletalMeshActor)

类

全文搜索

SkeletalMeshActor is an instance of a USkeletalMesh in the world. Skeletal meshes are deformable meshes that can be animated and change their geometry at run-time. Skeletal meshes dragged into the level from the Content Browser are automatically converted to StaticMeshActors. @see USkeletalMesh

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **OnRep_ReplicatedMesh** |  | Replication Notification Callbacks |
| void | **OnRep_ReplicatedPhysAsset** |  |  |
| void | **OnRep_ReplicatedMaterial0** |  |  |
| void | **OnRep_ReplicatedMaterial1** |  | OnRep_ReplicatedMesh OnRep_ReplicatedPhysAsset OnRep_ReplicatedMaterial0 OnRep_ReplicatedMaterial1 |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Whether | **or** | not this actor should respond to anim notifies - CURRENTLY ONLY AFFECTS PlayParticleEffect NOTIFIES USkeletalMeshComponent *SkeletalMeshComponent USkeletalMesh *ReplicatedMesh Used to replicate mesh to clients UPhysicsAsset *ReplicatedPhysAsset Used to replicate physics asset to clients UMaterialInt |

