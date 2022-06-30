---
title: Ubuntu 安装Helm
date: 2022-06-30 11:32:58
category: Ubuntu
tag: [ubuntu, kubernetes, helm]
---

## 环境

> Ubuntu 20.04 LTS  

## 安装
点击[这里](https://github.com/helm/helm/releases)下载所需版本，如
```shell
curl -LO  "https://get.helm.sh/helm-v3.9.0-linux-amd64.tar.gz"
```

解压安装
```shell
tar -zxvf helm-v3.9.0-linux-amd64.tar.gz
sudo install helm /usr/local/bin/helm
```

## 注意
初次安装使用时，可能遇到如下问题
```shell
WARNING: Kubernetes configuration file is group-readable. This is insecure. Location: /home/rain/.kube/config
```
执行如下命令，删除同组与其他用户的读写权限即可
```shell
chmod 600 ~/.kube/config
```
