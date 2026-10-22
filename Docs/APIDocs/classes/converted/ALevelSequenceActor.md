# ALevelSequenceActor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ALevelSequenceActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALevelSequenceActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALevelSequenceActor](https://developer.gp.qq.com/api/#/searchContent/ALevelSequenceActor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FALevelSequenceActor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ALevelSequenceActor)

类

全文搜索

Actor responsible for controlling a specific level sequence in the world.

---


## 函数

- **GetSequence**(bool bLoad, boolbInitializePlayer) — Get the level sequence being played by this actor. return -Level sequence, or nullptr if not assigned or if it cannot be loaded. params bLoad -Whether to load the sequence object if it is not already in memory. params bInitializePlayer -Whether to initialize the player when the sequence has been loa
- **SetSequence**(ULevelSequence *InSequence) — Set the level sequence being played by this actor. params InSequence -The sequence object to set.
- **SetEventReceivers**(TArray < AActor* >AdditionalReceivers) — Set an array of additional actors that will receive events triggerd from this sequence actor params AdditionalReceivers -An array of actors to receive events
- **SetBinding**(FMovieSceneObjectBindingID Binding, TArray < AActor* >& Actors, boolbAllowBindingsFromAsset) — Overrides the specified binding with the specified actors, optionally still allowing the bindings defined in the Level Sequence asset
- **AddBinding**(FMovieSceneObjectBindingID Binding, AActor* Actor, boolbAllowBindingsFromAsset) — Adds the specified actor to the overridden bindings for the specified binding ID, optionally still allowing the bindings defined in the Level Sequence asset
- **RemoveBinding**(FMovieSceneObjectBindingID Binding, AActor *Actor) — Removes the specified actor from the specified binding's actor array
- **ResetBinding**(FMovieSceneObjectBindingIDBinding) — Resets the specified binding back to the defaults defined by the Level Sequence asset
- **ResetBindings**(Resets all overridden bindings back to the defaults defined by the Level Sequence asset)
- **MovieSceneObjectBindingIDUGCAddBinding**(AActor* Actor, FStringTrackName)
- **MovieSceneObjectBindingIDUGCRemoveBinding**(AActor* Actor, FStringTrackName)
- **ReceiveInitailizePlayer**()
- **SetOwnCharacter**(AActor *Actor) — GetSequence SetSequence SetEventReceivers SetBinding AddBinding RemoveBinding ResetBinding ResetBindings UGCAddBinding UGCRemoveBinding ReceiveInitailizePlayer SetOwnCharacter

## 属性

- **of** — actors to override the sequence bindings with Enable specification of dynamic instance data to be supplied to the sequence during playback Instance data that can be used to dynamically control sequence evaluation at runtime ULevelSequenceBurnIn *BurnInInstance Burn-in widget 所属玩家, feishen, 20210623