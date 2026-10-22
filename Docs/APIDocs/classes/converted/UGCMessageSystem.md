# UGCMessageSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMessageSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCMessageSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMessageSystem](https://developer.gp.qq.com/api/#/searchContent/UGCMessageSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCMessageSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMessageSystem)

类

全文搜索

游戏聊天通用接口库

---


## 函数

- **CampMessageChannel**(numberPlayerKey, numberCampID) — 阵营聊天 开局分阵营或阵营变更时同步阵营信息，创建阵营的聊天室 生效范围：服务器 params PlayerKey -玩家的 PlayerKey params CampID -阵营 ID（传入0为无阵营）
- **SendSystemMessageToPlayer**(numberPlayerKey, stringMessageTag, stringMessageContent, numberLevel) — 给单独玩家发送系统消息 生效范围：服务器 return -是否发送成功 params PlayerKey -玩家 PlayerKey params MessageTag -消息标题 params MessageContent -消息内容 params Level -消息等级
- **SendSystemMessageToAll**(stringMessageTag, stringMessageContent, numberLevel) — 给所有玩家发送系统消息 生效范围：服务器 return -是否发送成功 params MessageTag -消息标题 params MessageContent -消息内容 params Level -消息等级 JoinCampMessageChannel SendSystemMessageToPlayer SendSystemMessageToAll