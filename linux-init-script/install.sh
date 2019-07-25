#!/bin/bash

. check_os.sh
# init
if [ "$OS" == 'CentOS' ];then
	 echo CentOS
elif [ "$OS" == 'Debian' ];then
 	 echo Debian
elif [ "$OS" == 'Ubuntu' ];then
 	 echo Ubuntu
fi