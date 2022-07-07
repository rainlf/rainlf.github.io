---
title: Ubuntu 安装Nacos
date: 2021-11-29 11:11:11
category: Linux
tag: [linux, ubuntu, nacos]
---

## 环境

> Ubuntu 20.04 LTS
>
> Nacos 2.0.3



## 说明

> 安装 Nacos 服务器，修改默认密码，配置数据库存储，以集群模式运行，参考 [官方文档](https://nacos.io/zh-cn/docs/quick-start.html)



## 步骤

### 数据库

> 创建 nacos 用户，授权使用 nacos 数据库

```mysql
CREATE DATABASE nacos;
CREATE USER 'nacos'@'%' IDENTIFIED BY '123456';
GRANT PRIVILEGES ON nacos.* TO 'nacos'@'%'
```

> 初始化数据库，使用 `conf/nacos-mysql.sql`

```sql
use nacos;
...
```

### 服务器

> 在 [Github Release](https://github.com/alibaba/nacos/releases) 下载安装文件，解压至各个应用目录

```shell
sudo tar xvf ~/nacos-server-2.0.3.tar.gz -C /opt/app/nacos/ && sudo mv /opt/app/nacos/nacos /opt/app/nacos/nacos-1
sudo tar xvf ~/nacos-server-2.0.3.tar.gz -C /opt/app/nacos/ && sudo mv /opt/app/nacos/nacos /opt/app/nacos/nacos-2
sudo tar xvf ~/nacos-server-2.0.3.tar.gz -C /opt/app/nacos/ && sudo mv /opt/app/nacos/nacos /opt/app/nacos/nacos-3
```

> 修改配置文件 `conf/cluster.conf`

```properties
localhost:8848
localhost:8858
localhost:8868
```

> 修改配置文件 `conf/application.properties`

```properties
# server.port=8848/8858/8868
db.num=1
db.url.0=jdbc:mysql://localhost:3306/nacos?characterEncoding=utf8&connectTimeout=1000&socketTimeout=3000&autoReconnect=true
db.user=nacos
db.password=123456
```

> 启动服务

```shell
cd /opt/app/nacos/nacos-1/ && sudo env PATH=$PATH ./bin/startup.sh
cd /opt/app/nacos/nacos-2/ && sudo env PATH=$PATH ./bin/startup.sh
cd /opt/app/nacos/nacos-1/ && sudo env PATH=$PATH ./bin/startup.sh
```



## 注意

> 服务启动莫名遇到 `bind failed` 问题，原因是 nacos 2.0 后默认占用了4个端口：
> server.port: 默认8848
> raft port: ${server.port} - 1000
> grpc port: ${server.port} + 1000
> grpc port for server: ${server.port} + 1001
> 会引起意想不到的端口占用问题
