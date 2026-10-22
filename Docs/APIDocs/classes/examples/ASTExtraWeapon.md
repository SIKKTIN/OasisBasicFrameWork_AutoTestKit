ASTExtraWeapon
武器基类
委托
voidOnWeaponDrawHUDDelegate(UHUDWidgetBase*WeaponHudWidget, UCanvas*Canvas)
Delegate
生效范围C
武器绘制HUD事件，传入武器的HUDWidiget， Canvas
voidOnPressingWeaponFuncBtnDelegate(floatDeltaTime)
Delegate
生效范围C
持续按键事件，有DeltaTime传入
voidUGC_AttachmentChangeDelegate(int32AttachHandleID, boolIsEquip)
武器配件装卸委托

生效范围SC

return  
-void
params AttachHandleID 
-配件ID
params IsEquip 
-是否是装备配件
voidOnWeaponTriggerEventDelegate(EWeaponTriggerEventEvent, const FString&EventData)
Delegate
生效范围C
武器按键事件
voidOnWeaponAttachToBackpackDelegate()
Delegate
生效范围SC
武器挂背事件