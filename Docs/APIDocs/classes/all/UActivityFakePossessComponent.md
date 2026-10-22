# UActivityFakePossessComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UActivityFakePossessComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActivityFakePossessComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActivityFakePossessComponent](https://developer.gp.qq.com/api/#/searchContent/UActivityFakePossessComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUActivityFakePossessComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UActivityFakePossessComponent)

类

全文搜索

能够将这个Actor的控制权传递给玩家的组件

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| bool | **FakePossess** | AController *PC | 生效范围：S 让一个PlayerController控制这个Actor params PC -获得控制权的PlayerController |
| void | **FakeUnPossess** | EUnPossessReasonReason | 生效范围：S 解除这个Actor上的PC的控制权 params Reason -解除控制权的原因 |
| bool | **FakePossessWithAttach** | AController * PC, USceneComponent * AttachScene, FName SocketName, boolbMulticastToClient | 生效范围：S 让一个PlayerController控制这个Actor，并将当前控制的角色Attach到这个Actor上 params PC -获得控制权的PlayerController params AttachScene -Attach到的组件 params SocketName -Attach到的Socket |
| void | **FakeUnPossessWithDettach** | EUnPossessReasonReason | 生效范围：S 解除这个Actor上的PC的控制权，并将角色从这个Actor上Detach params Reason -解除控制权的原因 |
| bool | **CanBePossess** | ASTExtraBaseCharacter *Character | 生效范围：S 获取是否可以由这个Character控制当前Actor params Character -要检查的Character FakePossess FakeUnPossess FakePossessWithAttach FakeUnPossessWithDettach CanBePossess |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| @param | **PC** | 获取到这个Actor控制权的PC 解除控制权事件委托 @param PC 解除这个Actor控制权的PC 解除控制权事件委托 @param PC 解除这个Actor控制权的PC @param Reason 解除控制权的原因 OnPossess OnUnPossess OnUnPossessWithReason |

