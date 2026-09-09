# Codex Prompt - Core Framework

继续开发 MinimalShop.NET。

目标：

创建 .NET 10 Minimal API 基础框架。

要求：

技术：

- .NET 10
- ASP.NET Core Minimal API
- EF Core 10
- PostgreSQL
- Redis
- Swagger

架构：

采用 Feature Folder。

禁止：

- Controller
- Service 接口层
- Repository模式
- DDD复杂设计

目录：

src/

MinimalShop.Api

MinimalShop.Core

MinimalShop.Infrastructure

实现：

- Program.cs
- DbContext
- PostgreSQL连接
- Entity基础配置
- 全局Result返回
- 异常处理中间件

完成后再进入商品和订单模块。
