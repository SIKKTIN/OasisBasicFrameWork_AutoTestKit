# UAnimBlueprintGeneratedClass

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAnimBlueprintGeneratedClass?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimBlueprintGeneratedClass.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimBlueprintGeneratedClass](https://developer.gp.qq.com/api/#/searchContent/UAnimBlueprintGeneratedClass?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAnimBlueprintGeneratedClass.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAnimBlueprintGeneratedClass)

类

全文搜索

---

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| Target | **skeleton** | for this blueprint class A list of anim notifies that state machines (or anything else) may reference 预计算标记：编辑器编译蓝图时（PostCompile）扫描并写入，打包后序列化到.uasset， 运行时加载后直接读取正确值，无需再次扫描。 编辑器未编译时为false，懒初始化逻辑会在首次CollectFunctionModule时兜底扫描。 预计算缓存：该动画蓝图类（含父类继承链）是否含有任何FunctionModule属性。 仅在bFMPrecomputeDone为true时有效。打包后 |

