---
title: Ubuntu 安装Maven
date: 2021-11-29 11:11:11
category: Linux
tag: [linux, maven]
---

## 环境

> Ubuntu 20.04 LTS
>
> Maven 3.8.3



## 说明

> 安装 Maven，并设置相关环境变量，参考 [官方文档](https://maven.apache.org/settings.html)



## 步骤

> 在 [Oracle官方地址](https://www.oracle.com/java/technologies/downloads/#java8) 下载 jdk release 文件，解压文件至安装目录

```shell
sudo mkdir -p /usr/maven/
sudo tar xvf apache-maven-3.8.3-bin.tar.gz -C /usr/maven/
```

> 编辑 `~/.zshrc` （bash shell 则编辑 `~/.bashrc`）,添加内容

```shell
export MAVEN_HOME=/usr/maven/apache-maven-3.8.3
export PATH=$MAVEN_HOME/bin:$PATH
```

