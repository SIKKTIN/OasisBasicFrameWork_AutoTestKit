# OasisBasicFrameWork_AutoTestKit

Oasis 绿洲启元编辑器 UGC 包测试工具集。

## 目录结构

| 目录/文件 | 说明 |
|-----------|------|
| `TestKit/` | 单元测试运行器 |
| `UnitTests/` | 测试用例目录 |
| `PackageKit/` | Package 元信息查询工具 |
| `PackageGuider/` | Package 开发指南文档 |
| `CodeNormKit/` | 代码规范检查工具 |
| `GenKit/` | Package_Meta 索引生成工具 |
| `JsonExportKit/` | JSON 导入/导出交互控制台 |
| `ExternalConfig/` | 外部配置（路径设置） |

## 快速开始

### 运行测试

```powershell
.\TestKit_Runner.ps1
```

### 代码规范检查

```powershell
.\CodeNormKit_Runner.ps1
```

### 生成 Package 索引

```powershell
.\GenKit_Runner.ps1
```

### 导出/导入 JSON

```powershell
.\JsonExportKit_Runner.ps1
```

### 查询 Package 信息

```powershell
.\PackageKit_Runner.ps1
```

## 配置

编辑 `ExternalConfig/setting.lua` 自定义路径配置。
