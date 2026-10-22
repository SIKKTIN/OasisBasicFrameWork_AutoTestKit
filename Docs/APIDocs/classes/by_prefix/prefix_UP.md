# Panel / Paper UI 系列  (前缀: UP)
_共 103 个类_
---
## UPanelWidget

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPanelWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPanelWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPanelWidget](https://developer.gp.qq.com/api/#/searchContent/UPanelWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPanelWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPanelWidget)

类

全文搜索

The base class for all UMG panel widgets. Panel widgets layout a collection of child widgets.

---


## 函数

- **GetChildrenCount**(Gets number of child widgets in the container.)
- **GetChildAt**(int32Index) — Gets the widget at an index. return -The widget at the given index, or nothing if there is no widget there. params Index -The index of the widget.
- **GetChildIndex**(UWidget *Content) — Gets the index of a specific child widget
- **HasChild**(UWidget *Content) — return -true if panel contains this widget
- **RemoveChildAt**(int32Index) — Removes a child by it's index.
- **AddChild**(UWidget *Content) — Adds a new child widget to the container. Returns the base slot type, requires casting to turn it into the type specific to the container.
- **InsertChildAtIndex**(int32 Index, UWidget *Content) — Insert a widget at a specific index, available in game.
- **ShiftChildToIndex**(int32 Index, UWidget *Child) — Moves the child widget from its current index to the new index provided, available in game.
- **RemoveChild**(UWidget *Content) — Removes a specific widget from the container. return -true if the widget was found and removed.
- **HasAnyChildren**(return -true if there are any child widgets in the panel)
- **ClearChildren**(Remove all child widgets from the panel widget. GetChildrenCount GetChildAt GetChildIndex HasChild RemoveChildAt AddChild InsertChildAtIndex ShiftChildToIndex RemoveChild HasAnyChildren ClearChildren)

## 属性

- **slots** — in the widget holding the child widgets of this panel. Slots CachedContents_ForGC

## UPaperFlipbook

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperFlipbook?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperFlipbook.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperFlipbook](https://developer.gp.qq.com/api/#/searchContent/UPaperFlipbook?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperFlipbook.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperFlipbook)

类

全文搜索

Contains an animation sequence of sprite frames

---


## 函数

- **GetNumFrames**()
- **GetTotalDuration**()
- **GetKeyFrameIndexAtTime**(float Time, boolbClampToEnds)
- **GetSpriteAtTime**(float Time, boolbClampToEnds)
- **GetSpriteAtFrame**(int32FrameIndex)
- **GetNumKeyFrames**()
- **IsValidKeyFrameIndex**(int32Index) — GetNumFrames GetTotalDuration GetKeyFrameIndexAtTime GetSpriteAtTime GetSpriteAtFrame GetNumKeyFrames IsValidKeyFrameIndex

## UPaperFlipbookComponent

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

## UPaperGroupedSpriteComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperGroupedSpriteComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperGroupedSpriteComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperGroupedSpriteComponent](https://developer.gp.qq.com/api/#/searchContent/UPaperGroupedSpriteComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperGroupedSpriteComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperGroupedSpriteComponent)

类

全文搜索

A component that handles rendering and collision for many instances of one or more UPaperSprite assets. @see UPrimitiveComponent, UPaperSprite

---


## 函数

- **AddInstance**(FTransform& Transform, UPaperSprite* Sprite, bool bWorldSpace, FLinearColorColor) — Add an instance to this component. Transform can be given either in the local space of this component or world space.
- **GetInstanceTransform**(int32 InstanceIndex, FTransform& OutInstanceTransform, boolbWorldSpace) — Get the transform for the instance specified. Instance is returned in local space of this component unless bWorldSpace is set. Returns True on success.
- **UpdateInstanceTransform**(int32 InstanceIndex, FTransform& NewInstanceTransform, bool bWorldSpace, bool bMarkRenderStateDirty, boolbTeleport) — Update the transform for the instance specified. Instance is given in local space of this component unless bWorldSpace is set. Returns True on success.
- **UpdateInstanceColor**(int32 InstanceIndex, FLinearColor NewInstanceColor, boolbMarkRenderStateDirty) — Update the color for the instance specified. Returns True on success.
- **RemoveInstance**(int32InstanceIndex) — Remove the instance specified. Returns True on success.
- **ClearInstances**(Clear all instances being rendered by this component)
- **GetInstanceCount**(Get the number of instances in this component)
- **SortInstancesAlongAxis**(FVectorWorldSpaceSortAxis) — Sort all instances by their world space position along the specified axis AddInstance GetInstanceTransform UpdateInstanceTransform UpdateInstanceColor RemoveInstance ClearInstances GetInstanceCount SortInstancesAlongAxis

## 属性

- **of** — materials used by the instances Array of instances InstanceMaterials PerInstanceSpriteData

## UPaperRuntimeSettings

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperRuntimeSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperRuntimeSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperRuntimeSettings](https://developer.gp.qq.com/api/#/searchContent/UPaperRuntimeSettings?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperRuntimeSettings.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperRuntimeSettings)

类

全文搜索

Implements the settings for the Paper2D plugin.

---

## UPaperSprite

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperSprite?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperSprite.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperSprite](https://developer.gp.qq.com/api/#/searchContent/UPaperSprite?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperSprite.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperSprite)

类

全文搜索

Sprite Asset Stores the data necessary to render a single 2D sprite (from a region of a texture) Can also contain collision shapes for the sprite. @see UPaperSpriteComponent

---

## UPaperSpriteComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperSpriteComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperSpriteComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperSpriteComponent](https://developer.gp.qq.com/api/#/searchContent/UPaperSpriteComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperSpriteComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperSpriteComponent)

类

全文搜索

A component that handles rendering and collision for a single instance of a UPaperSprite asset. This component is created when you drag a sprite asset from the content browser into a Blueprint, or contained inside of the actor created when you drag one into the level. @see UPrimitiveComponent, UPaperSprite

---


## 函数

- **SetSprite**(UPaperSprite *NewSprite) — Change the PaperSprite used by this instance.
- **GetSprite**(Gets the PaperSprite used by this instance.)
- **SetSpriteColor**(FLinearColorNewColor) — Set color of the sprite SetSprite GetSprite SetSpriteColor

## UPaperTerrainComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperTerrainComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperTerrainComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperTerrainComponent](https://developer.gp.qq.com/api/#/searchContent/UPaperTerrainComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperTerrainComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperTerrainComponent)

类

全文搜索

The terrain visualization component for an associated spline component. This takes a 2D terrain material and instances sprite geometry along the spline path.

---


## 函数

- **SetTerrainColor**(FLinearColorNewColor) — SetTerrainColor

## 属性

- **terrain** — material to apply to this component (set of rules for which sprites are used on different surfaces or the interior) UPaperTerrainSplineComponent *AssociatedSpline Random seed used for choosing which spline meshes to use. The overlap amount between segments The color of the terrain (passed to the spr

## UPaperTerrainMaterial

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperTerrainMaterial?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperTerrainMaterial.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperTerrainMaterial](https://developer.gp.qq.com/api/#/searchContent/UPaperTerrainMaterial?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperTerrainMaterial.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperTerrainMaterial)

类

全文搜索

Paper Terrain Material 'Material' setup for a 2D terrain spline (stores references to sprites that will be instanced along the spline path, not actually related to UMaterialInterface).

---

## UPaperTileMap

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperTileMap?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperTileMap.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperTileMap](https://developer.gp.qq.com/api/#/searchContent/UPaperTileMap?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperTileMap.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperTileMap)

类

全文搜索

---


## 属性

- **naming** — index to start at when trying to create a new layer MapWidth MapHeight TileWidth TileHeight PixelsPerUnrealUnit SeparationPerTileX SeparationPerTileY SeparationPerLayer SelectedTileSet Material TileLayers CollisionThickness SpriteCollisionDomain ProjectionMode HexSideLength BodySetup LayerNameIndex

## UPaperTileMapComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperTileMapComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperTileMapComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperTileMapComponent](https://developer.gp.qq.com/api/#/searchContent/UPaperTileMapComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperTileMapComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperTileMapComponent)

类

全文搜索

A component that handles rendering and collision for a single instance of a UPaperTileMap asset. This component is created when you drag a tile map asset from the content browser into a Blueprint, or contained inside of the actor created when you drag one into the level. NOTE: This is an early access preview class. While not considered production-ready, it is a step beyond 'experimental' and is being provided as a preview of things to come: - We will try to provide forward-compatibility for content you create. - The classes may change significantly in the future. - The code is in an early state and may not meet the desired polish quality bar. - There is probably no documentation or example content yet. - They will be promoted out of 'Early Access' when they are production ready. @see UPrimitiveComponent, UPaperTileMap

---


## 函数

- **CreateNewTileMap**(int32 MapWidth, int32 MapHeight, int32 TileWidth, int32 TileHeight, float PixelsPerUnrealUnit, boolbCreateLayer) — Creates a new tile map of the specified size, replacing the TileMap reference (or dropping the previous owned one) params MapWidth -Width of the map (in tiles) params MapHeight -Height of the map (in tiles) params TileWidth -Width of one tile (in pixels) params TileHeight -Height of one tile (in pix
- **OwnsTileMap**()
- **SetTileMap**(UPaperTileMap *NewTileMap) — Change the PaperTileMap used by this instance.
- **GetMapSize**(int32& MapWidth, int32& MapHeight, int32 &NumLayers)
- **PaperTileInfoGetTile**(int32 X, int32 Y, int32Layer)
- **SetTile**(int32 X, int32 Y, int32 Layer, FPaperTileInfoNewValue)
- **ResizeMap**(int32 NewWidthInTiles, int32NewHeightInTiles)
- **AddNewLayer**()
- **LinearColorGetTileMapColor**()
- **SetTileMapColor**(FLinearColorNewColor)
- **LinearColorGetLayerColor**(int32Layer)
- **SetLayerColor**(FLinearColor NewColor, int32Layer)
- **MakeTileMapEditable**()
- **VectorGetTileCornerPosition**(int32 TileX, int32 TileY, int32 LayerIndex, boolbWorldSpace)
- **VectorGetTileCenterPosition**(int32 TileX, int32 TileY, int32 LayerIndex, boolbWorldSpace)
- **GetTilePolygon**(int32 TileX, int32 TileY, TArray < FVector >& Points, int32 LayerIndex, boolbWorldSpace)
- **SetDefaultCollisionThickness**(float Thickness, boolbRebuildCollision)
- **SetLayerCollision**(int32 Layer, bool bHasCollision, bool bOverrideThickness, float CustomThickness, bool bOverrideOffset, float CustomOffset, boolbRebuildCollision)
- **RebuildCollision**(CreateNewTileMap OwnsTileMap SetTileMap GetMapSize GetTile SetTile ResizeMap AddNewLayer GetTileMapColor SetTileMapColor GetLayerColor SetLayerColor MakeTileMapEditable GetTileCornerPosition GetTileCenterPosition GetTilePolygon SetDefaultCollisionThickness SetLayerCollision RebuildCollision)

## UPaperTileSet

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperTileSet?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperTileSet.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperTileSet](https://developer.gp.qq.com/api/#/searchContent/UPaperTileSet?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperTileSet.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperTileSet)

类

全文搜索

A tile set is a collection of tiles pulled from a texture that can be used to fill out a tile map. @see UPaperTileMap, UPaperTileMapComponent

---


## 属性

- **background** — color displayed in the tile set viewer TileSize TileSheet AdditionalSourceTextures BorderMargin PerTileSpacing DrawingOffset WidthInTiles HeightInTiles AllocatedWidth AllocatedHeight PerTileData Terrains TileWidth_DEPRECATED TileHeight_DEPRECATED Margin_DEPRECATED Spacing_DEPRECATED BackgroundColor

## UParticleEmitter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleEmitter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleEmitter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleEmitter](https://developer.gp.qq.com/api/#/searchContent/UParticleEmitter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleEmitter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleEmitter)

类

全文搜索

---


## 属性

- **name** — of the emitter. How to render the emitter particles. Can be one of the following: ERM_Normal - As the intended spritemesh ERM_Point - As a 2x2 pixel block with no scaling and the color set in EmitterEditorColor ERM_Cross - As a cross of lines, scaled to the size of the particle in EmitterEditorColor

## UParticleLODLevel

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleLODLevel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleLODLevel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleLODLevel](https://developer.gp.qq.com/api/#/searchContent/UParticleLODLevel?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleLODLevel.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleLODLevel)

类

全文搜索

---


## 属性

- **index** — value of the LOD level True if the LOD level is enabled, meaning it should be updated and rendered. UParticleModuleRequired *RequiredModule The required module for this LOD level An array of particle modules that contain the adjusted data for the LOD level UParticleModuleTypeDataBase *TypeDataModule

## UParticleModule

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModule?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModule.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModule](https://developer.gp.qq.com/api/#/searchContent/UParticleModule?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModule.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModule)

类

全文搜索

---


## 属性

- **true** — , the module performs operations on particles during Spawning If true, the module performs operations on particles during Updating If true, the module performs operations on particles during final update If true, the module performs operations on particles during update andor final update for GPU em

## UParticleModuleAcceleration

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAcceleration?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAcceleration.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAcceleration](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAcceleration?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAcceleration.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAcceleration)

类

全文搜索

---


## 属性

- **initial** — acceleration of the particle. Value is obtained using the EmitterTime at particle spawn. Each frame, the current and base velocity of the particle is then updated using the formula velocity += acceleration DeltaTime where DeltaTime is the time passed since the last frame. If true, then apply the par

## UParticleModuleAccelerationDrag

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAccelerationDrag?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAccelerationDrag.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAccelerationDrag](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAccelerationDrag?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAccelerationDrag.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAccelerationDrag)

类

全文搜索

---


## 属性

- **drag** — coefficient. Evaluted using emitter time. Per-particle drag coefficient. Evaluted using emitter time. DragCoefficient_DEPRECATED DragCoefficientRaw

## UParticleModuleAccelerationDragScaleOverLife

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAccelerationDragScaleOverLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAccelerationDragScaleOverLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAccelerationDragScaleOverLife](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAccelerationDragScaleOverLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAccelerationDragScaleOverLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAccelerationDragScaleOverLife)

类

全文搜索

---


## 属性

- **drag** — scale. Evaluted using particle relative time. Per-particle drag scale. Evaluted using particle relative time. DragScale_DEPRECATED DragScaleRaw

## UParticleModuleAccelerationOverLifetime

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAccelerationOverLifetime?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAccelerationOverLifetime.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAccelerationOverLifetime](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAccelerationOverLifetime?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAccelerationOverLifetime.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAccelerationOverLifetime)

类

全文搜索

---


## 属性

- **acceleration** — of the particle over its lifetime. Value is obtained using the RelativeTime of the partice. The current and base velocity values of the particle are then updated using the formula velocity += acceleration DeltaTime where DeltaTime is the time passed since the last frame. AccelOverLife

## UParticleModuleAttractorLine

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAttractorLine?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAttractorLine.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAttractorLine](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAttractorLine?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAttractorLine.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAttractorLine)

类

全文搜索

---


## 属性

- **first** — endpoint of the line. The second endpoint of the line. The range of the line attractor. The strength of the line attractor. EndPoint0 EndPoint1 Range Strength

## UParticleModuleAttractorParticle

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAttractorParticle?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAttractorParticle.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAttractorParticle](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAttractorParticle?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAttractorParticle.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAttractorParticle)

类

全文搜索

---


## 属性

- **source** — emitter for attractors The radial range of the attraction around the source particle. Particle-life relative. The strength curve is a function of distance or of time. The strength of the attraction (negative values repel). Particle-life relative if StrengthByDistance is false. If true, the velocity

## UParticleModuleAttractorPoint

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAttractorPoint?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAttractorPoint.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAttractorPoint](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAttractorPoint?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAttractorPoint.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAttractorPoint)

类

全文搜索

---


## 属性

- **position** — of the point attractor from the source of the emitter. The radial range of the attractor. The strength of the point attractor. The strength curve is a function of distance or of time. If true, the velocity adjustment will be applied to the base velocity. If true, set the velocity. If true, treat the

## UParticleModuleAttractorPointGravity

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAttractorPointGravity?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAttractorPointGravity.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAttractorPointGravity](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleAttractorPointGravity?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleAttractorPointGravity.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleAttractorPointGravity)

类

全文搜索

---


## 属性

- **position** — of the point gravity source. The distance at which the influence of the point begins to falloff. UDistributionFloat *Strength_DEPRECATED The strength of the point source. The strength of the point source. Position Radius Strength_DEPRECATED StrengthRaw

## UParticleModuleBeamModifier

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleBeamModifier?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleBeamModifier.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleBeamModifier](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleBeamModifier?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleBeamModifier.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleBeamModifier)

类

全文搜索

---


## 属性

- **this** — module modifies the Source or the Target. The options associated with the position. The value to use when modifying the position. The options associated with the Tangent. The value to use when modifying the Tangent. If true, don't transform the tangent modifier into the tangent basis. The options as

## UParticleModuleBeamNoise

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleBeamNoise?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleBeamNoise.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleBeamNoise](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleBeamNoise?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleBeamNoise.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleBeamNoise)

类

全文搜索

---


## 属性

- **low** — frequency noise enabled. The frequency of noise points. If not 0, then the frequency will select a random value in the range [Frequency_LowRange..Frequency] The noise point ranges. A scale factor that will be applied to the noise range. If true, the NoiseRangeScale will be grabbed based on the emitt

## UParticleModuleBeamSource

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleBeamSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleBeamSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleBeamSource](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleBeamSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleBeamSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleBeamSource)

类

全文搜索

---


## 属性

- **method** — flag. The strength of the tangent from the source point for each beam. Whether to treat the as an absolute position in world space. Default source-point to use. Whether to lock the source to the life of the particle. The method to use for the source tangent. The tangent for the source point for each

## UParticleModuleBeamTarget

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleBeamTarget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleBeamTarget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleBeamTarget](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleBeamTarget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleBeamTarget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleBeamTarget)

类

全文搜索

---


## 属性

- **method** — flag. The target point sources of each beam, when using the end point method. Default target-point information to use if the beam method is endpoint. Whether to treat the as an absolute position in world space. Whether to lock the Target to the life of the particle. The method to use for the Target

## UParticleModuleCameraOffset

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleCameraOffset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleCameraOffset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleCameraOffset](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleCameraOffset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleCameraOffset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleCameraOffset)

类

全文搜索

---


## 属性

- **camera** — -relative offset to apply to sprite location If true, the offset will only be processed at spawn time How to update the offset for this module. DirectSet - Set the value directly (overwrite any previous setting) Additive - Add the offset of this module to the existing offset Scalar - Scale the exist

## UParticleModuleCollision

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleCollision?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleCollision.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleCollision](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleCollision?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleCollision.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleCollision)

类

全文搜索

---


## 属性

- **much** — to `slow' the velocity of the particle after a collision. Value is obtained using the EmitterTime at particle spawn. How much to `slow' the rotation of the particle after a collision. Value is obtained using the EmitterTime at particle spawn. The maximum number of collisions a particle can have. Val

## UParticleModuleCollisionGPU

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleCollisionGPU?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleCollisionGPU.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleCollisionGPU](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleCollisionGPU?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleCollisionGPU.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleCollisionGPU)

类

全文搜索

---


## 属性

- **the** — velocity of a particle in the direction normal to the collision plane. Modulates the resilience of the particle over its lifetime. Friction applied to all particles during a collision or while moving along a surface. Controls how wide the bouncing particles are distributed (0 = disabled). Controls b

## UParticleModuleCollisionHeight

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleCollisionHeight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleCollisionHeight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleCollisionHeight](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleCollisionHeight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleCollisionHeight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleCollisionHeight)

类

全文搜索

---


## 属性

- **ObjectTypes** — to collide with CollisionTypes CollisionStep

## UParticleModuleColor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleColor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleColor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleColor](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleColor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleColor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleColor)

类

全文搜索

---


## 属性

- **color** — for a particle as a function of Emitter time. Initial alpha for a particle as a function of Emitter time. Initial color for a particle as a function of Emitter time. Initial alpha for a particle as a function of Emitter time. If true, the alpha value will be clamped to the [0..1] range. StartColor S

## UParticleModuleColorBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleColorBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleColorBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleColorBase](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleColorBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleColorBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleColorBase)

类

全文搜索

---


## 属性

- **true** — , allow mobile HDR to use a separate set of color parameters If true, allow mobile HDR to use a separate set of alpha parameters bOverrideColorHDR bOverrideAlphaHDR

## UParticleModuleColorOverLife

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleColorOverLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleColorOverLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleColorOverLife](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleColorOverLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleColorOverLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleColorOverLife)

类

全文搜索

---


## 属性

- **color** — to apply to the particle, as a function of the particle RelativeTime. The alpha to apply to the particle, as a function of the particle RelativeTime. Initial color for a particle as a function of Emitter time. Initial alpha for a particle as a function of Emitter time. If true, the alpha value will

## UParticleModuleColorScaleOverLife

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleColorScaleOverLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleColorScaleOverLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleColorScaleOverLife](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleColorScaleOverLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleColorScaleOverLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleColorScaleOverLife)

类

全文搜索

---


## 属性

- **scale** — factor for the color. The scale factor for the alpha. The scale factor for the color. The scale factor for the alpha. Whether it is EmitterTime or ParticleTime related. ColorScaleOverLife AlphaScaleOverLife ColorScaleOverLifeHDR AlphaScaleOverLifeHDR bEmitterTime

## UParticleModuleEventReceiverBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleEventReceiverBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleEventReceiverBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleEventReceiverBase](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleEventReceiverBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleEventReceiverBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleEventReceiverBase)

类

全文搜索

---


## 属性

- **type** — of event that will generate the kill. The name of the emitter of interest for generating the event. EventGeneratorType EventName

## UParticleModuleEventReceiverSpawn

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleEventReceiverSpawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleEventReceiverSpawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleEventReceiverSpawn](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleEventReceiverSpawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleEventReceiverSpawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleEventReceiverSpawn)

类

全文搜索

---


## 属性

- **number** — of particles to spawn. For Death-based event receiving, if this is true, it indicates that the ParticleTime of the event should be used to look-up the SpawnCount. Otherwise (and in all other events received), use the emitter time of the event. If true, use the location of the particle system compone

## UParticleModuleKillBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleKillBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleKillBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleKillBox](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleKillBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleKillBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleKillBox)

类

全文搜索

---


## 属性

- **lower** — left corner of the box. The upper right corner of the box. If true, the box coordinates are in world space. If true, particles INSIDE the box will be killed. If false (the default), particles OUTSIDE the box will be killed. If true, the box will always be axis aligned and non-scalable. LowerLeftCorn

## UParticleModuleKillHeight

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleKillHeight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleKillHeight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleKillHeight](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleKillHeight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleKillHeight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleKillHeight)

类

全文搜索

---


## 属性

- **height** — at which to kill the particle. If true, the height should be treated as a world-space position. If true, the plane should be considered a floor - ie kill anything BELOW it. If false, if is a ceiling - ie kill anything ABOVE it. If true, take the particle systems scale into account Height bAbsolute b

## UParticleModuleLifetime

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLifetime?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLifetime.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLifetime](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLifetime?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLifetime.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLifetime)

类

全文搜索

---


## 属性

- **lifetime** — of the particle, in seconds. Retrieved using the EmitterTime at the spawn of the particle. Lifetime

## UParticleModuleLight

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLight](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLight?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLight.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLight)

类

全文搜索

---


## 属性

- **to** — use physically based inverse squared falloff from the light. If unchecked, the LightExponent distribution will be used instead. Whether lights from this module should affect translucency. Use with caution. Modules enabling this should only make a few particle lights at most, and the smaller they are

## UParticleModuleLocation

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocation](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocation)

类

全文搜索

---


## 属性

- **location** — the particle should be emitted. Relative in local space to the emitter by default. Relative in world space as a WorldOffset module or when the emitter's UseLocalSpace is off. Retrieved using the EmitterTime at the spawn of the particle. When set to a non-zero value this will force the particles to o

## UParticleModuleLocationBoneSocket

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationBoneSocket?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationBoneSocket.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationBoneSocket](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationBoneSocket?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationBoneSocket.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationBoneSocket)

类

全文搜索

---


## 属性

- **the** — module uses Bones or Sockets for locations. BONESOCKETSOURCE_Bones - Use Bones as the source locations. BONESOCKETSOURCE_Sockets - Use Sockets as the source locations. An offset to apply to each bonesocket The name(s) of the bonesocket(s) to position at. If this is empty, the module will attempt to

## UParticleModuleLocationDirect

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationDirect?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationDirect.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationDirect](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationDirect?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationDirect.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationDirect)

类

全文搜索

---


## 属性

- **location** — of the particle at a give time. Retrieved using the particle RelativeTime. IMPORTANT: the particle location is set to this value, thereby over-writing any previous module impacts. An offset to apply to the position retrieved from the Location calculation. The offset is retrieved using the EmitterTim

## UParticleModuleLocationEmitter

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationEmitter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationEmitter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationEmitter](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationEmitter?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationEmitter.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationEmitter)

类

全文搜索

---


## 属性

- **name** — of the emitter to use that the source location for particle. The method to use when selecting a spawn target particle from the emitter. Can be one of the following: ELESM_Random Randomly select a particle from the source emitter. ELESM_Sequential Step through each particle from the source emitter in

## UParticleModuleLocationPrimitiveBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationPrimitiveBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationPrimitiveBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationPrimitiveBase](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationPrimitiveBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationPrimitiveBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationPrimitiveBase)

类

全文搜索

---


## 属性

- **the** — positive X axis is valid for spawning. Whether the positive Y axis is valid for spawning. Whether the positive Z axis is valid for spawning. Whether the negative X axis is valid for spawning. Whether the negative Y axis is valid for spawning. Whether the negative Zaxis is valid for spawning. Whether

## UParticleModuleLocationPrimitiveCylinder

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationPrimitiveCylinder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationPrimitiveCylinder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationPrimitiveCylinder](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationPrimitiveCylinder?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationPrimitiveCylinder.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationPrimitiveCylinder)

类

全文搜索

---


## 属性

- **true** — , get the particle velocity form the radial distance inside the primitive. The radius of the cylinder. The height of the cylinder, centered about the location. Determine particle particle system axis that should represent the height of the cylinder. Can be one of the following: PMLPC_HEIGHTAXIS_X -

## UParticleModuleLocationPrimitiveCylinder_Seeded

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationPrimitiveCylinder_Seeded?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationPrimitiveCylinder_Seeded.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationPrimitiveCylinder_Seeded](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationPrimitiveCylinder_Seeded?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationPrimitiveCylinder_Seeded.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationPrimitiveCylinder_Seeded)

类

全文搜索

---


## 属性

- **random** — seed(s) to use for looking up values in StartLocation RandomSeedInfo

## UParticleModuleLocationPrimitiveSphere_Seeded

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationPrimitiveSphere_Seeded?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationPrimitiveSphere_Seeded.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationPrimitiveSphere_Seeded](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationPrimitiveSphere_Seeded?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationPrimitiveSphere_Seeded.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationPrimitiveSphere_Seeded)

类

全文搜索

---


## 属性

- **random** — seed(s) to use for looking up values in StartLocation RandomSeedInfo

## UParticleModuleLocationSkelVertSurface

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationSkelVertSurface?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationSkelVertSurface.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationSkelVertSurface](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationSkelVertSurface?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationSkelVertSurface.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationSkelVertSurface)

类

全文搜索

---


## 属性

- **the** — module uses Verts or Surfaces for locations. VERTSURFACESOURCE_Vert - Use Verts as the source locations. VERTSURFACESOURCE_Surface - Use Surfaces as the source locations. An offset to apply to each vertsurface If true, update the particle locations each frame with that of the vertsurface If true, ro

## UParticleModuleLocationStVertSurface

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationStVertSurface?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationStVertSurface.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationStVertSurface](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationStVertSurface?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationStVertSurface.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationStVertSurface)

类

全文搜索

---


## 属性

- **the** — module uses Verts or Surfaces for locations. ST_VERTSURFACESOURCE_Vert - Use StoreVertexPostion ST_VERTSURFACESOURCE_ActorVert - Use Actor Verts as the source locations. ST_VERTSURFACESOURCE_ActorSurface - Use Actor Surfaces as the source locations. An offset to apply to each vertsurface If true, up

## UParticleModuleLocationWorldOffset_Seeded

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationWorldOffset_Seeded?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationWorldOffset_Seeded.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationWorldOffset_Seeded](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleLocationWorldOffset_Seeded?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleLocationWorldOffset_Seeded.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleLocationWorldOffset_Seeded)

类

全文搜索

---


## 属性

- **random** — seed(s) to use for looking up values in StartLocation RandomSeedInfo

## UParticleModuleMeshRotation

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleMeshRotation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleMeshRotation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleMeshRotation](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleMeshRotation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleMeshRotation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleMeshRotation)

类

全文搜索

---


## 属性

- **rotation** — in ROTATIONS PER SECOND (1 = 360 degrees). The value is retrieved using the EmitterTime. If true, apply the parents rotation as well. StartRotation bInheritParent

## UParticleModuleMeshRotationRate

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleMeshRotationRate?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleMeshRotationRate.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleMeshRotationRate](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleMeshRotationRate?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleMeshRotationRate.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleMeshRotationRate)

类

全文搜索

---


## 属性

- **rotation** — rate, in rotations per second. The value is retrieved using the EmitterTime. StartRotationRate

## UParticleModuleMeshRotationRate_Seeded

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleMeshRotationRate_Seeded?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleMeshRotationRate_Seeded.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleMeshRotationRate_Seeded](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleMeshRotationRate_Seeded?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleMeshRotationRate_Seeded.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleMeshRotationRate_Seeded)

类

全文搜索

---


## 属性

- **random** — seed(s) to use for looking up values in StartLocation RandomSeedInfo

## UParticleModuleMeshRotationRateMultiplyLife

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleMeshRotationRateMultiplyLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleMeshRotationRateMultiplyLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleMeshRotationRateMultiplyLife](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleMeshRotationRateMultiplyLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleMeshRotationRateMultiplyLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleMeshRotationRateMultiplyLife)

类

全文搜索

UCLASS(editinlinenew, hidecategories=Object, meta=(DisplayName = "Mesh Rotation Rate Life"))

---


## 属性

- **scale** — factor that should be applied to the rotation rate. The value is retrieved using the RelativeTime of the particle. LifeMultiplier

## UParticleModuleMeshRotationRateOverLife

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleMeshRotationRateOverLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleMeshRotationRateOverLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleMeshRotationRateOverLife](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleMeshRotationRateOverLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleMeshRotationRateOverLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleMeshRotationRateOverLife)

类

全文搜索

---


## 属性

- **rotation** — rate desired. The value is retrieved using the RelativeTime of the particle. If true, scale the current rotation rate by the value retrieved. Otherwise, set the rotation rate to the value retrieved. RotRate bScaleRotRate

## UParticleModuleOrbit

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleOrbit?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleOrbit.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleOrbit](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleOrbit?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleOrbit.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleOrbit)

类

全文搜索

---


## 属性

- **modules** — will chain together in the order they appear in the module stack. The combination of a module with the one prior to it is defined by using one of the following enumerations: EOChainMode_Add Add the values to the previous results EOChainMode_Scale Multiply the values by the previous results EOChainMo

## UParticleModuleOrbitBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleOrbitBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleOrbitBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleOrbitBase](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleOrbitBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleOrbitBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleOrbitBase)

类

全文搜索

---


## 属性

- **true** — , distribution values will be retrieved using the EmitterTime. If false (default), they will be retrieved using the Particle.RelativeTime. bUseEmitterTime

## UParticleModuleOrientationAxisLock

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleOrientationAxisLock?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleOrientationAxisLock.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleOrientationAxisLock](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleOrientationAxisLock?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleOrientationAxisLock.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleOrientationAxisLock)

类

全文搜索

---


## 属性

- **lock** — axis flag setting. Can be one of the following: EPAL_NONE No locking to an axis. EPAL_X Lock the sprite facing towards +X. EPAL_Y Lock the sprite facing towards +Y. EPAL_Z Lock the sprite facing towards +Z. EPAL_NEGATIVE_X Lock the sprite facing towards -X. EPAL_NEGATIVE_Y Lock the sprite facing tow

## UParticleModuleParameterDynamic

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleParameterDynamic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleParameterDynamic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleParameterDynamic](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleParameterDynamic?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleParameterDynamic.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleParameterDynamic)

类

全文搜索

---


## 属性

- **dynamic** — parameters this module uses. Flags for optimizing update DynamicParams UpdateFlags bUsesVelocity

## UParticleModuleParameterDynamic_Seeded

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleParameterDynamic_Seeded?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleParameterDynamic_Seeded.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleParameterDynamic_Seeded](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleParameterDynamic_Seeded?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleParameterDynamic_Seeded.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleParameterDynamic_Seeded)

类

全文搜索

---


## 属性

- **random** — seed(s) to use for looking up values in StartLocation RandomSeedInfo

## UParticleModulePivotOffset

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModulePivotOffset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModulePivotOffset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModulePivotOffset](https://developer.gp.qq.com/api/#/searchContent/UParticleModulePivotOffset?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModulePivotOffset.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModulePivotOffset)

类

全文搜索

---


## 属性

- **applied** — in UV space to the particle vertex positions. Defaults to (0.5,0.5) putting the pivot in the centre of the partilce. PivotOffset

## UParticleModuleRequired

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleRequired?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleRequired.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleRequired](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleRequired?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleRequired.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleRequired)

类

全文搜索

---


## 属性

- **material** — to utilize for the emitter at this LOD level. EEmitterRotationModeEmitterRotateAxis EEmitterSelfRotationModeEmitterSelfRotateAxis The screen alignment to utilize for the emitter at this LOD level. One of the following: PSA_FacingCameraPosition - Faces the camera position, but is not dependent on the

## UParticleModuleRotation

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleRotation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleRotation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleRotation](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleRotation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleRotation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleRotation)

类

全文搜索

---


## 属性

- **rotation** — of the particle (1 = 360 degrees). The value is retrieved using the EmitterTime. StartRotation

## UParticleModuleRotationOverLifetime

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleRotationOverLifetime?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleRotationOverLifetime.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleRotationOverLifetime](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleRotationOverLifetime?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleRotationOverLifetime.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleRotationOverLifetime)

类

全文搜索

---


## 属性

- **rotation** — of the particle (1.0 = 360 degrees). The value is retrieved using the RelativeTime of the particle. If true, the particle rotation is multiplied by the value retrieved from RotationOverLife. If false, the particle rotation is incremented by the value retrieved from RotationOverLife. RotationOverLife

## UParticleModuleRotationRate

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleRotationRate?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleRotationRate.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleRotationRate](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleRotationRate?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleRotationRate.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleRotationRate)

类

全文搜索

---


## 属性

- **rotation** — rate, in rotations per second. The value is retrieved using the EmitterTime. StartRotationRate

## UParticleModuleRotationRateMultiplyLife

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleRotationRateMultiplyLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleRotationRateMultiplyLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleRotationRateMultiplyLife](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleRotationRateMultiplyLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleRotationRateMultiplyLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleRotationRateMultiplyLife)

类

全文搜索

UCLASS(editinlinenew, hidecategories=Object, MinimalAPI, meta=(DisplayName = "Rotation Rate Life"))

---


## 属性

- **scale** — factor that should be applied to the rotation rate. The value is retrieved using the RelativeTime of the particle. LifeMultiplier

## UParticleModuleSize

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSize?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSize.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSize](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSize?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSize.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSize)

类

全文搜索

---


## 属性

- **initial** — size that should be used for a particle. The value is retrieved using the EmitterTime during the spawn of a particle. It is added to the Size and BaseSize fields of the spawning particle. StartSize

## UParticleModuleSizeMultiplyLife

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSizeMultiplyLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSizeMultiplyLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSizeMultiplyLife](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSizeMultiplyLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSizeMultiplyLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSizeMultiplyLife)

类

全文搜索

---


## 属性

- **scale** — factor for the size that should be used for a particle. The value is retrieved using the RelativeTime of the particle during its update. If true, the X-component of the scale factor will be applied to the particle size X-component. If false, the X-component is left unaltered. If true, the Y-componen

## UParticleModuleSizeScale

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSizeScale?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSizeScale.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSizeScale](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSizeScale?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSizeScale.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSizeScale)

类

全文搜索

---


## 属性

- **amount** — the BaseSize should be scaled before being used as the size of the particle. The value is retrieved using the RelativeTime of the particle during its update. NOTE: this module overrides any size adjustments made prior to this module in that frame. Ignored Ignored Ignored SizeScale EnableX EnableY En

## UParticleModuleSizeScaleBySpeed

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSizeScaleBySpeed?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSizeScaleBySpeed.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSizeScaleBySpeed](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSizeScaleBySpeed?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSizeScaleBySpeed.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSizeScaleBySpeed)

类

全文搜索

---


## 属性

- **how** — much speed affects the size of the particle in each dimension. The maximum amount by which to scale a particle in each dimension. SpeedScale MaxScale

## UParticleModuleSourceMovement

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSourceMovement?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSourceMovement.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSourceMovement](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSourceMovement?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSourceMovement.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSourceMovement)

类

全文搜索

---


## 属性

- **scale** — factor to apply to the source movement before adding to the particle location. The value is looked up using the particles RELATIVE time [0..1]. SourceMovementScale

## UParticleModuleSpawn

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSpawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSpawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSpawn](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSpawn?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSpawn.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSpawn)

类

全文搜索

---


## 属性

- **rate** — at which to spawn particles. The scalar to apply to the rate. The method to utilize when burst-emitting particles. The array of burst entries. Scale all burst entries by this amount. If true, the SpawnRate will be scaled by the global CVar r.EmitterSpawnRateScale Rate RateScale ParticleBurstMethod B

## UParticleModuleSpawnBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSpawnBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSpawnBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSpawnBase](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSpawnBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSpawnBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSpawnBase)

类

全文搜索

---


## 属性

- **true** — , the SpawnRate of the SpawnModule of the emitter will be processed. If mutliple Spawn modules are 'stacked' in an emitter, if ANY of them have this set to false, it will not process the SpawnModule SpawnRate. If true, the BurstList of the SpawnModule of the emitter will be processed. If mutliple Sp

## UParticleModuleSpawnPerUnit

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSpawnPerUnit?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSpawnPerUnit.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSpawnPerUnit](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSpawnPerUnit?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSpawnPerUnit.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSpawnPerUnit)

类

全文搜索

---


## 属性

- **scalar** — to apply to the distance traveled. The value from SpawnPerUnit is divided by this value to give the actual number of particles per unit. The amount to spawn per meter distribution. The value is retrieved using the EmitterTime. If true, process the default spawn rate when not moving... When not movin

## UParticleModuleSubUV

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSubUV?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSubUV.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSubUV](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSubUV?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSubUV.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSubUV)

类

全文搜索

---


## 属性

- **animation** — asset to use. When specified, optimal bounding geometry for each SubUV frame will be used when rendering the sprites for this emitter instead of full quads. This reduction in overdraw can reduce the GPU cost of rendering the emitter by 2x or 3x, depending on how much unused space was in the texture.

## UParticleModuleSubUVMovie

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSubUVMovie?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSubUVMovie.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSubUVMovie](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleSubUVMovie?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleSubUVMovie.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleSubUVMovie)

类

全文搜索

---


## 属性

- **true** — , use the emitter time to look up the frame rate. If false (default), use the particle relative time. The frame rate the SubUV images should be 'flipped' thru at. The starting image index for the SubUV (1 = the first frame). Assumes order of Left->Right, Top->Bottom If greater than the last frame, i

## UParticleModuleTrailSource

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleTrailSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleTrailSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleTrailSource](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleTrailSource?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleTrailSource.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleTrailSource)

类

全文搜索

---


## 属性

- **source** — method for the trail. The name of the source - either the emitter or Actor. The strength of the tangent from the source point for each Trail. Whether to lock the source to the life of the particle. SourceOffsetCount The number of source offsets that can be expected to be found on the instance. These

## UParticleModuleTypeDataAnimTrail

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleTypeDataAnimTrail?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleTypeDataAnimTrail.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleTypeDataAnimTrail](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleTypeDataAnimTrail?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleTypeDataAnimTrail.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleTypeDataAnimTrail)

类

全文搜索

---


## 属性

- **true** — , when the system is deactivated, mark trails as dead. This means they will still render, but will not have more particles added to them, even if the system re-activates... If true, recalculate the previous tangent when a new particle is spawned If true, recalculate tangents every frame to allow vel

## UParticleModuleTypeDataBeam2

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleTypeDataBeam2?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleTypeDataBeam2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleTypeDataBeam2](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleTypeDataBeam2?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleTypeDataBeam2.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleTypeDataBeam2)

类

全文搜索

---


## 属性

- **method** — with which to form the beam(s). Must be one of the following: PEB2M_Distance - Use the distance property to emit a beam along the X-axis of the emitter. PEB2M_Target - Emit a beam from the source to the supplied target. PEB2M_Branch - Currently unimplemented. The number of times to tile the texture

## UParticleModuleTypeDataGpu

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleTypeDataGpu?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleTypeDataGpu.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleTypeDataGpu](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleTypeDataGpu?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleTypeDataGpu.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleTypeDataGpu)

类

全文搜索

---


## 属性

- **for** — runtime simulation. Data used to initialize runtime resources.
- **How** — much to stretch sprites based on camera motion blur. When true, all existing partilces are cleared when the emitter is initialized. EmitterInfo ResourceData CameraMotionBlurAmount bClearExistingParticlesOnInit

## UParticleModuleTypeDataMesh

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleTypeDataMesh?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleTypeDataMesh.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleTypeDataMesh](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleTypeDataMesh?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleTypeDataMesh.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleTypeDataMesh)

类

全文搜索

---


## 属性

- **static** — mesh to render at the particle positions If true, has the meshes cast shadows UNUSED (the collision module dictates doing collisions) The alignment to use on the meshes emitted. The RequiredModule->ScreenAlignment MUST be set to PSA_TypeSpecific to use. One of the following: PSMA_MeshFaceCameraWithR

## UParticleModuleTypeDataRibbon

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleTypeDataRibbon?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleTypeDataRibbon.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleTypeDataRibbon](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleTypeDataRibbon?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleTypeDataRibbon.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleTypeDataRibbon)

类

全文搜索

---


## 属性

- **maximum** — amount to tessellate between two particles of the trail. Depending on the distance between the particles and the tangent change, the system will select a number of tessellation points [0..MaxTessellationBetweenParticles] The number of sheets to render for the trail. The number of live trails Max par

## UParticleModuleVectorFieldGlobal

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVectorFieldGlobal?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVectorFieldGlobal.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVectorFieldGlobal](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVectorFieldGlobal?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVectorFieldGlobal.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVectorFieldGlobal)

类

全文搜索

---


## 属性

- **override** — value for global vector field tightness. Global vector field scale. Global vector field tightness override. bOverrideGlobalVectorFieldTightness GlobalVectorFieldScale GlobalVectorFieldTightness

## UParticleModuleVectorFieldLocal

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVectorFieldLocal?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVectorFieldLocal.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVectorFieldLocal](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVectorFieldLocal?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVectorFieldLocal.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVectorFieldLocal)

类

全文搜索

---


## 属性

- **field** — asset to use. Translation of the vector field relative to the emitter. Rotation of the vector field relative to the emitter. Scale of the vector field relative to the emitter. Intensity of the local vector field. Tightness tweak value: 0: Force 1: Velocity. Ignore component transform. Tile vector fi

## UParticleModuleVectorFieldRotation

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVectorFieldRotation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVectorFieldRotation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVectorFieldRotation](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVectorFieldRotation?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVectorFieldRotation.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVectorFieldRotation)

类

全文搜索

---


## 属性

- **initial** — rotation applied to the local vector field. Maximum initial rotation applied to the local vector field. MinInitialRotation MaxInitialRotation

## UParticleModuleVectorFieldScale

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVectorFieldScale?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVectorFieldScale.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVectorFieldScale](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVectorFieldScale?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVectorFieldScale.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVectorFieldScale)

类

全文搜索

---


## 属性

- **vector** — field scale. Evaluated using emitter time. Per-particle vector field scale. Evaluated using emitter time. VectorFieldScale_DEPRECATED VectorFieldScaleRaw

## UParticleModuleVectorFieldScaleOverLife

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVectorFieldScaleOverLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVectorFieldScaleOverLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVectorFieldScaleOverLife](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVectorFieldScaleOverLife?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVectorFieldScaleOverLife.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVectorFieldScaleOverLife)

类

全文搜索

---


## 属性

- **vector** — field scale. Evaluated using particle relative time. Per-particle vector field scale. Evaluated using particle relative time. VectorFieldScaleOverLife_DEPRECATED VectorFieldScaleOverLifeRaw

## UParticleModuleVelocity

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVelocity?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVelocity.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVelocity](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVelocity?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVelocity.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVelocity)

类

全文搜索

---


## 属性

- **velocity** — to apply to a particle when it is spawned. Value is retrieved using the EmitterTime of the emitter. The velocity to apply to a particle along its radial direction. Direction is determined by subtracting the location of the emitter from the particle location at spawn. Value is retrieved using the Emi

## UParticleModuleVelocityBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVelocityBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVelocityBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVelocityBase](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVelocityBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVelocityBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVelocityBase)

类

全文搜索

---


## 属性

- **true** — , then treat the velocity as world-space defined. NOTE: LocalSpace emitters that are moving will see strange results... If true, then apply the particle system components scale to the velocity value. bInWorldSpace bApplyOwnerScale

## UParticleModuleVelocityCone

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVelocityCone?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVelocityCone.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVelocityCone](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVelocityCone?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVelocityCone.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVelocityCone)

类

全文搜索

---


## 属性

- **Min** — value represents the inner cone angle value and the Max value represents the outer cone angle value. The initial velocity of the particles. The direction FVector of the cone. Angle Velocity Direction

## UParticleModuleVelocityInheritParent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVelocityInheritParent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVelocityInheritParent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVelocityInheritParent](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVelocityInheritParent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVelocityInheritParent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVelocityInheritParent)

类

全文搜索

---


## 属性

- **scale** — to apply tot he parent velocity prior to adding it to the particle velocity during spawn. Value is retrieved using the EmitterTime of the emitter. Scale

## UParticleModuleVelocityOverLifetime

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVelocityOverLifetime?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVelocityOverLifetime.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVelocityOverLifetime](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVelocityOverLifetime?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVelocityOverLifetime.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVelocityOverLifetime)

类

全文搜索

---


## 属性

- **scaling** — value applied to the velocity. Value is retrieved using the RelativeTime of the particle. If true, the velocity will be SET to the value from the above dist. If false, the velocity will be scaled by the above dist. VelOverLife Absolute

## UParticleModuleVelocityRibbon

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVelocityRibbon?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVelocityRibbon.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVelocityRibbon](https://developer.gp.qq.com/api/#/searchContent/UParticleModuleVelocityRibbon?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleModuleVelocityRibbon.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleModuleVelocityRibbon)

类

全文搜索

---


## 属性

- **scaling** — value applied to the velocity. Value is retrieved using the RelativeTime of the particle. The scaling value applied to the velocity. Value is retrieved using the RelativeTime of the particle. The scaling value applied to the velocity. Value is retrieved using the RelativeTime of the particle. The sc

## UParticleSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleSystem](https://developer.gp.qq.com/api/#/searchContent/UParticleSystem?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleSystem)

类

全文搜索

A ParticleSystem is a complete particle effect that contains any number of ParticleEmitters. By allowing multiple emitters in a system, the designer can create elaborate particle effects that are held in a single system. Once created using Cascade, a ParticleSystem can then be inserted into a level or created in script.

---


## 函数

- **ContainsEmitterType**(UClass *TypeData) — ContainsEmitterType

## 属性

- **WarmupTime** — is implemented by simulating the particle system for the time requested upon activation. This is extremely prone to cause hitches, especially with large particle counts - use with caution. WarmupTickRate - the time step for each tick during warm up. Set to 0 to use the default tick time. Emitters -

## UParticleSystemComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UParticleSystemComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleSystemComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleSystemComponent](https://developer.gp.qq.com/api/#/searchContent/UParticleSystemComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUParticleSystemComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UParticleSystemComponent)

类

全文搜索

A particle emitter.

---


## 函数

- **GetDuration**(Returns duration)
- **SetSystemFixedWorldBounds**(FBoxWorldBounds)
- **SetSystemFixedLocalBounds**(FBoxLocalBounds)
- **ClearSystemFixedBounds**(Clear any previously set fixed bounds for the system instance.)
- **SetWarmUp**(float WarmUpTime, floatWarmUpRate)
- **SetAutoAttachParams**(USceneComponent* Parent, FName SocketName, EAttachLocation :: TypeLocationType) — DEPRECATED: Set AutoAttachParent, AutoAttachSocketName, AutoAttachLocationType to the specified parameters. Does not change bAutoManageAttachment; that must be set separately. params Parent - Component to attach to. params SocketName -Socket on Parent to attach to. params LocationType -Option for ho
- **SetAutoAttachmentParameters**(USceneComponent* Parent, FName SocketName, EAttachmentRule LocationRule, EAttachmentRule RotationRule, EAttachmentRuleScaleRule) — Set AutoAttachParent, AutoAttachSocketName, AutoAttachLocationRule, AutoAttachRotationRule, AutoAttachScaleRule to the specified parameters. Does not change bAutoManageAttachment; that must be set separately. params Parent - Component to attach to. params SocketName -Socket on Parent to attach to. p
- **SetBeamEndPoint**(int32 EmitterIndex, FVectorNewEndPoint) — Set the beam end point params EmitterIndex -The index of the emitter to set it on params NewEndPoint - The value to set it to
- **SetBeamSourcePoint**(int32 EmitterIndex, FVector NewSourcePoint, int32SourceIndex) — Set the beam source point params EmitterIndex -The index of the emitter to set it on params NewSourcePoint -The value to set it to params SourceIndex - Which beam within the emitter to set it on
- **SetBeamSourceTangent**(int32 EmitterIndex, FVector NewTangentPoint, int32SourceIndex) — Set the beam source tangent params EmitterIndex -The index of the emitter to set it on params NewTangentPoint -The value to set it to params SourceIndex - Which beam within the emitter to set it on
- **SetBeamSourceStrength**(int32 EmitterIndex, float NewSourceStrength, int32SourceIndex) — Set the beam source strength params EmitterIndex -The index of the emitter to set it on params NewSourceStrength -The value to set it to params SourceIndex - Which beam within the emitter to set it on
- **SetBeamTargetPoint**(int32 EmitterIndex, FVector NewTargetPoint, int32TargetIndex) — Set the beam target point params EmitterIndex -The index of the emitter to set it on params NewTargetPoint -The value to set it to params TargetIndex - Which beam within the emitter to set it on
- **SetBeamTargetTangent**(int32 EmitterIndex, FVector NewTangentPoint, int32TargetIndex) — Set the beam target tangent params EmitterIndex -The index of the emitter to set it on params NewTangentPoint -The value to set it to params TargetIndex - Which beam within the emitter to set it on
- **SetBeamTargetStrength**(int32 EmitterIndex, float NewTargetStrength, int32TargetIndex) — Set the beam target strength params EmitterIndex -The index of the emitter to set it on params NewTargetStrength -The value to set it to params TargetIndex - Which beam within the emitter to set it on
- **GetBeamEndPoint**(int32 EmitterIndex, FVector &OutEndPoint) — Get the beam end point return -true EmitterIndex is valid and End point is set - OutEndPoint is valid params EmitterIndex -The index of the emitter to get the value of
- **GetBeamSourcePoint**(int32 EmitterIndex, int32 SourceIndex, FVector &OutSourcePoint) — Get the beam source point return -true EmitterIndex and SourceIndex are valid - OutSourcePoint is valid params EmitterIndex -The index of the emitter to get params SourceIndex - Which beam within the emitter to get params OutSourcePoint -Value of source point
- **GetBeamSourceTangent**(int32 EmitterIndex, int32 SourceIndex, FVector &OutTangentPoint) — Get the beam source tangent return -true EmitterIndex and SourceIndex are valid - OutTangentPoint is valid params EmitterIndex -The index of the emitter to get params SourceIndex - Which beam within the emitter to get params OutTangentPoint -Value of source tangent
- **GetBeamSourceStrength**(int32 EmitterIndex, int32 SourceIndex, float &OutSourceStrength) — Get the beam source strength return -true EmitterIndex and SourceIndex are valid - OutSourceStrength is valid params EmitterIndex -The index of the emitter to get params SourceIndex - Which beam within the emitter to get params OutSourceStrength -Value of source tangent
- **GetBeamTargetPoint**(int32 EmitterIndex, int32 TargetIndex, FVector &OutTargetPoint) — Get the beam target point return -true EmitterIndex and TargetIndex are valid - OutTargetPoint is valid params EmitterIndex -The index of the emitter to get params TargetIndex - Which beam within the emitter to get params OutTargetPoint -Value of target point
- **GetBeamTargetTangent**(int32 EmitterIndex, int32 TargetIndex, FVector &OutTangentPoint) — Get the beam target tangent return -true EmitterIndex and TargetIndex are valid - OutTangentPoint is valid params EmitterIndex -The index of the emitter to get params TargetIndex - Which beam within the emitter to get params OutTangentPoint -Value of target tangent
- **GetBeamTargetStrength**(int32 EmitterIndex, int32 TargetIndex, float &OutTargetStrength) — Get the beam target strength return -true EmitterIndex and TargetIndex are valid - OutTargetStrength is valid params EmitterIndex -The index of the emitter to get params TargetIndex - Which beam within the emitter to get params OutTargetStrength -Value of target tangent
- **SetEmitterEnable**(FName EmitterName, boolbNewEnableState) — EnablesDisables a sub-emitter params EmitterName - The name of the sub-emitter to set it on params bNewEnableState -The value to set it to
- **SetFloatParameter**(FName ParameterName, floatParam) — Change a named float parameter
- **SetVectorParameter**(FName ParameterName, FVectorParam) — Set a named vector instance parameter on this ParticleSystemComponent. Updates the parameter if it already exists, or creates a new entry if not.
- **SetColorParameter**(FName ParameterName, FLinearColorParam) — Set a named color instance parameter on this ParticleSystemComponent. Updates the parameter if it already exists, or creates a new entry if not.
- **SetActorParameter**(FName ParameterName, AActor *Param) — Set a named actor instance parameter on this ParticleSystemComponent. Updates the parameter if it already exists, or creates a new entry if not.
- **SetMaterialParameter**(FName ParameterName, UMaterialInterface *Param) — Set a named material instance parameter on this ParticleSystemComponent. Updates the parameter if it already exists, or creates a new entry if not.
- **SetTemplate**(UParticleSystem *NewTemplate) — Change the ParticleSystem used by this ParticleSystemComponent
- **GetNumActiveParticles**(Get the current number of active particles in this system)
- **BeginTrails**(FName InFirstSocketName, FName InSecondSocketName, ETrailWidthMode InWidthMode, floatInWidth) — Begins all trail emitters in this component. params InFirstSocketName -The name of the first socket for the trail. params InSecondSocketName -The name of the second socket for the trail. params InWidthMode - How the width value is applied to the trail. params InWidth - The width of the trail.
- **EndTrails**(Ends all trail emitters in this component.)
- **SetTrailSourceData**(FName InFirstSocketName, FName InSecondSocketName, ETrailWidthMode InWidthMode, floatInWidth) — Sets the defining data for all trails in this component. params InFirstSocketName -The name of the first socket for the trail. params InSecondSocketName -The name of the second socket for the trail. params InWidthMode - How the width value is applied to the trail. params InWidth - The width of the t
- **SetSocketName**(FNameInSocketName)
- **ManuallyTickComponent**(floatDeltaTime)
- **K2_Activate**(boolbReset)
- **K2_ActivateSystem**(boolbFlagAsJustAttached)
- **K2_Deactivate**()
- **K2_DeactivateSystem**()
- **CreateNamedDynamicMaterialInstance**(FName InName, UMaterialInterface *SourceMaterial) — Creates a Dynamic Material Instance for the specified named material override, optionally from the supplied material.
- **GetNamedMaterial**(FNameInName) — Returns a named material. If this named material is not found, returns NULL.
- **GenerateParticleEvent**(FName InEventName, float InEmitterTime, FVector InLocation, FVector InDirection, FVectorInVelocity) — Record a kismet event. params InEventName - The name of the event that fired. params InEmitterTime - The emitter time when the event fired. params InLocation - The location of the particle when the event fired. params InVelocity - The velocity of the particle when the event fired.
- **SetVectorRandParameter**(FName ParameterName, FVector& Param, FVector &ParamLow) — Set a named random vector instance parameter on this ParticleSystemComponent. Updates the parameter if it already exists, or creates a new entry if not.
- **SetFloatRandParameter**(FName ParameterName, float Param, floatParamLow) — Set a named random float instance parameter on this ParticleSystemComponent. Updates the parameter if it already exists, or creates a new entry if not.
- **RewindEmitterInstances**(GetDuration SetSystemFixedWorldBounds SetSystemFixedLocalBounds ClearSystemFixedBounds SetWarmUp SetAutoAttachParams SetAutoAttachmentParameters SetBeamEndPoint SetBeamSourcePoint SetBeamSourceTangent SetBeamSourceStrength SetBeamTargetPoint SetBeamTargetTangent SetBeamTargetStrength GetBeamEndPoint)

## 属性

- **skeletal** — mesh components used with the socket location module. This is to prevent them from being garbage collected. whether to update the particle system on dedicated servers If true, this Particle System will be available for recycling after it has completed. Auto-destroyed systems cannot be recycled. Some

## 委托

- voidOnSystemFinished(UParticleSystemComponent*PSystem)
- OnSystemFinished

## UPathFollowingComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPathFollowingComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPathFollowingComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPathFollowingComponent](https://developer.gp.qq.com/api/#/searchContent/UPathFollowingComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPathFollowingComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPathFollowingComponent)

类

全文搜索

---


## 函数

- **OnActorBump**(AActor* SelfActor, AActor* OtherActor, FVector NormalImpulse, FHitResult &Hit) — called when moving agent collides with another actor
- **TypeGetPathActionType**()
- **VectorGetPathDestination**()
- **OnNavDataRegistered**(ANavigationData *NavData) — called when NavigationSystem registers new navigation data type while this component instance has empty MyNavData. This is usually the case for AI agents hand-placed on levels. OnActorBump GetPathActionType GetPathDestination OnNavDataRegistered

## 属性

- **movement** — component ANavigationData *MyNavData navigation data for agent described in movement component MovementComp MyNavData

## UPESkillPassiveSkill

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPESkillPassiveSkill?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPESkillPassiveSkill.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPESkillPassiveSkill](https://developer.gp.qq.com/api/#/searchContent/UPESkillPassiveSkill?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPESkillPassiveSkill.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPESkillPassiveSkill)

类

全文搜索

被动技能实体

事件

voidOnStackChange_BP(int32 PreNum, int32CurrentNum)

生效范围：服务器&客户端

当 被动技能 堆叠层数变化时调用，比如技能被合并时

params PreNum

-上一次的堆叠层数

params CurrentNum

-当前的堆叠层数

boolCanClientRPCActivate_BP()

生效范围：服务器

当 pes.BlockPassiveSkillClientRPC 开关关闭时，由蓝图决定是否允许客户端 RPC 激活被动技能

return

-true 允许激活，false 拒绝激活

---

## UPESkillWidget

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPESkillWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPESkillWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPESkillWidget](https://developer.gp.qq.com/api/#/searchContent/UPESkillWidget?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPESkillWidget.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPESkillWidget)

类

全文搜索

技能UI基类

---


## 函数

- **BindToSlot**(UPersistBaseComponent* Comp, FGameplayTagSlotName) — 将技能绑定到指定PE组件的指定Slot上 生效范围C params Comp -绑定的组件 params SlotName -绑定的槽位
- **GetCurrentSkill**(获取当前绑定的技能 生效范围C return -当前绑定的技能)
- **BindImageAndTextForSkillNameAndIcon**(UImage* IconImage, UTextBlock* NameText, UTextBlock *DescribeText) — 绑定用于显示技能图标、名字、描述的控件 生效范围C params IconImage -图标控件 params NameText -名字控件 params DescribeText -描述控件
- **RefreshSkillUI**(刷新当前UI绑定的控件的内容 生效范围C)
- **NameGetSkillName**(获取技能名字 生效范围C return -技能名字)
- **StringGetSkillDetail**(获取技能描述 生效范围C return -技能描述)
- **SoftObjectPathGetSkillIcon**(获取技能图标 生效范围C return -技能图标)
- **InitButton**(UImage* IconImage, UTextBlock* NameText, UButton *ClickButton) — 绑定技能按钮控件 生效范围C params IconImage -图标控件 params NameText -名字控件 params ClickButton -按钮控件
- **InitLayer**(UTextBlock* LayerText, UPanelWidget *LayerPanel) — 绑定技能使用层数控件 生效范围C params LayerText -技能层数 params LayerPanel -技能层数的Panel控件，控制层数的显隐
- **InitCDProgress**(UTextBlock* CDText, UImage* CDProgressImage, UPanelWidget *CDProgressPanel) — 绑定技能CD控件 生效范围C params CDText -技能CD时间 params CDProgressImage -@技能CD进度条 params CDProgressPanel -整个CD的Panel控件，控制CD的显隐
- **InitEnergyProgress**(UImage* EnergyProgressImage, UPanelWidget *EnergyCanvasPanel) — 绑定技能能量控件 生效范围C params EnergyProgressImage -技能能量进度条 params EnergyCanvasPanel -技能能量Panel控件，控制能量进度条的显隐
- **InitTagDisableState**(UPanelWidget *TagDisableCanvasPanel) — 绑定技能显示TagDisable状态的控件 生效范围C params TagDisableCanvasPanel -技能TagDisable状态的Panel控件，控制TagDisable状态的显隐
- **InitEnableState**(UPanelWidget *EnableCanvasPanel) — 绑定技能显示Enable状态的控件 生效范围C params EnableCanvasPanel -技能Enable状态的Panel控件，控制Enable状态的显隐
- **InitVirtualJoystick**(UPanelWidget* VirtualJoystickPanel, UPESkillVirtualJoystick *VirtualJoystick) — 绑定技能摇杆输入控件 生效范围C params VirtualJoystick -技能技能摇杆控件，控制摇杆的生效和失效 事件
- **OnSkillBound_BP**(UPersistEffectSkill *InOwnerSkill) — 当控件绑定到新的技能时触发 生效范围C params InOwnerSkill -当前绑定的技能
- **UpdateCD_BP**(floatDelta) — 每帧触发，用于更新CD显示 生效范围C params Delta -每帧的时间
- **OnCDStateChange_BP**(boolbIsCD) — 当控件绑定的技能CD状态变化时触发 生效范围C params bIsCD -技能是否处在CD状态
- **OnSkillUIInfoChange_BP**(当控件绑定的技能的UI信息变化时触发 生效范围C)
- **OnEnableChange_BP**(boolbIsEnable) — 当控件绑定的技能Enable状态变化时触发 生效范围C params bIsEnable -技能是否Enable
- **OnTagDisableChange_BP**(boolbIsDisable) — 当控件绑定的技能被禁用Tag(PawnState.ActivatingSkill)导致无法激活时触发 生效范围C params bIsDisable -技能是否被Tag禁用
- **OnSkillDirectionInputEnableChange_BP**(boolbEnable) — 当控件绑定的技能的摇杆输入生效或失效时触发 生效范围C BindToSlot GetCurrentSkill BindImageAndTextForSkillNameAndIcon RefreshSkillUI GetSkillName GetSkillDetail GetSkillIcon InitButton InitLayer InitCDProgress InitEnergyProgress InitTagDisableState InitEnableState InitVirtualJoystick 事件 OnSkillBound_BP UpdateCD_BP OnCDStateCh

## UPESkillWithPredict

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPESkillWithPredict?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPESkillWithPredict.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPESkillWithPredict](https://developer.gp.qq.com/api/#/searchContent/UPESkillWithPredict?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPESkillWithPredict.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPESkillWithPredict)

类

全文搜索

带主端预测的技能实,目前暂未有技能实装，待测试

---


## 函数

- **ActivateSkillWithPredict**(生效范围：SC 释放技能带主端预测)
- **JumpToStateWithPredict**(FName StateName, float EnterTime, boolbPause) — 生效范围：SC 跳转状态带主端预测 ActivateSkillWithPredict JumpToStateWithPredict

## UPlayer

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPlayer.json&isSelect=1&apiEnc=%22%22&apiLabel=UPlayer](https://developer.gp.qq.com/api/#/searchContent/UPlayer?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPlayer.json&isSelect=1&apiEnc=%22%22&apiLabel=UPlayer)

全文搜索

---


## 属性

- **actor** — this player controls. the current speed of the connection @todo document @todo document PlayerController CurrentNetSpeed ConfiguredInternetSpeed ConfiguredLanSpeed

## UPlayerInput

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPlayerInput?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPlayerInput.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPlayerInput](https://developer.gp.qq.com/api/#/searchContent/UPlayerInput?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPlayerInput.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPlayerInput)

类

全文搜索

end: 单条记录，滑屏轨迹中的一个点 Object within PlayerController that processes player input. Only exists on the client in network games.

---


## 函数

- **SetMouseSensitivity**(floatSensitivity) — Exec function to change the mouse sensitivity
- **SetBind**(FName BindName, FString &Command) — Exec function to add a debug exec command
- **InvertAxisKey**(FKeyAxisKey) — Exec function to invert an axis key
- **InvertAxis**(FNameAxisName) — Exec function to invert an axis mapping
- **ClearSmoothing**(Exec function to reset mouse smoothing values SetMouseSensitivity SetBind InvertAxisKey InvertAxis ClearSmoothing)

## 属性

- **bindings** — of keys to Exec()-compatible strings for development purposes only List of Axis Mappings that have been inverted bEnableKeyInput InputTouchCacheDataList DebugExecBindings InvertedAxis

