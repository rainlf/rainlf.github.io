---
title: Shell 控制语法
date: 2022-07-07 20:19:22
tag: [linux, shell]
---


## IF 语法
```shell
if [ condition ]; then
  ...
fi

if [ condition ]
  then
  ...
fi

if [ condition ]; then
  ...
elif [ condition ]; then
  ...
else
  ...
fi
```

## CASE 语法
```shell
case $var in
  "value1")
    ...
    ;;
  "value2")
    ...
    ;;
esac
```

## FOR 语法
```shell
for var in value1 value2 ...
do
   ... $var ...
done

for ((i=1; i<100; i=i+1))
do
  echo $i
done
```

## WHILE 语法
```shell
while [ condition ]
do
  ...
done
```