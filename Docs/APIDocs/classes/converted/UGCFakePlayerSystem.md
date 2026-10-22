# UGCFakePlayerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCFakePlayerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCFakePlayerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCFakePlayerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCFakePlayerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E6%80%AA%E7%89%A9%E7%B3%BB%E7%BB%9F%2FUGCFakePlayerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCFakePlayerSystem)

类

全文搜索

假人玩家系统

---


## 函数

- **FakePlayer**(numberAIPlayerKey, numberTeamID) — 生成假人玩家， GameMode 中 DataManager，AIProbe 数据中配置 AIController 生效范围：服务器 params AIPlayerKey -AIPlayerKey，建议使用 UGCFakePlayerSystem.GetRandomAIPlayerKey 生成 params TeamID -队伍 ID
- **GetRandomAIPlayerKey**(生成随机AIPlayerKey，用于UGCFakePlayerSystem.SpawnFakePlayer接口参数 生效范围：服务器 return -AIPlayerKey)
- **FakePlayer**(numberAIPlayerKey) — 销毁假人玩家 生效范围：服务器 params AIPlayerKey -AIPlayerKey SpawnFakePlayer GetRandomAIPlayerKey DestroyFakePlayer