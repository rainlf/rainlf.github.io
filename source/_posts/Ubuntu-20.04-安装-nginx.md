---
title: Ubuntu 20.04 安装 nginx
date: 2021-11-29 11:11:11
category: Ubuntu
tag: [linux, ubuntu, nginx]
---

## 环境

> Ubuntu 20.04 LTS
>
> Nginx 1.14.0



## 说明

> 安装 Nginx Web 服务器



## 步骤

> 安装

```shell
sudo apt install -y nginx
```

> 配置信息

```
/etc/nginx/nginx.conf
```

> 默认静态资源目录

```
/var/www/html/
```

> 启动

```shell
service nginx start
```

