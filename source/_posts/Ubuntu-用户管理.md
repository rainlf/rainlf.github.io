---
title: Ubuntu 用户管理
date: 2021-11-29 11:11:11
category: Linux
tag: [linux]
---

## 环境
> Ubuntu 20.04 LTS


## 操作
> 新建用户，指定工作目录，指定 Shell
```shell
useradd -d /home/rain -m -s /bin/bash rain
```

> 配置密码
```shell
passwd rain
```

> 为用户添加组
```shell
usermod -a -G <group> rain
```

> 删除用户时执行（会同时删除主目录）
```shell
userdel rain
```



