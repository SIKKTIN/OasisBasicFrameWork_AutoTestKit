# ASTExtraWeapon

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASTExtraWeapon?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E6%AD%A6%E5%99%A8%2FASTExtraWeapon.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraWeapon](https://developer.gp.qq.com/api/#/searchContent/ASTExtraWeapon?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E6%AD%A6%E5%99%A8%2FASTExtraWeapon.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraWeapon)

类

全文搜索

武器基类

---


## 委托

- voidOnWeaponDrawHUDDelegate(UHUDWidgetBase*WeaponHudWidget, UCanvas*Canvas)
- Delegate
- 生效范围C
- 武器绘制HUD事件，传入武器的HUDWidiget， Canvas
- voidOnPressingWeaponFuncBtnDelegate(floatDeltaTime)
- Delegate
- 生效范围C
- 持续按键事件，有DeltaTime传入
- voidUGC_AttachmentChangeDelegate(int32AttachHandleID, boolIsEquip)
- 武器配件装卸委托
- 生效范围SC
- return
- -void
- params AttachHandleID
- -配件ID
- params IsEquip
- -是否是装备配件
- voidOnWeaponTriggerEventDelegate(EWeaponTriggerEventEvent, const FString&EventData)
- Delegate
- 生效范围C
- 武器按键事件
- voidOnWeaponAttachToBackpackDelegate()
- Delegate
- 生效范围SC
- 武器挂背事件
- OnWeaponDrawHUDDelegate
- OnPressingWeaponFuncBtnDelegate
- UGC_AttachmentChangeDelegate
- OnWeaponTriggerEventDelegate
- OnWeaponAttachToBackpackDelegate