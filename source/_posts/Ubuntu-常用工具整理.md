---
title: Ubuntu 常用工具整理
date: 2021-11-29 11:11:11
tag: [linux]
---

## 环境

> Ubuntu 20.04 LTS



## 说明

> 新做的系统可能会缺失很多常用的环境和工具，这里整理出来方便统一安装



## 常用工具

```shell
## 网络工具
sudo apt install -y net-tools
## Git
sudo apt install -y git
## NodeJs:16 (需要多版本则使用 nvm 替代)
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt install -y nodejs

## 小玩具
sudo apt install -y cmatrix
sudo apt install -y sl
```



## 初始化环境

```shell
## 关闭交换分区
sudo swapoff -a
```

