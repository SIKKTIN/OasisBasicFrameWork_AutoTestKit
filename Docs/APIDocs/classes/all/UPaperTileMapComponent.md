# UPaperTileMapComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPaperTileMapComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperTileMapComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperTileMapComponent](https://developer.gp.qq.com/api/#/searchContent/UPaperTileMapComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPaperTileMapComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPaperTileMapComponent)

类

全文搜索

A component that handles rendering and collision for a single instance of a UPaperTileMap asset. This component is created when you drag a tile map asset from the content browser into a Blueprint, or contained inside of the actor created when you drag one into the level. NOTE: This is an early access preview class. While not considered production-ready, it is a step beyond 'experimental' and is being provided as a preview of things to come: - We will try to provide forward-compatibility for content you create. - The classes may change significantly in the future. - The code is in an early state and may not meet the desired polish quality bar. - There is probably no documentation or example content yet. - They will be promoted out of 'Early Access' when they are production ready. @see UPrimitiveComponent, UPaperTileMap

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **CreateNewTileMap** | int32 MapWidth, int32 MapHeight, int32 TileWidth, int32 TileHeight, float PixelsPerUnrealUnit, boolbCreateLayer | Creates a new tile map of the specified size, replacing the TileMap reference (or dropping the previous owned one) params MapWidth -Width of the map (in tiles) params MapHeight -Height of the map (in tiles) params TileWidth -Width of one tile (in pixels) params TileHeight -Height of one tile (in pix |
| bool | **OwnsTileMap** |  |  |
| bool | **SetTileMap** | UPaperTileMap *NewTileMap | Change the PaperTileMap used by this instance. |
| void | **GetMapSize** | int32 & MapWidth, int32 & MapHeight, int32 &NumLayers |  |
| F | **PaperTileInfoGetTile** | int32 X, int32 Y, int32Layer |  |
| void | **SetTile** | int32 X, int32 Y, int32 Layer, FPaperTileInfoNewValue |  |
| void | **ResizeMap** | int32 NewWidthInTiles, int32NewHeightInTiles |  |
| UPaperTileLayer * | **AddNewLayer** |  |  |
| F | **LinearColorGetTileMapColor** |  |  |
| void | **SetTileMapColor** | FLinearColorNewColor |  |
| F | **LinearColorGetLayerColor** | int32Layer |  |
| void | **SetLayerColor** | FLinearColor NewColor, int32Layer |  |
| void | **MakeTileMapEditable** |  |  |
| F | **VectorGetTileCornerPosition** | int32 TileX, int32 TileY, int32 LayerIndex, boolbWorldSpace |  |
| F | **VectorGetTileCenterPosition** | int32 TileX, int32 TileY, int32 LayerIndex, boolbWorldSpace |  |
| void | **GetTilePolygon** | int32 TileX, int32 TileY, TArray < FVector > & Points, int32 LayerIndex, boolbWorldSpace |  |
| void | **SetDefaultCollisionThickness** | float Thickness, boolbRebuildCollision |  |
| void | **SetLayerCollision** | int32 Layer, bool bHasCollision, bool bOverrideThickness, float CustomThickness, bool bOverrideOffset, float CustomOffset, boolbRebuildCollision |  |
| void | **RebuildCollision** |  | CreateNewTileMap OwnsTileMap SetTileMap GetMapSize GetTile SetTile ResizeMap AddNewLayer GetTileMapColor SetTileMapColor GetLayerColor SetLayerColor MakeTileMapEditable GetTileCornerPosition GetTileCenterPosition GetTilePolygon SetDefaultCollisionThickness SetLayerCollision RebuildCollision |

