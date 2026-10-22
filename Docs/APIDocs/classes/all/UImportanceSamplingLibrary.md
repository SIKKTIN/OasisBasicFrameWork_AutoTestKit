# UImportanceSamplingLibrary

> 在线文档: [https://developer.gp.qq.com/api/#/searchContent/UImportanceSamplingLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUImportanceSamplingLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UImportanceSamplingLibrary](https://developer.gp.qq.com/api/#/searchContent/UImportanceSamplingLibrary?classDetailShow=true&path=class%2Fdetail%2FOthers%2FUImportanceSamplingLibrary.json&isSelect=1&apiEnc=%5B%22%E7%B1%BB%22%5D&apiLabel=UImportanceSamplingLibrary)

类

全文搜索

---

## 函数

| 返回类型 | 函数名 | 参数 | 描述 |
|---------|--------|------|------|
| ENGINE_API float | **RandomSobolFloat** | int32 Index, int32 Dimension, floatSeed | return -Sobol-distributed random number between 0 and 1 params Index -- Which sequential point params Dimension -- Which Sobol dimension (0 to 15) params Seed -- Random seed (in the range 0-1) to randomize across multiple sequences |
| ENGINE_API float | **NextSobolFloat** | int32 Index, int32 Dimension, floatPreviousValue | return -Sobol-distributed random number between 0 and 1 params Index -- Which sequential point params Dimension -- Which Sobol dimension (0 to 15) params PreviousValue -- The Sobol value for Index-1 |
| ENGINE_API | **FVector2DRandomSobolCell2D** | int32 Index, int32 NumCells, FVector2D Cell, FVector2DSeed | return -Sobol-distributed random 2D position in the given grid cell params Index -- Which sequential point in the cell (starting at 0) params NumCells -- Size of cell grid, 1 to 32768. Rounded up to the next power of two params Cell -- Give a point from this integer grid cell params Seed -- Random 2 |
| ENGINE_API | **FVector2DNextSobolCell2D** | int32 Index, int32 NumCells, FVector2DPreviousValue | return -Sobol-distributed random 2D position in the same grid cell params Index -- Which sequential point params NumCells -- Size of cell grid, 1 to 32768. Rounded up to the next power of two params PreviousValue -- The Sobol value for Index-1 |
| ENGINE_API | **FVectorRandomSobolCell3D** | int32 Index, int32 NumCells, FVector Cell, FVectorSeed | return -Sobol-distributed random 3D vector in the given grid cell params Index -- Which sequential point in the cell (starting at 0) params NumCells -- Size of cell grid, 1 to 1024. Rounded up to the next power of two params Cell -- Give a point from this integer grid cell params Seed -- Random 3D s |
| ENGINE_API | **FVectorNextSobolCell3D** | int32 Index, int32 NumCells, FVectorPreviousValue | return -Sobol-distributed random 3D position in the same grid cell params Index -- Which sequential point params NumCells -- Size of cell grid, 1 to 1024. Rounded up to the next power of two params PreviousValue -- The Sobol value for Index-1 |
| ENGINE_API | **FImportanceTextureMakeImportanceTexture** | UTexture2D * Texture, TEnumAsByte < EImportanceWeight :: Type >WeightingFunc | Create an FImportanceTexture object for texture-driven importance sampling from a 2D RGBA8 texture return -new ImportanceTexture object for use with ImportanceSample params Texture -- Texture object to use. Must be RGBA8 format. params WeightingFunc -- How to turn the texture data into probability w |
| ENGINE_API void | **BreakImportanceTexture** | FImportanceTexture & ImportanceTexture, UTexture2D * & Texture, TEnumAsByte < EImportanceWeight :: Type > &WeightingFunc | Get texture used to create an ImportanceTexture object return -new ImportanceTexture object for use with ImportanceSample params ImportanceTexture -- The source ImportanceTexture object params WeightingFunc -- How to turn the texture data into probability weights |
| ENGINE_API void | **ImportanceSample** | FImportanceTexture & Texture, FVector2D & Rand, int Samples, float Intensity, FVector2D & SamplePosition, FLinearColor & SampleColor, float & SampleIntensity, float &SampleSize | Distribute sample points proportional to Texture2D luminance. params Rand -- Random 2D point with components evenly distributed between 0 and 1 params Samples -- Total number of samples that will be used params Intensity -- Total intensity for light RandomSobolFloat NextSobolFloat RandomSobolCell2D  |

