---
title: Ubuntu 安装Ansible
date: 2022-07-07 19:35:06
category: Linux
tag: [linux, ansible]
---

## 环境
> Ubuntu 20.04 LTS  
> Docker 20.10.12  

## 步骤
`Ansible`使用`SSH`协议来管理主机，管理节点与托管节点需要建立`ssh`免密登陆通道，同时管理节点与托管节点均需要`Python2.7`环境  
```shell
sudo apt install python2.7 -y
```

在管理节点上安装
```shell
sudo apt install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible
sudo apt update 
sudo apt install ansible -y
```

编辑`Inventory`文件
```shell
sudo vi /etc/ansible/hosts
---
[group_name]
host1
host2
...
```

查看`ansible`支持的模块
```shell
ansible-doc -l
```

查看模块的详细帮助信息
```shell
ansible-doc <module_name>
```

测试
```shell
ansible <group or host> -m ping
```

## 常用命令
```shell
ansible <host> -a "echo hello world"            # 执行命令，默认使用command模块，该模块不支持管道符与重定向符号
ansible <host> -m shell -a "echo hello world"   # 执行命令，支持管道符与重定向符号
ansible <host> -copy -a "src=./xx dest=~/"      # 拷贝文件
```

## PlayBook模板
```yaml
- hosts: test
  vars:
    user: foo
    home: /home/{{ user }}
  
  tasks:
  - name: exec shell command
    shell: cp /tmp/xx /tmp/yy
  - name: exec shell command with sudo
    shell: cp /tmp/xx /tmp/yy
    become: yes
  - name: exec multi shell command and without warning
    shell:
      cmd: |
        command 1
        command 2
        command ...
    become: yes
    args:
     warn: false
  - name: copy file
    copy:
      src: ./xx
      dest: /tmp/
  - name: copy and unarchive file
    unarchive: 
      src: ./xx.tar.gz
      dest: /tmp/
  - name: apt install
    apt:
      name: "{{ item }}"
      state: present
    with_items:
      - package 1
      - package 2
      - ...
  - name: mkdir
    file:
      path: /tmp/bar
      state: directory
        - name: mkdir
- name: rm -rf
    file:
      path: /tmp/bar
      state: absent
```

## 参考
1. [Ansible中文权威指南](https://ansible-tran.readthedocs.io/en/latest/)
