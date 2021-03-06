echo ftpuser > /etc/vsftpd/vsftpd.userlist
cp /srcs/vsftpd.conf /etc/vsftpd/

#ssl key generation
mkdir /etc/vsftpd/ssl
sh /srcs/ssl_setup.sh
#ftp user creation
mkdir /home/ftp
mkdir /home/ftp/ftpuser
chmod 755 /home/ftp/ftpuser
echo "ftppass
ftppass" | adduser -h /home/ftp/ftpuser ftpuser

cp srcs/telegraf.conf /etc/telegraf.conf
