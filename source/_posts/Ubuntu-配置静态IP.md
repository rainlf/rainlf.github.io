---
title: Ubuntu 配置静态IP
date: 2021-11-29 11:11:11
category: Ubuntu
tag: [linux, config, network]
---

## 环境

> Ubuntu 20.04 LTS



## 说明

> Linux 默认由 DHCP 协议从路由获取动态 IP 地址，在某些场景下我们需要将其设置为静态 IP



## 步骤

> 编辑配置文件

```shell
sudo vi /etc/network/interfaces
```

> 修改内容为

```shell
auto lo
iface lo inet loopback

auto eth0
iface eth0
address 172.17.5.120
netmask 255.255.255.240
gateway 172.17.5.113
```





