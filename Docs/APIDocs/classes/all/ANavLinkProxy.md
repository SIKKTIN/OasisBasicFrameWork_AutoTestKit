# ANavLinkProxy

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/ANavLinkProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavLinkProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavLinkProxy](https://developer.gp.qq.com/api/#/searchContent/ANavLinkProxy?classDetailShow=true&path=class%2Fdetail%2FOthers%2FANavLinkProxy.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=ANavLinkProxy)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **ReceiveSmartLinkReached** | AActor * Agent, FVector &Destination |  |
| called when agent reaches smart link during path following, use | **ResumePathFollowing** |  |  |
| void | **ResumePathFollowing** | AActor *Agent | resume normal path following |
| bool | **IsSmartLinkEnabled** |  | check if smart link is enabled |
| void | **SetSmartLinkEnabled** | boolbEnabled | change state of smart link |
| bool | **HasMovingAgents** |  | check if any agent is moving through smart link right now ReceiveSmartLinkReached ResumePathFollowing IsSmartLinkEnabled SetSmartLinkEnabled HasMovingAgents |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Navigation | **links** | (point to point) added to navigation data Navigation links (segment to segment) added to navigation data @todo hidden from use until we fix segment links. Not really working now UNavLinkCustomComponent *SmartLinkComp Smart link: can affect path following Smart link: toggle relevancy UNavLinkRenderin |

## 委托

- voidOnSmartLinkReached(AActor*MovingActor, const FVector&DestinationPoint)
- OnSmartLinkReached

