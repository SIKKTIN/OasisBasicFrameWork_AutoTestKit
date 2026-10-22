# UDataTableFunctionLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UDataTableFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDataTableFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDataTableFunctionLibrary](https://developer.gp.qq.com/api/#/searchContent/UDataTableFunctionLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUDataTableFunctionLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UDataTableFunctionLibrary)

类

全文搜索

---


## 函数

- **EvaluateCurveTableRow**(UCurveTable* CurveTable, FName RowName, float InXY, TEnumAsByte < EEvaluateCurveTableResult :: Type >& OutResult, float& OutXY, FString &ContextString)
- **GetDataTableRowNames**(UDataTable* Table, TArray < FName > &OutRowNames)
- **GetDataTableRowFromName**(UDataTable* Table, FName RowName, FTableRowBase &OutRow) — Get a Row from a DataTable given a RowName
- **FillDataTableFromCSVString**(UDataTable* DataTable, FString &CSVString) — Empty and fill a Data Table from CSV string. return -True if the operation succeeds, check the log for errors if it didn't succeed. params CSVString -The Data that representing the contents of a CSV file. EvaluateCurveTableRow GetDataTableRowNames GetDataTableRowFromName FillDataTableFromCSVString