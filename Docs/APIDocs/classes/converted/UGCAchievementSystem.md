# UGCAchievementSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCAchievementSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCAchievementSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAchievementSystem](https://developer.gp.qq.com/api/#/searchContent/UGCAchievementSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%8E%A9%E6%B3%95%E8%A7%84%E5%88%99%2FUGCAchievementSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAchievementSystem)

类

全文搜索

徽章专用接口库

---


## 函数

- **AchievementProgress**(numberPlayerKey, numberAchievementID, numberCount) — 累积徽章进度 计数为覆盖累计，单场内多次调用不会累加计数，需自行计算累计总数单次调用 详细使用流程参考wiki (https://developer.gp.qq.com/wiki/#/lvzhou_huizhang.html) 生效范围：服务器 params PlayerKey -玩家PlayerKey params AchievementID -徽章ID params Count -徽章计数 AddAchievementProgress