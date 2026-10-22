# UPESkillPassiveSkill

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UPESkillPassiveSkill?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPESkillPassiveSkill.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPESkillPassiveSkill](https://developer.gp.qq.com/api/#/searchContent/UPESkillPassiveSkill?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUPESkillPassiveSkill.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UPESkillPassiveSkill)

类

全文搜索

被动技能实体

事件

voidOnStackChange_BP(int32 PreNum, int32CurrentNum)

生效范围：服务器&客户端

当 被动技能 堆叠层数变化时调用，比如技能被合并时

params PreNum

-上一次的堆叠层数

params CurrentNum

-当前的堆叠层数

boolCanClientRPCActivate_BP()

生效范围：服务器

当 pes.BlockPassiveSkillClientRPC 开关关闭时，由蓝图决定是否允许客户端 RPC 激活被动技能

return

-true 允许激活，false 拒绝激活

---