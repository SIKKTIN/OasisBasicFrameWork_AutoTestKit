# UMovieSceneSequencePlayer

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSequencePlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSequencePlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSequencePlayer](https://developer.gp.qq.com/api/#/searchContent/UMovieSceneSequencePlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMovieSceneSequencePlayer.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMovieSceneSequencePlayer)

类

全文搜索

Abstract class that provides consistent player behaviour for various animation players

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **Play** |  | Start playback forwards from the current time cursor position, using the current play rate. |
| void | **PlayReverse** |  | Reverse playback. |
| void | **ChangePlaybackDirection** |  | Changes the direction of playback (go in reverse if it was going forward, or vice versa) |
| void | **PlayLooping** | int32NumLoops | Start playback from the current time cursor position, looping the specified number of times. params NumLoops -- The number of loops to play. -1 indicates infinite looping. |
| void | **StartPlayingNextTick** |  | Start playback from the current time cursor position, using the current play rate. Does not update the animation until next tick. |
| void | **Pause** |  | Pause playback. |
| void | **Scrub** |  | Scrub playback. |
| void | **Stop** |  | Stop playback. |
| void | **GoToEndAndStop** |  | Go to end and stop. |
| float | **GetPlaybackPosition** |  | Get the current playback position |
| void | **SetPlaybackPosition** | floatNewPlaybackPosition | Set the current playback position params NewPlaybackPosition -- The new playback position to set. |
| void | **SetPlaybackPostionWithloop** | floatNewTime |  |
| float | **GetTargetTimePostionWithloop** | floatNewTime |  |
| void | **JumpToPosition** | floatNewPlaybackPosition | Jump to new playback position params NewPlaybackPosition -- The new playback position to set. |
| void | **JumpToPositionEx** | floatNewPlaybackPosition |  |
| bool | **IsPlaying** |  | Check whether the sequence is actively playing. |
| bool | **IsPaused** |  | Check whether the sequence is paused. |
| float | **GetLength** |  | Get the playback length of the sequence |
| float | **GetPlayRate** |  | Get the playback rate of this player. |
| bool | **IsEvaluating** |  |  |
| void | **SetPlayRate** | floatPlayRate | Set the playback rate of this player. Negative values will play the animation in reverse. params PlayRate -- The new rate of playback for the animation. |
| void | **SetPlayLoopCount** | int32NumLoops |  |
| void | **SetPlaybackRange** | float NewStartTime, floatNewEndTime | Sets the range in time to be played back by this player, overriding the default range stored in the asset params NewStartTime -The new starting time for playback params NewEndTime -The new ending time for playback. Must be larger than the start time. |
| float | **GetPlaybackStart** |  | Get the offset within the level sequence to start playing |
| float | **GetPlaybackStartSeconds** |  | Get the offset seconds within the level sequence to start playing |
| float | **GetPlaybackEnd** |  | Get the offset within the level sequence to finish playing |
| float | **GetPlaybackEndSeconds** |  | Get the offset seconds within the level sequence to finish playing |
| TArray < UObject * > | **GetBoundObjects** | FMovieSceneObjectBindingIDObjectBinding | Retrieve all objects currently bound to the specified binding identifier Play PlayReverse ChangePlaybackDirection PlayLooping StartPlayingNextTick Pause Scrub Stop GoToEndAndStop GetPlaybackPosition SetPlaybackPosition SetPlaybackPostionWithloop GetTargetTimePostionWithloop JumpToPosition JumpToPosi |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Movie | **player** | status. Whether we're currently playing in reverse. True where we're waiting for the first update of the sequence after calling StartPlayingNextTick. UMovieSceneSequence *Sequence The sequence to play back The current time cursor position within the sequence (in seconds) Time time at which to start  |

## 委托

- voidOnPlay()
- Event triggered when the level sequence player is played
- voidOnPlayReverse()
- Event triggered when the level sequence player is played in reverse
- voidOnStop()
- Event triggered when the level sequence player is stopped
- voidOnPause()
- Event triggered when the level sequence player is paused
- voidOnFinished()
- Event triggered when the level sequence player finishes naturally (without explicitly calling stop)
- voidOnObjectSpawnedEvent(UObject*InObject, const FGuid&InBindingID, FMovieSceneSequenceIDInSequenceID)
- OnPlay
- OnPlayReverse
- OnStop
- OnPause
- OnFinished
- OnObjectSpawnedEvent

