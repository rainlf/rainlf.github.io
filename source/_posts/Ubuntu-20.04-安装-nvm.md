---
title: Ubuntu 20.04 安装 nvm
date: 2021-11-29 11:11:11
category: Ubuntu
tag: [linux, ubuntu, nodejs]
---

## 环境

> Ubuntu 20.04 LTS



## 说明

> 日常会遇到兼顾 nodejs 多版本的问题，使用 [nvm](https://github.com/nvm-sh/nvm) 可以在本地切换 nodejs 版本的工具，来应对不同应用强依赖不同 nodejs 版本的问题



## 步骤

> 安装 nvm

```shell
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
```

> 查看可用版本

```shell
nvm ls-remote
```
> 安装指定版本 node

```shell
nvm install 14.7.0
```

> 查看本地版本

```shell
nvm ls
```

> 选择版本

```
nvm use <version>
```



## 其他

> 安装时可能会遇到 github 访问过慢的问题，也可以将上述安装文件先保存至本地，手动指定镜像仓库来安装

```shell
NVM_INSTALL_GITHUB_REPO=https://codechina.csdn.net/mirrors/nvm-sh/nvm.git ./install.sh
```

