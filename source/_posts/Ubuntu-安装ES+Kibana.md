---
title: Ubuntu 安装ES+Kibana
date: 2021-11-29 11:11:11
category: Ubuntu
tag: [linux, es, kibana]
---

## 环境

> Ubuntu 20.04 LTS  
> ElsticSearch 7.15.0  
> Kibana 7.15.0  



## 说明

> 安装 Elasticsearch + Kibana，配置密码访问



## 步骤

### 下载

> 在 [官网](https://www.elastic.co/downloads/) 下载 Elasticsearch 和 Kibana，解压至安装目录

```shell
sudo tar xvf ~/elasticsearch-7.15.0-linux-x86_64.tar.gz -C /opt/app/
sudo tar xvf ~/kibana-7.15.0-linux-x86_64.tar.gz -C /opt/app/
```

### Elasticsearch 配置
> 修改 `config/elasticsearch.yml`，添加内容

```yml
network.host: 0.0.0.0
xpack.security.enabled: true
xpack.license.self_generated.type: basic
xpack.security.transport.ssl.enabled: true
discovery.type: single-node
```

> 启动服务（非 root 用户）

```shell
./bin/elasticsearch -d
```

> 设置密码

```shell
## 生成 keystore
./bin/elasticsearch-keystore create
## 设置密码
./bin/elasticsearch-setup-passwords interactive
### 用户说明
elastic: 超级用户，拥有存取全部 cluster 的权限
apm_system: 一般用户，提供给 kibana 使用，用来和 elasticsearch 进行通信
kibana_system: 一般用户，提供给 logstash 使用，用来向 elasticsearch 写入数据
logstash_system: 一般用户，用于不同类型的 beat 存储和监控 elasticsearch
beats_system: 一般用户，用于 APM Server 存储和监控 elasticsearch
remote_monitoring_user: 一般用户，用于 Metricbeat 监控 elasticsearch
```

### Kibana 配置

> 修改 `config/kibana.yml`

```yml
server.host: "0.0.0.0"
elasticsearch.hosts: ["http://localhost:9200"]
elasticsearch.username: "kibana_system"
elasticsearch.password: "guanshantech"
i18n.locale: "zh-CN"
```

> 启动服务（非 root 用户）

```shell
./bin/kibana
```

