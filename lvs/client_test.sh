#!/bin.bash
# 测试LVS
vip=172.16.111.200
for i in `seq 100`;do
    curl --connect-timeout 1 $vip
    sleep 1
done
