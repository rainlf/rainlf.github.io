---
title: Ubuntu 安装PostgreSQL
date: 2022-02-08 17:03:13
category: Linux
tag: [linux, postgresql]
---


## 环境

> Ubuntu 20.04 LTS  
>
> PostgresQL 14.1



## 说明

安装`postgresql`服务器，配置远程访问。



## 步骤

安装`postgresql`，参考 https://www.postgresql.org/download/linux/ubuntu/

```shell
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql
```

查看版本

```shell
sudo -u postgres psql -c "select version()";
```

配置角色（仅仅超级用户和拥有`CREATEROLE`权限的角色可以创建新角色）

```sql
# 登陆db
sudo -u postgres psql
# 创建角色
create role role_root login password "123456";
# 创建数据库
create database test_db;
# 修改用户密码，并授权用户操作数据库
grant all privileges on database test_db to role_root;
# 列举角色
\dg
# 列举数据库
\l
# 列举Schema
\dn
# 列举表
\dt
# 退出
\q
```

配置远程访问，修改` /etc/postgresql/14/main/postgresql.conf`

```properties
listen_addresses = '*'
```

修改`/etc/postgresql/14/main/pg_hba.conf`

```shell
#local   all             all                                     peer
local   all             all                                     md5
```

重启服务

```shell
sudo service postgresql restart
```

连接数据库

```shell
psql -U role_root -d test_db -W
```





