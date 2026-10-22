# UAnimMontage

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimMontage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimMontage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimMontage](https://developer.gp.qq.com/api/#/searchContent/UAnimMontage?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimMontage.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimMontage)

类

全文搜索

Any property you're adding to AnimMontage and parent class has to be considered for Child Asset Child Asset is considered to be only asset mapping feature using everything else in the class For example, you can just use all parent's setting for the montage, but only remap assets This isn't magic bullet unfortunately and it is consistent effort of keeping the data synced with parent If you add new property, please make sure those property has to be copied for children. If it does, please add the copy in the function RefreshParentAssetData

---

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Blend | **in** | option. Blend out option. This is only used when it blends out itself. If it's interrupted by other montages, it will use new montage's BlendIn option to blend out. Time from Sequence End to trigger blend out. <0 means using BlendOutTime, so BlendOut finishes as Montage ends. >=0 means using 'Sequen |

