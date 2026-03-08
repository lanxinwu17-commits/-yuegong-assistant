# 悦工助手 - 项目展示页面

## 在线预览

🔗 **预览地址**: https://your-username.github.io/yuegong-assistant

## 本地预览

```bash
# 方式1：直接用浏览器打开
open index.html

# 方式2：使用本地服务器
npx serve .
```

## 页面内容

- 📱 小程序码展示（扫码体验）
- 🎓 快速体验账号（手机号 + 验证码）
- ✨ 核心功能介绍（6大功能模块）
- 🛠️ 技术栈说明
- 📸 界面截图展示
- 📊 项目数据统计

## 部署方式

### 推荐：GitHub Pages

1. 将整个 `docs` 文件夹推送到 GitHub 仓库
2. 仓库设置 → Pages → Source 选择 `/docs` 目录
3. 访问 `https://your-username.github.io/yuegong-assistant`

### 备选：Gitee Pages

适合国内访问，部署方式类似。

## 定制修改

### 替换二维码

将真实的小程序码图片保存为 `docs/images/qr-code.png`，然后修改 `index.html`：

```html
<div class="qr-code">
    <img src="images/qr-code.png" alt="小程序码">
</div>
```

### 替换截图

将小程序截图放入 `docs/images/` 目录，然后在 `index.html` 中引用。

## 面试使用建议

1. **提前部署** - 确保链接可以正常访问
2. **扫码测试** - 确认小程序码可以正常扫码进入
3. **准备备份** - 同时准备电脑本地版本，防止网络问题
4. **打印PDF** - 可导出为PDF作为纸质备份

## 文件结构

```
docs/
├── index.html      # 展示页面
├── DEPLOY.md       # 部署指南
├── README.md       # 本文件
└── images/         # 截图和二维码（需自行添加）
    ├── qr-code.png
    ├── login.png
    ├── home.png
    └── ...
```

---

**祝你面试顺利！** 🎉
