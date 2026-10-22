# UGCPrivilegeSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPrivilegeSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGCPrivilegeSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPrivilegeSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPrivilegeSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FUGCPrivilegeSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPrivilegeSystem)

类

全文搜索

特权系统接口库

---


## 函数

- **GetPlayerPrivilegesInformation**(numberUID) — 获取玩家特权 ID 信息列表，如果玩家没有特权 ID 信息或者在 PIE 环境下返回 nil 生效范围：服务器 return -玩家特权ID信息列表，table = { [id1] = { Description = "" }, [id2] = { Description = "" }, [id3] = { Description = "" }, ... } params UID -玩家UID
- **DoesPlayerHavePrivileges**(numberUID) — 判断玩家是否拥有特权，没有特权或者在 PIE 环境下返回 false 生效范围：服务器 return -玩家是否拥有特权 params UID -玩家UID
- **PrivilegeEmblemFlagUI**(PlayerStatePlayerState, stringNameColorHexStr, booleanbHideTeammatePositionItemName) — 给指定队友（不包含主控玩家自己）添加绿洲特权徽章UI标记 生效范围：客户端 params PlayerState -队友PlayerState params NameColorHexStr -玩家名字颜色 params bHideTeammatePositionItemName -是否隐藏队友标记名
- **PrivilegeEmblemFlagUI**(PlayerStatePlayerState) — 给指定队友（不包含主控玩家自己）移除绿洲特权徽章UI标记 生效范围：客户端 params PlayerState -队友PlayerState GetPlayerPrivilegesInformation DoesPlayerHavePrivileges AddPrivilegeEmblemFlagUI RemovePrivilegeEmblemFlagUI