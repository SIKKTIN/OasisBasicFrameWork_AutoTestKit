# UGCTeamSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCTeamSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCTeamSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCTeamSystem](https://developer.gp.qq.com/api/#/searchContent/UGCTeamSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCTeamSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCTeamSystem)

类

全文搜索

队伍系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| Team | **ModeComponentGetTeamComponent** |  | 【废弃】获取队伍组件 生效范围：服务器 return -队伍组件 |
| Change | **PlayerTeamID** | numberPlayerKey, numberTeamID | 改变玩家 TeamID 生效范围：服务器 params PlayerKey -玩家 PlayerKey params TeamID -队伍 ID |
| @ | **UIDGetUIDsByTeamID** | numberTeamID | 根据TeamID获取对应队伍里所有的玩家UID 生效范围：服务器 return number[] -列表 params TeamID -队伍 ID |
| @ | **PlayerKeyGetPlayerKeysByTeamID** | numberTeamID, booleanbReturnAsLuaTable | 根据TeamID获取对应队伍里所有的玩家PlayerKey，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确 生效范围：服务器 return number[] -列表 params TeamID -队伍 ID params bReturnAsLuaTable -是否以LuaTable返回 |
| @ | **PlayerKeyGetAIPlayerKeysByTeamID** | numberTeamID | 根据 TeamID 获取对应队伍里所有的假人玩家 AIPlayerKey，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确 生效范围：服务器 return number[] -列表 params TeamID -队伍 ID |
| @ | **PlayerControllerGetPlayerControllersByTeamID** | numberTeamID | 根据TeamID获取对应队伍里所有的玩家PlayerController 生效范围：服务器 return ASTExtraPlayerController[] -列表 params TeamID -队伍 ID |
| @ | **PlayerPawnGetPlayerPawnsByTeamID** | numberTeamID | 根据TeamID获取对应队伍里所有的玩家PlayerPawn 生效范围：服务器&客户端 return PlayerPawn[] -列表 params TeamID -队伍 ID |
| @ | **PlayerStateGetPlayerStatesByTeamID** | numberTeamID | 根据TeamID获取对应队伍里所有的玩家PlayerState 生效范围：服务器&客户端 return ASTExtraPlayerState[] -列表 params TeamID -队伍 ID |
| number[] | **GetLobbyTeamUIDsByUID** | numberUID | 【废弃】请使用 UGCTeamSystem.GetLobbyTeammateUIDsByUID 根据玩家的UID获取其大厅里组队的成员 UID 列表 生效范围：服务器 return -玩家 UID 列表 params UID -玩家 UID |
| number[] | **GetLobbyTeammateUIDsByUID** | numberUID | 根据玩家的UID获取其大厅里组队的成员 UID 列表 生效范围：服务器 return -玩家 UID 列表 params UID -玩家 UID |
| number[] | **GetDynamicLobbyTeammateUIDsByUID** | numberUID | 根据玩家的UID获取其大厅里组队的成员 UID 列表。跟 UGCTeamSystem.GetLobbyTeammateUIDsByUID 不同的是，此接口会返回动态组队（UGCTeamSystem.InviteToJoinLobbyTeam、UGCTeamSystem.RequestToJoinLobbyTeam）的成员 UID 列表，而 UGCTeamSystem.GetLobbyTeammateUIDsByUID 以及其他接口只会返回从大厅进入战斗对局那一刻的该玩家在大厅组队的成员 UID 列表。 生效范围：客户端 return -玩家 UID 列表 params UID -玩家 UID |
| @ | **PlayerKeyGetLobbyTeamKeysByPlayerKey** | numberPlayerKey | 【废弃】请使用 UGCTeamSystem.GetLobbyTeammatePlayerKeysByPlayerKey 根据玩家的 PlayerKey 获取其大厅里组队的成员 PlayerKey 列表，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确 生效范围：服务器 return number[] -列表 params PlayerKey -玩家 PlayerKey |
| @ | **PlayerKeyGetLobbyTeammatePlayerKeysByPlayerKey** | numberPlayerKey | 根据玩家的 PlayerKey 获取其大厅里组队的成员 PlayerKey 列表，PlayerKey需要客户端连上DS后，才会被初始化，若在客户端连上DS前调用该接口，返回的PlayerKey列表不准确 生效范围：服务器 return number[] -列表 params PlayerKey -玩家 PlayerKey |
| Invite | **ToJoinLobbyTeam** | numberInviteeUID | 邀请玩家加入（我的）大厅队伍 生效范围：客户端 params InviteeUID -被邀请玩家 UID |
| Respond | **ToInvitingToJoinLobbyTeam** | EResponseOfBeingInvitedToJoinLobbyResponseOfBeingInvitedToJoinLobby, tableInviteToJoinLobbyTeamToken | 响应加入大厅队伍的邀请 生效范围：客户端 params ResponseOfBeingInvitedToJoinLobby -被邀请加入大厅队伍的响应类型：EResponseOfBeingInvitedToJoinLobby params InviteToJoinLobbyTeamToken -邀请到大厅队伍的 Token |
| Request | **ToJoinLobbyTeam** | numberTeamMemberUID | 玩家请求加入大厅队伍 生效范围：客户端 params TeamMemberUID -大厅队伍中的玩家 UID |
| Respond | **ToRequestingToJoinLobbyTeam** | EResponseOfBeingRequestedToJoinLobbyResponseOfBeingRequestedToJoinLobby, tableRequestToJoinLobbyTeamToken | 队长响应被加入大厅队伍的请求 生效范围：客户端 params ResponseOfBeingRequestedToJoinLobby -被请求加入大厅队伍的响应类型：EResponseOfBeingRequestedToJoinLobby params RequestToJoinLobbyTeamToken -请求加入大厅队伍的 Token |
| Quit | **LobbyTeam** |  | 玩家主动退出大厅队伍 生效范围：客户端 |
| Kick | **FromLobbyTeam** | numberTargetUID | 队长将指定玩家踢出大厅队伍 生效范围：客户端 params TargetUID -被踢玩家的 UID |
| Transfer | **LobbyTeamLeader** | numberNewLeaderUID | 队长转让大厅队长身份给指定玩家 生效范围：客户端 params NewLeaderUID -新队长的 UID |
| @ | **TeamIDGetTeamIDs** |  | 获取所有队伍的 ID 生效范围：服务器 return int[] -列表 |
| number[] | **GetPlayerList** | booleanbWithOB? | 获取所有玩家信息列表 生效范围：服务器 return -玩家信息列表 params bWithOB? -是否包含 OB |
| number | **GetTeamSizeByID** | numberTeamID | 【废弃】请使用 UGCTeamSystem.GetTeamSizeByTeamID 获取队伍中的玩家数量 生效范围：服务器 return -玩家数量 params TeamID -队伍 ID |
| number | **GetTeamSizeByTeamID** | numberTeamID | 获取队伍中的玩家数量 生效范围：服务器 return -玩家数量 params TeamID -队伍 ID |
| number[] | **GetTeamLeaderKeyByTeamID** | numberTeamID | 通过队伍编号获取队长PlayerKey列表（每个在大厅点击开始游戏的玩家都会被设置为队长，例如四人匹配，队伍里只有一个队长，三人匹配，再随机匹配一个队友，三人里面点击开始游戏的是队长，随机匹配的那个队友也是队长，属于他自己那个小队的队长） 生效范围：服务器 return -队长PlayerKey params TeamID -队伍 ID |
| boolean | **GetIsLeaderOrNotByPlayerKey** | numberPlayerKey | 通过玩家PlayerKey查询身份 生效范围：服务器 return -是否是队长 params PlayerKey -玩家 PlayerKey |
| ASTExtraPlayerState[] | **GetAllTeammatePlayerState** | booleanbExcludeSelf | 获取所有队友的的PlayerState 生效范围：客户端 params bExcludeSelf -是否排除玩家自身 |
| A | **STExtraPlayerStateGetTeammatePlayerStateByPlayerKey** | numberPlayerKey | 获取指定PlayerKey队友的的PlayerState 生效范围：客户端 params PlayerKey -玩家 PlayerKey |
| A | **STExtraPlayerStateIsTeamIDValid** | numberTeamID | 判断TeamID是否合法 生效范围：服务器 params TeamID -TeamID |
| number | **GetTeamIDByPlayerKey** | numberPlayerKey | 根据PlayerKey获取队伍ID 生效范围：服务器&客户端 return -队伍 ID params PlayerKey -玩家 PlayerKey |
| number | **GetTeammateIndexByPlayerKey** | ASTExtraPlayerStatePlayerState, numberPlayerKey | 根据PlayerKey获取队友ID(头顶标号) 生效范围：服务器&客户端 return -队友 ID params PlayerState -玩家 PlayerState params PlayerKey -玩家 PlayerKey |
| number> | **GetAllTeammateIndex** | ASTExtraPlayerStatePlayerState | 获取所有队友的的队友ID(头顶标号) 生效范围：服务器&客户端 return table<number, -以PlayerKey为键，队友ID为值的表 params PlayerState -玩家 PlayerState |
| number | **GetPlayerKeyByTeammateIndex** | ASTExtraPlayerStatePlayerState, numberTeammateIndex | 根据队友ID(头顶标号)获取队友PlayerKey 生效范围：服务器&客户端 return -队友 PlayerKey params PlayerState -玩家 PlayerState params TeammateIndex -队友ID GetTeamComponent ChangePlayerTeamID GetUIDsByTeamID GetPlayerKeysByTeamID GetAIPlayerKeysByTeamID GetPlayerControllersByTeamID GetPlayerPawnsByTeamID GetPlayerStatesByTeamID GetL |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| @param | **InviteToJoinLobbyTeamToken** | table @邀请到大厅队伍的 Token。InviteToJoinLobbyTeamToken.InviterUID int @邀请者 UID UGCTeamSystem.NotifyRequestToJoinLobbyTeamDelegate 通知请求加入大厅队伍 生效范围：客户端 @param RequestToJoinLobbyTeamToken table @请求加入大厅队伍的 Token。RequestToJoinLobbyTeamToken.TeamID int @队伍 ID UGCTeamSystem.NotifyInviteToJoinLobbyTeamDelegate UG |

