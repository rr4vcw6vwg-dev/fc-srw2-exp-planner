#!/bin/zsh
set -e

cd "$(dirname "$0")"

echo "GitHub Pages push helper"
echo ""
echo "Before running this script, create an empty GitHub repository."
echo "Do not add README, .gitignore, or license in GitHub UI."
echo "If Git asks for password, paste a GitHub Personal Access Token instead of your account password."
echo "The token only needs Contents read/write permission for this repository."
echo ""
read "?Paste repository HTTPS URL, for example https://github.com/YOUR_NAME/fc-srw2-exp-planner.git: " REMOTE_URL

if [[ -z "$REMOTE_URL" ]]; then
  echo "Remote URL is required."
  exit 1
fi

if git remote get-url origin >/dev/null 2>&1; then
  git remote set-url origin "$REMOTE_URL"
else
  git remote add origin "$REMOTE_URL"
fi

git branch -M main
git push -u origin main

echo ""
echo "Push completed."
echo "Now open the GitHub repository:"
echo "Settings -> Pages -> Source: Deploy from a branch -> Branch: main -> Folder: /root"
