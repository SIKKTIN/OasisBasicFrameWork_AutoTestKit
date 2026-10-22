# UPESkillWidget

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPESkillWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPESkillWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPESkillWidget](https://developer.gp.qq.com/api/#/searchContent/UPESkillWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPESkillWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPESkillWidget)

类

全文搜索

技能UI基类

---


## 函数

- **BindToSlot**(UPersistBaseComponent* Comp, FGameplayTagSlotName) — 将技能绑定到指定PE组件的指定Slot上 生效范围C params Comp -绑定的组件 params SlotName -绑定的槽位
- **GetCurrentSkill**(获取当前绑定的技能 生效范围C return -当前绑定的技能)
- **BindImageAndTextForSkillNameAndIcon**(UImage* IconImage, UTextBlock* NameText, UTextBlock *DescribeText) — 绑定用于显示技能图标、名字、描述的控件 生效范围C params IconImage -图标控件 params NameText -名字控件 params DescribeText -描述控件
- **RefreshSkillUI**(刷新当前UI绑定的控件的内容 生效范围C)
- **NameGetSkillName**(获取技能名字 生效范围C return -技能名字)
- **StringGetSkillDetail**(获取技能描述 生效范围C return -技能描述)
- **SoftObjectPathGetSkillIcon**(获取技能图标 生效范围C return -技能图标)
- **InitButton**(UImage* IconImage, UTextBlock* NameText, UButton *ClickButton) — 绑定技能按钮控件 生效范围C params IconImage -图标控件 params NameText -名字控件 params ClickButton -按钮控件
- **InitLayer**(UTextBlock* LayerText, UPanelWidget *LayerPanel) — 绑定技能使用层数控件 生效范围C params LayerText -技能层数 params LayerPanel -技能层数的Panel控件，控制层数的显隐
- **InitCDProgress**(UTextBlock* CDText, UImage* CDProgressImage, UPanelWidget *CDProgressPanel) — 绑定技能CD控件 生效范围C params CDText -技能CD时间 params CDProgressImage -@技能CD进度条 params CDProgressPanel -整个CD的Panel控件，控制CD的显隐
- **InitEnergyProgress**(UImage* EnergyProgressImage, UPanelWidget *EnergyCanvasPanel) — 绑定技能能量控件 生效范围C params EnergyProgressImage -技能能量进度条 params EnergyCanvasPanel -技能能量Panel控件，控制能量进度条的显隐
- **InitTagDisableState**(UPanelWidget *TagDisableCanvasPanel) — 绑定技能显示TagDisable状态的控件 生效范围C params TagDisableCanvasPanel -技能TagDisable状态的Panel控件，控制TagDisable状态的显隐
- **InitEnableState**(UPanelWidget *EnableCanvasPanel) — 绑定技能显示Enable状态的控件 生效范围C params EnableCanvasPanel -技能Enable状态的Panel控件，控制Enable状态的显隐
- **InitVirtualJoystick**(UPanelWidget* VirtualJoystickPanel, UPESkillVirtualJoystick *VirtualJoystick) — 绑定技能摇杆输入控件 生效范围C params VirtualJoystick -技能技能摇杆控件，控制摇杆的生效和失效 事件
- **OnSkillBound_BP**(UPersistEffectSkill *InOwnerSkill) — 当控件绑定到新的技能时触发 生效范围C params InOwnerSkill -当前绑定的技能
- **UpdateCD_BP**(floatDelta) — 每帧触发，用于更新CD显示 生效范围C params Delta -每帧的时间
- **OnCDStateChange_BP**(boolbIsCD) — 当控件绑定的技能CD状态变化时触发 生效范围C params bIsCD -技能是否处在CD状态
- **OnSkillUIInfoChange_BP**(当控件绑定的技能的UI信息变化时触发 生效范围C)
- **OnEnableChange_BP**(boolbIsEnable) — 当控件绑定的技能Enable状态变化时触发 生效范围C params bIsEnable -技能是否Enable
- **OnTagDisableChange_BP**(boolbIsDisable) — 当控件绑定的技能被禁用Tag(PawnState.ActivatingSkill)导致无法激活时触发 生效范围C params bIsDisable -技能是否被Tag禁用
- **OnSkillDirectionInputEnableChange_BP**(boolbEnable) — 当控件绑定的技能的摇杆输入生效或失效时触发 生效范围C BindToSlot GetCurrentSkill BindImageAndTextForSkillNameAndIcon RefreshSkillUI GetSkillName GetSkillDetail GetSkillIcon InitButton InitLayer InitCDProgress InitEnergyProgress InitTagDisableState InitEnableState InitVirtualJoystick 事件 OnSkillBound_BP UpdateCD_BP OnCDStateCh