#!/bin/bash

## ubuntu

#!/bin/bash
date=`date -d "-1 day" +%Y%m%d`
mkdir /data/haraka/$date/
mv /var/log/haraka.log /data/haraka/$date/haraka.log.$date
/etc/init.d/haraka restart
find /data/haraka/ -name "20*" -type d -mtime +3|tee -a /home/haraka_del.txt|xargs rm -r 2>>/home/haraka_err.txt
echo ok