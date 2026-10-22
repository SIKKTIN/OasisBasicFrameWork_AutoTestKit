# UGridPathFollowingComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGridPathFollowingComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridPathFollowingComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridPathFollowingComponent](https://developer.gp.qq.com/api/#/searchContent/UGridPathFollowingComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGridPathFollowingComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGridPathFollowingComponent)

类

全文搜索

Path following augmented with local navigation grids Keeps track of nearby grids and use them instead of navigation path when agent is inside. Once outside grid, regular path following is resumed. This allows creating dynamic navigation obstacles with fully static navigation (e.g. static navmesh), as long as they are minor modifications for path. Not recommended for blocking off entire corridors. Does not replace proper avoidance for dynamic obstacles!

---