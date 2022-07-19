---
title: MySQL 迁移数据目录
date: 2022-07-19 22:22:59
category: Linux
tag: [linux, ansible]
---

## 环境
> Ubuntu 20.04 LTS  
> MySQL Ver 8.0.27 for Linux on x86_64 (MySQL Community Server - GPL)

## 步骤
迁移数据目录
```shell
rsync -av --progress /var/lib/mysql /mnt/data/app/
```

修改配置文件`/etc/mysql/mysql.conf.d/mysqld.cnf`
```shell
# datadir = /var/lib/mysql
datadir = /mnt/data/app/mysql
```

修改系统安全模块
```shell
# sudo vi /etc/apparmor.d/usr.sbin.mysqld
## /mnt/data/mysql/ r,
## /mnt/data/mysql/** rwk,
/mnt/data/app/mysql/ r,
/mnt/data/app/mysql/** rwk,

# sudo vi /etc/apparmor.d/abstractions/mysql
## /var/lib/mysql{,d}/mysql{,d}.sock rw,
/mnt/data/app/mysql{,d}/mysql{,d}.sock rw,
```

重启服务
```shell
sudo /etc/init.d/apparmor restart
sudo /etc/init.d/mysql start
```
