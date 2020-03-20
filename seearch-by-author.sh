read -p '请输入向远程仓库提交文件的邮箱号：'  email_number
# echo '该邮箱账号提交过的历史记录如下：'
sleep 3s
git log --author=$email_number
sleep 3s
exit
