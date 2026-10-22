# UGCStringTextUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCStringTextUtility?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCStringTextUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCStringTextUtility](https://developer.gp.qq.com/api/#/searchContent/UGCStringTextUtility?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCStringTextUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCStringTextUtility)

类

全文搜索

文本系统接口库

---


## 函数

- **ExportText**(stringObject) — 导出对象文本，会根据传入的对象类型打印关键信息 return -文本字符串 params Object -文本对象
- **TrimStartOrEnd**(stringInStr, booleanTrimStart, booleanTrimEnd) — 修剪字符串的起始和结尾，根据传入的TrimStart和TrimEnd去除字符串头尾的空白字符 return -修剪后的字符串 params InStr -字符串 params TrimStart -是否修剪起始 params TrimEnd -是否修剪结尾
- **SplitToArray**(stringInStr, stringSeparator) — 将字符串按照分隔符分割成数组 return -数组 params InStr -字符串 params Separator -分隔符
- **StartsWith**(stringInStr, stringInPrefix, ESearchCaseSearchCase) — 判断字符串是否以指定的前缀开头 return -是否以指定的前缀开头 params InStr -字符串 params InPrefix -前缀 params SearchCase -是否区分大小写
- **EndWith**(stringInStr, stringInSuffix, ESearchCaseSearchCase) — 判断字符串是否以指定的后缀结尾 return -是否以指定的后缀结尾 params InStr -字符串 params InSuffix -后缀 params SearchCase -是否区分大小写
- **InsertIntoString**(stringSourceStr, stringContent, numberPosition) — 在字符串的指定位置插入内容 return -字符串 params SourceStr -源字符串 params Content -插入内容 params Position -插入位置
- **JoinArrayIntoString**(tableInStrArray, stringSeparator) — 将字符串数组连接成字符串 return -字符串 params InStrArray -字符串数组 params Separator -分隔符
- **SplitToCharArray**(stringInStr) — 将字符串分割成字符数组 return -字符数组 params InStr -字符串
- **ComposedOfDigits**(stringInStr) — 判断字符串是否由数字组成 return -是否由数字组成 params InStr -字符串
- **LeftChop**(stringInStr, numberCount) — 截断字符串的前n个字符 return -字符串 params InStr -字符串 params Count -字符数
- **LeftPad**(stringInStr, numberStrLen) — 在字符串的左侧填充空白字符使得字符串长度达到指定的长度 return -字符串 params InStr -字符串 params StrLen -指定的长度
- **RightChop**(stringInStr, numberCount) — 截断字符串的后n个字符 return -字符串 params InStr -字符串 params Count -字符数
- **RightPad**(stringInStr, numberStrLen) — 在字符串的右侧填充空白字符使得字符串长度达到指定的长度 return -字符串 params InStr -字符串 params StrLen -指定的长度
- **Tree**(stringDesc, anyVar) — 打印变量,特别是对table类型做树形输出,仅DEV打印 params Desc -变量描述 params Var -要输出的变量,可以是任何类型table, bool, number, nil ExportText TrimStartOrEnd SplitToArray StartsWith EndWith InsertIntoString JoinArrayIntoString SplitToCharArray ComposedOfDigits LeftChop LeftPad RightChop RightPad LogTree