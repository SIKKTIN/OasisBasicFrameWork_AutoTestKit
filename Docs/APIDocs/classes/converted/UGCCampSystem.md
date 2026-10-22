# UGCCampSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCCampSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCCampSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCampSystem](https://developer.gp.qq.com/api/#/searchContent/UGCCampSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCCampSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCCampSystem)

类

全文搜索

阵营接口库

---


## 函数

- **AddCamp**(stringInCampName) — 增加阵营 生效范围：服务器 return -通过CampName创建的阵营ID，CampName与CampID都是阵营唯一标识符 params InCampName -阵营名称
- **CampForActor**(AActorInActor, numberInCampID) — 设置非玩家Actor所属阵营，例如设置怪物的阵营 生效范围：服务器 params InActor -AActor params InCampID -阵营ID
- **SetCampForTeam**(numberInTeamID, numberInCampID) — 设置队伍所属阵营 生效范围：服务器 return -设置队伍所属阵营是否成功 params InTeamID -队伍ID params InCampID -阵营ID
- **GetCampIDByActor**(AActorInActor) — 通过非玩家Actor获取阵营ID，获取失败的时候返回-1 生效范围：客户端&服务器 return -阵营ID params InActor -AActor
- **GetCampNameByActor**(AActorInActor) — 通过非玩家Actor获取阵营名称，获取失败的时候返回空字符串 生效范围：客户端&服务器 return -阵营名称 params InActor -AActor
- **GetCampIDByTeamID**(numberInTeamID) — 通过队伍ID获取阵营ID，获取失败的时候返回-1 生效范围：客户端&服务器 return -阵营ID params InTeamID -队伍ID
- **GetCampNameByTeamID**(numberInTeamID) — 通过队伍ID获取阵营名称，获取失败的时候返回空字符串 生效范围：客户端&服务器 return -阵营名称 params InTeamID -队伍ID
- **DefaultCampRelation**(ECampRelationInCampRelation) — 设置默认阵营关系 生效范围：服务器 params InCampRelation -阵营关系,1:友好,2:中立,3:敌对
- **CampRelation**(numberInCampA_ID, numberInCampB_ID, ECampRelationInCampRelation) — 设置两个阵营之间的阵营关系 生效范围：服务器 params InCampA_ID -阵营A ID params InCampB_ID -阵营B ID params InCampRelation -阵营关系,0:友好,1:中立,2:敌对
- **CampRelationGetCampRelation**(numberInCampA_ID, numberInCampB_ID) — 获取两个阵营之间的阵营关系，获取失败默认返回中立 生效范围：服务器 return -阵营关系,1:友好,2:中立,3:敌对 params InCampA_ID -阵营A ID params InCampB_ID -阵营B ID
- **CampRelationGetCampRelationWithActor**(AActorInActorA, AActorInActorB) — 获取两个Actor之间的阵营关系，获取失败默认返回中立 生效范围：服务器&客户端 return -阵营关系,1:友好,2:中立,3:敌对 params InActorA -AActor params InActorB -AActor
- **CampDefaultSpawnMethod**(numberInCampID, EUGCCampSpawnPointSelectionMethodSpawnPointSelectionMethod, FVector) — uint8SpawnMethodInfo, booleanPlayerStartInfo