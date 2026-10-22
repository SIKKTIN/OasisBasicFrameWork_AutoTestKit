# UGCDropSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCDropSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCDropSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCDropSystem](https://developer.gp.qq.com/api/#/searchContent/UGCDropSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCDropSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCDropSystem)

类

全文搜索

掉落系统接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| table | **DropItems** | numberDropID | 根据掉落信息进行物品掉落 根据权重掉落：每次掉落一个物品 根据概率掉落：每次根据物品表的物品数量掉落物品 生效范围：服务器&客户端 return -掉落结果 {key-物品ID : value-物品数量} params DropID -掉落ID |
| table | **DropItemsByGroup** | numberDropGroupID | 根据掉落组信息进行物品掉落 掉落组配置参考掉落表格配置（DropGroup Table） 生效范围：服务器&客户端 return -掉落结果 {key-物品ID : value-物品数量} params DropGroupID -掉落组ID DropItems DropItemsByGroup |

