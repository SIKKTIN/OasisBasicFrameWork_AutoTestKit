# UGCVoiceManagerSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCVoiceManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCVoiceManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVoiceManagerSystem](https://developer.gp.qq.com/api/#/searchContent/UGCVoiceManagerSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E7%A4%BE%E4%BA%A4%E7%B3%BB%E7%BB%9F%2FUGCVoiceManagerSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCVoiceManagerSystem)

类

全文搜索

语音系统接口库

---


## 函数

- **GVoiceInterfaceGetGVoiceInterface**(获取 Voice 组件 生效范围：客户端 return -对应语音管理类的指针)
- **GetPlayerMemberID**(numberPlayerKey) — 获取玩家的语音房间 MemberID 生效范围：服务器 return -角色语音房间的 MemberID params PlayerKey -角色的 PlayerKey
- **VoiceRoom**(stringRoomKey) — 加入语音房间 RoomKey 为语音房间唯一标识，可由自己进行拼接 生效范围：客户端 params RoomKey -语音房间 Key
- **VoiceRoom**(退出 UGC 语音房间 生效范围：客户端)
- **GetVoiceRoomKey**(获取当前房间 RoomKey 生效范围：客户端 return -语音房间 Key)
- **GlobalVoiceRadius**(numberRadius) — 设置全局语音生效范围 生效范围：客户端 params Radius -全局语音半径（单位：cm）
- **VoiceRoomSoundEnable**(booleanIsEnable) — 开启/关闭语音房间喇叭 生效范围：客户端 params IsEnable -开启或者关闭喇叭
- **VoiceRoomMicrophoneEnable**(booleanIsEnable) — 开启/关闭语音房间麦克风 生效范围：客户端 params IsEnable -开启或者关闭麦克风
- **GlobalVoiceSoundEnable**(booleanIsEnable) — 开启/关闭全局语音喇叭 生效范围：客户端 params IsEnable -开启或者关闭喇叭
- **GlobalVoiceMicrophoneEnable**(booleanIsEnable) — 开启/关闭 全局语音麦克风 生效范围：客户端 params IsEnable -开启或者关闭麦克风
- **VoiceRoomPlayerMuteState**(numberMemberID, booleanIsMute) — 设置语音房间指定玩家语音屏蔽（静音）状态 生效范围：客户端 params MemberID -当前房间要被屏蔽的玩家的 UID params IsMute -是否屏蔽
- **GlobalVoicePlayerMuteState**(numberMemberID, booleanIsMute) — 设置全局房间指定玩家语音屏蔽（静音）状态 生效范围：客户端 params MemberID -当前房间要被屏蔽的玩家的 MemberID params IsMute -是否屏蔽
- **IsVoiceRoomSoundEnable**(获得语音房间声音（喇叭）开关状态 生效范围：客户端 return -当前房间喇叭状态)
- **IsVoiceRoomMicrophoneEnable**(获得语音房间麦克风开关状态 生效范围：客户端 return -当前房间麦克风状态)
- **IsGlobalVoiceSoundEnable**(获得全局语音声音（喇叭）开关状态 生效范围：客户端 return -当前房间喇叭状态)
- **IsGlobalVoiceMicrophoneEnable**(获得全局语音麦克风开关状态 生效范围：客户端 return -当前房间麦克风状态)
- **GlobalVoiceRoom**(numberGlobalVoiceRoomId) — 加入全局语音房间（依赖于全局语音房间的某个范围可听可说,区域语音，包厢等等） 生效范围：客户端 params GlobalVoiceRoomId -区域小房间的 index
- **GlobalVoiceRoom**(退出全局语音房间（区域语音，包厢等等） 生效范围：客户端)
- **CivilVoiceDetect**(关闭文明语音检测和 lbs 小号限制 生效范围：客户端 GetGVoiceInterface GetPlayerMemberID JoinVoiceRoom QuitVoiceRoom GetVoiceRoomKey SetGlobalVoiceRadius SetVoiceRoomSoundEnable SetVoiceRoomMicrophoneEnable SetGlobalVoiceSoundEnable SeGlobalVoiceMicrophoneEnable SetVoiceRoomPlayerMuteState SetGlobalVoicePlayerMuteState IsV)