---
title: Ubuntu 安装Redis
date: 2021-11-29 11:11:11
category: Linux
tag: [linux, redis]
---

## 环境

> Ubuntu 20.04 LTS
>
> Redis 4.0.9



## 说明

> 安装 Redis Server，配置密码，并允许外网访问



## 步骤

> 安装 redis-server

```shell
sudo apt install -y redis-server
```

> 修改配置文件

```shell
sudo vi /etc/redis/redis.conf
```

> 找到对应行，修改内容为

```shell
bind 0.0.0.0 ::1
protected-mode no
requirepass 123456
```

> 重启服务

```shell
sudo service redis-server restart
```

