# UGCObjectUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCObjectUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCObjectUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCObjectUtility](https://developer.gp.qq.com/api/#/searchContent/UGCObjectUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%9F%BA%E7%A1%80%E5%8A%9F%E8%83%BD%2FUGCObjectUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCObjectUtility)

类

全文搜索

UObject基础接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| U | **ClassFindClass** | stringInClassName | 通过类名(短路径)寻找类 生效范围：服务器&客户端 return -检索到的类 params InClassName -类名 |
| U | **ClassLoadClass** | stringInClassPath | 通过完整路径加载类，具体路径可以点击 "右键" - "copy reference" 得到路径 生效范围：服务器&客户端 return -加载完成的类 params InClassPath -类的路径 |
| boolean | **AsyncLoadClass** | stringInClassPath, functionCallback, UObjectCallback_self | 通过完整路径异步加载蓝图 Class，路径规则与 LoadClass 相同 生效范围：服务器&客户端 return -加载是否成功 params InClassPath -类的路径 params Callback -lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) params Callback_self -这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil |
| U | **ObjectFindObject** | stringInObjectName | 通过对象名寻找对象，会遍历所有包进行寻找，性能较差，且如果出现冲突，会有警告且返回其中一个 生效范围：服务器&客户端 return -检索到的对象 params InObjectName -对象名 |
| U | **ObjectLoadObject** | stringInObjectPath | 通过完整路径加载对象，性能较好 生效范围：服务器&客户端 return -加载的对象 params InObjectPath -对象的路径 |
| boolean | **AsyncLoadObject** | stringInObjectPath, functionCallback, UObjectCallback_self | 通过完整路径异步加载Object 生效范围：服务器&客户端 return -加载是否成功 params InObjectPath -对象的路径 params Callback -lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) params Callback_self -这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil |
| U | **ObjectNewObject** | UObjectOuter, UClassInClass, stringInObjectName | 通过包名，类名和对象名创建对象 生效范围：服务器&客户端 return -创建的对象 params Outer -Outer 对象 params InClass -类 params InObjectName -对象名 |
| userdata | **NewStruct** | stringInStructName, any... | 创建新结构体对象，优先从已有的对象中查找是否有已创建对象。可传递结构体的构造参数，仅已导出结构体支持构造时赋值，传递非法参数时不保证结果正常。 return -新创建的结构体 params InStructName -不带 F 的结构体名字（比如 "Transform"、"ItemDefineID"） params ... -结构体的构造参数 |
| table | **NewStructAsTable** | stringInStructName, any... | 以 lua table 形式创建新结构体，优先从已有的对象中查找是否有已创建对象。可传递结构体的构造参数，传递非法参数时不保证结果正常。 return -新创建的结构体 table params InStructName -不带 F 的结构体名字（比如 "Transform"、"ItemDefineID"） params ... -结构体的构造参数 |
| U | **ClassGetObjectClass** | UObjectInObject | 通过一个对象获取对应的类 生效范围：服务器&客户端 return -对应的类 params InObject -对象实例 |
| U | **ObjectGetObjectOuter** | UObjectInObject | 通过一个对象获取对应的包 生效范围：服务器&客户端 return -传入对象的 Outer 对象 params InObject -对象实例 |
| string | **GetObjectName** | UObjectInObject | 获取对象的名字 生效范围：服务器&客户端 return -对象的名字 params InObject -对象实例 |
| string | **GetObjectFullName** | UObjectInObject | 获取对象的类名以及完整路径 生效范围：服务器&客户端 return -对象的类以及完整路径 params InObject -对象实例 |
| string | **GetObjectPathName** | UObjectInObject | 获取对象的完整路径 生效范围：服务器&客户端 return -对象的完整路径 params InObject -对象实例 |
| boolean | **IsObjectValid** | UObjectInObject | 判断对象是否有效 生效范围：服务器&客户端 return -对象是否有效的判断结果 params InObject -对象实例 |
| boolean | **IsA** | UObjectInObject, UClassInClass | 判断一个对象是否是特定类的实例 生效范围：服务器&客户端 return -对象是否是特定类的实例的判断结果 params InObject -对象实例 params InClass -类 |
| Mark | **AsGarbage** | UObjectInObject | 删除对象，将对象标记为带回收的垃圾 生效范围：服务器&客户端 params InObject -对象实例 |
| F | **SoftObjectPathMakeSoftObjectPath** | stringInObjectPath | 通过完整对象路径创建软路径 生效范围：服务器&客户端 return -创建的软路径 params InObjectPath -对象的路径 |
| string | **GetPathBySoftObjectPath** | FSoftObjectPathInSoftObjectPath | 获取软路径获取对象完整路径 生效范围：服务器&客户端 return -对象的完整路径 params InSoftObjectPath -对象的软路径 |
| boolean | **LoadObjectBySoftPath** | FSoftObjectPathInSoftObjectPath | 通过软路径加载对象 生效范围：服务器&客户端 return -加载是否成功 params InSoftObjectPath -对象的软路径 |
| boolean | **AsyncLoadObjectBySoftPath** | FSoftObjectPathInSoftObjectPath, functionCallback, UObjectCallback_Self | 通过软路径异步加载对象 生效范围：服务器&客户端 return -加载是否成功 params InSoftObjectPath -对象的软路径 params Callback -lua普通函数或lambda函数, 加载完成的资源会作为参数传给CallBack函数 (注意带函数定义带冒号和不带的区别) params Callback_Self -这是为了兼容CallBack函数定义带冒号和不带冒号两种情况。如果带冒号(table:func()型,CallBack_self传入table);如果不带冒号,CallBack_self传入nil |
| AActor[] | **GetAllActorsOfClass** | UObjectWorldContextObject, UClassActorClass | 【废弃】请使用UGCActorComponentUtility.GetAllActorsOfClass 生效范围：服务器&客户端 return -找到的Actor数组 params WorldContextObject -世界中任意对象 params ActorClass -要找的Actor对应的类。必须指定，否则结果数组将为空 |
| Remove | **ReferencedObject** | UObjectObject | 移除引用关联（如果有UObject泄露等问题，可用此函数手动释放Lua侧对UObject的引用） 生效范围：服务器&客户端 params Object -需要释放引用的 UObject |
| UObject[] | **GetObjectsOfClass** | UClassClass, booleanbIncludeDerivedClasses | 以 lua table 形式获取某个类的所有对象列表 return -找到的 UObject 数组 params Class -要找的 UObject 对应的类 params bIncludeDerivedClasses -是否包括派生类 |
| UObject[] | **GetObjectsWithOuter** | UObjectOuter, booleanbIncludeNestedObjects | 以 lua table 形式获取以目标对象为 Outer 的所有 UObject 列表 return -找到的 UObject 数组 params Outer -Outer 对象 params bIncludeNestedObjects -是否包括嵌套对象 |
| boolean | **ClassIsChildOf** | UClassTestClass, UClassParentClass | 判断一个类是否是另一个类的子类 return -如果TestClass等于ParentClass，或者TestClass是ParentClass的子类则返回true；否则返回false。如果任一参数为'None'也返回false params TestClass -子类 params ParentClass -父类 |
| string | **GetDisplayName** | UObjectObject | 获取对象的显示名称 生效范围：服务器&客户端 return -对象的显示名称 params Object -对象实例 |
| U | **ObjectGetClassDefaultObject** | UClassClass | 获取类默认对象 生效范围：服务器&客户端 return -类默认对象 params Class -类 |
| Weak | **ObjectPtrMakeWeakObjectPtr** | UObjectInObject | 创建弱对象指针 生效范围：服务器 & 客户端 return -弱对象指针 params InObject -对象 |
| U | **ObjectGetObjectFromWeakObjectPtr** | WeakObjectPtrInWeakObjectPtr | 从弱对象指针获取对象 生效范围：服务器 & 客户端 return -对象 params InWeakObjectPtr -弱对象指针 |
| boolean | **IsWeakObjectPtrValid** | WeakObjectPtrInWeakObjectPtr | 判断弱对象指针是否有效 生效范围：服务器 & 客户端 return -是否有效 params InWeakObjectPtr -弱对象指针 FindClass LoadClass AsyncLoadClass FindObject LoadObject AsyncLoadObject NewObject NewStruct NewStructAsTable GetObjectClass GetObjectOuter GetObjectName GetObjectFullName GetObjectPathName IsObjectValid IsA MarkAsGarbage MakeSoft |

