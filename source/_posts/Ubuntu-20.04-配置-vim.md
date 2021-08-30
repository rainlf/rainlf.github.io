---
title: Ubuntu 20.04 配置 vim
date: 2021-11-29 11:11:11
category: Ubuntu
tag: [linux, ubuntu]
---

## 环境

> Ubuntu 20.04 LTS



## 说明

> vim 是 Linux 下一款非常强大的编辑器，支持丰富的编辑功能，这里记录下自己的常用配置



## 步骤

> 修改配置文件

```shell
vi ~/.vimrc
```

> 修改内容为

```shell
syntax enable
set nu
set syntax=on
set showcmd
set autoread
set nobackup
set ruler
set cursorline
set magic
set noeb
set smartindent
set autoindent
set shiftwidth=4
set tabstop=4
set mouse=a
set hlsearch
filetype on
```

