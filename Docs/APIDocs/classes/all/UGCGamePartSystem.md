# UGCGamePartSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGamePartSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGCGamePartSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGamePartSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGamePartSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGCGamePartSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGamePartSystem)

类

全文搜索

GamePart系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| U | **UGCGamePartConfigGetGamePartConfig** | stringGamePartName | 获取指定GamePart的Config 生效范围：服务器&客户端 return -指定GamePart的Config params GamePartName -GamePart名称 |
| A | **ActorGetGamePartGlobalActor** | stringGamePartName | 获取指定GamePart的GlobalActor 生效范围：服务器&客户端 return -指定GamePart的GlobalActor params GamePartName -GamePart名称 |
| U | **ActorComponentGetGamePartPlayerComponent** | stringGamePartName, PlayerControllerPC, stringPlayerComponentName | 获取指定GamePart的指定玩家的指定PlayerComponent return -指定的PlayerComponent params GamePartName -GamePart名称 params PC -玩家控制器 params PlayerComponentName -PlayerComponent名称 |
| boolean | **IsGamePartLoaded** | stringGamePartName | 获取指定GamePart是否已加载 return -GamePart是否已加载 params GamePartName -GamePart名称 |
| string[] | **GetAllLoadedGameParts** |  | 获取所有已加载的GamePart return -所有已加载的GamePart列表 GetGamePartConfig GetGamePartGlobalActor GetGamePartPlayerComponent IsGamePartLoaded GetAllLoadedGameParts |

