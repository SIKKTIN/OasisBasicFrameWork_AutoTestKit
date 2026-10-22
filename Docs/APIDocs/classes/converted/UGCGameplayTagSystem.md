# UGCGameplayTagSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCGameplayTagSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCGameplayTagSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameplayTagSystem](https://developer.gp.qq.com/api/#/searchContent/UGCGameplayTagSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCGameplayTagSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCGameplayTagSystem)

类

全文搜索

GameplayTag接口库

---


## 函数

- **GameplayTagRequestGameplayTag**(stringTagString) — 根据字符串获取FGameplayTag 生效范围：服务器&客户端 return -是否为合法的Tag params TagString -Tag的字符串
- **IsValidTag**(UGCGameplayTag) — string
- **IsUGCGameplayTag**(UGCGameplayTagTag) — 检查一个Tag是否是UGCGameplayTag 生效范围：服务器&客户端 return -是否为UGCGameplayTag params Tag -UGCGameplayTag的lua对象
- **MatchesTag**(UGCGameplayTag) — string
- **EqualsTag**(UGCGameplayTag) — string
- **GameplayTagContainerCreateGameplayTagContainer**(创建一个空的FFGameplayTagContainer 生效范围：服务器&客户端 return -空的FGameplayTagContainer)
- **GameplayTagContainerCreateGameplayTagContainerFromTag**(UGCGameplayTag) — string
- **GameplayTagContainerCreateGameplayTagContainerFromArray**(FGameplayTag[]GameplayTags) — 创建一个包含一组FGameplayTag的FGameplayTagContainer 生效范围：服务器&客户端 return -包含传入FGameplayTags的GameplayTagContainer params GameplayTags -传入FGameplayTagContainer中的FGameplayTags
- **GameplayTagToContainer**(FGameplayTagContainerTagContainer, FGameplayTagTag) — 将单个FGameplayTag添加到传入的FGameplayTagContainer中 生效范围：服务器&客户端 params TagContainer -要追加到的FGameplayTagContainer params Tag -要添加到FGameplayTagContainer中的FGameplayTag
- **RemoveGameplayTagFromContainer**(FGameplayTagContainerTagContainer, FGameplayTagTag) — 从传入的FGameplayTagContainer中移除单个FGameplayTag，若找到并移除则返回 true ，否则返回 false 生效范围：服务器&客户端 return -是否成功移除 params TagContainer -要从中移除的FGameplayTagContainer params Tag -要从FGameplayTagContainer中移除的FGameplayTag
- **HasTag**(FGameplayTagContainerTagContainer, FGameplayTagTag, booleanbExactMatch) — 检查FGameplayTagContainer是否包含特定的FGameplayTag 生效范围：服务器&客户端 return -是否包含Tag params TagContainer -要从中查找指定FGameplayTag的FGameplayTagContainer params Tag -要从FGameplayTagContainer中检查的FGameplayTag params bExactMatch -是否精确匹配 RequestGameplayTag IsValidTag IsUGCGameplayTag MatchesTag EqualsTag CreateGameplayTagC