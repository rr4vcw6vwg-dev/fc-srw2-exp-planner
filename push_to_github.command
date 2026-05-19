#!/bin/zsh
set -u

cd "$(dirname "$0")"

pause_before_exit() {
  echo ""
  echo "按回车键关闭这个窗口。"
  read
}

trap pause_before_exit EXIT

REMOTE_URL="https://github.com/rr4vcw6vwg-dev/fc-srw2-exp-planner.git"

echo "GitHub Pages push helper"
echo ""
echo "Repository: ${REMOTE_URL}"
echo "If Git asks for password, paste a GitHub Personal Access Token instead of your account password."
echo "The token only needs Contents read/write permission for this repository."
echo ""

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REMOTE_URL"
else
  git remote add origin "$REMOTE_URL"
fi

git branch -M main
if ! git push -u origin main; then
  echo ""
  echo "Push failed."
  echo "常见原因："
  echo "1. GitHub 没有弹出登录授权。"
  echo "2. Password 位置没有填写 Personal Access Token。"
  echo "3. Token 没有 Contents read/write 权限。"
  echo ""
  echo "你也可以把这个窗口里的错误信息发给我。"
  exit 1
fi

echo ""
echo "Push completed."
echo "Now open the GitHub repository:"
echo "Settings -> Pages -> Source: Deploy from a branch -> Branch: main -> Folder: /root"
