# UOverlapCheckAreaComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UOverlapCheckAreaComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUOverlapCheckAreaComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UOverlapCheckAreaComponent](https://developer.gp.qq.com/api/#/searchContent/UOverlapCheckAreaComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUOverlapCheckAreaComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UOverlapCheckAreaComponent)

类

全文搜索

区域重叠检测组件，能够检测到某个范围内开启重叠检测的Actor

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **CheckOverlapActor** | floatDeltaTime | 生效范围：S 触发一次区域重叠检测 |
| void | **StartCheck** | TArray < AActor * > InIgnoreActorList, boolbStopIfStarted | 生效范围：S 开始检测 |
| void | **StopCheck** |  | 生效范围：S 停止检测 |
| void | **AddIgnoreActors** | TArray < AActor * >Ignores | 生效范围：S 添加要忽略的Actor列表 params Ignores -要添加的Actor列表 |
| int32 | **RemoveIgnoreActor** | AActor *Ignore | 生效范围：S 移除忽略的Actor列表 CheckOverlapActor StartCheck StopCheck AddIgnoreActors RemoveIgnoreActor |

