#!/bin/bash

# 自动 Git 同步脚本
# 作者：lyding1999（M4 MacBook）
# 日期：$(date '+%Y-%m-%d')
# 仓库路径（可根据实际修改）
REPO_PATH="$HOME/Documents/EPHE/logseq-notes"

# 进入仓库目录
cd "$REPO_PATH" || exit

# 拉取最新内容，防止冲突
git pull --rebase

# 添加所有更改
git add .

# 提交更改（附带时间戳）
git commit -m "📝 Auto sync on $(date '+%Y-%m-%d %H:%M:%S')" --allow-empty

# 推送到远程主分支
git push origin main
