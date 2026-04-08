#!/bin/bash
# Deploy to GitHub Pages
FILE=${1:-"index.html"}
TOKEN=$(python3 -c "import json; d=json.load(open('.claude/settings.local.json')); print(d['env']['GITHUB_TOKEN'])")
mkdir -p /tmp/aa-deploy && cp "$FILE" /tmp/aa-deploy/index.html
cd /tmp/aa-deploy
git init && git config user.email "deploy@script.com" && git config user.name "Deploy"
git add index.html && git commit -m "Deploy $(date '+%Y-%m-%d')"
git branch -M main
git remote add origin "https://x-access-token:${TOKEN}@github.com/trickstero/antunovich-ai.git"
git push -f origin main
echo "🚀 https://trickstero.github.io/antunovich-ai"
