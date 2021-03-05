FROM alpine

RUN apk update
RUN apk add influxdb

COPY influxdb /srcs
RUN sh /srcs/influxdb_setup.sh

ENTRYPOINT influxd

EXPOSE 8086
