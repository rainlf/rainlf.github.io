---
title: Ubuntu 20.04 用户管理
date: 2021-11-29 11:11:11
category: Ubuntu
tag: [linux, ubuntu]
---

## 环境

> Ubuntu 20.04 LTS



## 说明

> Linux 默认提供 root 用户，但日常使用时推荐使用拥有 sudo 权限的普通用户



## 步骤

> 新建用户，指定工作目录，指定 Shell

```shell
useradd -d /home/admin -m -s /bin/bash admin
```

> 配置密码

```shell
passwd admin
```

> 删除用户时执行（会同时删除主目录）

```shell
userdel admin
```



