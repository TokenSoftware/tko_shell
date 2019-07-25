#!/bin/bash
## fastcodis 2016-08.18
##centos 7


##从codis3上查看有问题的proxy，获取PID，强制移除
codis-admin  --dashboard=192.168.56.102:18080  --remove-proxy --pid=5    --force

