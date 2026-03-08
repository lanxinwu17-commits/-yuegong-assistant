# 项目展示页面部署指南

## 方案一：GitHub Pages（推荐）

### 步骤

1. **创建 GitHub 仓库**
   - 访问 https://github.com/new
   - 仓库名称：`yuegong-assistant`
   - 选择 Public（公开）
   - 创建仓库

2. **上传代码**
   ```bash
   # 在项目根目录执行
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin https://github.com/your-username/yuegong-assistant.git
   git push -u origin main
   ```

3. **启用 GitHub Pages**
   - 进入仓库 → Settings → Pages
   - Source 选择 "Deploy from a branch"
   - Branch 选择 "main"，文件夹选择 "/docs"
   - 点击 Save
   - 等待 1-2 分钟，访问 `https://your-username.github.io/yuegong-assistant`

### 优点
- 免费、稳定
- 自动 HTTPS
- 自定义域名支持

---

## 方案二：Gitee Pages（国内访问快）

### 步骤

1. **创建 Gitee 仓库**
   - 访问 https://gitee.com/new
   - 仓库名称：`yuegong-assistant`
   - 选择公开
   - 创建仓库

2. **上传代码**（同 GitHub）

3. **启用 Gitee Pages**
   - 进入仓库 → 服务 → Gitee Pages
   - 部署目录选择 `docs`
   - 点击启动
   - 访问 `https://your-username.gitee.io/yuegong-assistant`

### 优点
- 国内访问速度快
- 免费

---

## 方案三：Vercel（高性能）

### 步骤

1. **导入项目**
   - 访问 https://vercel.com/new
   - 导入 GitHub 仓库
   - Framework Preset 选择 "Other"
   - 点击 Deploy

2. **自动部署**
   - 每次推送代码自动重新部署
   - 访问 `https://yuegong-assistant.vercel.app`

### 优点
- 全球 CDN 加速
- 自动部署
- 性能优秀

---

## 方案四：本地展示

如果只是面试展示，可以直接本地打开：

```bash
# 进入 docs 目录
cd docs

# 用浏览器打开 index.html
# 或者使用本地服务器
npx serve .
```

---

## 展示页面使用说明

### 面试前准备

1. **替换二维码**
   - 将 `docs/index.html` 中的二维码区域替换为真实的小程序码
   - 或者面试时直接展示手机上的小程序码

2. **添加截图**
   - 将小程序界面截图放入 `docs/images/` 目录
   - 在 `index.html` 中替换截图占位符

3. **修改链接**
   - 将页脚 GitHub 链接改为真实仓库地址
   - 添加联系方式（可选）

### 面试时使用

**方式1：展示链接**
```
"这是我的项目展示页面，您可以在手机浏览器中打开查看详细介绍：
https://your-username.github.io/yuegong-assistant"
```

**方式2：展示电脑屏幕**
```
直接打开电脑上的 index.html 文件，向面试官展示项目介绍
```

**方式3：打印成PDF**
```
浏览器打印 → 保存为 PDF → 面试时展示
```

---

## 页面内容定制

### 修改二维码

找到以下代码，替换为真实的小程序码图片：

```html
<div class="qr-code">
    <!-- 替换为真实的小程序码 -->
    <img src="images/qr-code.png" alt="小程序码" style="width: 100%; height: 100%;">
</div>
```

### 修改截图

找到以下代码，替换为真实截图：

```html
<div class="screenshots">
    <div class="screenshot">
        <img src="images/login.png" alt="登录页面">
    </div>
    <!-- ... -->
</div>
```

### 修改项目信息

在页面底部修改项目统计信息：

```html
<div>
    <strong>开发周期：</strong>2 周
</div>
<div>
    <strong>代码行数：</strong>8000+
</div>
```

---

## 高级功能（可选）

### 添加 Google Analytics

在 `<head>` 标签内添加：

```html
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_MEASUREMENT_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_MEASUREMENT_ID');
</script>
```

### 添加自定义域名

**GitHub Pages:**
1. 在 `docs` 目录创建 `CNAME` 文件
2. 内容填写你的域名，如：`yuegong.yourname.com`
3. 在域名服务商添加 CNAME 记录指向 `your-username.github.io`

---

## 快速部署命令

```bash
# 1. 确保代码已提交到 GitHub

# 2. 启用 GitHub Pages（只需一次）
# 在仓库设置中开启

# 3. 访问链接
open https://your-username.github.io/yuegong-assistant
```

---

**推荐选择：GitHub Pages，免费稳定，技术面试认可度最高。**