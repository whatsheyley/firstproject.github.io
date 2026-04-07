@echo off
REM SyncFreight 部署脚本 (Windows)
REM 使用方法: 双击运行 deploy.bat

echo ========================================
echo   SyncFreight 部署脚本
echo ========================================
echo.

REM 检查是否安装了 cloudbase CLI
where tcb >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [INFO] 未检测到 CloudBase CLI，正在安装...
    npm install -g @cloudbase/cli
)

echo [INFO] 检查登录状态...
call tcb login

echo.
echo [INFO] 上传文件到静态托管...
call tcb hosting deploy index.html -e harmony-dev-6g2lhfsb3507b9c4

echo.
echo ========================================
echo   部署完成！
echo ========================================
echo.
echo 访问地址：
echo https://harmony-dev-6g2lhfsb3507b9c4-1416977858.tcloudbaseapp.com/index.html
echo.
echo 下一步操作：
echo 1. 开启用户名密码登录：https://tcb.cloud.tencent.com/dev?envId=harmony-dev-6g2lhfsb3507b9c4#/identity/login-manage
echo 2. 创建员工账号：https://tcb.cloud.tencent.com/dev?envId=harmony-dev-6g2lhfsb3507b9c4#/identity
echo.
pause
