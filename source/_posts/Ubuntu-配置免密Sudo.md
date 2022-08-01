---
title: Ubuntu 配置免密Sudo
date: 2021-11-29 11:11:11
category: Linux
tag: [linux, config]
---

## 环境
> Ubuntu 20.04 LTS  



## 说明

> 切记使用 `sudo visudo` 命令!
> 取消 Linux 普通用户在使用 sudo 命令时，要求输入密码的步骤
> 取消 sudo 命令对 env 的重置
> 指定 sudo 命令执行时的安全路径



## 方案一

> 修改配置文件

```shell
sudo visudo
```

> 编辑内容

```properties
# 取消 env 重置
Defaults        !env_reset
# 指定默认编辑器
Defaults        editor=/usr/bin/vim
# 指定安全 PATH
Defaults secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"
# 取消输入密码，在最后一行添加
rain  ALL=(ALL:ALL) NOPASSWD:ALL
```

> 保存退出，visudo 默认使用 nano 编辑器

```shell
执行 ctrl+o
提示 File Name to Write: /etc/sudoers.tmp
执行 enter
执行 ctrl+x
```

## 方案二
在`/etc/sudoers.d/`目录下新增文件`sudo_rain`，内容为
```shell
rain  ALL=(ALL:ALL) NOPASSWD:ALL
```