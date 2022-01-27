---
title: Nginx 配置 HTTPS
tag: [linux, nginx]
date: 2022-01-23 11:03:50
category: Ubuntu
---

## 环境

> Ubuntu 20.04 LTS  
>
> Nginx 1.14.0

## 配置

上传`SSL`证书到服务器，并修改配置文件`/etc/nginx/nginx.conf`

```shell
http {
  # http -> https
  server {
		listen 80;
		server_name www.rainlf.com;
		return 301 https://$server_name$request_uri;
	}
	# https configuration
	server {
		listen 443 ssl;
		server_name www.rainlf.com;

      # ssl证书地址
      ssl_certificate     /etc/nginx/ssl/ssl_rainlf_com.crt;  # pem/crt文件的路径
      ssl_certificate_key  /etc/nginx/ssl/ssl_rainlf_com.key; # key文件的路径

      # ssl验证相关配置
      ssl_session_timeout  5m;    #缓存有效期
      ssl_ciphers ECDHE-RSA-AES128-GCM-SHA256:ECDHE:ECDH:AES:HIGH:!NULL:!aNULL:!MD5:!ADH:!RC4;    #加密算法
      ssl_protocols TLSv1 TLSv1.1 TLSv1.2;    #安全链接可选的加密协议
      ssl_prefer_server_ciphers on;   #使用服务器端的首选算法

		root /var/www/html;
		index index.html;
	}
}
```

