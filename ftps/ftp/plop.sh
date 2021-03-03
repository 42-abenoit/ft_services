getent passwd ftpuser > /dev/null
ret=$?
if [ $ret -eq 2 ]
then
echo "ftppass
ftppass" | adduser ftpuser
chmod 755 /home/ftp/ftpuser
fi
vsftpd /etc/vsftpd/vsftpd.conf
