---
title: Ubuntu 镜像源整理
date: 2021-11-29 11:11:11
category: Ubuntu
tag: [linux, config, apt, npm, anaconda]
---

## 环境

> Ubuntu 20.04 LTS



## APT 镜像源

### 步骤

> 备份配置文件

```shell
sudo cp /etc/apt/sources.list /etc/apt/sources.list.backup
```

> 修改配置文件

```shell
sudo vi /etc/apt/sources.list
```

> 修改内容为

```shell
deb http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ bionic-backports main restricted universe multiverse
```

> 执行更新

```
sudo apt update
```



## NPM 镜像源

> 编辑配置文件

```shell
sudo vi ~/.npmrc
```

> 修改内容为

```config
registry=https://registry.npm.taobao.org
```


## Anaconda 镜像源

> 编辑文件

```shell
vi ~/.condarc
```

> 添加

```properties
channels:
  - https://mirrors.ustc.edu.cn/anaconda/pkgs/main/
  - https://mirrors.ustc.edu.cn/anaconda/cloud/conda-forge/
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
  - defaults
show_channel_urls: true
```

> 查看配置

```shell
conda config --show-sources
conda clean -i
```
