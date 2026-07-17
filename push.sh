#!/bin/bash
# 一键推送到 GitHub（在本机终端运行此脚本）
set -e
cd "$(dirname "$0")"

echo "→ 同步 index.html ..."
cp life-quota.html index.html

echo "→ 提交改动 ..."
git add index.html life-quota.html .gitignore
git diff --cached --quiet || git commit -m "Update Life Quota app"

echo "→ 推送到 GitHub ..."
echo "  （若提示登录：Username 填 horizonpiu，Password 填新的 GitHub Token）"
git push -u origin main

echo ""
echo "✅ 推送成功！"
echo "   仓库: https://github.com/horizonpiu/life-quota"
echo "   开启 Pages: Settings → Pages → Branch 选 main → Save"
