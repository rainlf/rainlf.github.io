---
title: Ubuntu 配置Vim 
date: 2021-11-29 11:11:11
category: Ubuntu
tag: [linux, config, vi]
---

## 环境
> Ubuntu 20.04 LTS  

## 常用配置

编辑文件`vi ~/.vimrc`

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

