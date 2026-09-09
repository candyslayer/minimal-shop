# MinimalShop.NET Upgrade Roadmap

目标：将 minimal-shop 升级为轻量微信小程序商城模板。

技术栈：

- .NET 10 Minimal API
- EF Core 10
- PostgreSQL
- Redis
- Docker

设计原则：

- 单体应用
- Feature Folder
- 不使用 Controller
- 不使用 Service/Repository 过度封装
- AI 可持续维护

## 开发阶段

1. 基础框架
   - Solution
   - Minimal API
   - PostgreSQL
   - EF Core

2. 核心商城
   - 用户
   - 商品
   - SKU
   - 分类
   - 购物车
   - 订单

3. 营销能力
   - 秒杀
   - 拼团
   - 优惠券
   - 积分

4. 社交电商
   - 分销关系
   - 佣金
   - 提现

5. 部署
   - Docker Compose
   - Redis
   - PostgreSQL
