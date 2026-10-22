# UBoxComponent

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UBoxComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBoxComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBoxComponent](https://developer.gp.qq.com/api/#/searchContent/UBoxComponent?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUBoxComponent.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UBoxComponent)

类

全文搜索

A box generally used for simple collision. Bounds are rendered as lines in the editor.

---


## 函数

- **SetBoxExtent**(FVector InBoxExtent, boolbUpdateOverlaps) — Change the box extent size. This is the unscaled size, before component scale is applied.
- **VectorGetScaledBoxExtent**()
- **VectorGetUnscaledBoxExtent**(SetBoxExtent GetScaledBoxExtent GetUnscaledBoxExtent)

## 属性

- **extents** — (radii dimensions) of the box Used to control the line thickness when rendering BoxExtent LineThickness