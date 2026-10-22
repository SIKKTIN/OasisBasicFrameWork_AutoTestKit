# UCustomActorMoveComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCustomActorMoveComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCustomActorMoveComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCustomActorMoveComponent](https://developer.gp.qq.com/api/#/searchContent/UCustomActorMoveComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCustomActorMoveComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCustomActorMoveComponent)

类

全文搜索

一个给ActivityBaseActor移动功能的组件，用于移动所挂载的ActivityBaseActor

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **StartMove** |  | 生效范围：S 开始移动 |
| void | **StopMove** |  | 生效范围：S 结束移动 |
| void | **SetMoveSpeed** | floatInSpeed | 生效范围：S 设置移动速度 params InSpeed -速度 |
| void | **SetGlideTime** | floatGlideTime | 生效范围：S 设置固定的滑行时间, 而不是使用起始点到终点位置除以速度得到这个数值 params GlideTime -滑行时间 |
| void | **SetPosition** | FVector InStart, FVectorInEnd | 生效范围：S 设置移动的起始点和终点 params InStart -起点 params InEnd -终点 |
| bool | **IsMoving** |  | 生效范围：SC 获取Actor是否在移动 return 是否在移动 StartMove StopMove SetMoveSpeed SetGlideTime SetPosition IsMoving |

## 委托

- voidActorMoveEvent(boolbIsMove)
- 移动状态改变事件委托
- params bIsMove
- -是否正在移动
- ActorMoveEvent

