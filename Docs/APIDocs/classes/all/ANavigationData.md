# ANavigationData

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ANavigationData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavigationData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavigationData](https://developer.gp.qq.com/api/#/searchContent/ANavigationData?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavigationData.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavigationData)

类

全文搜索

Represents abstract Navigation Data (sub-classed as NavMesh, NavGraph, etc) Used as a common interface for all navigation types handled by NavigationSystem

---

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| if | **set** | to true then this navigation data will be drawing itself when requested as part of "show navigation" By default navigation will skip the first update after being successfully loaded setting bForceRebuildOnLoad to false can override this behavior If set, navigation data can act as default one in navi |

## 委托

- TArray<FVector2D>BuildTileSortSeedLocationDelegate()
- BuildTileSortSeedLocationDelegate

