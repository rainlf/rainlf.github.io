---
title: Ubuntu 20.04 配置 ssh 超时时间
date: 2021-11-29 11:11:11
category: Ubuntu
tag: [linux, ubuntu]
---

## 环境

> Ubuntu 20.04 LTS



## 说明

> 取消 ssh 连接的超时时间，解决连接一段时间后无法输入的问题，服务端和客户端任改其一即可



## 步骤

### 服务端
> 编辑配置文件

```shell
sudo vi /etc/ssh/sshd_config
```

> 修改内容

```config
LoginGraceTime 0
ClientAliveInterval 30
ClientAliveCountMax 6
```

> 重启服务

```shell
sudo service sshd restart
```



### 客户端

> 编辑配置文件

```shell
sudo vi /etc/ssh/ssh_config
```

> 修改内容

```shell
ServerAliveInterval 30
ServerAliveCountMax 6
```



