# UMediaPlaylist

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMediaPlaylist?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaPlaylist.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaPlaylist](https://developer.gp.qq.com/api/#/searchContent/UMediaPlaylist?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMediaPlaylist.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMediaPlaylist)

类

全文搜索

Implements a media play list.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| bool | **Add** | UMediaSource *MediaSource | Add a media source to the play list. return -true if the media source was added, false otherwise. params MediaSource -The media source to append. |
| bool | **AddFile** | FString &FilePath | Add a media file path to the play list. return -true if the file was added, false otherwise. params FilePath -The file path to add. |
| bool | **AddUrl** | FString &Url | Add a media URL to the play list. return -true if the URL was added, false otherwise. params Url -The URL to add. |
| UMediaSource * | **Get** | int32Index | Get the media source at the specified index. return -The media source, or nullptr if the index doesn't exist. params Index -The index of the media source to get. |
| UMediaSource * | **GetNext** | int32 &InOutIndex | Get the next media source in the play list. return -The media source after the current one, or nullptr if the list is empty. params InOutIndex -Index of the current media source (will contain the new index). |
| UMediaSource * | **GetPrevious** | int32 &InOutIndex | Get the previous media source in the play list. return -The media source before the current one, or nullptr if the list is empty. params InOutIndex -Index of the current media source (will contain the new index). |
| UMediaSource * | **GetRandom** | int32 &OutIndex | Get a random media source in the play list. return -The random media source, or nullptr if the list is empty. params OutIndex -Will contain the index of the returned media source. |
| void | **Insert** | UMediaSource * MediaSource, int32Index | Insert a media source into the play list at the given position. params MediaSource -The media source to insert. params Index -The index to insert into. |
| int32 | **Num** |  | Get the number of media sources in the play list. return -Number of media sources. |
| bool | **Remove** | UMediaSource *MediaSource | Remove all occurrences of the given media source in the play list. return -true if the media source was removed, false otherwise. params MediaSource -The media source to remove. |
| bool | **RemoveAt** | int32Index | Remove the media source at the specified position. return -true if the media source was removed, false otherwise. params Index -The index of the media source to remove. |
| bool | **Replace** | int32 Index, UMediaSource *Replacement | Replace the media source at the specified position. return -true if the media source was replaced, false otherwise. params Index -The index of the media source to replace. params Replacement -The replacement media source. Add AddFile AddUrl Get GetNext GetPrevious GetRandom Insert Num Remove RemoveA |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Whether | **the** | play list should loop (default = true). List of media sources to play. Loop Items |

