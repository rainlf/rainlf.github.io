---
title: Git 配置
date: 2021-11-29 11:11:11
category: Config
tag: [linux, config, git]
---

## 配置文件

```shell
vi ~/.gitconfig
```



## 内容

```shell
[user]
        name = <user>
        email = <email>
[credential]
        helper = cache --timeout=8640000
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
        whitespace = cr-at-eol
        autocrlf = true
```



