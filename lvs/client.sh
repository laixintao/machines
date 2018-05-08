#!/bin/bash
echo >> /etc/sysconfig/network-scripts/ifconfig-eth1 <<EOF
GATEWAY=172.16.111.200
EOF
