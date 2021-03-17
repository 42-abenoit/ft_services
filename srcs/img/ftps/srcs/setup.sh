echo ftpuser > /etc/vsftpd/vsftpd.userlist
cp /srcs/vsftpd.conf /etc/vsftpd/

#ssl key generation
mkdir /etc/vsftpd/ssl
sh /srcs/ssl_setup.sh

cp srcs/telegraf.conf /etc/telegraf.conf
