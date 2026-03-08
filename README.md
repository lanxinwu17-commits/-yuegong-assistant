[README.md](https://github.com/user-attachments/files/25822701/README.md)
# 悦工助手 - 企业人事流程管理平台

[![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-Live-brightgreen)](https://your-username.github.io/yuegong-assistant)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)

> 面向中大型企业的智能人事流程管理小程序，提供员工入职、转正、离职全生命周期管理，以及劳动关系知识库服务。

## 🌐 在线预览

**项目展示页**: https://your-username.github.io/yuegong-assistant

扫码体验小程序：

![小程序码](docs/images/qr-code.png)

> 体验账号：任意手机号 + 验证码 `123456`

## ✨ 核心功能

### 📋 全流程入职办理
- 实习生/正式员工入职流程
- 资料填写与证件上传
- 电子签名画板
- 协议在线签署

### 🤖 AI 智能助手
- 意图识别（知识查询/流程咨询/风险评估）
- 劳动法规智能问答
- 个性化风险预警

### 🎯 场景感知系统
- 时间感知（工作时间推荐）
- 流程感知（自动提醒待办）
- 行为感知（个性化推荐）

### 📚 劳动关系知识库
- 法规政策研究
- 典型案例分析
- 实务操作指南

## 🛠️ 技术栈

### 前端
- **框架**: 微信小程序原生开发
- **样式**: CSS3 + 自定义动画
- **架构**: 组件化设计 + 工具函数封装

### 后端
- **Runtime**: Node.js
- **Framework**: Express.js
- **Auth**: JWT Token
- **SMS**: 腾讯云短信服务

### 部署
- **Static**: GitHub Pages
- **Server**: Docker + Nginx

## 📁 项目结构

```
yuegong-assistant/
├── components/          # 公共组件
│   ├── common/          # 通用组件
│   └── business/        # 业务组件
├── pages/               # 页面
│   ├── common/          # 公共页面
│   ├── employee/        # 员工端
│   ├── manager/         # 经理端
│   └── hr/              # HR端
├── utils/               # 工具函数
│   ├── ai-assistant.js  # AI助手
│   ├── context-aware.js # 场景感知
│   ├── animation.js     # 动画库
│   └── app-constants.js # 常量管理
├── server/              # 后端服务
│   ├── routes/          # API路由
│   ├── sms-service.js   # 短信服务
│   └── Dockerfile       # 容器配置
├── docs/                # 项目展示页
│   ├── index.html       # 展示页面
│   └── images/          # 截图和二维码
└── README.md            # 本文件
```

## 🚀 快速开始

### 前端

```bash
# 1. 使用微信开发者工具打开项目
# 2. 点击 "预览" 生成二维码
# 3. 手机扫码体验
```

### 后端（可选）

```bash
cd server
npm install
npm start
```

访问 http://localhost:3000/health 检查服务状态

## 📱 功能演示

| 页面 | 功能描述 |
|------|----------|
| 登录页 | 手机号验证码登录，支持固定验证码演示模式 |
| 首页 | 智能问候、待办任务、快捷入口 |
| 入职流程 | 5步入职引导，文件上传，电子签名 |
| AI助手 | 智能问答，劳动法规咨询 |
| 知识库 | 法规查询，案例学习 |

## 🎓 面试展示要点

### 技术亮点
1. **防抖节流优化** - 搜索输入 300ms 防抖
2. **CSS变量管理** - 统一设计系统
3. **组件化设计** - 高复用性组件
4. **动画效果库** - 丰富的过渡动画
5. **场景感知** - 基于用户行为的智能推荐

### 项目难点
- 表单验证与状态管理（5步入职流程）
- AI意图识别与知识库匹配
- 多端角色权限控制（员工/经理/HR）

## 📄 相关文档

- [项目展示页](https://your-username.github.io/yuegong-assistant) - 在线预览
- [部署指南](docs/DEPLOY.md) - 部署说明
- [企业接入方案](ENTERPRISE-GUIDE.md) - 企业使用指南
- [开发文档](server/SETUP-GUIDE.md) - 后端配置

## 🔧 开发计划

- [x] 登录注册模块
- [x] 入职流程办理
- [x] AI智能助手
- [x] 场景感知系统
- [x] 知识库模块
- [ ] 转正/离职流程
- [ ] 企业微信集成
- [ ] 数据报表分析

## 🤝 贡献

欢迎提交 Issue 和 PR！

## 📄 License

[MIT](LICENSE)

---

**祝你面试顺利！** 🎉

如有问题，欢迎联系交流。
