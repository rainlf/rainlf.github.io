---
title: Mac 安装与卸载 Java
tag: [mac, java]
date: 2022-02-27 15:11:43
category: Mac
---



## 安装

首先前往[官方地址](https://www.oracle.com/java/technologies/downloads/)，下载所需版本的安装文件

安装后修改`.zshrc`

```shell
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_321.jdk/Contents/Home
export JAVA_11_HOME=`/usr/libexec/java_home -v 11`
export JAVA_17_HOME=`/usr/libexec/java_home -v 17`
export JAVA_HOME=$JAVA_17_HOME
alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
alias jdk11="export JAVA_HOME=$JAVA_11_HOME"
alias jdk17="export JAVA_HOME=$JAVA_17_HOME"
```

使用时，可动态切换`java`版本

```shell
➜  ~ jdk8 && java -version
java version "1.8.0_321"
Java(TM) SE Runtime Environment (build 1.8.0_321-b07)
Java HotSpot(TM) 64-Bit Server VM (build 25.321-b07, mixed mode)
➜  ~ jdk11 && java --version
java 11.0.14 2022-01-18 LTS
Java(TM) SE Runtime Environment 18.9 (build 11.0.14+8-LTS-263)
Java HotSpot(TM) 64-Bit Server VM 18.9 (build 11.0.14+8-LTS-263, mixed mode)
➜  ~ jdk17 && java --version
java 17.0.2 2022-01-18 LTS
Java(TM) SE Runtime Environment (build 17.0.2+8-LTS-86)
Java HotSpot(TM) 64-Bit Server VM (build 17.0.2+8-LTS-86, mixed mode, sharing)
```



## 卸载

首先，删除系统文件

```shell
sudo rm -rf /Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin
sudo rm -rf /Library/PreferencesPanes/JavaControlPanel.prefPane
sudo rm -rf ~/Library/Application\ Support/Oracle/Java
```

然后，查找当前安装文件并删除即可

```shell
ls /Library/Java/JavaVirtualMachines/ 
sudo rm -rf /Library/Java/JavaVirtualMachines/jdk1.8.0_321.jdk
```

