#!/bin/bash
# 上面中的 #! 是一种约定标记, 它可以告诉系统这个脚本需要什么样的解释器来执行;

echo "自动提交开始......"
git add .
#echo "git提交注释:$1"
read -p "请输入commit提示信息：" commit_m
git commit -m $commit_m
echo '将本地内容推送到远程仓库：'
git push origin $(git rev-parse --abbrev-ref HEAD)
#echo "自动提交完成"
sleep 3s