# UGCAsyncUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCAsyncUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCAsyncUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAsyncUtility](https://developer.gp.qq.com/api/#/searchContent/UGCAsyncUtility?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCAsyncUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCAsyncUtility)

类

全文搜索

异步工具类

---


## 函数

- **GCPromiseFutureCreatePromiseFuture**(UGCPromiseFuturePrerequisite, any...) — 创建一个新的 PromiseFuture 实例 - 创建实例: 使用 PromiseFuture.New() 创建新的 PromiseFuture 实例。 - 设置回调: 使用 Then 和 Else 方法设置成功和失败的回调函数。 - 执行逻辑: 使用 Set 方法定义 PromiseFuture 的执行逻辑，可以在其中使用 Yield 暂停执行。 - 前置条件: 可以将其他 PromiseFuture 实例作为前置条件，确保在执行当前 PromiseFuture 之前，所有前置条件都已完成。 - 自动恢复: 可以设置自动恢复功能，监控对象的状态并在需要时自动恢复执行。 return -新创
- **GCAsyncSequenceHandleNewSequenceList**(新建一个保序列表，并返回ListHandle用于操作 return -返回的ListHandle)
- **ItemIntoSequenceList**(UGCAsyncSequenceHandleListHandle, numberParamIndex, anyInConditionFunction, tableInConditionTable, function@InFunction, tableInFunctionTable, any...) — 往List里添加变量和函数。激活后时序逻辑为：轮询变量是否为空或者函数是否返回true，当变量不为空的时候，执行对应的函数，所以每次Insert一组变量和函数，就相当于添加一个时序逻辑。 params ListHandle -保序列表的索引 params ParamIndex -参数插入保序列表的位置，如果是0，则是插入到列表的尾部 params InConditionFunction -可执行的Function或变量 params InConditionTable -轮询变量或函数所在的Table params InFunction -当条件为true时执行的函数 params InFunc
- **SequenceList**(UGCAsyncSequenceHandleListHandle, numberInterval, numberTimeout) — 激活保序列表 params ListHandle -保序列表的索引 params Interval -自动恢复的间隔，单位为秒 params Timeout -自动恢复的超时时间，单位为秒
- **AsyncLoadSomething**(functionAsyncFun, UGCAsyncSequenceParamTable[]ParamTables, functionOnCompleteCallback) — 支持并行初始化的通用有序异步加载器 return -loadedObjects params AsyncFun -需要调用的异步函数（格式：func(LoadPath, CallBack, CallBack_Self)） params ParamTables -参数表数组 params OnCompleteCallback -最终回调(loadedObjects) CreatePromiseFuture NewSequenceList InsertItemIntoSequenceList ActivateSequenceList AsyncLoadSomething