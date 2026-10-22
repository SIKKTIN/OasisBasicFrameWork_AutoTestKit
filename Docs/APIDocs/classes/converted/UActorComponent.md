# UActorComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UActorComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActorComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActorComponent](https://developer.gp.qq.com/api/#/searchContent/UActorComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActorComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActorComponent)

类

全文搜索

ActorComponent is the base class for components that define reusable behavior that can be added to different types of Actors. ActorComponents that have a transform are known as SceneComponents and those that can be rendered are PrimitiveComponents. @see USceneComponent @see UPrimitiveComponent

---


## 函数

- **StringGetToString**()
- **ForceNetUpdate**()
- **OnRep_ScriptNetworkReplicatedPropertyWrapper**()
- **CallSubObjectLuaOnRep**(UObject *InObject)
- **ServerSendScriptNetworkRemoteContent**(FScriptNetworkRemoteContent &Content)
- **ServerSendScriptNetworkRemoteContent_Unreliable**(FScriptNetworkRemoteContent &Content)
- **ClientSendScriptNetworkRemoteContent**(FScriptNetworkRemoteContent &Content)
- **ClientSendScriptNetworkRemoteContent_Unreliable**(FScriptNetworkRemoteContent &Content)
- **ReceiveScriptNetworkRemoteContent**(FScriptNetworkRemoteContent &Content)
- **IsBeingDestroyed**(Returns whether the component is in the process of being destroyed.)
- **OnRep_Replicates**()
- **OnRep_IsActive**()
- **GetOwner**(Follow the Outer chain to get the AActor that 'Owns' this component)
- **ComponentHasTag**(FNameTag) — See if this component contains the supplied tag
- **Activate**(boolbReset) — Activates the SceneComponent params bReset -- The value to assign to HiddenGame.
- **Deactivate**(Deactivates the SceneComponent.)
- **SetActive**(bool bNewActive, boolbReset) — Sets whether the component is active or not params bNewActive -- The new active state of the component
- **ToggleActive**(Toggles the active state of the component)
- **IsActive**(Returns whether the component is active or not return -- The active state of the component.)
- **SetAutoActivate**(boolbNewAutoActivate) — Sets whether the component should be auto activate or not. Only safe during construction scripts. params bNewAutoActivate -- The new auto activate state of the component
- **SetTickableWhenPaused**(boolbTickableWhenPaused) — Sets whether this component can tick when paused.
- **SetIsReplicated**(boolShouldReplicate) — Enable or disable replication. This is the equivalent of RemoteRole for actors (only a bool is required for components)
- **ReceiveBeginPlay**(Blueprint implementable event for when the component is beginning play, called before its Owner's BeginPlay on Actor BeginPlay or when the component is dynamically created if the Actor has already BegunPlay.)
- **ReceiveEndPlay**(EEndPlayReason :: TypeEndPlayReason) — Blueprint implementable event for when the component ends play, generally via destruction or its Actor's EndPlay.
- **SetComponentTickEnabled**(boolbEnabled) — Set this component's tick functions to be enabled or disabled. Only has an effect if the function is registered params bEnabled -- Whether it should be enabled or not
- **IsComponentTickEnabled**(Returns whether this component has tick enabled or not)
- **IsComponentTickEnabledByExternal**(Returns whether this component has tick enabled or not, Which set by External business)
- **SetComponentTickInterval**(floatTickInterval) — Sets the tick interval for this component's primary tick function. Does not enable the tick interval. Takes effect on next tick. params TickInterval -The duration between ticks for this component's primary tick function
- **GetComponentTickInterval**(Returns whether this component has tick enabled or not)
- **K2_DestroyComponent**(UObject *Object) — Unregister and mark for pending kill a component. This may not be used to destroy a component that is owned by an actor unless the owning actor is calling the function.
- **SetTickGroup**(ETickingGroupNewTickGroup) — Changes the ticking group for this component
- **AddTickPrerequisiteActor**(AActor *PrerequisiteActor) — Make this component tick after PrerequisiteActor
- **AddTickPrerequisiteComponent**(UActorComponent *PrerequisiteComponent) — Make this component tick after PrerequisiteComponent.
- **RemoveTickPrerequisiteActor**(AActor *PrerequisiteActor) — Remove tick dependency on PrerequisiteActor.
- **RemoveTickPrerequisiteComponent**(UActorComponent *PrerequisiteComponent) — Remove tick dependency on PrerequisiteComponent.
- **ReceiveTick**(floatDeltaSeconds) — Event called every frame GetToString ForceNetUpdate OnRep_ScriptNetworkReplicatedPropertyWrapper CallSubObjectLuaOnRep ServerSendScriptNetworkRemoteContent ServerSendScriptNetworkRemoteContent_Unreliable ClientSendScriptNetworkRemoteContent ClientSendScriptNetworkRemoteContent_Unreliable ReceiveScri

## 属性

- **tick** — function for the Actor The frequency in seconds at which this tick function will be executed on DS. If less than or equal to 0 then it will tick every frame If greater than 0 will cover PrimaryComponentTick.TickInterval Add by zoranouyang Array of tags that can be used for grouping and categorizing.

## 委托

- voidOnComponentActivated(UActorComponent*Component, boolbReset)
- voidOnComponentDeactivated(UActorComponent*Component)
- OnComponentActivated
- OnComponentDeactivated