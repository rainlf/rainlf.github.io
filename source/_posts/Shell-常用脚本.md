---
title: Shell 脚本整理
tag: [linux, shell]
date: 2022-02-28 15:31:52
---

## 批量执行命令

```shell
#! /usr/bin/bash

cmd=$1

hosts=(
  "host1"
  "host2"
  "host3"
)

if [ "x$cmd" = "x" ]
then
  echo "Failed: cmd can't be empty"
  exit -1
fi

for host in "${hosts[@]}"
do
  echo "begin to run $cmd on $host"
  ssh $host $cmd
done
```



## 批量拷贝文件

```shell
#! /usr/bin/bash

src=$1
dst=$2

hosts=(
  "host1"
  "host2"
  "host3"
)

if [ "x$src" = "x" -o "x$dst" = "x" ]
then
  echo "Failed: src or dst can't be empty"
  exit -1
fi

for host in "${hosts[@]}"
do
  echo "begin to scp $src to $host:$dst"
  scp -r $src $host:$dst
done
```

