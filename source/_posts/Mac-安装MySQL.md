---
title: Mac 安装MySQL
date: 2022-06-19 11:03:55
category: Mac
tag: [mac, mysql]
---


## 步骤
安装
```shell
brew install mysql
```

启动
```shell
brew services start mysql
```

初始化安全策略与配置，参考[Ubuntu 安装MySQL](https://rainlf.github.io/2021/11/29/Ubuntu-%E5%AE%89%E8%A3%85MySQL/)

```
mysql_secure_installation
```

登陆
```shell
mysql -u root -p
```