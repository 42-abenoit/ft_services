FROM alpine

RUN apk update && \
	apk add vsftpd && \
	apk add openssl && \
	apk add telegraf

COPY srcs /srcs
RUN	sh srcs/setup.sh

ENTRYPOINT sh srcs/run.sh

EXPOSE 20 21 21000-21003
