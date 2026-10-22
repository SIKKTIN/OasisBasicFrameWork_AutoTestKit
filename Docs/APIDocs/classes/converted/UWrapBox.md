# UWrapBox

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UWrapBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWrapBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWrapBox](https://developer.gp.qq.com/api/#/searchContent/UWrapBox?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUWrapBox.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UWrapBox)

类

全文搜索

Arranges widgets left-to-right. When the widgets exceed the Width it will place widgets on the next line. Many Children Flows Wraps

---


## 函数

- **SetInnerSlotPadding**(FVector2DInPadding) — Sets the inner slot padding goes between slots sharing borders
- **AddChildWrapBox**(UWidget *Content) — SetInnerSlotPadding AddChildWrapBox

## 属性

- **inner** — slot padding goes between slots sharing borders When this width is exceeded, elements will start appearing on the next line. Use explicit wrap width whenever possible. It greatly simplifies layout calculations and reduces likelihood of "wiggling UI" InnerSlotPadding WrapWidth bExplicitWrapWidth