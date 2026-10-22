# UWidgetSkinProxy

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWidgetSkinProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetSkinProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetSkinProxy](https://developer.gp.qq.com/api/#/searchContent/UWidgetSkinProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWidgetSkinProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWidgetSkinProxy)

类

全文搜索

The user widget proxy, using this proxy to activate widget skin for an user widget.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **ApplySkin** | TSoftClassPtr < UUserWidgetSkin > SkinPathPtr, boolbAsyncLoad |  |
| void | **RevertSkin** | TSoftClassPtr < UUserWidgetSkin >SkinPathPtr |  |
| bool | **RevertRevertableSkin** |  |  |
| TArray < UUserWidgetSkin * > | **GetActiveSkins** |  |  |
| UUserWidgetSkin * | **GetRevertableSkin** |  |  |
| bool | **ContainsSkin** | UUserWidgetSkin *InSkin |  |
| UUserWidget * | **GetOwnerUserWidget** |  | ApplySkin RevertSkin RevertRevertableSkin GetActiveSkins GetRevertableSkin ContainsSkin GetOwnerUserWidget |

