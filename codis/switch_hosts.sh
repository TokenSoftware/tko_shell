#!/bin/bash
## fastcodis 2016-04-22
##centos 7
yum install -y nmap
_ports=$(nmap 192.168.1.12 -p 19000 |grep '19000' | awk '{print $2}')

if [[ "${_ports}" == "open" ]]
then
    echo "codis-dashboard is ok"
else
    sed -i  '/codis.aqzt.com/d' /etc/hosts
    echo "192.168.1.15  codis.aqzt.com" >> /etc/hosts
fi