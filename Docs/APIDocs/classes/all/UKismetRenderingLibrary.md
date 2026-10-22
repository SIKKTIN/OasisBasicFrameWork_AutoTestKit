# UKismetRenderingLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UKismetRenderingLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetRenderingLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetRenderingLibrary](https://developer.gp.qq.com/api/#/searchContent/UKismetRenderingLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUKismetRenderingLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UKismetRenderingLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| ENGINE_API void | **ClearRenderTarget2D** | UObject * WorldContextObject, UTextureRenderTarget2D * TextureRenderTarget, FLinearColorClearColor | Clears the specified render target with the given ClearColor. |
| ENGINE_API UTextureRenderTarget2D * | **CreateRenderTarget2D** | UObject * WorldContextObject, int32 Width, int32 Height, ETextureRenderTargetFormatFormat | Creates a new render target and initializes it to the specified dimensions |
| ENGINE_API UTextureRenderTarget2D * | **CreateRenderTarget2DExt** | UObject * WorldContextObject, int32 Width, int32 Height, ETextureRenderTargetFormat Format, FLinearColor &ClearColor | Creates a new render target and initializes it to the specified dimensions |
| ENGINE_API UTextureRenderTarget2D * | **CreateRenderTarget2DWithFilter** | UObject * WorldContextObject, int32 Width, int32 Height, ETextureRenderTargetFormat Format, TextureFilterFilter | Creates a new render target and initializes it to the specified dimensions |
| ENGINE_API void | **ReleaseRenderTarget2D** | UTextureRenderTarget2D *TextureRenderTarget | Manually releases GPU resources of a render target. This is useful for blueprint creating a lot of render target that would normally be released too late by the garbage collector that can be problematic on platforms that have tight GPU memory constrains. |
| ENGINE_API void | **DrawMaterialToRenderTarget** | UObject * WorldContextObject, UTextureRenderTarget2D * TextureRenderTarget, UMaterialInterface *Material | Renders a quad with the material applied to the specified render target. This sets the render target even if it is already set, which is an expensive operation. Use BeginDrawCanvasToRenderTarget EndDrawCanvasToRenderTarget instead if rendering multiple primitives to the same render target. |
| ENGINE_API UTexture2D * | **RenderTargetCreateStaticTexture2DEditorOnly** | UTextureRenderTarget2D * RenderTarget, FString Name, TextureCompressionSettings CompressionSettings, TextureMipGenSettingsMipSettings | Creates a new Static Texture from a Render Target 2D. Render Target Must be power of two and use four channels. Only works in the editor |
| ENGINE_API void | **ConvertRenderTargetToTexture2DEditorOnly** | UObject * WorldContextObject, UTextureRenderTarget2D * RenderTarget, UTexture2D *Texture | Copies the contents of a render target to a UTexture2D Only works in the editor |
| ENGINE_API void | **ExportRenderTarget** | UObject * WorldContextObject, UTextureRenderTarget2D * TextureRenderTarget, FString & FilePath, FString &FileName | Exports a render target as a HDR or PNG image onto the disk (depending on the format of the render target) |
| ENGINE_API void | **ExportTexture2D** | UObject * WorldContextObject, UTexture2D * Texture, FString & FilePath, FString &FileName | Exports a Texture2D as a HDR image onto the disk. |
| ENGINE_API void | **BeginDrawCanvasToRenderTarget** | UObject * WorldContextObject, UTextureRenderTarget2D * TextureRenderTarget, UCanvas * & Canvas, FVector2D & Size, FDrawToRenderTargetContext &Context | Returns a Canvas object that can be used to draw to the specified render target. Canvas has functions like DrawMaterial with size parameters that can be used to draw to a specific area of a render target. Be sure to call EndDrawCanvasToRenderTarget to complete the rendering! |
| ENGINE_API void | **EndDrawCanvasToRenderTarget** | UObject * WorldContextObject, FDrawToRenderTargetContext &Context | Must be paired with a BeginDrawCanvasToRenderTarget to complete rendering to a render target. |
| ENGINE_API | **FSkelMeshSkinWeightInfoMakeSkinWeightInfo** | int32 Bone0, uint8 Weight0, int32 Bone1, uint8 Weight1, int32 Bone2, uint8 Weight2, int32 Bone3, uint8Weight3 | Create FSkelMeshSkinWeightInfo |
| ENGINE_API void | **BreakSkinWeightInfo** | FSkelMeshSkinWeightInfo InWeight, int32 & Bone0, uint8 & Weight0, int32 & Bone1, uint8 & Weight1, int32 & Bone2, uint8 & Weight2, int32 & Bone3, uint8 &Weight3 | Break FSkelMeshSkinWeightInfo |
| ENGINE_API | **FLinearColorReadRenderTargetRawPixel** | UObject * WorldContextObject, UTextureRenderTarget2D * TextureRenderTarget, int32 X, int32Y | Incredibly inefficient and slow operation! Read a value as-is from a render target using integer pixel coordinates. |
| ENGINE_API | **FLinearColorReadRenderTargetRawUV** | UObject * WorldContextObject, UTextureRenderTarget2D * TextureRenderTarget, float U, floatV | Incredibly inefficient and slow operation! Read a value as-is color from a render target using UV [0,1]x[0,1] coordinates. |
| ENGINE_API bool | **NeedsToSwitchVerticalAxis** |  |  |
| ENGINE_API void | **SetCastInsetShadowForAllAttachments** | UObject * WorldContextObject, UPrimitiveComponent * PrimitiveComponent, bool bCastInsetShadow, boolbLightAttachmentsAsGroup | Set the inset shadow casting state of the given component and all its child attachments. Also choose if all attachments should be grouped for the inset shadow rendering. If enabled, one depth target will be shared for all attachments. |
| ENGINE_API void | **SetupFPPShadowForAllAttachments** | UObject * WorldContextObject, UPrimitiveComponent * PrimitiveComponent, TArray < FFppTppShadowChangeRecord > &ChangeRecords |  |
| ENGINE_API void | **SetupTPPShadowForAllAttachments** | UObject * WorldContextObject, UPrimitiveComponent * PrimitiveComponent, TArray < FFppTppShadowChangeRecord > &ChangeRecords |  |
| ENGINE_API void | **ResetShadowForAllAttachments** | UObject * WorldContextObject, UPrimitiveComponent * PrimitiveComponent, TArray < FFppTppShadowChangeRecord > &ChangeRecords |  |
| ENGINE_API void | **RecordForAllAttachments** | UObject * WorldContextObject, UPrimitiveComponent * PrimitiveComponent, TArray < FFppTppShadowChangeRecord > &ChangeRecords |  |
| ENGINE_API | **FScalabilityQualityGetScalabilityQualityLevels** |  |  |
| ENGINE_API void | **ApplyMaxScalabilityQualityLevels** |  |  |
| ENGINE_API void | **ApplyScalabilityQualityLevels** | FScalabilityQuality &QualityLevels |  |
| ENGINE_API UTextureRenderTarget2D * | **CreateRenderTarget2D** | UObject * WorldContextObject, int32 Width, int32 Height, ETextureRenderTargetFormat Format, boolbAutoGenerateMipmap | Creates a new render target and initializes it to the specified dimensions ClearRenderTarget2D CreateRenderTarget2D CreateRenderTarget2DExt CreateRenderTarget2DWithFilter ReleaseRenderTarget2D DrawMaterialToRenderTarget RenderTargetCreateStaticTexture2DEditorOnly ConvertRenderTargetToTexture2DEditor |

