---
title: Docker 部署 redis
tag: [docker, redis]
date: 2022-02-18 18:22:11
category: Docker
---



## 说明

`Docker` 部署`redis`服务器，配置密码认证登陆。



## 步骤

下载镜像

```shell
sudo docker pull redis:latest
```

执行命令

```shell
sudo docker -d --name redis-server -p 6379:6379 redis:latest --appendonly yes --requirepass "123456"
```

登陆测试

```shell
redis-cli -h localhost -p 6379
localhost:6379> auth 123456
OK
```

