---
title: Ubuntu 20.04 配置 git
date: 2021-11-29 11:11:11
category: Ubuntu
tag: [linux, ubuntu, git]
---

## 环境

> Ubuntu 20.04 LTS



## 说明

> 配置常用的 git 命令缩写



## 步骤

> 编辑配置文件

```shell
vi ~/.gitconfig
```

> 修改内容为

```config
[user]
        name = Rain
        email = iheyu22@163.com
[credential]
        helper = cache --timeout=8640000
#       helper = cache --timeout=600
[push]
        default = simple
[color]
        ui = true
        status = auto
        branch = auto
[alias]
        st = status -s
        br = branch
        ci = commit
        co = checkout
        lg = log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit
[filter "lfs"]
        required = true
        clean = git-lfs clean -- %f
        smudge = git-lfs smudge -- %f
        process = git-lfs filter-process
[difftool "sourcetree"]
        cmd = opendiff \"$LOCAL\" \"$REMOTE\"
        path =
[mergetool "sourcetree"]
        cmd = /Applications/Sourcetree.app/Contents/Resources/opendiff-w.sh \"$LOCAL\" \"$REMOTE\" -ancestor \"$BASE\" -merge \"$MERGED\"
        trustExitCode = true
[core]
        excludesFile = ~/.gitignore
        quotepath = false
```



