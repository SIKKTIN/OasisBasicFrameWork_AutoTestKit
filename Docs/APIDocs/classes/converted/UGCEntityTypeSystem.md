# UGCEntityTypeSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCEntityTypeSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEntityTypeSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEntityTypeSystem](https://developer.gp.qq.com/api/#/searchContent/UGCEntityTypeSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCEntityTypeSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCEntityTypeSystem)

类

全文搜索

实体类型查询系统接口库

---


## 函数

- **IsActorOfEntityType**(AActorActor, stringEntityTypeName) — 判断Actor是否属于指定的实体类型 生效范围：服务器&客户端 return -是否属于指定类型 params Actor -要检查的Actor params EntityTypeName -实体类型名称
- **GetActorEntityType**(AActorActor) — 获取Actor的实体类型（返回第一个匹配的） 生效范围：服务器&客户端 return -实体类型名称，如果没有匹配则返回空字符串 params Actor -要检查的Actor
- **GetActorEntityTypes**(AActorActor) — 获取Actor的所有匹配的实体类型 生效范围：服务器&客户端 return -实体类型名称数组 params Actor -要检查的Actor
- **GetAllEntityTypeNames**(获取所有已配置的实体类型名称 生效范围：服务器&客户端 return -所有实体类型名称数组)
- **OverlapBoxByEntityType**(UObjectWorldContext, stringEntityTypeName, FVectorLocation, FVectorHalfExtent, FRotatorRotation) — 使用Box形状检测指定EntityType的Actor 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeName -实体类型名称 params Location -检测位置 params HalfExtent -Box的半尺寸（默认值：{X=50, Y=50, Z=50}） params Rotation -旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
- **OverlapSphereByEntityType**(UObjectWorldContext, stringEntityTypeName, FVectorLocation, numberRadius) — 使用Sphere形状检测指定EntityType的Actor 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeName -实体类型名称 params Location -检测位置 params Radius -球体半径（默认值：100）
- **OverlapCapsuleByEntityType**(UObjectWorldContext, stringEntityTypeName, FVectorLocation, numberRadius, numberHalfHeight, FRotatorRotation) — 使用Capsule形状检测指定EntityType的Actor 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeName -实体类型名称 params Location -检测位置 params Radius -胶囊体半径（默认值：100） params HalfHeight -胶囊体半高（默认值：100） params Rotation -旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
- **IsActorOfClassType**(AActorActor, stringActorClassPath) — 检查Actor是否为指定的类类型 生效范围：服务器&客户端 return -是否为指定类型 params Actor -要检查的Actor params ActorClassPath -Actor类的路径
- **IsActorOfAnyClassTypes**(AActorActor, string[]ActorClassPaths) — 检查Actor是否为指定类类型数组中的任意一种 生效范围：服务器&客户端 return -是否为指定类型之一 params Actor -要检查的Actor params ActorClassPaths -Actor类路径数组
- **IsActorOfEntityTypeByTag**(AActorActor, FGameplayTagEntityTypeTag) — 判断Actor是否属于指定的实体类型（使用GameplayTag） 生效范围：服务器&客户端 return -是否属于指定类型 params Actor -要检查的Actor params EntityTypeTag -实体类型GameplayTag
- **IsActorOfEntityTypeByTags**(AActorActor, FGameplayTagContainerEntityTypeTags) — 判断Actor是否属于指定的实体类型（使用GameplayTagContainer） 生效范围：服务器&客户端 return -是否属于指定类型之一 params Actor -要检查的Actor params EntityTypeTags -实体类型GameplayTag容器
- **GameplayTagGetActorEntityTypeAsGameplayTag**(AActorActor) — 获取Actor的实体类型（返回GameplayTag） 生效范围：服务器&客户端 return -实体类型GameplayTag params Actor -要检查的Actor
- **GameplayTagContainerGetActorEntityTypesAsGameplayTagContainer**(AActorActor) — 获取Actor的所有匹配的实体类型（返回GameplayTagContainer） 生效范围：服务器&客户端 return -实体类型GameplayTag容器 params Actor -要检查的Actor
- **OverlapBoxByEntityTypeTag**(UObjectWorldContext, FGameplayTagEntityTypeTag, FVectorLocation, FVectorHalfExtent, FRotatorRotation) — 使用Box形状检测指定EntityType的Actor（使用GameplayTag） 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeTag -实体类型GameplayTag params Location -检测位置 params HalfExtent -Box的半尺寸（默认值：{X=50, Y=50, Z=50}） params Rotation -旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
- **OverlapBoxByEntityTypeTags**(UObjectWorldContext, FGameplayTagContainerEntityTypeTags, FVectorLocation, FVectorHalfExtent, FRotatorRotation) — 使用Box形状检测指定EntityType的Actor（使用GameplayTagContainer） 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeTags -实体类型GameplayTag容器 params Location -检测位置 params HalfExtent -Box的半尺寸（默认值：{X=50, Y=50, Z=50}） params Rotation -旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
- **OverlapSphereByEntityTypeTag**(UObjectWorldContext, FGameplayTagEntityTypeTag, FVectorLocation, numberRadius) — 使用Sphere形状检测指定EntityType的Actor（使用GameplayTag） 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeTag -实体类型GameplayTag params Location -检测位置 params Radius -球体半径（默认值：100）
- **OverlapSphereByEntityTypeTags**(UObjectWorldContext, FGameplayTagContainerEntityTypeTags, FVectorLocation, numberRadius) — 使用Sphere形状检测指定EntityType的Actor（使用GameplayTagContainer） 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeTags -实体类型GameplayTag容器 params Location -检测位置 params Radius -球体半径（默认值：100）
- **OverlapCapsuleByEntityTypeTag**(UObjectWorldContext, FGameplayTagEntityTypeTag, FVectorLocation, numberRadius, numberHalfHeight, FRotatorRotation) — 使用Capsule形状检测指定EntityType的Actor（使用GameplayTag） 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeTag -实体类型GameplayTag params Location -检测位置 params Radius -胶囊体半径（默认值：100） params HalfHeight -胶囊体半高（默认值：100） params Rotation -旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
- **OverlapCapsuleByEntityTypeTags**(UObjectWorldContext, FGameplayTagContainerEntityTypeTags, FVectorLocation, numberRadius, numberHalfHeight, FRotatorRotation) — 使用Capsule形状检测指定EntityType的Actor（使用GameplayTagContainer） 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContext -世界上下文对象 params EntityTypeTags -实体类型GameplayTag容器 params Location -检测位置 params Radius -胶囊体半径（默认值：100） params HalfHeight -胶囊体半高（默认值：100） params Rotation -旋转角度（默认值：{Pitch=0, Yaw=0, Roll=0}）
- **GameplayTagContainerGetAllEntityTypesAsGameplayTagContainer**(获取所有已配置的实体类型（返回GameplayTagContainer） 生效范围：服务器&客户端 return -所有实体类型GameplayTag容器)
- **GameplayTagConvertEntityTypeNameToGameplayTag**(stringEntityTypeName) — 将实体类型名称转换为GameplayTag 生效范围：服务器&客户端 return -对应的GameplayTag params EntityTypeName -实体类型名称
- **ConvertGameplayTagToEntityTypeName**(FGameplayTagEntityTypeTag) — 将GameplayTag转换为实体类型名称 生效范围：服务器&客户端 return -对应的实体类型名称 params EntityTypeTag -实体类型GameplayTag
- **ConfigDataAssetPath**(stringConfigDataAssetPath) — 设置自定义配置DataAsset路径 如果不调用此函数，将使用默认路径 生效范围：服务器&客户端 params ConfigDataAssetPath -配置DataAsset的路径
- **ReloadConfig**(强制重新加载配置 配合SetConfigDataAssetPath使用，建议设置完路径后调用一次 生效范围：服务器&客户端 IsActorOfEntityType GetActorEntityType GetActorEntityTypes GetAllEntityTypeNames OverlapBoxByEntityType OverlapSphereByEntityType OverlapCapsuleByEntityType IsActorOfClassType IsActorOfAnyClassTypes IsActorOfEntityTypeByTag IsActorOfEntit)