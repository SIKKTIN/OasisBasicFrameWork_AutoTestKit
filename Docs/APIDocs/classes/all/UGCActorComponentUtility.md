# UGCActorComponentUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCActorComponentUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCActorComponentUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCActorComponentUtility](https://developer.gp.qq.com/api/#/searchContent/UGCActorComponentUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCActorComponentUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCActorComponentUtility)

类

全文搜索

Actor接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Actor | **SpawnActor** | UObjectWorldContextObject, UClassActorClass, VectorLocation, RotatorRotation, VectorScale3D, ActorOwner | 在游戏世界中生成指定类型的 Actor 生效范围：服务器&客户端 return -新生成的 Actor 实例 params WorldContextObject -世界上下文对象 params ActorClass -要生成的 Actor 类型，需通过 UGCObjectUtility.LoadClass 加载类引用 params Location -生成位置坐标，推荐使用 {X=1,Y=1,Z=1} 构造 params Rotation -生成旋转角度，推荐使用 {X=0,Y=0,Z=0} 构造 params Scale3D -可生成缩放比例，推荐使用 {X=1,Y=1,Z=1} 构造，默认 |
| Destroy | **Actor** | AActorInActor | 销毁Actor 生效范围：服务器&客户端 params InActor -Actor |
| string | **ToString** | AActorInActor | 获取Actor的ToString 生效范围：客户端&服务器 return -ToString params InActor -Actor |
| A | **ActorGetOwner** | AActorInActor | 获取Actor的Owner 生效范围：客户端&服务器 return -Owner params InActor -Actor |
| Set | **Owner** | AActorInActor, AActorInOwner | 设置Actor的Owner 生效范围：服务器 params InActor -Actor params InOwner -Owner |
| A | **ActorGetUltimateOwnerActor** | AActorInActor | 获取技能，武器，Buff等持有者acotr 生效范围：客户端&服务器 return -Owner params InActor -Actor |
| A | **ActorGetUltimateController** | AActorInActor | 获取技能，武器，Buff等持有者的Controller 生效范围：客户端&服务器 return -Owner params InActor -Actor |
| Attach | **ToActor** | AActorInActor, AActorInAttachTo, EAttachmentRuleLocationRule, EAttachmentRuleRotationRule, EAttachmentRuleScaleRule, stringInSocketName | 附着到Actor上 生效范围：服务器 params InActor -Actor params InAttachTo -需要附着到的Actor params LocationRule -附着位置规则 params RotationRule -附着旋转规则 params ScaleRule -附着缩放规则 params InSocketName -需要附着到的SocketName |
| Attach | **ToComponent** | AActorInActor, USceneComponentInAttachTo, EAttachmentRuleLocationRule, EAttachmentRuleRotationRule, EAttachmentRuleScaleRule, stringInSocketName, booleanbWeldSimulatedBodies | 附着到Component上 生效范围：服务器 params InActor -Actor params InAttachTo -需要附着到的Actor params LocationRule -附着位置规则 params RotationRule -附着旋转规则 params ScaleRule -附着缩放规则 params InSocketName -需要附着到的SocketName params bWeldSimulatedBodies -是否保持相对位置不变/是否焊接为模拟刚体 |
| Detach | **FromParent** | USceneComponentInComponent, booleanbMaintainWorldPosition, booleanbCallModify | 将Component从父Actor上拆离 生效范围：服务器 params InComponent -Actor params bMaintainWorldPosition -是否保持位置不变 params bCallModify -是否调用Modify |
| U | **SceneComponentGetRootComponent** | AActorInActor | 获取根组件 生效范围：客户端&服务器 return -根组件 params InActor -Actor |
| UActorComponent[] | **GetComponentsByOwner** | AActorInActor | 获取Actor上的所有Component 生效范围：客户端&服务器 return -Actor上的所有Component params InActor -Actor |
| UActorComponent[] | **GetComponentsByClass** | AActorInActor, UClassInComonentClass | 获取Actor上指定类的Component 生效范围：客户端&服务器 return -Actor上特定类型的Components params InActor -Actor params InComonentClass -指定Component的Class |
| UActorComponent[] | **GetComponentsByTag** | AActorInActor, UClassInComonentClass, stringTag | 获取Actor上指定Tag的Component 生效范围：客户端&服务器 return -Components params InActor -Actor params InComonentClass -ComponentClass params Tag -Tag |
| AActor[] | **GetAllActorsOfClass** | UObjectWorldContextObject, UClassActorClass | 获取指定Class在场景里的所有Actor 生效范围：客户端&服务器 return -Actor列表 params WorldContextObject -WorldContextObject params ActorClass -ActorClass |
| AActor[] | **GetAllActorsWithTag** | UObjectWorldContextObject, stringTag | 获取指定Tag在场景里的所有Actor 生效范围：客户端&服务器 return -Actor列表 params WorldContextObject -WorldContextObject params Tag -Tag |
| F | **TransformGetActorTransform** | AActorInActor | 获取Actor的Transform 生效范围：客户端&服务器 return -Transform params InActor -Actor |
| F | **TransformGetSceneComponentWorldTransform** | USceneComponentInSceneComponent | 获取场景组件的世界Transform 生效范围：客户端&服务器 return -Transform params InSceneComponent -场景组件 |
| Set | **ActorTransform** | AActorInActor, FTransformInTransform | 设置Actor的Transform 生效范围：服务器 params InActor -Actor params InTransform -Transform |
| boolean | **HasAuthority** | AActorInActor | 判断是否为权威端 生效范围：客户端&服务器 return -当前端是否为权威端 params InActor -Actor |
| Create | **AndRegisterComponent** | UClassInComponentClass, UObjectInOuter, stringInComponentName | 创建并注册组件 生效范围：服务器 params InComponentClass -要创建组件对应的Class params InOuter -Outer params InComponentName -要创建组件对应的Class对应的ObjectName |
| Destroy | **Component** | AActorInActor, UActorComponentInComponent | 销毁组件 生效范围：服务器 params InActor -Actor params InComponent -要销毁的组件 |
| AActor[] | **GetOverlappingActorsWithPrimitiveComponent** | UPrimitiveComponentInPrimitiveComponent, FTransformTransform, ESceneQueryType[]ObjectTypes, UClassActorClassFilter, AActor[]ActorsToIgnore | 获取与PrimitiveComponent重叠的Actor 生效范围：客户端&服务器 return -与目标Actor重叠的Actor列表 params InPrimitiveComponent -组件 params Transform -组件的Transform params ObjectTypes -对象类型列表 params ActorClassFilter -要检测的Actor类型（默认值：nil为全部类型的Actor） params ActorsToIgnore -需要忽略的Actor列表 |
| A | **ActorGetActorByActorInstancePath** | stringInstancePath | 在运行时通过Actor实例路径获取Actor，对关卡编辑器实例列表里任意Actor右键，选择GetActorInstancePath即可获取路径 生效范围：客户端&服务器 路径格式：PackageName.ObjectPath，例如：UGCmap.test_8 return -Actor实例 params InstancePath -实例路径 SpawnActor DestroyActor ToString GetOwner SetOwner GetUltimateOwnerActor GetUltimateController AttachToActor AttachToComponent  |

