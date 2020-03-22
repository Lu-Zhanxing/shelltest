#!/bin/bash
# 上面中的 #! 是一种约定标记, 它可以告诉系统这个脚本需要什么样的解释器来执行;

echo "连接远程仓库的分支情况（绿色的为当前分支）："
git branch 

git_branch()
{  read -p "是否切换分支？Y|N：" branch_switch
  if [ "$branch_switch" == "Y" ];then
#    git_name()
#    {
       read -p '请输入要切换的分支的名称（注意：1.请谨慎输入，如果输入有误的话将会提示“fatal：invalid reference”信息并且本程序将会退出，您需要重新开始！ 2.如果输入成功的话，将会提示“switched to branch ...”信息并且进入新的分支，您在本分支之内做的操作将不会上传到远程仓库）：
       ' branch_name 
       git switch -f $branch_name
#       if [[ "$branch_name" = "$(git branch)" ]];then
#       echo '请输入本地已连接的分支名称：'
#       git_name;
#       else
#       echo '切换分支成功，3秒后将关闭此页面.......'
       sleep 3
       exit
#       fi
#     }
#    git_name;
       
  echo '即将进行将本地工作空间的内容提交到远程仓库的一系列操作...'    
  elif [  "$branch_switch" == "N" ];then
       git add .
       read -p '请输入提交描述信息(注意：1.描述信息不能为空，必须输入！！！  2.如果您没有对工作空间的内容做任何操作，将会提示“nothing to commit, working tree clean ”信息)：
       ' commit_m
       git commit -m  $commit_m  
       echo '推送到远程仓库(注意：1.如果您没有对工作空间的内容做任何操作，将会提示“everything up-to-date”信息。2.如果您拉取到本地的不是远程仓库最新的数据，将会提示红色的“error”提示信息，此时您需要先运行pull.sh，将远程仓库最新代码拉取过来。)：'
       git push origin $(git rev-parse --abbrev-ref HEAD)
#      echo '您已成功推送至远程仓库，改页面将在三秒后关闭......'
      sleep 3s
      exit
  else
    echo '请按提示输入：'
    git_branch;
  fi
}
 git_branch;