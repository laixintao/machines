#!/bin/bash
echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
echo 1 > /proc/sys/net/ipv4/ip_forward
yum install -y ipvsadm
bash nattsh start
