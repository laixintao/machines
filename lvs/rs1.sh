#!/bin/bash
echo 'GATEWAY=192.168.111.200' >> /etc/sysconfig/network-scripts/ifcfg-eth1
ifdown eth1 && ifup eth1
yum install -y httpd
cat >/var/www/html/index.html<<EOF
Real Server 1
EOF
systemctl enable httpd
systemctl start httpd
