# 排名 / 排行榜  (前缀: R)
_共 1 个类_
---
## RankingListManager

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/RankingListManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FRankingListManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=RankingListManager](https://developer.gp.qq.com/api/#/searchContent/RankingListManager?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%95%86%E4%B8%9A%E5%8C%96%E4%B8%8E%E5%8A%9F%E8%83%BD%E6%A8%A1%E6%9D%BF%2FRankingListManager.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=RankingListManager)

类

全文搜索

UGC排行榜系统全局管理器

---


## 函数

- **Score**(BP_UGCPlayerController_CPlayerController, numberUID, numberRankID, numberScore, booleanIsIncremental) — 更新排行榜分数 生效范围：服务端 params PlayerController -玩家控制器 params UID -玩家UID params RankID -排行榜ID params Score -更新分数 params IsIncremental -是否增量更新
- **ListProfileDataGetProfileData**(numberRankID, numberUID) — 获取玩家信息，使用前需要调用对应榜单的GetRankListData接口 生效范围：客户端 params RankID -排行榜ID params UID -玩家UID
- **RankListAward**(BP_UGCPlayerController_CPlayerController, numberRankID) — 领取排行榜奖励 生效范围：客户端&服务端 params PlayerController -玩家控制器 params RankID -排行榜ID
- **GCRankListAwardStateCanClaimRankListAward**(BP_UGCPlayerController_CPlayerController, numberRankID) — 判断是否可以领取奖励 生效范围：客户端&服务端 params PlayerController -玩家控制器 params RankID -排行榜ID
- **RankDataGetPlayerRankData**(numberUID, numberRankID, numberRankingCycles) — 获取当前DS内玩家排行榜数据(调用后如果当前缓存数据的获取时间超过RequestInterval或者榜单跨越了结算时间, DS会向后台重新请求一次，刷新缓存数据，但当次调用的返回结果还是旧缓存数据) 生效范围：客户端&服务端 return -玩家排行榜数据 params UID -玩家UID params RankID -排行榜ID params RankingCycles -排行榜周期，0为当期，1为上期
- **RankListData**(numberRankID, numberRankingCycles) — 获取排行榜数据(调用后如果当前缓存数据的获取时间超过RequestInterval或者榜单跨越了结算时间, DS会向后台重新请求一次，刷新缓存数据，但当次调用的返回结果还是旧缓存数据) 生效范围：客户端&服务端 params RankID -排行榜ID params RankingCycles -排行榜周期，0为当期，1为上期
- **GetShowRankData**(获取全部排行榜数据 生效范围：客户端&服务端)
- **ReportUI**(numberUID, stringPlayerName, numberRankID, booleanShowUID) — 打开举报界面 生效范围：客户端 params UID -举报玩家UID params PlayerName -举报玩家姓名 params RankID -排行榜ID params ShowUID -是否显示UID UpdateScore GetProfileData ClaimRankListAward CanClaimRankListAward GetPlayerRankData GetRankListData GetShowRankData OpenReportUI

## 属性

- **RankID** — number @榜单ID @param RankingCycles number @榜单周期 RankingListManager.PlayerRankDataChangeDelegate 生效范围：客户端 玩家排名数据变更回调 @param RankID number @榜单ID @param RankingCycles number @榜单周期 @param UID number @玩家UID RankingListManager.ProfileDataChangeDelegate 生效范围：客户端 玩家信息数据变更回调 @param RankID number @榜单ID Ranking

