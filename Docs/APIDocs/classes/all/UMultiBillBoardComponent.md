# UMultiBillBoardComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMultiBillBoardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMultiBillBoardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMultiBillBoardComponent](https://developer.gp.qq.com/api/#/searchContent/UMultiBillBoardComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMultiBillBoardComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMultiBillBoardComponent)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| const TArray < FBillBoardMaterialSpriteElement > & | **GetElements** |  |  |
| void | **SetElements** | TArray < FBillBoardMaterialSpriteElement > &NewElements | Set all elements of this material billboard component |
| void | **AddElement** | UMaterialInterface * Material, UCurveFloat * DistanceToOpacityCurve, bool bSizeIsInScreenSpace, float BaseSizeX, float BaseSizeY, UCurveFloat *DistanceToSizeCurve | Adds an element to the sprite. |
| int32 | **K2_AddBillBoard** | FVector NewLocation, FVector2D UV0, FVector2DUV1 |  |
| void | **RemoveBillboard** | int32ID |  |
| void | **ClearAllBillBoards** |  |  |
| void | **SetBillboardUV** | int32 ID, FVector2D UV0, FVector2DUV1 |  |
| UMultiBillBoardComponent * | **CreateMultiBillboardComponent** | UObject * WorldContextObject, TSubclassOf < UMultiBillBoardComponent >MultiBillboardClass | GetElements SetElements AddElement K2_AddBillBoard RemoveBillboard ClearAllBillBoards SetBillboardUV CreateMultiBillboardComponent |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Current | **array** | of material billboard elements Elements BillboardDatas |

