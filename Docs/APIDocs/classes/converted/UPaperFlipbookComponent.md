# UPaperFlipbookComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperFlipbookComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperFlipbookComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperFlipbookComponent](https://developer.gp.qq.com/api/#/searchContent/UPaperFlipbookComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperFlipbookComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperFlipbookComponent)

类

全文搜索

---


## 函数

- **SetFlipbook**(UPaperFlipbook *NewFlipbook) — Change the flipbook used by this instance (will reset the play time to 0 if it is a new flipbook).
- **GetFlipbook**(Gets the flipbook used by this instance.)
- **SetSpriteColor**(FLinearColorNewColor) — Set color of the sprite
- **Play**(Start playback of flipbook)
- **PlayFromStart**(Start playback of flipbook from the start)
- **Reverse**(Start playback of flipbook in reverse)
- **ReverseFromEnd**(Start playback of flipbook in reverse from the end)
- **Stop**(Stop playback of flipbook)
- **IsPlaying**(Get whether this flipbook is playing or not.)
- **IsReversing**(Get whether we are reversing or not)
- **SetPlaybackPositionInFrames**(int32 NewFramePosition, boolbFireEvents) — Jump to a position in the flipbook (expressed in frames). If bFireEvents is true, event functions will fire, otherwise they will not.
- **GetPlaybackPositionInFrames**(Get the current playback position (in frames) of the flipbook)
- **SetPlaybackPosition**(float NewPosition, boolbFireEvents) — Jump to a position in the flipbook (expressed in seconds). If bFireEvents is true, event functions will fire, otherwise they will not.
- **GetPlaybackPosition**(Get the current playback position (in seconds) of the flipbook)
- **SetLooping**(boolbNewLooping) — true means we should loop, false means we should not.
- **IsLooping**(Get whether we are looping or not)
- **SetPlayRate**(floatNewRate) — Sets the new play rate for this flipbook
- **GetPlayRate**(Get the current play rate for this flipbook)
- **SetNewTime**(floatNewTime) — Set the new playback position time to use
- **GetFlipbookLength**(Get length of the flipbook (in seconds))
- **GetFlipbookLengthInFrames**(Get length of the flipbook (in frames))
- **GetFlipbookFramerate**(Get the nominal framerate that the flipbook will be played back at (ignoring PlayRate), in frames per second)
- **OnRep_SourceFlipbook**(UPaperFlipbook *OldFlipbook) — SetFlipbook GetFlipbook SetSpriteColor Play PlayFromStart Reverse ReverseFromEnd Stop IsPlaying IsReversing SetPlaybackPositionInFrames GetPlaybackPositionInFrames SetPlaybackPosition GetPlaybackPosition SetLooping IsLooping SetPlayRate GetPlayRate SetNewTime GetFlipbookLength GetFlipbookLengthInFra

## 属性

- **currently** — being played UMaterialInterface *Material_DEPRECATED Current play rate of the flipbook Whether the flipbook should loop when it reaches the end, or stop If playback should move the current position backwards instead of forwards Are we currently playing (moving Position) Current position in the timel

## 委托

- voidOnFinishedPlaying()
- Event called whenever a non-looping flipbook finishes playing (either reaching the beginning or the end, depending on the play direction)
- OnFinishedPlaying