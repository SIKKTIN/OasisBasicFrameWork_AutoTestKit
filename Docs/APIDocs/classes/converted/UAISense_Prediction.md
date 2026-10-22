# UAISense_Prediction

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UAISense_Prediction?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense_Prediction.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense_Prediction](https://developer.gp.qq.com/api/#/searchContent/UAISense_Prediction?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUAISense_Prediction.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UAISense_Prediction)

类

全文搜索

---


## 函数

- **RequestControllerPredictionEvent**(AAIController* Requestor, AActor* PredictedActor, floatPredictionTime) — Asks perception system to supply Requestor with PredictedActor's predicted location in PredictionTime seconds Location is being predicted based on PredicterActor's current location and velocity
- **RequestPawnPredictionEvent**(APawn* Requestor, AActor* PredictedActor, floatPredictionTime) — Asks perception system to supply Requestor with PredictedActor's predicted location in PredictionTime seconds Location is being predicted based on PredicterActor's current location and velocity RequestControllerPredictionEvent RequestPawnPredictionEvent