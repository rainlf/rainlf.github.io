---
title: Ubuntu 安装JDK
date: 2021-11-29 11:11:11
category: Linux
tag: [linux, java]
---

## 环境

> Ubuntu 20.04 LTS  
> JDK1.8  



## 说明

> 安装 JDK8，并设置相关环境变量，参考 [Oracle官方文档](https://docs.oracle.com/cd/E19182-01/820-7851/inst_cli_jdk_javahome_t/)



## 步骤

> 在 [Oracle官方地址](https://www.oracle.com/java/technologies/downloads/#java8) 下载 jdk release 文件，解压文件至安装目录

```shell
sudo mkdir -p /usr/java/
sudo tar xvf jdk-8u301-linux-x64.tar.gz -C /usr/java/
```

> 编辑 `~/.zshrc` （bash shell 则编辑 `~/.bashrc`）,添加内容

```shell
export JAVA_HOME=/usr/java/jdk1.8.0_301
export PATH=$JAVA_HOME/bin:$PATH
```



