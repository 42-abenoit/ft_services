openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=FR/ST=IDF/L=Paris/O=42/CN=abenoit' -keyout /etc/vsftpd/ssl/vsftpd.key -out /etc/vsftpd/ssl/vsftpd.crt
