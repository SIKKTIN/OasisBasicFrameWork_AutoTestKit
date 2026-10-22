# UDemoNetDriver

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDemoNetDriver?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDemoNetDriver.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDemoNetDriver](https://developer.gp.qq.com/api/#/searchContent/UDemoNetDriver?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDemoNetDriver.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDemoNetDriver)

类

全文搜索

Simulated network driver for recording and playing back game sessions.

---


## 属性

- **startup** — actors that need to be rolled back during scrubbing by being destroyed and re-spawned NOTE - DeletedNetStartupActors will take precedence here, and destroy the actor instead Maximum time allowed each frame to spend on saving a checkpoint. If 0, it will save the checkpoint in a single frame, regardle