# UGCRankSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCRankSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCRankSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCRankSystem](https://developer.gp.qq.com/api/#/searchContent/UGCRankSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCRankSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCRankSystem)

类

全文搜索

段位专用接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| number | **GetUGCRank** | numberPlayerKey | 查询段位分 调用 UGCRankSystem.AddRankProgress 后，会获取到新段位分 例：开局 2000 积分，中途调用 UGCRankSystem.AddRankProgress 增加 100 积分，再调用 UGCRankSystem.GetUGCRank 则得到 2100 积分 详细使用流程参考 wiki (https://developer.gp.qq.com/wiki/#/lvzhou_duanwei.html) 生效范围：服务器 return -段位分 params PlayerKey -玩家 PlayerKey |
| Add | **RankProgress** | numberPlayerKey, numberCount | 修改段位分 生效范围：服务器 params PlayerKey -玩家 PlayerKey params Count -段位分变化值 |
| number | **GetUGCGameSeasonId** |  | 查询当前玩法段位赛 ID 生效范围：服务器 return -游戏赛季 ID GetUGCRank AddRankProgress GetUGCGameSeasonId |

