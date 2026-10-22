# UGCMathUtility

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCMathUtility?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCMathUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMathUtility](https://developer.gp.qq.com/api/#/searchContent/UGCMathUtility?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUGCMathUtility.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCMathUtility)

类

全文搜索

数学工具接口库

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| number | **Sin** | numberA | 返回A的正弦值(sin)，结果为弧度制 return -sin(A) params A -A |
| number | **Asin** | numberA | 返回A的反正弦值(arcsin)，结果为弧度制 return -arcsin(A) params A -A |
| number | **Cos** | numberA | 返回A的余弦值(cos)，结果为弧度制 return -cos(A) params A -A |
| number | **Acos** | numberA | 返回A的反余弦值(arccos)，结果为弧度制 return -arccos(A) params A -A |
| number | **Tan** | numberA | 返回A的正切值(tan)，结果为弧度制 return -tan(A) params A -A |
| number | **Atan** | numberA | 返回A的反正切值(arctan)，结果为弧度制 return -arctan(A) params A -A |
| number | **DegSin** | numberA | 返回A的正弦值(sin)，结果为角度制 return -sin(A) params A -A |
| number | **DegAsin** | numberA | 返回A的反正弦值(arcsin)，结果为角度制 return -arcsin(A) params A -A |
| number | **DegCos** | numberA | 返回A的余弦值(cos)，结果为角度制 return -cos(A) params A -A |
| number | **DegAcos** | numberA | 返回A的反余弦值(arccos)，结果为角度制 return -arccos(A) params A -A |
| number | **DegTan** | numberA | 返回A的正切值(tan)，结果为角度制 return -tan(A) params A -A |
| number | **DegAtan** | numberA | 返回A的反正切值(arctan)，结果为角度制 return -arctan(A) params A -A |
| number | **DegAtan2** | numberA, numberB | 返回A/B的反正切值(atan2)，结果为角度制 return -arctan(A/B) params A -A params B -B |
| number | **RandomFloat** |  | 返回一个介于0和1之间的随机浮点数 return -随机浮点数 |
| number | **RandomFloatInRange** | numberInMin, numberInMax | 生成一个介于Min和Max之间的随机数 return -随机数 params InMin -最小值 params InMax -最大值 |
| number | **Lerp** | numberA, numberB, numberAlpha | 根据Alpha在A和B之间线性插值（Alpha=0时返回A，Alpha=1时返回B）） return -线性插值 params A -A params B -B params Alpha -Alpha |
| number | **FClamp** | numberInValue, numberInMin, numberInMax | 【废弃】请使用 UGCMathUtility.Clamp 返回限制在A和B之间的值（包含A和B） return -限制后的值 params InValue -值 params InMin -最小值 params InMax -最大值 |
| number | **MapRangeClamped** | numberInValue, numberInMinIn, numberInMaxIn, numberInMinOut, numberInMaxOut | 将数值从一个输入范围映射到另一个输出范围（数值会被限制在输入范围内）。（例如：将0.5从0→1范围映射到0→50范围会得到25） return -映射后的值 params InValue -值 params InMinIn -输入范围最小值 params InMaxIn -输入范围最大值 params InMinOut -输出范围最小值 params InMaxOut -输出范围最大值 |
| boolean | **NearlyEqualFloat** | numberA, numberB, numberTolerance | 返回A是否近似等于B（|A - B| < 误差容限） return -是否近似等于 params A -A params B -B params Tolerance -误差容限 |
| boolean | **NotEqualFloat** | numberA, numberB | 如果A不等于B则返回true return -是否不等于 params A -A params B -B |
| F | **DateTimeNow** |  | 返回当前计算机的本地日期和时间 return -当前计算机的本地日期和时间 |
| F | **DateTimeToday** |  | 返回当前计算机的本地日期 return -当前计算机的本地日期 |
| F | **DateTimeUtcNow** |  | 返回当前计算机的UTC日期和时间 return -当前计算机的UTC日期和时间 |
| number | **GetYear** | FDateTimeA | 返回A的年分量值 return -年分量值 params A -A |
| number | **GetMonth** | FDateTimeA | 返回A的月分量值 return -月分量值 params A -A |
| number | **DaysInMonth** | numberYear, numberMonth | 返回给定年份和月份的天数 return -天数 params Year -年份 params Month -月份 |
| F | **VectorAddVector** | FVectorA, FVectorB | 向量加法 params A -A params B -B |
| F | **Vector2DAddVector2D** | FVector2DA, FVector2DB | 返回二维向量A和二维向量B的和（A + B） params A -A params B -B |
| F | **VectorSubtractVector** | FVectorA, FVectorB | 向量减法 params A -A params B -B |
| F | **Vector2DSubtractVector2D** | FVector2DA, FVector2DB | 返回二维向量A和二维向量B的差（A - B） params A -A params B -B |
| F | **VectorMultiplyVector** | FVectorA, numberB | 将向量A按B缩放 params A -A params B -B |
| F | **Vector2DMultiplyVector2D** | FVector2DA, numberB | 将二维向量A按B缩放 params A -A params B -B |
| number | **VSize** | FVectorA | 返回向量的长度 params A -A |
| number | **VSize2D** | FVector2DA | 返回二维向量的长度 params A -A |
| number | **VSizeSquared** | FVectorA | 返回向量的长度的平方 params A -A |
| number | **VSizeSquared2D** | FVector2DA | 返回二维向量的长度的平方 params A -A |
| boolean | **EqualVector** | FVectorA, FVectorB, numberTolerance | 判断向量A是否在允许误差范围内等于向量B params A -A params B -B params Tolerance -允许误差，默认为1.e-4f |
| boolean | **NotEqualVector** | FVectorA, FVectorB, numberTolerance | 判断向量A是否在允许误差范围内不等于向量B params A -A params B -B params Tolerance -允许误差，默认为1.e-4f |
| number | **DotVector** | FVectorA, FVectorB | 返回两个向量的点积 params A -A params B -B |
| F | **VectorCrossVector** | FVectorA, FVectorB | 返回两个向量的叉积 params A -A params B -B |
| number | **DotVector2D** | FVector2DA, FVector2DB | 返回两个二维向量的点积 params A -A params B -B |
| number | **CrossVector2D** | FVector2DA, FVector2DB | 返回两个二维向量的叉积 params A -A params B -B |
| F | **VectorRotateVector** | FVectorA, FRotatorB | 返回向量A经过 Rotator B 旋转后的结果 return -Vector params A -A params B -B |
| F | **VectorRotateAngleAxis** | FVectorA, numberAngleDeg, FVectorAxis | 返回向量A绕Axis轴旋转AngleDeg角度后的结果 return -Vector params A -A params AngleDeg -AngleDeg params Axis -Axis |
| F | **VectorNormal** | FVectorA | 返回向量A的单位法向量 return -Vector params A -A |
| F | **Vector2DNormal2D** | FVector2DA | 返回二维向量A的单位法向量 return -Vector params A -A |
| F | **VectorVLerp** | FVectorA, FVectorB, numberAlpha | 根据Alpha值在向量A和向量B之间线性插值（Alpha=0时返回100%A，Alpha=1时返回100%B） return -Vector params A -A params B -B params Alpha -Alpha |
| F | **VectorRandomUnitVector** |  | 返回一个长度为1的随机向量 return -Vector |
| F | **VectorRandomPointInBoundingBox** | FVectorOrigin, FVectorBoxExtent | 返回指定边界框内的随机点 return -Point params Origin -Origin params BoxExtent -BoxExtent |
| F | **VectorProjectVectorOnToVector** | FVectorV, FVectorTarget | 将向量V投影到目标向量Target上并返回投影向量，如果Target长度接近零，则返回零向量 return -Vector params V -V params Target -Target |
| number | **FInterpTo** | numberCurrent, numberTarget, numberDeltaTime, numberInterpSpeed | 根据当前值到目标值的插值进行平滑过渡，实现流畅的过度效果 return -新的插值位置 params Current -当前值 params Target -目标值 params DeltaTime -平滑时间 params InterpSpeed -插值速度 |
| number | **FInterpConstantTo** | numberCurrent, numberTarget, numberDeltaTime, numberInterpSpeed | 以恒定速率向目标值变换 return -Location params Current -当前值 params Target -目标值 params DeltaTime -平滑时间 params InterpSpeed -插值速度 |
| F | **VectorVInterpTo** | FVectorCurrent, FVectorTarget, numberDeltaTime, numberInterpSpeed | 根据向量表示的当前位置与目标位置的距离平滑地接近目标位置，实现流畅的追踪效果 return -新的插值位置 params Current -当前位置 params Target -目标位置 params DeltaTime -平滑时间 params InterpSpeed -插值速度 |
| F | **VectorVInterpConstantTo** | FVectorCurrent, FVectorTarget, numberDeltaTime, numberInterpSpeed | 以恒定速率向向量表示的目标位置移动 return -Location params Current -当前位置 params Target -目标位置 params DeltaTime -平滑时间 params InterpSpeed -插值速度 |
| F | **Vector2DVector2DInterpTo** | FVector2DCurrent, FVector2DTarget, numberDeltaTime, numberInterpSpeed | 根据二维向量表示的当前位置与目标位置的距离平滑地接近目标位置，实现流畅的追踪效果 return -新的插值位置 params Current -当前位置 params Target -目标位置 params DeltaTime -平滑时间 params InterpSpeed -插值速度 |
| F | **Vector2DVector2DInterpConstantTo** | FVector2DCurrent, FVector2DTarget, numberDeltaTime, numberInterpSpeed | 以恒定速率向二维向量表示的目标位置移动 return -Location params Current -当前位置 params Target -目标位置 params DeltaTime -平滑时间 params InterpSpeed -插值速度 |
| F | **RotatorRInterpTo** | FRotatorCurrent, FRotatorTarget, numberDeltaTime, numberInterpSpeed | 根据当前旋转角度平滑过渡到目标旋转角度，实现流畅的旋转效果 return -新的插值旋转角度 params Current -当前旋转角度 params Target -目标旋转角度 params DeltaTime -平滑时间 params InterpSpeed -插值速度 |
| F | **RotatorRInterpConstantTo** | FRotatorCurrent, FRotatorTarget, numberDeltaTime, numberInterpSpeed | 以恒定速率向目标旋转角度旋转 return -Location params Current -当前旋转角度 params Target -目标旋转角度 params DeltaTime -平滑时间 params InterpSpeed -插值速度 |
| F | **VectorFindClosestPointOnSegment** | FVectorPoint, FVectorSegmentStart, FVectorSegmentEnd | 查找线段上距离给定点最近的点 return -线段上距离给定点最近的点 params Point -需要计算最近点的目标点 params SegmentStart -线段起点 params SegmentEnd -线段终点 |
| F | **VectorFindClosestPointOnLine** | FVectorPoint, FVectorLineOrigin, FVectorLineDirection | 找到无限长直线上距离给定点最近的点 return -Point params Point -需要计算最近点的目标点 params LineOrigin -直线上的参考点 params LineDirection -直线上的方向向量(无需归一化) |
| number | **GetPointDistanceToSegment** | FVectorPoint, FVectorSegmentStart, FVectorSegmentEnd | 计算点到线段的最短距离 return -点到线段的最短距离 params Point -需要计算最近点的目标点 params SegmentStart -线段起点 params SegmentEnd -线段终点 |
| number | **GetPointDistanceToLine** | FVectorPoint, FVectorLineOrigin, FVectorLineDirection | 计算点到无限长直线的最短距离 return -点到直线上的最短距离 params Point -需要计算距离的目标 params LineOrigin -直线上的参考点 params LineDirection -直线上的方向向量(无需归一化) |
| F | **VectorProjectVectorOnToPlane** | FVectorV, FVectorPlaneNormal | 将向量投影到由法向量定义的平面上 return -投影后的向量 params V -需要投影的向量 params PlaneNormal -法向量 |
| F | **VectorNegateVector** | FVectorV | 向量取反 return -取反后的向量 params V -需要取反的向量 |
| F | **VectorClampVectorSize** | FVectorV, numberMin, numberMax | 将向量长度限制在最小值和最大值之间 return -限制长度后的向量 params V -需要限制长度的向量 params Min -最小长度 params Max -最大长度 |
| number | **GetMinElement** | FVectorV | 找出向量中(X, Y或Z)的最小分量 return -最小分量 params V -需要计算最小分量的向量 |
| number | **GetMaxElement** | FVectorV | 找出向量中(X, Y或Z)的最大分量 return -最大分量 params V -需要计算最大分量的向量 |
| F | **VectorGetDirectionUnitVector** | FVectorFrom, FVectorTo | 计算从一个位置指向另一个位置的单位方向向量 return -单位方向向量 params From -起点 params To -终点 |
| boolean | **EqualName** | stringA, stringB | 如果A和B相等则返回true (A == B) return -true or false params A -A params B -B |
| boolean | **NotEqualName** | stringA, stringB | 如果A和B不相等则返回true (A ~= B) return -true or false params A -A params B -B |
| F | **BoxMakeBox** | FVectorMin, FVectorMax | 通过最小点和最大点创建一个FBox，并将IsValid设为true return -FBox params Min -最小点 params Max -最大点 |
| F | **Box2DMakeBox2D** | FVector2DMin, FVector2DMax | 通过最小点和最大点创建一个FBox2D，并将IsValid设为true return -FBox2D params Min -最小点 params Max -最大点 |
| F | **VectorMakeVector** | numberX, numberY, numberZ | 创建一个向量 {X, Y, Z} return -向量 params X -X params Y -Y params Z -Z |
| number,number,number | **BreakVector** | FVectorV | 将向量分解为X、Y和Z分量 return -X,Y,Z params V -向量 |
| F | **Vector2DMakeVector2D** | numberX, numberY | 创建一个二维向量 {X, Y} return -向量 params X -X params Y -Y |
| number,number | **BreakVector2D** | FVector2DV | 将二维向量分解为X和Y分量 return -X,Y params V -向量 |
| F | **VectorGetForwardVector** | FRotatorInRot | 按给定旋转角度旋转世界前向向量 return -矩阵 params InRot -旋转角度 |
| F | **VectorGetRightVector** | FRotatorInRot | 按给定旋转角度旋转世界右向量 return -矩阵 params InRot -旋转角度 |
| F | **VectorGetUpVector** | FRotatorInRot | 按给定旋转角度旋转世界上向量 return -矩阵 params InRot -旋转角度 |
| number,number | **GetYawPitchFromVector** | FVectorV | 将向量分解为Yaw(偏航角)和Pitch(俯仰角)旋转值(角度制，不限制范围) return -Yaw,Pitch params V -向量 |
| F | **RotatorMakeRotator** | numberRoll, numberPitch, numberYaw | 使用以度数为单位提供的旋转值创建旋转器{Roll, Pitch, Yaw} return -矩阵 params Roll -Roll params Pitch -Pitch params Yaw -Yaw |
| F | **RotatorFindLookAtRotation** | FVectorStart, FVectorTarget | 查找一个物体在起始位置指向目标位置所需的旋转角度 return -矩阵 params Start -起始位置 params Target -目标位置 |
| F | **RotatorMakeRotFromX** | FVectorXAxis | 仅使用X轴构建Rotator。Y和Z轴未指定但将保持正交归一。X轴无需归一化 return -矩阵 params XAxis -X轴 |
| F | **RotatorMakeRotFromY** | FVectorYAxis | 仅使用Y轴构建Rotator。X和Z轴未指定但将保持正交归一。Y轴无需归一化 return -矩阵 params YAxis -Y轴 |
| F | **RotatorMakeRotFromZ** | FVectorZAxis | 仅使用Z轴构建Rotator。X和Y轴未指定但将保持正交归一。Z轴无需归一化 return -矩阵 params ZAxis -Z轴 |
| F | **RotatorMakeRotFromXY** | FVectorXAxis, FVectorYAxis | 使用给定的X和Y轴构建矩阵。X轴保持不变，Y轴会微调以确保正交性。Z轴将被计算得出。输入向量无需归一化 return -矩阵 params XAxis -X轴 params YAxis -Y轴 |
| F | **RotatorMakeRotFromXZ** | FVectorXAxis, FVectorZAxis | 使用给定的X和Z轴构建矩阵。X轴保持不变，Z轴会微调以确保正交性。Y轴将被计算得出。输入向量无需归一化 return -矩阵 params XAxis -X轴 params ZAxis -Z轴 |
| F | **RotatorMakeRotFromYX** | FVectorYAxis, FVectorXAxis | 使用给定的Y和X轴构建矩阵。Y轴保持不变，X轴会微调以确保正交性。Z轴将被计算得出。输入向量无需归一化 return -矩阵 params YAxis -Y轴 params XAxis -X轴 |
| F | **RotatorMakeRotFromYZ** | FVectorYAxis, FVectorZAxis | 使用给定的Y和Z轴构建矩阵。Y轴保持不变，Z轴会微调以确保正交性。X轴将被计算得出。输入向量无需归一化 return -矩阵 params YAxis -Y轴 params ZAxis -Z轴 |
| F | **RotatorMakeRotFromZX** | FVectorZAxis, FVectorXAxis | 使用给定的Z和X轴构建矩阵。Z轴保持不变，X轴会微调以确保正交性。Y轴将被计算得出。输入向量无需归一化 return -矩阵 params ZAxis -Z轴 params XAxis -X轴 |
| F | **RotatorMakeRotFromZY** | FVectorZAxis, FVectorYAxis | 使用给定的Z和Y轴构建矩阵。Z轴保持不变，Y轴会微调以确保正交性。X轴将被计算得出。输入向量无需归一化 return -矩阵 params ZAxis -Z轴 params YAxis -Y轴 |
| number,number,number | **BreakRotator** | FRotatorRotator | 将Rotator分解为{Roll, Pitch, Yaw}角度值(单位:度) return -Roll,Pitch,Yaw params Rotator -Rotator |
| F | **TransformMakeTransform** | FVectorLocation, FRotatorRotation, FVectorScale | 根据位置、旋转和缩放创建Transform return -transformFVecto params Location -位置 params Rotation -旋转 params Scale -缩放 |
| FVector,FRotator, | **FVectorBreakTransform** | FTransformTransform | 将transform分解为{Location, Rotation, Scale}值 return -Location,Rotation,Scale params Transform -Transform |
| F | **LinearColorConv_VectorToLinearColor** | FVectorVector | 将向量转换为LinearColor return -LinearColor params Vector -向量 |
| F | **LinearColorConv_ColorToLinearColor** | FColorColor | 将Color转换为LinearColor return -LinearColor params Color -Color |
| F | **ColorConv_LinearColorToColor** | FLinearColorLinearColor | 将LinearColor转换为Color return -Color params LinearColor -LinearColor |
| F | **Vector2DConv_VectorToVector2D** | FVectorVector | 将向量转换为二维向量 return -二维向量 params Vector -向量 |
| F | **VectorConv_Vector2DToVector** | FVector2DVector2D | 将二维向量转换为向量 return -向量 params Vector2D -二维向量 |
| F | **LinearColorHSVToRGB** | numberH, numberS, numberV, numberA | 根据HSV分量创建颜色 return -Color params H -色相 params S -饱和度 params V -明度 params A -透明度 |
| number,number,number,number | **RGBToHSV** | FLinearColorColor | 将颜色分解为单独的HSV分量（以及透明度） return -H,S,V,A params Color -Color |
| F | **LinearColorConv_HSVToRGB** | FLinearColorHSV | 将HSV线性颜色转换为RGB颜色（其中H在R分量，S在G分量，V在B分量） return -RGB params HSV -HSV |
| F | **LinearColorConv_RGBToHSV** | FLinearColorRGB | 将RGB线性颜色转换为HSV（其中H存储在R分量，S存储在G分量，V存储在B分量） return -HSV params RGB -RGB |
| F | **LinearColorHexToRGB** | stringHexString, booleanbSRGB | 将十六进制颜色字符串转换为RGB return -RGB params HexString -十六进制颜色字符串 params bSRGB -是否使用sRGB颜色空间 |
| string | **RGBToHex** | FLinearColorRGB, booleanbSRGB | 将RGB颜色转换为十六进制字符串 return -十六进制颜色字符串 params RGB -RGB params bSRGB -是否使用sRGB颜色空间 |
| F | **RotatorConv_VectorToRotator** | FVectorXAxis | 创建一个使X轴朝向指定方向向量的Rotator return -Rotator params XAxis -X轴 |
| F | **VectorConv_RotatorToVector** | FRotatorRotator | 获取旋转后的X轴方向向量 return -X轴 params Rotator -Rotator |
| F | **VectorTransformLocation** | FTransformT, FVectorLocation | 使用指定的变换矩阵转换位置坐标 例如：若T是某物体的变换矩阵，此操作会将局部坐标系的位置转换到世界坐标系 return -世界坐标系下的位置 params T -变换矩阵 params Location -局部坐标系下的位置 |
| F | **VectorTransformDirection** | FTransformT, FVectorDirection | 使用指定的变换矩阵转换方向向量 - 不会改变向量长度 例如：若T是某物体的变换矩阵，此操作会将局部坐标系的方向向量转换到世界坐标系 return -世界坐标系下的方向向量 params T -变换矩阵 params Direction -局部坐标系下的方向向量 |
| F | **RotatorTransformRotation** | FTransformT, FRotatorRotation | 使用指定的变换矩阵转换Rotator 例如：若T是某物体的变换矩阵，此操作会将局部坐标系的旋转转换到世界坐标系 return -世界坐标系下的旋转 params T -变换矩阵 params Rotation -局部坐标系下的旋转 |
| boolean | **RandomBool** |  | 随机返回 true 或 false，概率各占 50% return -true或false |
| boolean | **RandomBoolWithWeight** | numberWeight | 根据指定权重获取随机概率结果。权重范围为 0.0 - 1.0 例如：权重 = 0.6，返回值将有 60% 的概率为 True return -true或false params Weight -权重 |
| number | **RandomInteger** | numberMax | 返回一个随机数，范围在0到Max - 1之间，每个数出现的概率相同 return -随机数 params Max -最大值 |
| number | **Clamp** | numberValue, numberMin, numberMax | 返回限制在A和B之间的值(包含A和B) return -限制后的值 params Value -值 params Min -最小值 params Max -最大值 |
| number | **RandomIntegerInRange** | numberMin, numberMax | 返回Min和Max之间的随机整数(包含Min和Max) return -随机整数 params Min -最小值 params Max -最大值 |
| boolean | **IsPointInBox** | FVectorPoint, FVectorBoxOrigin, FVectorBoxExtent | 判断给定点是否在盒子内（包括在盒子边界上的点） return -如果点在盒子内则返回true；否则返回false params Point -要测试的点 params BoxOrigin -盒子的原点 params BoxExtent -盒子在各个轴上的范围（从原点出发的距离） |
| boolean | **IsPointInBoxWithTransform** | FVectorPoint, FTransformBoxWorldTransform, FVectorBoxExtent | 判断给定点是否在具有特定变换的盒子内（包含边界点) return -如果点在盒子内则返回true；否则返回false params Point -要测试的点 params BoxWorldTransform -盒子从组件空间到世界空间的变换 params BoxExtent -盒子在组件空间中的范围（各轴距原点的距离） |
| boolean | **EqualRotator** | FRotatorA, FRotatorB, numberErrorTolerance | 检查Rotator A 和 B 是否在指定误差范围内相等 (A == B) return -如果旋转量A和B在误差范围内相等则返回true；否则返回false params A -旋转量A params B -旋转量B params ErrorTolerance -误差范围 |
| boolean | **NotEqualRotator** | FRotatorA, FRotatorB, numberErrorTolerance | 检查Rotator A 和 B 是否在指定误差范围内不相等 (A != B) return -如果旋转量A和B在误差范围内不相等则返回true；否则返回false params A -旋转量A params B -旋转量B params ErrorTolerance -误差范围 |
| F | **RotatorComposeRotators** | FRotatorA, FRotatorB | 组合两个旋转，返回先应用A再应用B的结果旋转 return -先应用A再应用B的结果旋转 params A -旋转量A params B -旋转量B |
| FVector,FVector, | **FVectorGetAxes** | FRotatorRotator | 获取该旋转对应的前向、右向和上向三个基准方向向量 return -前向向量,右向向量,上向向量 params Rotator -旋转量 |
| F | **RotatorNormalRotator** | FRotatorA | 标准化Rotator return -标准化后的旋转量 params A -旋转量 |
| F | **RotatorRandomRotator** | booleanbRoll | 生成一个随机旋转角度，可选择是否包含绕Z轴的随机旋转 return -随机旋转量 params bRoll -是否包含绕Z轴的随机旋转 |
| F | **RotatorRLerp** | FRotatorA, FRotatorB, numberAlpha, booleanbShortestPath | 基于Alpha值在A和B之间线性插值（Alpha=0时返回100%A，Alpha=1时返回100%B） return -线性插值后的值 params A -起始旋转量 params B -目标旋转量 params Alpha -插值比例（0-1） params bShortestPath -是否采用最短路径插值 Sin Asin Cos Acos Tan Atan DegSin DegAsin DegCos DegAcos DegTan DegAtan DegAtan2 RandomFloat RandomFloatInRange Lerp FClamp MapRangeClamped Nea |

