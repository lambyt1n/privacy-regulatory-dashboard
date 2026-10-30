#!/bin/bash
# 一键推送脚本
# 用法: bash deploy.sh <GITHUB_TOKEN> <USERNAME>

set -e

TOKEN=$1
USERNAME=$2
REPO="privacy-regulatory-dashboard"

if [ -z "$TOKEN" ] || [ -z "$USERNAME" ]; then
    echo "用法: bash deploy.sh <GITHUB_TOKEN> <GITHUB_USERNAME>"
    exit 1
fi

cd "$(dirname "$0")"

# Init git if not already
if [ ! -d .git ]; then
    git init
    git branch -M main
fi

git add .
git commit -m "Update privacy dashboard - $(date +%Y-%m-%d)" || true

# Configure remote with token
git remote remove origin 2>/dev/null || true
git remote add origin "https://${USERNAME}:${TOKEN}@github.com/${USERNAME}/${REPO}.git"

# Push
git push -u origin main --force

echo ""
echo "推送完成！看板地址: https://${USERNAME}.github.io/${REPO}/"
echo "可能需要 1-2 分钟才能生效"
