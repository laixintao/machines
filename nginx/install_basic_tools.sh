#!/usr/bin/env bash

sudo yum -y install epel-release \
    htop \
    pcre \
    pcre-devel \
    openssl \
    openssl-devel wget net-tools gcc\
    zip unzip

wget http://nginx.org/download/nginx-1.15.6.tar.gz ~/
wget https://github.com/openresty/echo-nginx-module/archive/master.zip ~/
