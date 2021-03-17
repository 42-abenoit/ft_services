FROM alpine

RUN apk update
RUN apk add influxdb
RUN apk add telegraf

COPY srcs /srcs
RUN sh /srcs/setup.sh

CMD sh /srcs/run.sh

EXPOSE 8086
