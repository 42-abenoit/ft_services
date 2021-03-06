mkdir /home/ftp/ftpuser
telegraf -config /etc/telegraf.conf &
vsftpd /etc/vsftpd/vsftpd.conf
