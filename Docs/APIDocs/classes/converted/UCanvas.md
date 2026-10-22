# UCanvas

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UCanvas?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvas.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvas](https://developer.gp.qq.com/api/#/searchContent/UCanvas?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUCanvas.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UCanvas)

类

全文搜索

A drawing canvas.

---


## 函数

- **K2_DrawLine**(FVector2D ScreenPositionA, FVector2D ScreenPositionB, float Thickness, FLinearColorRenderColor) — Draws a line on the Canvas. params ScreenPositionA -Starting position of the line in screen space. params ScreenPositionB -Ending position of the line in screen space. params Thickness - How many pixels thick this line should be. params RenderColor - Color to render the line.
- **K2_DrawTexture**(UTexture* RenderTexture, FVector2D ScreenPosition, FVector2D ScreenSize, FVector2D CoordinatePosition, FVector2D CoordinateSize, FLinearColor RenderColor, EBlendMode BlendMode, float Rotation, FVecto) — Draws a texture on the Canvas. params RenderTexture - Texture to use when rendering. If no texture is set then this will use the default white texture. params ScreenPosition - Screen space position to render the texture. params ScreenSize - Screen space size to render the texture. params CoordinateP
- **K2_DrawMaterial**(UMaterialInterface* RenderMaterial, FVector2D ScreenPosition, FVector2D ScreenSize, FVector2D CoordinatePosition, FVector2D CoordinateSize, float Rotation, FVector2DPivotPoint) — Draws a material on the Canvas. params RenderMaterial - Material to use when rendering. Remember that only the emissive channel is able to be rendered as no lighting is performed when rendering to the Canvas. params ScreenPosition - Screen space position to render the texture. params ScreenSize - Sc
- **K2_DrawText**(UFont* RenderFont, FString& RenderText, FVector2D ScreenPosition, FLinearColor RenderColor, float Kerning, FLinearColor ShadowColor, FVector2D ShadowOffset, bool bCentreX, bool bCentreY, bool bOutli) — Draws text on the Canvas. params RenderFont - Font to use when rendering the text. If this is null, then a default engine font is used. params RenderText - Text to render on the Canvas. params ScreenPosition - Screen space position to render the text. params RenderColor - Color to render the text. p
- **K2_DrawBorder**(UTexture* BorderTexture, UTexture* BackgroundTexture, UTexture* LeftBorderTexture, UTexture* RightBorderTexture, UTexture* TopBorderTexture, UTexture* BottomBorderTexture, FVector2D ScreenPositi) — Draws a 3x3 grid border with tiled frame and tiled interior on the Canvas. params BorderTexture - Texture to use for border. params BackgroundTexture - Texture to use for border background. params LeftBorderTexture - Texture to use for the tiling left border. params RightBorderTexture -Texture to us
- **K2_DrawBox**(FVector2D ScreenPosition, FVector2D ScreenSize, floatThickness) — Draws an unfilled box on the Canvas. params ScreenPosition - Screen space position to render the text. params ScreenSize - Screen space size to render the texture. params Thickness - How many pixels thick the box lines should be.
- **K2_DrawTriangle**(UTexture* RenderTexture, TArray < FCanvasUVTri >Triangles) — Draws a set of triangles on the Canvas. params RenderTexture - Texture to use when rendering the triangles. If no texture is set, then the default white texture is used. params Triangles - Triangles to render.
- **K2_DrawMaterialTriangle**(UMaterialInterface* RenderMaterial, TArray < FCanvasUVTri >Triangles) — Draws a set of triangles on the Canvas. params RenderMaterial - Material to use when rendering. Remember that only the emissive channel is able to be rendered as no lighting is performed when rendering to the Canvas. params Triangles - Triangles to render.
- **K2_DrawPolygon**(UTexture* RenderTexture, FVector2D ScreenPosition, FVector2D Radius, int32 NumberOfSides, FLinearColorRenderColor) — Draws a polygon on the Canvas. params RenderTexture - Texture to use when rendering the triangles. If no texture is set, then the default white texture is used. params ScreenPosition - Screen space position to render the text. params Radius - How large in pixels this polygon should be. params Number
- **VectorK2_Project**(FVectorWorldLocation) — Performs a projection of a world space coordinates using the projection matrix set up for the Canvas. return - Returns a vector where X, Y defines a screen space position representing the world space location. params WorldLocation - World space location to project onto the Canvas rendering plane.
- **K2_Deproject**(FVector2D ScreenPosition, FVector& WorldOrigin, FVector &WorldDirection) — Performs a deprojection of a screen space coordinate using the projection matrix set up for the Canvas. params ScreenPosition - Screen space position to deproject to the World. params WorldOrigin - Vector which is the world position of the screen space position. params WorldDirection - Vector which
- **Vector2DK2_StrLen**(UFont* RenderFont, FString &RenderText) — Returns the wrapped text size in screen space coordinates. return - Returns the screen space size of the text. params RenderFont - Font to use when determining the size of the text. If this is null, then a default engine font is used. params RenderText - Text to determine the size of.
- **Vector2DK2_TextSize**(UFont* RenderFont, FString& RenderText, FVector2DScale) — Returns the clipped text size in screen space coordinates. return - Returns the screen space size of the text. params RenderFont - Font to use when determining the size of the text. If this is null, then a default engine font is used. params RenderText - Text to determine the size of. params Scale -

## 属性

- **class** — to render 2d graphs on canvas OrgX OrgY ClipX ClipY DrawColor bCenterX bCenterY bNoSmooth SizeX SizeY ColorModulate DefaultTexture GradientTexture0 ReporterGraph