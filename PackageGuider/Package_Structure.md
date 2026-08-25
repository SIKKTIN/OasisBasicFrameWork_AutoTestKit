# Package 目录结构规范

每个业务包必须遵循以下目录结构，即使为空也必须保留相应文件和文件夹。

---

## 标准结构

```
Withdraw/Script/Package/<PackageName>/
├── Package_Meta.lua       -- ★ 必须：包元数据
├── Adapter.lua           -- ★ 必须：适配层
├── Registry_<Name>.lua   -- ★ 必须：注册表
└── Data/                 -- ★ 必须：配置区根目录
    ├── Defines/          -- ★ 必须：类型定义（即使为空）
    │   └── .gitkeep
    └── Configs/          -- ★ 必须：运行时配置（即使为空）
        └── .gitkeep
```

---

## 必须项说明

| # | 文件/文件夹 | 位置 | 说明 |
|---|-----------|------|------|
| 1 | `Package_Meta.lua` | 根目录 | 包元数据，描述依赖和私有数据契约 |
| 2 | `Adapter.lua` | 根目录 | 适配层，封装引擎/BP 接口调用 |
| 3 | `Registry_<Name>.lua` | 根目录 | 注册表，管理物品/Buff/Entity 注册 |
| 4 | `Data/` | 子目录 | 配置区根目录 |
| 5 | `Data/Defines/` | 子目录 | 类型定义，必须存在 |
| 6 | `Data/Configs/` | 子目录 | 运行时配置，必须存在 |

---

## 文件夹用途

| 文件夹 | 用途 | 典型文件示例 |
|--------|------|------------|
| `Data/Defines/` | 类型定义、枚举、结构体声明 | `Defines_Item.lua` |
| `Data/Configs/` | 运行时可调数值表 | `Config_Withdraw.lua` |

---

## 空包示例

创建新包时，至少包含以下文件（内容可为空但文件必须存在）：

```
Withdraw/Script/Package/<NewPackage>/
├── Package_Meta.lua
├── Adapter.lua
├── Registry_<NewPackage>.lua
└── Data/
    ├── Defines/
    │   └── .gitkeep
    └── Configs/
        └── .gitkeep
```

---

## .gitkeep 说明

空文件夹必须包含 `.gitkeep` 文件，以确保文件夹被 git 追踪。

---

## 可选子目录

除上述必须项外，可根据业务需求添加：

| 文件夹 | 用途 |
|--------|------|
| `System/` | 核心系统逻辑 |
| `Service/` | 服务层 |
| `Model/` | 数据模型 |
| `Handler/` | 事件处理器 |
| `Query/` | 查询接口 |

---

## 变更历史

| 版本 | 日期 | 说明 |
|------|------|------|
| 1.0 | 2026-08-25 | 初始版本，定义必须文件和目录结构 |
