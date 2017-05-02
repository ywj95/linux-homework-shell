#!/bin/bash
for user in $(more users.txt)
#读取文件中的内容并赋值给user
do
if [ -n "$user"  ]
#判断用户名是否为空，若为空则跳过操作直接执行else
then
useradd -m $user
echo "user added:$user password is 123456"
echo $user:123456 | chpasswd
#给所有的新用户赋值初始密码：123456
else
  echo "The username is null!"
fi
done



