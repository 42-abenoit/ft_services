FROM alpine

RUN	apk update && \
	apk add mariadb mariadb-client && \
	apk add	telegraf

COPY srcs /srcs
RUN sh srcs/setup.sh 

ENTRYPOINT sh srcs/run.sh

EXPOSE 3306
