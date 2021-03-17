getent passwd ftpuser > /dev/null
ret=$?
if [ $ret -eq 2 ]
then
echo "ftppass
ftppass" | adduser -h /home/ftp/ftpuser ftpuser
mkdir /home/ftp
mkdir /home/ftp/ftpuser
chmod 755 /home/ftp/ftpuser
fi


telegraf -config /etc/telegraf.conf &
vsftpd /etc/vsftpd/vsftpd.conf
