# SyncFreight 物流协同管理系统

一个基于腾讯云开发的物流货单管理系统，支持多用户协同操作、数据实时同步和安全认证。

## 🚀 快速开始

### 1. 开启用户名密码登录

在云开发控制台完成以下配置：

1. 访问：[身份认证 → 登录方式](https://tcb.cloud.tencent.com/dev?envId=harmony-dev-6g2lhfsb3507b9c4#/identity/login-manage)
2. 找到「用户名密码登录」，打开开关
3. 保存配置

### 2. 创建员工账号

在云开发控制台添加用户：

1. 访问：[身份认证 → 用户管理](https://tcb.cloud.tencent.com/dev?envId=harmony-dev-6g2lhfsb3507b9c4#/identity)
2. 点击「创建用户」
3. 选择「用户名密码」方式
4. 填写用户名和密码（例如：zhangsan / 123456）
5. 保存用户

### 3. 部署到云开发

#### 方式一：使用控制台上传（推荐新手）

1. 访问：[静态网站托管](https://tcb.cloud.tencent.com/dev?envId=harmony-dev-6g2lhfsb3507b9c4#/static-hosting)
2. 点击「上传文件」
3. 选择 `index.html` 文件上传
4. 访问默认域名：`https://harmony-dev-6g2lhfsb3507b9c4-1416977858.tcloudbaseapp.com/index.html`

#### 方式二：使用命令行部署

```bash
# 安装 CloudBase CLI
npm install -g @cloudbase/cli

# 登录
tcb login

# 部署
tcb hosting deploy index.html -e harmony-dev-6g2lhfsb3507b9c4
```

## 📊 数据库结构

系统自动创建了两个数据库集合：

### users 集合
- 存储用户基本信息
- 权限：仅管理员可访问

### shipments 集合
- 存储所有货单数据
- 字段包括：
  - `currentData`: 当前货单数据
  - `history`: 历史修改记录
  - `updatedAt`: 更新时间
  - `createdBy`: 创建人
- 权限：登录用户可读，管理员可写

## 🔐 安全配置

系统已自动配置安全规则：

- **users 集合**: `ADMINONLY` - 只有管理员可以访问
- **shipments 集合**: `ADMINWRITE` - 登录用户可读，管理员可写

## 🎯 功能特性

### ✅ 已实现
- 用户登录认证（用户名+密码）
- 货单创建、编辑、删除
- 实时数据同步到云端
- 历史修改记录追踪
- 利润自动计算
- Excel 导出功能
- 响应式设计，支持移动端

### 🔜 计划中
- 货单搜索和筛选
- 数据统计报表
- 批量导入导出
- 消息通知
- 权限分级管理

## 🛠️ 开发环境

- **前端框架**: React 18
- **样式**: Tailwind CSS
- **后端服务**: 腾讯云开发 CloudBase
- **数据库**: CloudBase NoSQL 数据库
- **认证**: CloudBase 身份认证

## 📝 使用说明

### 登录
1. 打开系统网址
2. 输入管理员分配的用户名和密码
3. 点击「登录」按钮

### 创建货单
1. 登录后点击「新建一票货」
2. 填写货单信息（工作单号为必填项）
3. 系统自动计算计费重、应收、应付和利润
4. 点击「保存为新版 & 退出」

### 编辑货单
1. 在看板中点击货单卡片
2. 修改需要更新的字段
3. 点击任意空白处记录历史版本
4. 保存退出

### 导出 Excel
1. 打开任意货单
2. 点击「导出专业版Excel」
3. 自动下载包含完整信息的 Excel 文件

## 🆘 常见问题

### Q: 登录失败怎么办？
A: 
1. 检查用户名和密码是否正确
2. 确认已在控制台开启「用户名密码登录」
3. 确认用户已创建且状态正常

### Q: 数据无法保存？
A:
1. 确认已成功登录
2. 检查网络连接
3. 查看浏览器控制台错误信息

### Q: 如何添加新用户？
A: 
1. 登录云开发控制台
2. 进入「身份认证」→「用户管理」
3. 点击「创建用户」添加新账号

### Q: 数据安全吗？
A: 
1. 所有数据存储在腾讯云服务器
2. 采用 HTTPS 加密传输
3. 需要登录认证才能访问
4. 数据库设置了安全规则

## 📞 技术支持

- **云开发文档**: https://cloud.tencent.com/document/product/876
- **CloudBase SDK 文档**: https://docs.cloudbase.net/
- **问题反馈**: 在 GitHub 仓库提交 Issue

## 📄 许可证

MIT License

---

**环境信息**
- 环境ID: `harmony-dev-6g2lhfsb3507b9c4`
- 套餐: 体验版（免费）
- 到期时间: 2026-09-28
- 区域: ap-shanghai
