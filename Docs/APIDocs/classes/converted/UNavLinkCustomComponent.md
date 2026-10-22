# UNavLinkCustomComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UNavLinkCustomComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavLinkCustomComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavLinkCustomComponent](https://developer.gp.qq.com/api/#/searchContent/UNavLinkCustomComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUNavLinkCustomComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UNavLinkCustomComponent)

类

全文搜索

Encapsulates NavLinkCustomInterface interface, can be used with Actors not relevant for navigation Additional functionality: - can be toggled - can create obstacle area for easierforced separation of link end points - can broadcast state changes to nearby agents

---


## 属性

- **Id** — assigned by navigation system area class to use when link is enabled area class to use when link is disabled start point, relative to owner end point, relative to owner direction of link is link currently in enabled state? (area class) should link notify nearby agents when it changes state to enable
- **for** — state change broadcast (0 = single broadcast) trace channel for state change broadcast NavLinkUserId EnabledAreaClass DisabledAreaClass LinkRelativeStart LinkRelativeEnd LinkDirection bLinkEnabled bNotifyWhenEnabled bNotifyWhenDisabled bCreateBoxObstacle ObstacleOffset ObstacleExtent ObstacleAreaCla