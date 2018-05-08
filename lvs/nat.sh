#!/bin/bash
vip=172.16.111.200
mode=m  # m为NAT模式，g为DR模式，i为tun模式
schdule=rr
rip1=192.168.111.101
rip2=192.168.111.102
case $1 in
start)
    ipvsadm -A -t $vip:80 -s $schdule
    ipvsadm -a -t $vip:80 -r $rip1 -$mode
    ipvsadm -a -t $vip:80 -r $rip2 -$mode
    ;;
stop)
    ipvsadm -C
    ;;
*)
    echo "Usage: `basename $0` start|stop"
    exit 1
    ;;
esac
