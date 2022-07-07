---
title: Ubuntu 安装MongoDB
date: 2021-11-29 11:11:11
category: Linux
tag: [linux, mongodb]
---

## 环境

> Ubuntu 20.04 LTS
>
> MongDB 5.0.3



## 说明

> 使用单机搭建 mongodb repliceset 三节点伪集群



## 步骤

### 安装

> 安装 mongodb，参考[官方文档](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/)

```shell
## 导入公钥
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
## 新建 apt mongodb 源
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
## 官方源速度过慢，可使用阿里云 apt mongdb 源
echo "deb [ arch=amd64,arm64 ] https://mirrors.aliyun.com/mongodb/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
## 更新 apt 源
sudo apt update
## 安装 mongodb
sudo apt install -y mongodb-org
```

> 创建目录

```shell
sudo mkdir -p /opt/app/mongodb/{db1,db2,db3}/{data,etc,log}
```

> 配置文件

```shell
# db1: /opt/app/mongodb/db1/etc/mongodb.conf
dbpath=/opt/app/mongodb/db1/data
logpath=/opt/app/mongodb/db1/log/mongodb.log
logappend=true
journal=true
bind_ip=0.0.0.0
port=27017

# db2: /opt/app/mongodb/db2/etc/mongodb.conf
dbpath=/opt/app/mongodb/db2/data
logpath=/opt/app/mongodb/db2/log/mongodb.log
logappend=true
journal=true
bind_ip=0.0.0.0
port=27018

# db3: /opt/app/mongodb/db3/etc/mongodb.conf
dbpath=/opt/app/mongodb/db3/data
logpath=/opt/app/mongodb/db3/log/mongodb.log
logappend=true
journal=true
bind_ip=0.0.0.0
port=27019
```

### 认证配置

> 启动服务

```shell
sudo mongod -f /opt/app/mongodb/db1/etc/mongodb.conf --replSet rs &
sudo mongod -f /opt/app/mongodb/db2/etc/mongodb.conf --replSet rs &
sudo mongod -f /opt/app/mongodb/db3/etc/mongodb.conf --replSet rs &
```

> 登陆

```shell
mongo --host localhost --port 27017
```

> 配置认证

```shell
## 创建 admin 库的 root 用户
> use admin
> db.createUser({user: 'root', pwd: '123456', roles:[{role: 'userAdminAnyDatabase', db: 'admin'}, {role: 'readWriteAnyDatabase', db:'admin', {role: 'clusterAdmin', db:'admin'}}]})
```

> keyfile配置

```shell
## 创建 keyfile
echo `openssl rand -base64 756` | sudo tee /opt/app/mongodb/keyfile
sudo chmod 400 /opt/app/mongodb/keyfile

## 配置文件中添加参数，并重启服务
auth=true
keyfile=/opt/app/mongodb/keyfile
```

### 副本集配置

> 登陆其中一个节点

```shell
mongo --host localhost --port 27017 -u root -p
```

> 配置副本集

```shell
## 配置
> config = {_id: 'rs', members: [{_id: 0, host: 'localhost:27017'},{_id: 1, host: 'localhost:27018'},{_id: 2, host:'localhost:27019'}]}
> rs.initiate(config)

## 查看
> rs.status()
```

> 修改副本集配置

```shell
# 例: 修改node端口
## 获取配置
> cfg=rs.conf()
## 修改配置
> cfg.members[0].host="localhost:27017"
## 覆盖配置
> rs.reconfig(cfg)
## 非primary节点需要执行
> rs.reconfig(cfg, {force : true})
```

