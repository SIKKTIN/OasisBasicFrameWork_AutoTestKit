# UMenuAnchor

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UMenuAnchor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMenuAnchor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMenuAnchor](https://developer.gp.qq.com/api/#/searchContent/UMenuAnchor?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUMenuAnchor.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UMenuAnchor)

类

全文搜索

The Menu Anchor allows you to specify an location that a popup menu should be anchored to, and should be summoned from. Single Child Popup

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **ToggleOpen** | boolbFocusOnOpen | Toggles the menus open state. params bFocusOnOpen -Should we focus the popup as soon as it opens? |
| void | **Open** | boolbFocusMenu | Opens the menu if it is not already open |
| void | **Close** |  | Closes the menu if it is currently open. |
| bool | **IsOpen** |  | return -true if the popup is open; false otherwise. |
| bool | **ShouldOpenDueToClick** |  | return -true if we should open the menu due to a click. Sometimes we should not, if |
| F | **Vector2DGetMenuPosition** |  | return -The current menu position |
| bool | **HasOpenSubMenus** |  | return -Whether this menu has open submenus ToggleOpen Open Close IsOpen ShouldOpenDueToClick GetMenuPosition HasOpenSubMenus |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **widget** | class to spawn when the menu is required. Creates the widget freshly each time. If you want to customize the creation of the popup, you should bind a function to OnGetMenuContentEvent instead. Called when the menu content is requested to allow a more customized handling over what to display The plac |

## 委托

- voidOnMenuOpenChanged(boolbIsOpen)
- Called when the opened state of the menu changes
- OnMenuOpenChanged

