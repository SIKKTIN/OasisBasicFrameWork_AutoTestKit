# UGameplayTagsSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGameplayTagsSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTagsSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTagsSettings](https://developer.gp.qq.com/api/#/searchContent/UGameplayTagsSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGameplayTagsSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGameplayTagsSettings)

类

全文搜索

Class for importing GameplayTags directly from a config file. FGameplayTagsEditorModule::StartupModule adds this class to the Project Settings menu to be edited. Editing this in Project Settings will output changes to ConfigDefaultGameplayTags.ini. Primary advantages of this approach are: -Adding new tags doesn't require checking out external and editing file (CSV or xls) then reimporting. -New tags are mergeable since .ini are text and non exclusive checkout. To do: -Better support could be added for adding new tags. We could match existing tags and autocomplete subtags as the user types (e.g, autocomplete 'Damage.Physical' as the user is adding a 'Damage.Physical.Slash' tag).

---

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| If | **true** | , will import tags from ini files in the configtags folder If true, will give load warnings when reading invalid tags off disk These characters cannot be used in gameplay tags, in addition to special ones like newline If true, will replicate gameplay tags by index instead of name. For this to work,  |

