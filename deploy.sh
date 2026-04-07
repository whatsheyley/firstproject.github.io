#!/bin/bash

# SyncFreight 部署脚本
# 使用方法: ./deploy.sh

echo "🚀 开始部署 SyncFreight 到云开发..."

# 检查是否安装了 cloudbase CLI
if ! command -v tcb &> /dev/null
then
    echo "📦 未检测到 CloudBase CLI，正在安装..."
    npm install -g @cloudbase/cli
fi

# 检查是否已登录
echo "🔐 检查登录状态..."
tcb login

# 部署文件
echo "📤 上传文件到静态托管..."
tcb hosting deploy index.html -e harmony-dev-6g2lhfsb3507b9c4

echo "✅ 部署完成！"
echo ""
echo "🌐 访问地址："
echo "https://harmony-dev-6g2lhfsb3507b9c4-1416977858.tcloudbaseapp.com/index.html"
echo ""
echo "📋 下一步操作："
echo "1. 开启用户名密码登录：https://tcb.cloud.tencent.com/dev?envId=harmony-dev-6g2lhfsb3507b9c4#/identity/login-manage"
echo "2. 创建员工账号：https://tcb.cloud.tencent.com/dev?envId=harmony-dev-6g2lhfsb3507b9c4#/identity"
echo ""
