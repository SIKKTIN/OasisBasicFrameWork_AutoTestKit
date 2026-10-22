# UPaperFlipbookComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperFlipbookComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperFlipbookComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperFlipbookComponent](https://developer.gp.qq.com/api/#/searchContent/UPaperFlipbookComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperFlipbookComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperFlipbookComponent)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| bool | **SetFlipbook** | UPaperFlipbook *NewFlipbook | Change the flipbook used by this instance (will reset the play time to 0 if it is a new flipbook). |
| UPaperFlipbook * | **GetFlipbook** |  | Gets the flipbook used by this instance. |
| void | **SetSpriteColor** | FLinearColorNewColor | Set color of the sprite |
| void | **Play** |  | Start playback of flipbook |
| void | **PlayFromStart** |  | Start playback of flipbook from the start |
| void | **Reverse** |  | Start playback of flipbook in reverse |
| void | **ReverseFromEnd** |  | Start playback of flipbook in reverse from the end |
| void | **Stop** |  | Stop playback of flipbook |
| bool | **IsPlaying** |  | Get whether this flipbook is playing or not. |
| bool | **IsReversing** |  | Get whether we are reversing or not |
| void | **SetPlaybackPositionInFrames** | int32 NewFramePosition, boolbFireEvents | Jump to a position in the flipbook (expressed in frames). If bFireEvents is true, event functions will fire, otherwise they will not. |
| int32 | **GetPlaybackPositionInFrames** |  | Get the current playback position (in frames) of the flipbook |
| void | **SetPlaybackPosition** | float NewPosition, boolbFireEvents | Jump to a position in the flipbook (expressed in seconds). If bFireEvents is true, event functions will fire, otherwise they will not. |
| float | **GetPlaybackPosition** |  | Get the current playback position (in seconds) of the flipbook |
| void | **SetLooping** | boolbNewLooping | true means we should loop, false means we should not. |
| bool | **IsLooping** |  | Get whether we are looping or not |
| void | **SetPlayRate** | floatNewRate | Sets the new play rate for this flipbook |
| float | **GetPlayRate** |  | Get the current play rate for this flipbook |
| void | **SetNewTime** | floatNewTime | Set the new playback position time to use |
| float | **GetFlipbookLength** |  | Get length of the flipbook (in seconds) |
| int32 | **GetFlipbookLengthInFrames** |  | Get length of the flipbook (in frames) |
| float | **GetFlipbookFramerate** |  | Get the nominal framerate that the flipbook will be played back at (ignoring PlayRate), in frames per second |
| void | **OnRep_SourceFlipbook** | UPaperFlipbook *OldFlipbook | SetFlipbook GetFlipbook SetSpriteColor Play PlayFromStart Reverse ReverseFromEnd Stop IsPlaying IsReversing SetPlaybackPositionInFrames GetPlaybackPositionInFrames SetPlaybackPosition GetPlaybackPosition SetLooping IsLooping SetPlayRate GetPlayRate SetNewTime GetFlipbookLength GetFlipbookLengthInFra |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Flipbook | **currently** | being played UMaterialInterface *Material_DEPRECATED Current play rate of the flipbook Whether the flipbook should loop when it reaches the end, or stop If playback should move the current position backwards instead of forwards Are we currently playing (moving Position) Current position in the timel |

## 委托

- voidOnFinishedPlaying()
- Event called whenever a non-looping flipbook finishes playing (either reaching the beginning or the end, depending on the play direction)
- OnFinishedPlaying

