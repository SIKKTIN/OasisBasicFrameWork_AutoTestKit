# ADebugCameraController

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ADebugCameraController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADebugCameraController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADebugCameraController](https://developer.gp.qq.com/api/#/searchContent/ADebugCameraController?classDetailShow=true&path=class%2Fdetail%2FOthers%2FADebugCameraController.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ADebugCameraController)

类

全文搜索

Camera controller that allows you to fly around a level mostly unrestricted by normal movement rules. To turn it on, please press Alt+C or both (left and right) analogs on XBox pad, or use the "ToggleDebugCamera" console command. Check the debug camera bindings in DefaultPawn.cpp for the camera controls.

---


## 函数

- **ShowDebugSelectedInfo**()
- **ToggleDisplay**(Toggles the display of debug info and input commands for the Debug Camera.)
- **GetSelectedActor**()
- **SetPawnMovementSpeedScale**(floatNewSpeedScale) — Sets the pawn movement speed scale.
- **ReceiveOnActivate**(APlayerController *OriginalPC) — Function called on activation of debug camera controller. params OriginalPC -The active player controller before this debug camera controller was possessed by the player.
- **ReceiveOnDeactivate**(APlayerController *RestoredPC) — Function called on deactivation of debug camera controller. params RestoredPC -The Player Controller that the player input is being returned to.
- **ReceiveOnActorSelected**(AActor* NewSelectedActor, FVector& SelectHitLocation, FVector& SelectHitNormal, FHitResult &Hit) — Called when an actor has been selected with the primary key (e.g. left mouse button). The selection trace starts from the center of the debug camera's view. params SelectHitLocation -The exact world-space location where the selection trace hit the New Selected Actor. params SelectHitNormal -The worl

## 属性

- **to** — show information about the selected actor on the debug camera HUD. @todo document UDrawFrustumComponent *DrawFrustum @todo document Allows control over the speed of the spectator pawn. This scales the speed based on the InitialMaxSpeed. Use Set Pawn Movement Speed Scale during runtime Initial max sp