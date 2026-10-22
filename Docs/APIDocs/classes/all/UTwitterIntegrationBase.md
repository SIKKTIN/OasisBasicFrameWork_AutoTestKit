# UTwitterIntegrationBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UTwitterIntegrationBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUTwitterIntegrationBase.json&isSelect=1&apiEnc=%22%22&apiLabel=UTwitterIntegrationBase](https://developer.gp.qq.com/api/#/searchContent/UTwitterIntegrationBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUTwitterIntegrationBase.json&isSelect=1&apiEnc=%22%22&apiLabel=UTwitterIntegrationBase)

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **Init** |  | Perform any needed initialization |
| bool | **CanShowTweetUI** |  | return -true if the user is allowed to use the Tweet UI |
| bool | **ShowTweetUI** | FString & InitialMessage, FString & URL, FString &Picture | Kicks off a tweet, using the platform to show the UI. If this returns false, or you are on a platform that doesn't support the UI, you can use the TwitterRequest method to perform a manual tweet using the Twitter API return -true if a UI was displayed for the user to interact with, and a TID_TweetUI |
| bool | **AuthorizeAccounts** |  | Starts the process of authorizing the local user(s). When TID_AuthorizeComplete is called, then GetNumAccounts() will return a valid number of accounts return -true if the authorization process started, and TID_AuthorizeComplete delegates will be called |
| int32 | **GetNumAccounts** |  | return -The number of accounts that were authorized |
| F | **StringGetAccountName** | int32AccountIndex | return -the display name of the given Twitter account |
| bool | **TwitterRequest** | FString & URL, TArray < FString > & ParamKeysAndValues, ETwitterRequestMethod RequestMethod, int32AccountIndex | Kicks off a generic twitter request return -true the request was sent off, and a TID_RequestComplete params URL -The URL for the twitter request params AccountIndex -A user index if an account is needed, or -1 if an account isn't needed for the request Init CanShowTweetUI ShowTweetUI AuthorizeAccoun |

