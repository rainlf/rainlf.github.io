---
title: Ubuntu 安装OhMyZsh
date: 2021-11-29 11:11:11
category: Ubuntu
tag: [linux, zsh]
---

## 环境

> Ubuntu 20.04 LTS



## 说明

> 使用zsh与[oh-my-zsh](https://ohmyz.sh/)搭建日常命令行环境



## 步骤

> 安装 zsh

```shell
sudo apt install -y zsh
```

> 配置 zsh 为默认 shell

```shell
chsh -s /bin/zsh
```

> 安装 oh-my-zsh

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```



## 其他

> 安装时可能会遇到 github 访问过慢的问题，也可以将上述安装文件先保存至本地，手动指定镜像仓库来安装

```shell
REMOTE=https://codechina.csdn.net/mirrors/ohmyzsh/ohmyzsh.git ./install.sh
```

