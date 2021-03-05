FROM alpine

RUN apk update && \
	apk add vsftpd && \
	apk add openssl && \
	apk add telegraf

COPY ftp /ftp
RUN	sh ftp/ftp_setup.sh

ENTRYPOINT sh ftp/run.sh

EXPOSE 20 21 21000-21003
