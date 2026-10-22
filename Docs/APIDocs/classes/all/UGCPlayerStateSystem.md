# UGCPlayerStateSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCPlayerStateSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPlayerStateSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPlayerStateSystem](https://developer.gp.qq.com/api/#/searchContent/UGCPlayerStateSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E8%A7%92%E8%89%B2%E7%B3%BB%E7%BB%9F%2FUGCPlayerStateSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCPlayerStateSystem)

类

全文搜索

玩家数据/状态系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| boolean | **IsAlive** | numberPlayerKey | 是否存活 生效范围：服务器 |
| boolean | **IsExit** | numberPlayerKey | 是否离开游戏（主动退出，非断线） 生效范围：服务器 |
| number | **GetUGCVIPLevel** | numberPlayerKey | 获取 VIP Level 生效范围：服务器 |
| F | **PlayerAccountInfoGetPlayerAccountInfo** | numberPlayerKey | 获取玩家的账号数据 生效范围：服务器 & 客户端 |
| F | **PlayerBattleInfoGetPlayerBattleInfo** | numberPlayerKey | 获取玩家的战斗数据 生效范围：服务器 |
| boolean | **SavePlayerArchiveData** | numberUID, tableArchiveData | 保存玩家存档数据（存档数据在 PIE 下无法跨对局保存和读取）!!!!注意，不能在对局结算之后保存存档数据，在对局结算后调用此接口无法成功保存存档数据 生效范围：服务器 params UID -玩家 UID params ArchiveData -存档数据 |
| table | **GetPlayerArchiveData** | numberUID | 获取玩家存档数据（存档数据在 PIE 下无法跨对局保存和读取） 生效范围：服务器 return -存档数据 params UID -玩家 UID |
| Clear | **PlayerArchiveData** |  | 清理玩家存档数据（GM 指令，仅开发环境生效） 生效范围：客户端 |
| number | **GetPlayerPlatformGender** | numberPlatformGender, numberUID | 获取玩家账号性别 生效范围：客户端 return -玩家账号性别，0 - 隐藏，1 - 男，2 - 女 params PlatformGender -从DS获取的玩家性别 params UID -玩家UID |
| number | **GetTeamID** | numberPlayerKey | 获取 TeamID 生效范围：服务器&客户端 |
| number | **GetPlayerKeyInt64** | PlayerStatePlayerState | 获取 64 位玩家 PlayerKey 生效范围：服务器&客户端 |
| string | **GetPlayerKey** | PlayerStatePlayerState | 获取字符串玩家 PlayerKey 生效范围：服务器&客户端 IsAlive IsExit GetUGCVIPLevel GetPlayerAccountInfo GetPlayerBattleInfo SavePlayerArchiveData GetPlayerArchiveData ClearPlayerArchiveData GetPlayerPlatformGender GetTeamID GetPlayerKeyInt64 GetPlayerKey |

