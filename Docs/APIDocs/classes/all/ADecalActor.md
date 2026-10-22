# ADecalActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ADecalActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADecalActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADecalActor](https://developer.gp.qq.com/api/#/searchContent/ADecalActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADecalActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADecalActor)

类

全文搜索

DecalActor contains a DecalComponent which can be used to render material modifications on top of existing geometry. @see UDecalComponent

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **SetDecalMaterial** | UMaterialInterface *NewDecalMaterial |  |
| UMaterialInterface * | **GetDecalMaterial** |  |  |
| UMaterialInstanceDynamic * | **CreateDynamicMaterialInstance** |  | SetDecalMaterial GetDecalMaterial CreateDynamicMaterialInstance |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **decal** | component for this decal actor UArrowComponent *ArrowComponent Reference to the editor only arrow visualization component UBillboardComponent *SpriteComponent Reference to the billboard component UBoxComponent *BoxComponent_DEPRECATED Decal ArrowComponent SpriteComponent BoxComponent_DEPRECATED |

