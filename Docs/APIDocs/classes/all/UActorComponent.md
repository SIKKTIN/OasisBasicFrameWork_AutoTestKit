# UActorComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UActorComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActorComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActorComponent](https://developer.gp.qq.com/api/#/searchContent/UActorComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActorComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActorComponent)

类

全文搜索

ActorComponent is the base class for components that define reusable behavior that can be added to different types of Actors. ActorComponents that have a transform are known as SceneComponents and those that can be rendered are PrimitiveComponents. @see USceneComponent @see UPrimitiveComponent

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| F | **StringGetToString** |  |  |
| void | **ForceNetUpdate** |  |  |
| void | **OnRep_ScriptNetworkReplicatedPropertyWrapper** |  |  |
| void | **CallSubObjectLuaOnRep** | UObject *InObject |  |
| void | **ServerSendScriptNetworkRemoteContent** | FScriptNetworkRemoteContent &Content |  |
| void | **ServerSendScriptNetworkRemoteContent_Unreliable** | FScriptNetworkRemoteContent &Content |  |
| void | **ClientSendScriptNetworkRemoteContent** | FScriptNetworkRemoteContent &Content |  |
| void | **ClientSendScriptNetworkRemoteContent_Unreliable** | FScriptNetworkRemoteContent &Content |  |
| void | **ReceiveScriptNetworkRemoteContent** | FScriptNetworkRemoteContent &Content |  |
| bool | **IsBeingDestroyed** |  | Returns whether the component is in the process of being destroyed. |
| void | **OnRep_Replicates** |  |  |
| void | **OnRep_IsActive** |  |  |
| AActor * | **GetOwner** |  | Follow the Outer chain to get the AActor that 'Owns' this component |
| bool | **ComponentHasTag** | FNameTag | See if this component contains the supplied tag |
| void | **Activate** | boolbReset | Activates the SceneComponent params bReset -- The value to assign to HiddenGame. |
| void | **Deactivate** |  | Deactivates the SceneComponent. |
| void | **SetActive** | bool bNewActive, boolbReset | Sets whether the component is active or not params bNewActive -- The new active state of the component |
| void | **ToggleActive** |  | Toggles the active state of the component |
| bool | **IsActive** |  | Returns whether the component is active or not return -- The active state of the component. |
| void | **SetAutoActivate** | boolbNewAutoActivate | Sets whether the component should be auto activate or not. Only safe during construction scripts. params bNewAutoActivate -- The new auto activate state of the component |
| void | **SetTickableWhenPaused** | boolbTickableWhenPaused | Sets whether this component can tick when paused. |
| void | **SetIsReplicated** | boolShouldReplicate | Enable or disable replication. This is the equivalent of RemoteRole for actors (only a bool is required for components) |
| void | **ReceiveBeginPlay** |  | Blueprint implementable event for when the component is beginning play, called before its Owner's BeginPlay on Actor BeginPlay or when the component is dynamically created if the Actor has already BegunPlay. |
| void | **ReceiveEndPlay** | EEndPlayReason :: TypeEndPlayReason | Blueprint implementable event for when the component ends play, generally via destruction or its Actor's EndPlay. |
| void | **SetComponentTickEnabled** | boolbEnabled | Set this component's tick functions to be enabled or disabled. Only has an effect if the function is registered params bEnabled -- Whether it should be enabled or not |
| bool | **IsComponentTickEnabled** |  | Returns whether this component has tick enabled or not |
| bool | **IsComponentTickEnabledByExternal** |  | Returns whether this component has tick enabled or not, Which set by External business |
| void | **SetComponentTickInterval** | floatTickInterval | Sets the tick interval for this component's primary tick function. Does not enable the tick interval. Takes effect on next tick. params TickInterval -The duration between ticks for this component's primary tick function |
| float | **GetComponentTickInterval** |  | Returns whether this component has tick enabled or not |
| void | **K2_DestroyComponent** | UObject *Object | Unregister and mark for pending kill a component. This may not be used to destroy a component that is owned by an actor unless the owning actor is calling the function. |
| void | **SetTickGroup** | ETickingGroupNewTickGroup | Changes the ticking group for this component |
| void | **AddTickPrerequisiteActor** | AActor *PrerequisiteActor | Make this component tick after PrerequisiteActor |
| void | **AddTickPrerequisiteComponent** | UActorComponent *PrerequisiteComponent | Make this component tick after PrerequisiteComponent. |
| void | **RemoveTickPrerequisiteActor** | AActor *PrerequisiteActor | Remove tick dependency on PrerequisiteActor. |
| void | **RemoveTickPrerequisiteComponent** | UActorComponent *PrerequisiteComponent | Remove tick dependency on PrerequisiteComponent. |
| void | **ReceiveTick** | floatDeltaSeconds | Event called every frame GetToString ForceNetUpdate OnRep_ScriptNetworkReplicatedPropertyWrapper CallSubObjectLuaOnRep ServerSendScriptNetworkRemoteContent ServerSendScriptNetworkRemoteContent_Unreliable ClientSendScriptNetworkRemoteContent ClientSendScriptNetworkRemoteContent_Unreliable ReceiveScri |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Main | **tick** | function for the Actor The frequency in seconds at which this tick function will be executed on DS. If less than or equal to 0 then it will tick every frame If greater than 0 will cover PrimaryComponentTick.TickInterval Add by zoranouyang Array of tags that can be used for grouping and categorizing. |

## 委托

- voidOnComponentActivated(UActorComponent*Component, boolbReset)
- voidOnComponentDeactivated(UActorComponent*Component)
- OnComponentActivated
- OnComponentDeactivated

