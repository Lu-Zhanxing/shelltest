#!/bin/bash
# 上面中的 #! 是一种约定标记, 它可以告诉系统这个脚本需要什么样的解释器来执行;

echo "自动提交开始......"
git add .
read -p "请输入commit提示信息：" commit_m
git commit -m $commit_m
git push origin $(git rev-parse --abbrev-ref HEAD)
sleep 3s