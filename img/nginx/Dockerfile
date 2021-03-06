FROM alpine

RUN apk update && \
	apk add nginx && \
	apk add openssl && \
	apk add telegraf

COPY srcs /srcs
RUN sh srcs/setup.sh

CMD sh srcs/run.sh

EXPOSE 80 443
