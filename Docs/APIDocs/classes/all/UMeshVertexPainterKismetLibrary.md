# UMeshVertexPainterKismetLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMeshVertexPainterKismetLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMeshVertexPainterKismetLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMeshVertexPainterKismetLibrary](https://developer.gp.qq.com/api/#/searchContent/UMeshVertexPainterKismetLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMeshVertexPainterKismetLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMeshVertexPainterKismetLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **PaintVerticesSingleColor** | UStaticMeshComponent * StaticMeshComponent, FLinearColor & FillColor, boolbConvertToSRGB | Paints vertex colors on a mesh component in a specified color. |
| void | **PaintVerticesLerpAlongAxis** | UStaticMeshComponent * StaticMeshComponent, FLinearColor & StartColor, FLinearColor & EndColor, EVertexPaintAxis Axis, boolbConvertToSRGB | Paints vertex colors on a mesh component lerping from the start to the end color along the specified axis. |
| void | **RemovePaintedVertices** | UStaticMeshComponent *StaticMeshComponent | Removes vertex colors on a mesh component PaintVerticesSingleColor PaintVerticesLerpAlongAxis RemovePaintedVertices |

