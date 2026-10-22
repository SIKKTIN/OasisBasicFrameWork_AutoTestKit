# UCanvasRenderTarget2D

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCanvasRenderTarget2D?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvasRenderTarget2D.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvasRenderTarget2D](https://developer.gp.qq.com/api/#/searchContent/UCanvasRenderTarget2D?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvasRenderTarget2D.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvasRenderTarget2D)

类

全文搜索

CanvasRenderTarget2D is 2D render target which exposes a Canvas interface to allow you to draw elements onto it directly. Use CreateCanvasRenderTarget2D() to create a render target texture by unique name, then bind a function to the OnCanvasRenderTargetUpdate delegate which will be called when the render target is updated. If you need to repaint your canvas every single frame, simply call UpdateResource() on it from a Tick function. Also, remember to hold onto your new canvas render target with a reference so that it doesn't get garbage collected.

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| void | **UpdateResource** |  | Updates the the canvas render target texture's resource. This is where the render target will create or |
| find a canvas object to use. It also calls | **UpdateResourceImmediate** |  | from the deferred rendering list, to stop the texture from being cleared the next frame. From there it will ask the rendering thread to set up the RHI viewport. The canvas is then set up for rendering and then the user's update delegate is called. The canvas is then flushed and the RHI resolves the  |
| UCanvasRenderTarget2D * | **CreateCanvasRenderTarget2D** | UObject * WorldContextObject, TSubclassOf < UCanvasRenderTarget2D > CanvasRenderTarget2DClass, int32 Width, int32Height | Creates a new canvas render target and initializes it to the specified dimensions return - Returns the instanced render target. params WorldContextObject -The world where this render target will be rendered for params CanvasRenderTarget2DClass -Class of the render target. Unless you want to use a sp |
| void | **ReceiveUpdate** | UCanvas * Canvas, int32 Width, int32Height | Allows a Blueprint to implement how this Canvas Render Target 2D should be updated. params Canvas - Canvas object that can be used to paint to the render target params Width - Width of the render target. params Height - Height of the render target. |
| void | **GetSize** | int32 & Width, int32 &Height | Gets a specific render target's size from the global map of canvas render targets. params Width -Output variable for the render target's width params Height -Output variable for the render target's height UpdateResource CreateCanvasRenderTarget2D ReceiveUpdate GetSize |

## 属性

| 类型 | 名称 | 描述 |
|------|------|------|
| The | **world** | this render target will be used with World bShouldClearRenderTargetOnReceiveUpdate |

## 委托

- voidOnCanvasRenderTargetUpdate(UCanvas*Canvas, int32Width, int32Height)
- Called when this Canvas Render Target is asked to update its texture resource.
- OnCanvasRenderTargetUpdate

