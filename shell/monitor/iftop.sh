#!/bin/bash
## Iptables 2016-09-28
## centos 6
## iftop��������top��ʵʱ������ع��ߣ�iftop�Ų�ռ�ô������˿�

##��װ���ļ�����Ҫ libpcap �� libcurses
yum install -y flex byacc libpcap ncurses ncurses-devel libpcap-devel

##���ز���װ��Ŀǰ���°���0.17
cd /usr/local/
wget http://www.ex-parrot.com/~pdw/iftop/download/iftop-0.17.tar.gz
tar zvfx iftop-0.17.tar.gz
cd iftop-0.17
./configure --prefix=/usr/local/iftop
make && make install
cp /usr/local/iftop/sbin/iftop /bin

##��ʾIP�˿�  �������
iftop -i em2 -n -P -N


##ע�Ͷ��з���
if false; then
����iftop(������root����)
iftop
���ĳ����
iftop -i eth0 -n
ͬʱ��ʾ��ʲô����
iftop -i eth0 -n -P
����ϸ�Ĳ�������iftop -h�鿴

��ز�����˵��
1��iftop�������˵��
����������ʾ�������ƿ̶ȳߵĿ̶ȷ�Χ��Ϊ��ʾ����ͼ�εĳ���������õġ�
�м��<= =>���������Ҽ�ͷ����ʾ���������ķ���
TX����������
RX����������
TOTAL��������
Cumm������iftop��Ŀǰʱ���������
peak��������ֵ
rates���ֱ��ʾ��ȥ 2s 10s 40s ��ƽ������
2��iftop��ز���
���õĲ���
-i�趨�����������磺# iftop -i eth1
-B ��bytesΪ��λ��ʾ����(Ĭ����bits)���磺# iftop -B
-nʹhost��ϢĬ��ֱ�Ӷ���ʾIP���磺# iftop -n
-Nʹ�˿���ϢĬ��ֱ�Ӷ���ʾ�˿ںţ���: # iftop -N
-F��ʾ�ض����εĽ�����������# iftop -F 10.10.1.0/24��# iftop -F 10.10.1.0/255.255.255.0
-h��display this message������������ʾ������Ϣ
-pʹ������������м���б���ʾ�ı���������Ϣ�������˱��������IP��Ϣ;
-bʹ����ͼ����Ĭ�Ͼ���ʾ;
-f�����ʱ����̫���ã����˼�����õ�;
-Pʹhost��Ϣ���˿���ϢĬ�ϾͶ���ʾ;
-m���ý������ϱߵĿ̶ȵ����ֵ���̶ȷ���������ʾ������# iftop -m 100M
����iftop������һЩ��������(ע���Сд)
��h�л��Ƿ���ʾ����;
��n�л���ʾ������IP��������;
��s�л��Ƿ���ʾ������host��Ϣ;
��d�л��Ƿ���ʾԶ��Ŀ��������host��Ϣ;
��t�л���ʾ��ʽΪ2��/1��/ֻ��ʾ��������/ֻ��ʾ��������;
��N�л���ʾ�˿ںŻ�˿ڷ�������;
��S�л��Ƿ���ʾ�����Ķ˿���Ϣ;
��D�л��Ƿ���ʾԶ��Ŀ�������Ķ˿���Ϣ;
��p�л��Ƿ���ʾ�˿���Ϣ;
��P�л���ͣ/������ʾ;
��b�л��Ƿ���ʾƽ������ͼ����;
��B�л�����2���10���40���ڵ�ƽ������;
��T�л��Ƿ���ʾÿ�����ӵ�������;
��l����Ļ���˹��ܣ�����Ҫ���˵��ַ�������ip,���س�����Ļ��ֻ��ʾ���IP��ص�������Ϣ;
��L�л���ʾ�����ϱߵĿ̶�;�̶Ȳ�ͬ������ͼ�������б仯;
��j��k�������ϻ����¹�����Ļ��ʾ�����Ӽ�¼;
��1��2��3���Ը����Ҳ���ʾ�������������ݽ�������;
��<������ߵı�������IP����;
��>����Զ��Ŀ����������������IP����;
��o�л��Ƿ�̶�ֻ��ʾ��ǰ������;
��f���Ա༭���˴��룬���Ƿ��������˵�����һ�û�ù������
��!����ʹ��shell������û�ù���û������ɶ������������أ�
��q�˳���ء�
��������
1��make: yacc: Command not found
make: *** [grammar.c] Error 127
���������apt-get install byacc   /   yum install byacc
2��configure: error: Curses! Foiled again!
(Can��t find a curses library supporting mvchgat.)
Consider installing ncurses.
���������apt-get install libncurses5-dev  /    yum  install ncurses-devel
fi



