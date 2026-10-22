# ULevelSequencePlayer

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ULevelSequencePlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelSequencePlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelSequencePlayer](https://developer.gp.qq.com/api/#/searchContent/ULevelSequencePlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FULevelSequencePlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ULevelSequencePlayer)

类

全文搜索

ULevelSequencePlayer is used to actually "play" an level sequence asset at runtime. This class keeps track of playback state and provides functions for manipulating an level sequence while its playing.

---


## 函数

- **CreateLevelSequencePlayer**(UObject* WorldContextObject, ULevelSequence* LevelSequence, FMovieSceneSequencePlaybackSettings Settings, ALevelSequenceActor* &OutActor) — Create a new level sequence player. params WorldContextObject -Context object from which to retrieve a UWorld. params LevelSequence -The level sequence to play. params Settings -The desired playback settings params OutActor -The level sequence actor created to play this sequence.
- **GetEventReceivers**(CreateLevelSequencePlayer GetEventReceivers)

## 属性

- **of** — additional event receivers AdditionalEventReceivers

## 委托

- voidOnCameraCut(UCameraComponent*CameraComponent)
- Event triggered when there is a camera cut
- OnCameraCut