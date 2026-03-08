@echo off
chcp 65001 >nul
echo ==========================================
echo  悦工助手 - GitHub Pages 部署脚本
echo ==========================================
echo.

REM 检查 Git 是否安装
git --version >nul 2>&1
if errorlevel 1 (
    echo [错误] 未检测到 Git，请先安装 Git
    echo 下载地址: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo [1/5] 正在初始化 Git 仓库...
git init
if errorlevel 1 (
    echo [错误] Git 初始化失败
    pause
    exit /b 1
)

echo.
echo [2/5] 正在添加文件到暂存区...
git add .
if errorlevel 1 (
    echo [错误] 添加文件失败
    pause
    exit /b 1
)

echo.
echo [3/5] 正在提交代码...
git commit -m "Initial commit: 悦工助手小程序项目"
if errorlevel 1 (
    echo [警告] 可能没有什么要提交的，继续...
)

echo.
echo [4/5] 配置远程仓库...
echo.
echo 请输入您的 GitHub 仓库地址:
echo 格式: https://github.com/用户名/yuegong-assistant.git
echo 或者: git@github.com:用户名/yuegong-assistant.git
echo.
set /p REPO_URL=仓库地址:

git remote remove origin 2>nul
git remote add origin %REPO_URL%
if errorlevel 1 (
    echo [错误] 添加远程仓库失败
    pause
    exit /b 1
)

echo.
echo [5/5] 正在推送到 GitHub...
git branch -M main
git push -u origin main
if errorlevel 1 (
    echo.
    echo [错误] 推送失败，可能原因：
    echo 1. 仓库地址错误
    echo 2. 未配置 GitHub 账号
    echo 3. 网络连接问题
    echo.
    echo 请检查后重试，或手动执行：
    echo   git push -u origin main
    pause
    exit /b 1
)

echo.
echo ==========================================
echo  ✅ 代码已成功推送到 GitHub！
echo ==========================================
echo.
echo 下一步：启用 GitHub Pages
echo.
echo 1. 访问: %REPO_URL%
echo 2. 点击 Settings 标签
echo 3. 左侧选择 Pages
echo 4. Source 选择 "Deploy from a branch"
echo 5. Branch 选择 "main"，文件夹选择 "/docs"
echo 6. 点击 Save
echo.
echo 等待 1-2 分钟后，访问：
echo   https://你的用户名.github.io/yuegong-assistant
echo.
pause
