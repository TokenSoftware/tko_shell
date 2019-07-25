#!/bin/bash

## centos 7

yum install dnsmasq -y
cp /etc/resolv.conf /etc/resolv.dnsmasq.conf
cp /etc/hosts /etc/dnsmasq.hosts
echo 'nameserver 127.0.0.1' > /etc/resolv.conf
echo 'resolv-file=/etc/resolv.dnsmasq.conf' >> /etc/dnsmasq.conf
echo 'addn-hosts=/etc/dnsmasq.hosts' >> /etc/dnsmasq.conf

service dnsmasq restart