# UGCMailSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMailSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCMailSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMailSystem](https://developer.gp.qq.com/api/#/searchContent/UGCMailSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCMailSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMailSystem)

类

全文搜索

邮件系统库

---


## 函数

- **GetMailList**(intUID) — 获取指定玩家的邮件列表 生效范围：服务器 return -邮件列表 params UID -UID
- **GCMailInfoGetMailInfo**(intUID, intMailID) — 获取指定玩家的邮件信息 生效范围：服务器 return -邮件信息，如果不存在则返回 nil params UID -UID params MailID -邮件ID
- **MailAward**(intUID, int[]MailIDs) — 请求领取指定玩家的邮件奖励 生效范围：服务器 params UID -UID params MailIDs -邮件ID数组
- **Mail**(intUID, int[]MailIDs) — 请求标记指定玩家的邮件已读 生效范围：服务器 params UID -UID params MailIDs -邮件ID数组
- **ReadMail**(intUID, int[]MailIDs) — 请求删除指定玩家的已读邮件 生效范围：服务器 params UID -UID params MailIDs -邮件ID数组
- **IESendMail**(intUID, stringTitle, stringContent, intExpireTime, tableAttachments) — 发送邮件, 仅PIE环境有效 生效范围：服务器 params UID -UID params Title -邮件标题 params Content -邮件内容 params ExpireTime -过期时间 params Attachments -附件 {[ItemID]=Count, ...} GetMailList GetMailInfo ClaimMailAward ReadMail DeleteReadMail PIESendMail

## 属性

- **UID** — int @UID @param MailList UGCMailInfo[] @邮件列表 UGCMailSystem.ClaimMailsResultDelegate 收到领取邮件奖励结果后触发 @param UID int @UID @param ItemList table @奖励物品列表 @param ClaimedMailIDs int[] @已领取的邮件ID数组 @param FailedResults table<ID,EUGCMailOperationFailedReason> @失败邮件 UGCMailSystem.ReadMailsResultDelegate 收到标记邮件已