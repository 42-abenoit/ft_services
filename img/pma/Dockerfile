FROM alpine

RUN apk update && \
	apk add nginx && \
	apk add php7 php7-fpm php7-opcache php7-gd php7-mysqli \
    	php7-zlib php7-curl php7-mbstring php7-json php7-session && \
	apk add phpmyadmin && \
	apk add telegraf

COPY srcs /srcs
RUN sh /srcs/setup.sh

ENTRYPOINT sh srcs/run.sh

EXPOSE 5000
