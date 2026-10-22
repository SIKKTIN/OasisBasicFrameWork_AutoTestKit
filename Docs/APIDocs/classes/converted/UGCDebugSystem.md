# UGCDebugSystem

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UGCDebugSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCDebugSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCDebugSystem](https://developer.gp.qq.com/api/#/searchContent/UGCDebugSystem?classDetailShow=true&path=class%2Fdetail%2F%E5%92%8C%E5%B9%B3%E5%85%A8%E5%B1%80%E6%8E%A5%E5%8F%A3%2F%E5%B7%A5%E5%85%B7%E5%BA%93%2FUGCDebugSystem.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UGCDebugSystem)

类

全文搜索

调试系统接口库

---


## 函数

- **ToScreen**(stringInString, FLinearColorColor, numberDuration) — 屏幕左上角逐行打印字符串 生效范围：客户端 params InString -要打印的字符串 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **OnScreenDebugMessages**(清除屏幕上持续时间未过的字符串 生效范围：客户端)
- **DebugLine**(FVectorLineStart, FVectorLineEnd, FLinearColorColor, numberDuration) — 绘制直线 生效范围：客户端 params LineStart -结构Vector={X=0,Y=0,Z=0} params LineEnd -结构Vector={X=0,Y=0,Z=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugPoint**(FVectorPosition, numberSize, FLinearColorColor, numberDuration) — 绘制点 生效范围：客户端 params Position -结构Vector={X=0,Y=0,Z=0} params Size -点的大小 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugArrow**(FVectorLineStart, FVectorLineEnd, FLinearColorColor, numberDuration) — 绘制箭头 生效范围：客户端 params LineStart -结构Vector={X=0,Y=0,Z=0} params LineEnd -结构Vector={X=0,Y=0,Z=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugCircle**(FVectorCenter, numberRadius, FLinearColorColor, numberDuration, FVectorYAxis, FVectorZAxis, booleanbDrawAxis) — 绘制圆 生效范围：客户端 params Center -结构Vector={X=0,Y=0,Z=0} params Radius -圆的半径 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间 params YAxis -椭圆半长轴方向向量，模长影响缩放; 缺省为{X=0,Y=1,Z=0}; 结构Vector={X=0,Y=0,Z=0} params ZAxis -椭圆半短轴方向向量，模长影响缩放; 缺省为{X=0,Y=0,Z=1}; 结构Vector={X=0,Y=0,Z=0}
- **DebugCoordinateSystem**(FVectorAxisLoc, FRotatorAxisRot, numberScale, numberDuration) — 绘制坐标系 生效范围：客户端 params AxisLoc -结构Vector={X=0,Y=0,Z=0} params AxisRot -结构Rot={Pitch=0,Yaw=0,Roll=0} params Scale -坐标轴长度; 缺省为100 params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugBox**(FVectorCenter, FVectorExtent, FRotatorRotation, FLinearColorColor, numberDuration) — 绘制盒子 生效范围：客户端 params Center -结构Vector={X=0,Y=0,Z=0} params Extent -表示盒子中心到各面的距离; 结构Vector={X=0,Y=0,Z=0} params Rotation -结构Rot={Pitch=0,Yaw=0,Roll=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugSphere**(FVectorCenter, numberRadius, FLinearColorColor, numberDuration) — 绘制球体 生效范围：客户端 params Center -结构Vector={X=0,Y=0,Z=0} params Radius -球的半径 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugCylinder**(FVectorStart, FVectorEnd, numberRadius, FLinearColorColor, numberDuration) — 绘制圆柱体 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Radius -底面半径 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugCapsule**(FVectorCenter, numberHalfHeight, numberRadius, FRotatorRotation, FLinearColorColor, numberDuration) — 绘制胶囊 生效范围：客户端 params Center -结构Vector={X=0,Y=0,Z=0} params HalfHeight -胶囊半高 params Radius -截面圆半径 params Rotation -结构Rot={Pitch=0,Yaw=0,Roll=0}; params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugString**(FVectorTextLocation, stringText, AActorTestBaseActor, FLinearColorColor, numberDuration) — 绘制文本 生效范围：客户端 params TextLocation -未绑定Actor时为世界坐标，绑定Actor时为相对Actor的坐标; 结构Vector={X=0,Y=0,Z=0} params Text -显示的文本 params TestBaseActor -绑定在哪个Actor上 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugStrings**(清空场景中持续时间未过的调试文本（不包括UI） 生效范围：客户端)
- **DebugLines**(清空场景中持续时间未过的调试图形 生效范围：客户端)
- **DebugActorName**(AActorActor, FVectorOffset, FLinearColorColor, numberDuration) — 绘制Actor名称 生效范围：客户端 params Actor -目标Actor params Offset -结构Vector={X=0,Y=0,Z=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugActorMoveTrack**(AActorActor, FLinearColorColor, numberDuration) — 绘制Actor运动轨迹 生效范围：客户端 params Actor -目标Actor params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，此时运动轨迹将持续保留
- **DebugDistance**(FVectorSelf, FVectorTarget, FLinearColorColor, numberDuration) — 绘制Self到Target的连线和距离数值 生效范围：客户端 params Self -结构Vector={X=0,Y=0,Z=0} params Target -结构Vector={X=0,Y=0,Z=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugTargetAimedAt**(numberLength, numberDuration) — 绘制准心瞄准物体名称 生效范围：客户端 params Length -生效距离，缺省为10000 params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugLineTraceSingle**(FVectorStart, FVectorEnd, FLinearColorColor, numberDuration) — 绘制射线与第一处命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugLineTraceMulti**(FVectorStart, FVectorEnd, FLinearColorColor, numberDuration) — 绘制射线与全部命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugSphereTraceSingle**(FVectorStart, FVectorEnd, numberRadius, FLinearColorColor, numberDuration) — 绘制沿射线运动的球体轨迹与第一处命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Radius -球体半径 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugSphereTraceMulti**(FVectorStart, FVectorEnd, numberRadius, FLinearColorColor, numberDuration) — 绘制沿射线运动的球体轨迹与全部命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Radius -球体半径 params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugBoxTraceSingle**(FVectorStart, FVectorEnd, FVectorHalfSize, FRotatorOrientation, numberDuration) — 绘制沿射线运动的方盒轨迹与第一处命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params HalfSize -结构Vector={X=0,Y=0,Z=0} params Orientation -结构Rot={Pitch=0,Yaw=0,Roll=0} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugBoxTraceMulti**(FVectorStart, FVectorEnd, FVectorHalfSize, FRotatorOrientation, numberDuration) — 绘制沿射线运动的方盒轨迹与全部命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params HalfSize -结构Vector={X=0,Y=0,Z=0} params Orientation -结构Rot={Pitch=0,Yaw=0,Roll=0} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugCapsuleTraceSingle**(FVectorStart, FVectorEnd, numberRadius, FVectorHalfSize, numberDuration) — 绘制沿射线运动的胶囊轨迹与第一处命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Radius -胶囊截面圆半径 params HalfSize -结构Vector={X=0,Y=0,Z=0} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugCapsuleTraceMulti**(FVectorStart, FVectorEnd, numberRadius, FVectorHalfSize, numberDuration) — 绘制沿射线运动的胶囊轨迹与全部命中标记 生效范围：客户端 params Start -结构Vector={X=0,Y=0,Z=0} params End -结构Vector={X=0,Y=0,Z=0} params Radius -胶囊截面圆半径 params HalfSize -结构Vector={X=0,Y=0,Z=0} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugActorCollision**(AActorActor, FLinearColorColor, numberDuration) — 绘制碰撞盒 生效范围：客户端 params Actor -目标Actor params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间
- **DebugActorBounds**(AActorActor, FLinearColorColor, numberDuration) — 绘制包围盒 生效范围：客户端 params Actor -目标Actor params Color -缺省为红色; 结构Color={A=1,B=1,G=1,R=1} params Duration -缺省为0，即每帧调用一次，保持一帧时间 PrintToScreen FlushOnScreenDebugMessages DrawDebugLine DrawDebugPoint DrawDebugArrow DrawDebugCircle DrawDebugCoordinateSystem DrawDebugBox DrawDebugSphere DrawDebugCylinder DrawD