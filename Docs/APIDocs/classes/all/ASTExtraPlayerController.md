# ASTExtraPlayerController

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ASTExtraPlayerController?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%A7%92%E8%89%B2%E6%8E%A7%E5%88%B6%E7%B1%BB%EF%BC%88PlayerController%EF%BC%89%2FASTExtraPlayerController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraPlayerController](https://developer.gp.qq.com/api/#/searchContent/ASTExtraPlayerController?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E7%B1%BB%E4%BA%8B%E4%BB%B6%2F%E8%A7%92%E8%89%B2%E6%8E%A7%E5%88%B6%E7%B1%BB%EF%BC%88PlayerController%EF%BC%89%2FASTExtraPlayerController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ASTExtraPlayerController)

类

全文搜索

主角控制器

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| ASTExtraBaseCharacter * | **GetPlayerCharacterSafety** |  | 获得主角Pawn,如果正在观战,取出来是nullptr return -主角Pawn 事件 |
| void | **UGCMoveEvent** | FVector2DAxis | 角色移动控制事件，需要通过接口GameSystem.SetMoveInputEventEnable开启，每次触发会执行两次该事件，分别返回X和Y值 params Axis -向量单位，取值范围（-1~1） |
| void | **UGCLookEvent** | FVector2DRot | 玩家转向控制事件，需要通过接口GameSystem.SetLookInputEventEnable开启，每次触发会执行两次该事件，分别返回X和Y值 params Rot -向量单位，取值范围（-1~1） |
| void | **UGC_PlayerLostConnectionEvent** |  | 玩家断线事件。 |
| void | **UGC_PlayerReconnectedEvent** | boolIsRecovered | 玩家重连事件。 params IsRecovered -是否为静默重连，为false则为杀进程重连 |
| void | **UGC_InitializationCompleteEvent** |  | 初始化完毕 生效范围S |
| bool | **UGC_PickupItemEvent** | int32 ItemID, int32Count | 获取道具事件，可控制当前道具是否允许获取 生效范围S return -是否允许拾取 params ItemID -物品ID params Count -拾取数量 (-1表示此时数量未知) |
| bool | **UGC_SwitchWeaponControlEvent** | ESurviveWeaponPropSlotSwitchSlot | 切换武器控制事件，可控制当前武器是否允许切换，返回false则无法切换 生效范围C return -是否允许切换 params SwitchSlot -武器槽位 |
| bool | **UGC_StartFireControlEvent** |  | 开火控制事件，可控制是否允许开火，返回false则无法开火 生效范围C return -是否允许开火 |
| bool | **UGC_ReloadControlEvent** |  | 换弹控制事件，可控制是否允许换弹，返回false则无法换弹 生效范围C return -是否允许开火 |
| bool | **UGC_OpenScopeControlEvent** |  | 开镜控制事件，可控制是否允许开镜，返回false则无法开镜 生效范围C return -是否允许开镜 |
| bool | **UGC_ThrowGrenadeEvent** |  | 投掷控制事件，可控制是否允许投掷，返回false则无法投掷 生效范围C return -是否允许投掷 |
| void | **UGC_IsSpectatingEvent** | boolbIsSpec | 是否在观战事件 生效范围SC return -是否在观战 |
| void | **UGC_FingerMoveEvent** | ETouchIndex :: Type FingerIndex, FVectorLoc | 手指移动事件 生效范围SC |
| void | **UGC_ReleaseScreenEvent** | ETouchIndex :: TypeFingerIndex | 松开屏幕事件 生效范围SC |
| void | **UGC_TouchScreenEvent** | ETouchIndex :: Type FingerIndex, FVectorLoc | 触摸屏幕事件 生效范围SC GetPlayerCharacterSafety 事件 UGCMoveEvent UGCLookEvent UGC_PlayerLostConnectionEvent UGC_PlayerReconnectedEvent UGC_InitializationCompleteEvent UGC_PickupItemEvent UGC_SwitchWeaponControlEvent UGC_StartFireControlEvent UGC_ReloadControlEvent UGC_OpenScopeControlEvent UGC_ThrowGrenadeEve |

