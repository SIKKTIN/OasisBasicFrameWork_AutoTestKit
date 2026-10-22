# UFoliageStatistics

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UFoliageStatistics?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFoliageStatistics.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFoliageStatistics](https://developer.gp.qq.com/api/#/searchContent/UFoliageStatistics?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUFoliageStatistics.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UFoliageStatistics)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| int32 | **FoliageOverlappingSphereCount** | UObject * WorldContextObject, UStaticMesh * StaticMesh, FVector CenterPosition, floatRadius | Counts how many foliage instances overlap a given sphere params CenterPosition -The center position of the sphere params Radius - The radius of the sphere. |
| int32 | **FoliageOverlappingBoxCount** | UObject * WorldContextObject, UStaticMesh * StaticMesh, FBoxBox | Gets the number of instances overlapping a provided box params StaticMesh -Mesh to count params Box -Box to overlap FoliageOverlappingSphereCount FoliageOverlappingBoxCount |

