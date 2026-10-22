# UEnvQueryGenerator_BlueprintBase

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_BlueprintBase](https://developer.gp.qq.com/api/#/searchContent/UEnvQueryGenerator_BlueprintBase?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUEnvQueryGenerator_BlueprintBase.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UEnvQueryGenerator_BlueprintBase)

类

全文搜索

---


## 函数

- **DoItemGeneration**(TArray < FVector > &ContextLocations)
- **AddGeneratedVector**(FVectorGeneratedVector)
- **AddGeneratedActor**(AActor *GeneratedActor)
- **GetQuerier**(DoItemGeneration AddGeneratedVector AddGeneratedActor GetQuerier)

## 属性

- **short** — description of what test does, like "Generate pawn named Joe" context @todo this should show up only in the generator's BP, but due to the way EQS editor is generating widgets it's there as well It's a bug and we'll fix it GeneratorsActionDescription Context GeneratedItemType