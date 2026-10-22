# AMatineeActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/AMatineeActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAMatineeActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AMatineeActor](https://developer.gp.qq.com/api/#/searchContent/AMatineeActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FAMatineeActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=AMatineeActor)

类

全文搜索

---


## 函数

- **Play**(Begin playback of the matinee. Only called in game. Will then advance Position by (PlayRate Deltatime) each time the matinee is ticked.)
- **Stop**(Stops playback at the current position)
- **Reverse**(Similar to play, but the playback will go backwards until the beginning of the sequence is reached.)
- **Pause**(Hold playback at its current position. Calling Pause again will continue playback in its current direction.)
- **SetPosition**(float NewPosition, boolbJump) — Set the position of the interpolation. params NewPosition -the new position to set the interpolation to params bJump -if true, teleport to the new position (don't trigger any events between the old and new positions, etc)
- **ChangePlaybackDirection**(Changes the direction of playback (go in reverse if it was going forward, or vice versa))
- **SetLoopingState**(boolbNewLooping) — Change the looping behaviour of this matinee
- **EnableGroupByName**(FString GroupName, boolbEnable) — Play Stop Reverse Pause SetPosition ChangePlaybackDirection SetLoopingState EnableGroupByName

## 属性

- **matinee** — data used by this actor Name of controller node in level script, used to know what function to try and find for events Time multiplier for playback. If true, the matinee will play when the level is loaded. Lets you force the sequence to always start at ForceStartPosition Time position to always star

## 委托

- voidOnPlay()
- Event triggered when the matinee is played for whatever reason
- voidOnStop()
- Event triggered when the matinee is stopped for whatever reason
- voidOnPause()
- Event triggered when the matinee is paused for whatever reason
- OnPlay
- OnStop
- OnPause