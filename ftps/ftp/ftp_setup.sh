apk update
apk add vsftpd
apk add openssl
echo ftpuser > /etc/vsftpd/vsftpd.userlist
cp /ftp/vsftpd.conf /etc/vsftpd/

#ssl key generation
mkdir /etc/vsftpd/ssl
sh /ftp/ssl_setup.sh
echo "ftppass

#ftp user creation
ftppass" | adduser -h /home/ftp/ftpuser ftpuser
chmod 755 /home/ftp/ftpuser
