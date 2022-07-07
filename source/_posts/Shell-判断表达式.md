---
title: Shell 判读逻辑
date: 2022-07-07 19:56:52
tag: [linux, shell]
---

## 语法
```shell
[ 表达式 ] && echo yes || echo no
```

## 按文件类型判断
```shell
-e <file>       # 判断是否存在
-d <file>       # 判断是否存在，并且为目录文件
-f <file>       # 判断是否存在，并且为普通文件
-s <file>       # 判断是否存在，并且为非空
-p <file>       # 判断是否存在，并且为管道文件
-b <file>       # 判断是否存在，并且为块设备文件
-c <file>       # 判断是否存在，并且为符号设备文件
-L <file>       # 判断是否存在，并且为符号链接文件
-S <file>       # 判断是否存在，并且为套接字文件
```

## 按文件权限判断
```shell
-r <file>       # 判断是否存在，并且拥有读权限
-w <file>       # 判断是否存在，并且拥有写权限
-x <file>       # 判断是否存在，并且拥有执行权限
-u <file>       # 判断是否存在，并且拥有SUID权限
-g <file>       # 判断是否存在，并且拥有SGID权限
-k <file>       # 判断是否存在，并且拥有SBit权限
```

## 按文件比较判断
```shell
<file1> -nt <file2>     # 判断file1是否 比file2修改时间新
<file1> -ot <file2>     # 判断file1是否 比file2修改时间旧
<file1> -ef <file2>     # 判断file1是否 与file2Inode号一致（同一文件）
```

## 数字比较
```shell
<num1> -eq <num2>       # 判断num1是否等于num1
<num1> -ne <num2>       # 判断num1是否不等于num1
<num1> -gt <num2>       # 判断num1是否大于num1
<num1> -lt <num2>       # 判断num1是否小于num1
<num1> -ge <num2>       # 判断num1是否大于等于num1
<num1> -le <num2>       # 判断num1是否小于等于num1
```

## 数字比较
```shell
-z <string>         # 判断字符串是否为空
-n <string>         # 判断字符串是否非空
<string1> == <string2>         # 判断字符串是否相等
<string1> != <string2>         # 判断字符串是否不等
```

## 组合判断
```shell
<condition1> -a <condition2>    # 逻辑与
<condition1> -o <condition2>    # 逻辑或
! <condition1>                  # 逻辑取反
```
