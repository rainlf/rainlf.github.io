---
title: Ubuntu 20.04 安装 mysql
date: 2021-11-29 11:11:11
category: Ubuntu
tag: [linux, ubuntu, mysql]
---

## 环境

> Ubuntu 20.04 LTS
>
> MySQL  v5.7.35



## 说明

> 安装 MySQL Server，配置密码，并允许外网访问



## 步骤

> 安装 mysql-server

```shell
sudo apt install -y mysql-server
```

> 初始化配置，配置密码，询问项选 n，最后选 y 刷新权限

```shell
sudo mysql_secure_installation
```

> 允许 root 远程访问

```shell
## 登陆 mysql
sudo mysql -uroot -p

## 配置权限(5.0 版本)
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '123456' WITH GRANT OPTION;

## 配置权限(8.0 版本)
CREATE USER 'root'@'%' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON *.* to 'root'@'%' WITH GRANT OPTION;

## 刷新权限
FLUSH PRIVILEGES;

## 查看权限
SELECT User, Host, HEX(authentication_string) FROM mysql.user;

## 修改密码
# set password for root@localhost = password('123456');
```

> 修改常用配置，在 `/etc/mysql/mysql.conf.d/mysqld.cnf`文件中添加

```config
[client]
default-character-set = utf8mb4

[mysql]
default-character-set = utf8mb4

[mysqld]
character-set-client-handshake = FALSE
character-set-server = utf8mb4
collation-server = utf8mb4_unicode_ci
init_connect = 'SET NAMES utf8mb4'
bind-address = 0.0.0.0
# 表名大小写敏感性
# 0: 表名按原始字符串存储，比较时区分大小写（Linux默认）
# 1: 表名转小写后存储，比较时不区分大小写（Windows默认）
# 2: 表名按原始字符串存储，比较时不区分大小写（MacOS默认）
lower_case_table_names = 1
```

> 查看常用配置

```mysql
mysql> show variables where variable_name like 'character_set_%' or variable_name like 'collation%';
+--------------------------+----------------------------+
| Variable_name            | Value                      |
+--------------------------+----------------------------+
| character_set_client     | utf8mb4                    |
| character_set_connection | utf8mb4                    |
| character_set_database   | utf8mb4                    |
| character_set_filesystem | binary                     |
| character_set_results    | utf8mb4                    |
| character_set_server     | utf8mb4                    |
| character_set_system     | utf8                       |
| character_sets_dir       | /usr/share/mysql/charsets/ |
| collation_connection     | utf8mb4_general_ci         |
| collation_database       | utf8mb4_general_ci         |
| collation_server         | utf8mb4_general_ci         |
+--------------------------+----------------------------+
```

> 重启服务

```shell
sudo service mysql restart
```

