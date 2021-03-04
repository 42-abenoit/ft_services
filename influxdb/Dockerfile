FROM alpine

RUN apk update
RUN apk add influxdb

ENTRYPOINT ["influxd" "run"]

EXPOSE 8086
