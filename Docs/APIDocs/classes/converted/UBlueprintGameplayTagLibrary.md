# UBlueprintGameplayTagLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBlueprintGameplayTagLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintGameplayTagLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintGameplayTagLibrary](https://developer.gp.qq.com/api/#/searchContent/UBlueprintGameplayTagLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBlueprintGameplayTagLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBlueprintGameplayTagLibrary)

类

全文搜索

---


## 函数

- **MatchesTag**(FGameplayTag TagOne, FGameplayTag TagTwo, boolbExactMatch) — Determine if TagOne matches against TagTwo return -True if TagOne matches TagTwo params TagOne - Tag to check for match params TagTwo - Tag to check match against params bExactMatch -If true, the tag has to be exactly present, if false then TagOne will include it's parent tags while matching
- **MatchesAnyTags**(FGameplayTag TagOne, FGameplayTagContainer& OtherContainer, boolbExactMatch) — Determine if TagOne matches against any tag in OtherContainer return -True if TagOne matches any tags explicitly present in OtherContainer params TagOne - Tag to check for match params OtherContainer -Container to check against. params bExactMatch -If true, the tag has to be exactly present, if fals
- **EqualEqual_GameplayTag**(FGameplayTag A, FGameplayTagB) — Returns true if the values are equal (A == B)
- **NotEqual_GameplayTag**(FGameplayTag A, FGameplayTagB) — Returns true if the values are not equal (A != B)
- **IsGameplayTagValid**(FGameplayTagGameplayTag) — Returns true if the passed in gameplay tag is non-null
- **NameGetTagName**(FGameplayTag &GameplayTag) — Returns FName of this tag
- **GameplayTagMakeLiteralGameplayTag**(FGameplayTagValue) — Creates a literal FGameplayTag
- **GetNumGameplayTagsInContainer**(FGameplayTagContainer &TagContainer) — Get the number of gameplay tags in the specified container return -The number of tags in the specified container params TagContainer -Tag container to get the number of tags from
- **HasTag**(FGameplayTagContainer& TagContainer, FGameplayTag Tag, boolbExactMatch) — Check if the tag container has the specified tag return -True if the container has the specified tag, false if it does not params TagContainer - Container to check for the tag params Tag - Tag to check for in the container params bExactMatch - If true, the tag has to be exactly present, if false the
- **HasAnyTags**(FGameplayTagContainer& TagContainer, FGameplayTagContainer& OtherContainer, boolbExactMatch) — Check if the specified tag container has ANY of the tags in the other container return -True if the container has ANY of the tags in the other container params TagContainer - Container to check if it matches any of the tags in the other container params OtherContainer -Container to check against. pa
- **HasAllTags**(FGameplayTagContainer& TagContainer, FGameplayTagContainer& OtherContainer, boolbExactMatch) — Check if the specified tag container has ALL of the tags in the other container return -True if the container has ALL of the tags in the other container params TagContainer - Container to check if it matches all of the tags in the other container params OtherContainer -Container to check against. If
- **DoesContainerMatchTagQuery**(FGameplayTagContainer& TagContainer, FGameplayTagQuery &TagQuery) — Check if the specified tag container matches the given Tag Query return -True if the container matches the query, false otherwise. params TagContainer - Container to check if it matches all of the tags in the other container params TagQuery - Query to match against
- **GetAllActorsOfClassMatchingTagQuery**(UObject* WorldContextObject, TSubclassOf < AActor > ActorClass, FGameplayTagQuery& GameplayTagQuery, TArray < AActor* > &OutActors) — Get an array of all actors of a specific class (or subclass of that class) which match the specified gameplay tag query. params ActorClass - Class of actors to fetch params GameplayTagQuery -Query to match against
- **AddGameplayTag**(FGameplayTagContainer& TagContainer, FGameplayTagTag) — Adds a single tag to the passed in tag container params Tag - The tag to add to the container
- **RemoveGameplayTag**(FGameplayTagContainer& TagContainer, FGameplayTagTag) — Remove a single tag from the passed in tag container, returns true if found params Tag - The tag to add to the container
- **AppendGameplayTagContainers**(FGameplayTagContainer& InOutTagContainer, FGameplayTagContainer &InTagContainer) — Appends all tags in the InTagContainer to InOutTagContainer params InOutTagContainer -The container that will be appended too. params InTagContainer -The container to append.
- **EqualEqual_GameplayTagContainer**(FGameplayTagContainer& A, FGameplayTagContainer &B) — Returns true if the values are equal (A == B)
- **NotEqual_GameplayTagContainer**(FGameplayTagContainer& A, FGameplayTagContainer &B) — Returns true if the values are not equal (A != B)
- **GameplayTagContainerMakeLiteralGameplayTagContainer**(FGameplayTagContainerValue) — Creates a literal FGameplayTagContainer
- **GameplayTagContainerMakeGameplayTagContainerFromArray**(TArray < FGameplayTag > &GameplayTags) — Creates a FGameplayTagContainer from the array of passed in tags
- **GameplayTagContainerMakeGameplayTagContainerFromTag**(FGameplayTagSingleTag) — Creates a FGameplayTagContainer containing a single tag
- **BreakGameplayTagContainer**(FGameplayTagContainer& GameplayTagContainer, TArray < FGameplayTag > &GameplayTags) — Breaks tag container into explicit array of tags
- **GameplayTagQueryMakeGameplayTagQuery**(FGameplayTagQueryTagQuery) — Creates a literal FGameplayTagQuery return -The literal FGameplayTagQuery params TagQuery -value to set the FGameplayTagQuery to
- **HasAllMatchingGameplayTags**(TScriptInterface < IGameplayTagAssetInterface > TagContainerInterface, FGameplayTagContainer &OtherContainer) — Check Gameplay tags in the interface has all of the specified tags in the tag container (expands to include parents of asset tags) return -True if the tagcontainer in the interface has all the tags inside the container. params TagContainerInterface -An Interface to a tag container params OtherContai
- **DoesTagAssetInterfaceHaveTag**(TScriptInterface < IGameplayTagAssetInterface > TagContainerInterface, FGameplayTagTag) — Check if the specified tag container has the specified tag, using the specified tag matching types return -True if the container has the specified tag, false if it does not params TagContainerInterface -An Interface to a tag container params Tag - Tag to check for in the container
- **NotEqual_TagTag**(FGameplayTag A, FStringB) — Checks if a gameplay tag's name and a string are not equal to one another
- **NotEqual_TagContainerTagContainer**(FGameplayTagContainer A, FStringB) — Checks if a gameplay tag containers's name and a string are not equal to one another
- **StringGetDebugStringFromGameplayTagContainer**(FGameplayTagContainer &TagContainer) — Returns an FString listing all of the gameplay tags in the tag container for debugging purposes. params TagContainer -The tag container to get the debug string from.
- **StringGetDebugStringFromGameplayTag**(FGameplayTagGameplayTag) — Returns an FString representation of a gameplay tag for debugging purposes. params GameplayTag -The tag to get the debug string from. MatchesTag MatchesAnyTags EqualEqual_GameplayTag NotEqual_GameplayTag IsGameplayTagValid GetTagName MakeLiteralGameplayTag GetNumGameplayTagsInContainer HasTag HasAny