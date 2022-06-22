---
title: Ubuntu 配置Git 
date: 2021-11-29 11:11:11
category: Ubuntu
tag: [linux, config, git]
---

## 环境
> Ubuntu 20.04 LTS  

## 常用配置

编辑文件`~/.gitconfig`

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



## 配置BASH显示分支名

在`~/bashrc`尾部添加

```shell
function git_branch {
    branch="`git branch 2>/dev/null | grep "^\*" | sed -e "s/^\*\ //"`"
    if [ "${branch}" != "" ];then
        if [ "${branch}" = "(no branch)" ];then
            branch="(`git rev-parse --short HEAD`...)"
        fi
        echo " ($branch)"
    fi
}
export PS1='\u@\h \[\033[01;36m\]\W\[\033[01;32m\]$(git_branch)\[\033[00m\] \$ '
```



